let basicWeek = 0;
/*chart*/
window.addEventListener("load",()=>{
	let size = 0; //week개수
	let labelWeek = [] // x주,y주 ...
	let week = [] //x,y...
	let preWeek = 0; //현재week
	basicWeek = 0; //기준(첫번째)week
	
	$.ajax({
	url : "/api/weightRecord/totalChart",
	type : "post",
	dataType : "json",
	data : {"spetId": $('.petId').val()},
	success : function(weightStats){

		size = weightStats.length
		basicWeek = weightStats[0].week;
		let avg = []

		//list에 데이터 push
		for(let i=0; i<size; i++){
			preWeek = weightStats[i].week
			week.push(preWeek-basicWeek)
			labelWeek.push(preWeek-basicWeek+"주")
			avg.push(weightStats[i].avg)
		}
		
		//totalChart(전체 평균체중 변화) 생성
		let totalChart = $('#totalChart');
		new Chart(totalChart, {
		
			type:'line',
			data:{
				labels:labelWeek,
				datasets:[{
					label: '주차별 평균체중 변화',
					data: avg,
					
					backgroundColor: 'rgba(255,166,0)',
					borderColor: 'rgba(255,166,0)',
					borderWidth:3
						}]
					},
			options:{
				maintainAspectRatio: false
			}
			
			})		
		}
		
	})
	

})


/*popup창*/
window.addEventListener("load",()=>{
	let recordTable = document.querySelector(".statsTable");
	
	//pop-up창
	recordTable.onclick = (e)=>{
		let table = e.target
		let line = table.parentElement
		let preWeek = line.getElementsByClassName('preWeek')
		
		//popup창 나타내기
		var overlay = document.querySelector(".overlay")
        var popup = document.querySelector(".popup");
		
		if(line.classList.contains("line")){
	        if(overlay.classList.contains("d-none")&&popup.classList.contains("d-none")){
	            overlay.classList.remove("d-none");
	            popup.classList.remove("d-none");
	            
	        }
		}
		
		//popup창에 삽입할 데이터 불러오기
		$.ajax({
			url : "/api/weightRecord/list",
			type : "post",
			dataType : "json",
			data : {"sweek" : $(preWeek).val(),
					"spetId": $('.petId').val(),
					},
			success : function(weightList){				
				let date = ""; //측정잘짜
				let time = ""; //측정시간 가공전
				let hour = 0;
				let minute = 0;
				let measureTime = "" //측정시간 최종
				let meridiem ="PM" //AM or PM
				
				//popup 관련 변수
				let popTbody = document.querySelector(".popTbody")
				let td = ""
				
				//chart 관련 변수
				let dateTime = [] //date+time
				let kg = [] //체중
				let week = 0
				let weekContainer = document.querySelector(".weekContainer")
				let canvas = ""
				
				for(let i=0; i<weightList.length; i++){
					date = weightList[i].measureDate
					time = weightList[i].measureTime //측정시간 가공전
					hour = parseInt(time.substr(0,2)) //시
					minute = parseInt(time.substr(3,5)) //분					
					
					if(minute<10)
						minute="0"+minute
					
					//am,pm 구분
					if(hour>12 && hour<24){
						measureTime = hour-12+":"+minute
						meridiem = "PM"
					}else if(hour==12){
						measureTime = hour+":"+minute
						meridiem = "PM"
					}else if(hour<12 && hour>0){
						measureTime = hour+":"+minute
						meridiem = "AM"												
					}else if(hour==0){
						measureTime = hour+12+":"+minute
						meridiem = "AM"
					}
					
					//삽입할 엘리먼트
					td = `<tr>
							  <td>${weightList[i].measureDate}</td>
							  <td class="${meridiem}">${measureTime+" "+meridiem}</td>
							  <td>${weightList[i].kg} KG</td>
						  </tr>`
					
					//popup창에 데이터 삽입
					popTbody.insertAdjacentHTML("beforeend", td);
					
					//list에 데이터 push
					dateTime.push(date+" "+measureTime+" "+meridiem)
					kg.push(weightList[i].kg)
				
				}
				//주차 계산
				console.log(basicWeek)
				console.log($(preWeek).val())
				week = $(preWeek).val() - basicWeek
				
				//삽입할 canvas
				canvas = `<canvas class="chart" id="weekChart"></canvas>`
				
				//popup창 chart삽입
				weekContainer.insertAdjacentHTML("beforeend", canvas)
				
				let weekChart = $('#weekChart')
				new Chart(weekChart, {
		
					type:'line',
					data:{
						labels: dateTime,
						datasets:[{
							label: week+"주",
							data: kg,
							
							backgroundColor: 'orange',
							borderColor: 'orange',
							borderWidth:1
								}]
							},
					options:{
						maintainAspectRatio: false
					}
					})
					
			}
		})
	}
})

//close버튼
function closePopup(){
	 let overlay = document.querySelector(".overlay")
     let popup = document.querySelector(".popup")
	 let popTbody = document.querySelector(".popTbody")
     let num = popTbody.children.length
     let weekChart = document.querySelector("#weekChart")
     
     	//popup창 닫기
        if(!overlay.classList.contains("d-none")&&!popup.classList.contains("d-none")){
            overlay.classList.add("d-none");
            popup.classList.add("d-none");
        
		//popup창 chart삭제
		$(weekChart).remove();

        //popup창 데이터 삭제
		for(let i = 0; i < 3*num; i++) {
			popTbody.removeChild(popTbody.children[0]);
		}
		
	}
}