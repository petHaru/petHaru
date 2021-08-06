window.addEventListener("load", ()=>{
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
		preWeek = 0;
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
					data: avg
						}]
					}
			})		
		}
		
	})


	$.ajax({
	url : "/api/weightRecord/weekChart",
	type : "post",
	dataType : "json",
	data : {"spetId": $('.petId').val()},
	success : function(weekWeightList){

		let totalSize = weekWeightList.length //데이터 개수
		let date = "" //측정날짜
		let time = "" //측정시간
		let dateTime = [] //date+time
		let kg = [] //체중
		
		//주차별 체중변화 chart 및 chart별 데이터 push
		for(let i=0; i<size; i++){
			for(let j=0; j<totalSize; j++){
				//현재주차 데이터 변수에 담기
				preWeek = weekWeightList[j].week
				date = weekWeightList[j].measureDate
				time = weekWeightList[j].measureTime
				
				basicWeek = preWeek - weekWeightList[0].week;
				//현재week == 기준week이면 데이터 push 
				if(week[i] == basicWeek){
					dateTime.push(date+" "+time)
					kg.push(weekWeightList[j].kg)
				}
			}
			
			//weekChart(주차별 체중변화) 생성
			let name = '#weekChart'+i
			console.log(name)
			let weekChart = $(name);			
			new Chart(weekChart, {
	
				type:'line',
				data:{
					labels: dateTime,
					datasets:[{
						label: labelWeek[i]+'차',
						data: kg
							}]
						}
				})
			basicWeek++ //기준week +1
			dateTime = [] //list 초기화
			kg = [] //list 초기화
		}
	}
})

	
	//버튼 클릭 이벤트
	let weekBtn = document.querySelector(".weekBtn")
	let totalBtn = document.querySelector(".totalBtn")
	
	weekBtn.onclick = ()=>{
		$('.totalContainer').hide();
		$('.weekContainer').show();
	}
	
	totalBtn.onclick = ()=>{
		$('.totalContainer').show();
		$('.weekContainer').hide();
	}
})