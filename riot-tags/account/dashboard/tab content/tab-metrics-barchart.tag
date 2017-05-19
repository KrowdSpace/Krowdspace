<tab-metrics-barchart>
<div class="project-views-box">
	<p class="bar-metrics-title">PROJECT VIEWS PER DAY</p>
	<canvas id="myBar" height="100"></canvas>
</div>
<script>
this.on('mount', function() {
Chart.defaults.global.legend.display = false;
var ctx = document.getElementById("myBar");
var myChart = new Chart(ctx, {
    type: 'bar',
	
    data: {
        labels: ["Day 1", "Day 2", "Day 3", "Day 4", "Day 5", "Day 6","Day 7", "Day 8", "Day 9", "Day 10", "Day 11", "Day 12","Day 13", "Day 14", "Day 15", "Day 16", "Day 17", "Day 18","Day 19", "Day 20", "Day 21", "Day 22", "Day 23", "Day 24"],
        datasets: [{
            label: ' Total Views',
            data: [5, 11, 3, 5, 2, 3,10, 13, 3, 5, 2, 3, 2, 9, 3, 5, 2, 3,13, 8, 3, 2, 5, 3],
            backgroundColor: [
                '#fed136',
                '#fed136',
                '#fed136',
                '#fed136',
                '#fed136',
                '#fed136',
				'#fed136',
                '#fed136',
                '#fed136',
                '#fed136',
                '#fed136',
                '#fed136',
				'#fed136',
                '#fed136',
                '#fed136',
                '#fed136',
                '#fed136',
                '#fed136',
				'#fed136',
                '#fed136',
                '#fed136',
                '#fed136',
                '#fed136',
                '#fed136'
            ],
            borderWidth: 1
        }]
    },
    options: {
        scales: {
			xAxes: [{
                display: false,
				categoryPercentage: .9,
				barPercentage: .9
            }],
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    }
});

});
</script>
</tab-metrics-barchart>