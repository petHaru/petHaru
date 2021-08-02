window.addEventListener("load",()=>{
	let recordTable = document.querySelector(".record-table");
	
	
	//pop-up창
	recordTable.onclick = (e)=>{
		let table = e.target
		var overlay = document.querySelector(".overlay")
        var popup = document.querySelector(".popup");
		
		if(table.parentElement.classList.contains("line")){
	        if(overlay.classList.contains("d-none")&&popup.classList.contains("d-none")){
	            overlay.classList.remove("d-none");
	            popup.classList.remove("d-none");
	        }
		}
			
	};
	
})