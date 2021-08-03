window.addEventListener("load",()=>{
	let recordTable = document.querySelector(".record-table");
	
	//pop-up창
	recordTable.onclick = (e)=>{
		let table = e.target
		let line = table.parentElement
		let preWeek = line.getElementsByClassName('preWeek')
		
		/*console.log(line)*/

		var overlay = document.querySelector(".overlay")
        var popup = document.querySelector(".popup");
		
		if(line.classList.contains("line")){
	        if(overlay.classList.contains("d-none")&&popup.classList.contains("d-none")){
	            overlay.classList.remove("d-none");
	            popup.classList.remove("d-none");
	        }
		}
		
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
					td = `<tr>
							  <td>${weightList[i].measureDate}</td>
							  <td>${weightList[i].measureTime}</td>
							  <td>${weightList[i].kg}</td>
						  </tr>`
				
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
        
		for(let i = 0; i < 3*num; i++) {
			popTr.removeChild(popTr.children[0]);
		}
	}
}