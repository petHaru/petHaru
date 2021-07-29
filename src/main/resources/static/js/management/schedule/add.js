
//reg popup
window.addEventListener("load",function(){
    var section = document.querySelector("#content-wrap");
    var addBtn = section.querySelector(".btn-add");

    addBtn.onclick = function(e){
        var overlay = section.querySelector(".overlay");
        var popup = section.querySelector(".popup-wrapper1");
        if(overlay.classList.contains("d-none")&&popup.classList.contains("d-none")){
            overlay.classList.remove("d-none");
            popup.classList.remove("d-none");
        }  
    }   
});

//edit popup
function editBtnClick(scheduleId) {
	console.log(scheduleId);
	let overlay = document.querySelector(".overlay");
	let editPopup = document.querySelector(".popup-wrapper2");
	if (overlay.classList.contains("d-none") && editPopup.classList.contains("d-none")) {
		overlay.classList.remove("d-none");
		editPopup.classList.remove("d-none");
		
		let titleInput = editPopup.querySelector(".title-input"); //document에서 가져오니까 안됨..아마 비동기라서 그러는듯..?ㅠ
		let dateTimeInput = editPopup.querySelector(".dateTime-input");
		let contentInput = editPopup.querySelector(".content-input");
		let form = editPopup.querySelector("form");
	
		
		let hashtag1 = editPopup.querySelector(".hashtag1");
		let hashtag2 = editPopup.querySelector(".hashtag2");
		let hashtag3 = editPopup.querySelector(".hashtag3");
		let hashtag4 = editPopup.querySelector(".hashtag4");
		
		let hiddenInput = document.createElement("input");
		
		hiddenInput.setAttribute("type", "hidden");

		hiddenInput.setAttribute("name", "id");	
		hiddenInput.setAttribute("value", scheduleId);
		form.appendChild(hiddenInput);
		
		fetch(`/api/schedule/${scheduleId}`)
		.then(response=>{
			return response.json();
		})
		.then(json=>{
			titleInput.value = json.title;		
			dateTimeInput.value=json.dateTime;
			contentInput.value=json.content;
			
			switch(json.scheduleTypeId){
				case 1:
					
					hashtag1.checked = true;
					break;
				case 2:
					
					hashtag2.checked = true;
					break;
				case 3:
					
					hashtag3.checked = true;
					break;
				case 4:
					
					hashtag4.checked = true;
					break;
				
			}
		});
	}
}

function closePopup(num){
	 let overlay = document.querySelector(".overlay");
     let popup = document.querySelector(".popup-wrapper"+num);
        if(!overlay.classList.contains("d-none")&&!popup.classList.contains("d-none")){
            overlay.classList.add("d-none");
            popup.classList.add("d-none");
        }  
	
}


window.addEventListener("load",function(){
    var popup = document.querySelector(".popup-wrapper1");
    var hashtagContainer = popup.querySelector(".hashtag-container");
    
    var selected =null;
    
        hashtagContainer.onclick = function(e){
            var target = e.target;
    
            if(!target.classList.contains("hashtag")){
                return;
            }
            
            if(selected !=null&&target!=selected){
                selected.classList.remove("selected-hashtag");
            }
            selected = target;
            target.classList.toggle("selected-hashtag");
        }

});