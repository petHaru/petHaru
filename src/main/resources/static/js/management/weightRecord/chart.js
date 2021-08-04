window.addEventListener("load", ()=>{
	
	$.ajax({
	url : "/api/weightRecord/chart",
	type : "post",
	dataType : "json",
	data : {"spetId": $('.petId').val()},
	success : function(weightStats){

		let size = weightStats.length
		let week = []
		let avg = []
		let basicWeek = weightStats[0].week;
		let preWeek = 0;
		
		for(let i=0; i<size; i++){
			preWeek = weightStats[i].week
			week.push(preWeek-basicWeek+"주")
			avg.push(weightStats[i].avg)
		}
		
		console.log(week)
		console.log(avg)
		
		let chart = $('#chart');
		let lineChart = new Chart(chart, {
		
		type:'line',
		data:{
			labels:week,
			datasets:[{
				label: '주차별 평균 체중',
				data: avg
					}]
				}
			})
		
		}
		
	})
})