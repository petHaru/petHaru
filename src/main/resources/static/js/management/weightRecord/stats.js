window.addEventListener("load",()=>{
	let recordTable = document.querySelector(".record-table");
	
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
				/*console.log(weightList[0].measureDate)*/
				let popTr = document.querySelector(".popTr")
				let td = ""
				
				for(let i=0; i<weightList.length; i++){
					let time = weightList[i].measureTime
					let hour = parseInt(time.substr(0,2))
					let minute = parseInt(time.substr(3,5))
					let measureTime = ""
					let meridiem ="PM"
					
					if(minute<10)
						minute="0"+minute
					
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
						
					td = `<tr>
							  <td>${weightList[i].measureDate}</td>
							  <td class="${meridiem}">${measureTime+" "+meridiem}</td>
							  <td>${weightList[i].kg} KG</td>
						  </tr>`
				
				//popup창에 데이터 삽입
				popTr.insertAdjacentHTML("beforeend", td);
				}
				
				console.log(popTr.children)
								
				
			}
		})
		
		
			
	};
	
})

//close버튼
function closePopup(){
	 let overlay = document.querySelector(".overlay");
     let popup = document.querySelector(".popup");
	 let popTr = document.querySelector(".popTr")
     let num = popTr.children.length
     
        if(!overlay.classList.contains("d-none")&&!popup.classList.contains("d-none")){
            overlay.classList.add("d-none");
            popup.classList.add("d-none");
        console.log(num)
        
        //popup창 데이터 삭제
		for(let i = 0; i < 3*num; i++) {
			popTr.removeChild(popTr.children[0]);
		}
	}
}