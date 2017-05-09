<tab-metrics-goal>
   <div class="col-md-4 chart-last">
		<p class="social-title-alt text-center">CAMPAIGN PROGRESS</p>
        <div class="text-center project-growth-box">
            <div class="chart-box">
                <div id="goalMetrics"></div>
            </div>
        </div>
        <div class="social-content-box" style="border: none;">
            <div class="col-sm-6 metric-left">
                <div class="divider-inside-right">
					<p class="text-center social-metric">28K</p>
                <p class="social-content-sub">TOTAL<span class="social-content-right"><i class="fa fa-caret-up" aria-hidden="true"></i> 3%</span></p>
                </div>
            </div>
            <div class="col-sm-6 social-content-box-right" style="padding: 5px; margin: 0px;">
                 <p class="text-center social-metric">100K</p>
                    <p class="text-center social-content-sub">FUNDING GOAL</p>
            </div>
        </div>
    </div>
    <script>
        this.on('mount', function() {
        var bar = new ProgressBar.Circle(goalMetrics, {
          color: '#000',
          // This has to be the same size as the maximum width to
          // prevent clipping
        	
          strokeWidth: 15,
          trailWidth: 15,
          trailColor: '#ccc',
          easing: 'easeInOut',
          duration: 1400,
          text: {
            autoStyleContainer: false
          },
          from: { color: '#fed136', width: 15 },
          to: { color: '#fed136', width: 15 },
          // Set default step function for all animate calls
          step: function(state, circle) {
            circle.path.setAttribute('stroke', state.color);
            circle.path.setAttribute('stroke-width', state.width);
        
            var value = Math.round(circle.value() * 100);
            if (value === 0) {
              circle.setText('');
            } else {
              circle.setText(value);
            }
        
          }
        });
        bar.text.style.fontSize = '40px';
        bar.text.style.fontWeight = '600';
        bar.text.style.fontColor = '#3f434f';
        bar.text.style.color = '#3f434f';
        	
        
        bar.animate(.28);  // Number from 0.0 to 1.0
        });
            
    </script>
</tab-metrics-goal>