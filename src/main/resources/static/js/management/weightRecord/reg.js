function check(){
    let form = document.querySelector(".form")
    let inputDate = document.querySelector(".inputDate")
    let inputTime = document.querySelector(".inputTime")
    let inputKg = document.querySelector(".inputKg")
	
	//측정 날짜 입력제약
    if(inputDate.value == ''){
		alert("측정 날짜를 입력하세요")
		return false;
	}
	
	//측정 시간 입력제약
    if(inputTime.value == ''){
		alert("측정 시간을 입력하세요")
		return false;
	}
	
	//체중 입력제약
    if(inputKg.value == ''){
		alert("체중을 입력하세요")
		return false;
	}
	
	//문제없을경우 submit 실행
    alert("체중이 기록되었습니다.")
	form.submit();
}