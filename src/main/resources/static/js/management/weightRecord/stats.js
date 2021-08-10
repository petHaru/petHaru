/*chart*/
window.addEventListener("load",()=>{
	let size = 0; //week개수
	let labelWeek = [] // x주,y주 ...
	let week = [] //x,y...
	let preWeek = 0; //현재week
	let basicWeek = 0; //기준(첫번째)week
	
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
					label: '전체 평균체중 변화',
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
				let popTbody = document.querySelector(".popTbody")
				let td = ""
				
				for(let i=0; i<weightList.length; i++){
					let time = weightList[i].measureTime
					let hour = parseInt(time.substr(0,2))
					let minute = parseInt(time.substr(3,5))
					let measureTime = ""
					let meridiem ="PM"
					
					if(minute<10)
						minute="0"+minute
					
					//am,pm 구분
					if(hour>12 && hour<24){
						measureTime = hour-12+":"+minute						
					}else if(hour==12){
						measureTime = hour+":"+minute
					}else if(hour<12 && hour>0){
						measureTime = hour+":"+minute
						meridiem = "AM"												
					}else if(hour==0){
						measureTime = hour+12+":"+minute
						meridiem = "AM"
					}
					
					/*console.log(weightList[i].kg)*/
					
					//삽입할 엘리먼트
					td = `<tr>
							  <td>${weightList[i].measureDate}</td>
							  <td class="${meridiem}">${measureTime+" "+meridiem}</td>
							  <td>${weightList[i].kg} KG</td>
						  </tr>`
				
				//popup창에 데이터 삽입
				popTbody.insertAdjacentHTML("beforeend", td);
				}
				/*console.log(popTr.children)*/
			}
		})
	}
})

//close버튼
function closePopup(){
	 let overlay = document.querySelector(".overlay");
     let popup = document.querySelector(".popup");
	 let popTbody = document.querySelector(".popTbody")
     let num = popTbody.children.length
     	
     	//popup창 닫기
        if(!overlay.classList.contains("d-none")&&!popup.classList.contains("d-none")){
            overlay.classList.add("d-none");
            popup.classList.add("d-none");
        
        //popup창 데이터 삭제
		for(let i = 0; i < 3*num; i++) {
			popTbody.removeChild(popTbody.children[0]);
		}
	}
}