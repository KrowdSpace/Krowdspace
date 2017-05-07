<dash-widget-social-pie>
    <div class="social-container">
        <div class="social-header-dropdown">
            <p class="social-title">SOCIAL MEDIA SHARE</p>
        </div>
        <div class="social-share-box">
            <canvas id="myChart"></canvas>
        </div>
        <div class="social-share-content">
            <p class="social-content-title"><i class="fa fa-square facebook-sq" aria-hidden="true"></i>FACEBOOK</p>
            <p class="social-content-title"><i class="fa fa-square twitter-sq" aria-hidden="true"></i>TWITTER</p>
            <p class="social-content-title"><i class="fa fa-square pinterest-sq" aria-hidden="true"></i>PINTEREST</p>
            <p class="social-content-title"><i class="fa fa-square instagram-sq" aria-hidden="true"></i>INSTAGRAM</p>
        </div>
    </div>
    <script>
        this.on('mount', function() {
			var ctx = document.getElementById("myChart");
			var data = {
					labels: [
					" Facebook",
					" Twitter",
					" Pinterest",
					" Instagram"
						],
				datasets: [
					{
						data: [300, 50, 100, 40],
						backgroundColor: [
							"#3b5998",
							"#0084b4",
							"#C92228",
							"#125688"
						],
						hoverBackgroundColor: [
							"#3b5998",
							"#0084b4",
							"#C92228",
							"#125688"
						],			
					}],	
			};  
			var options = { 
				cutoutPercentage:0,
				legend: {
					display: false
				},
			};  
			var myDoughnutChart = new Chart(ctx, {
				type: 'doughnut',
				data: data,
				options: options
			});
        });      
    </script>
</dash-widget-social-pie>