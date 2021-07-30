window.addEventListener("load", ()=>{
	
	var chart = $('#chart');
	var lineChart = new Chart(chart, {
	
	type:'line',
	data:{
		labels:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
		datasets:[{
			label: '2021',
			data: [0, 10, 5, 2, 20, 30, 45, 28, 34, 46, 27, 14]
			}
		]
	}
})

})