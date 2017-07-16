<dashboard-project-hours>
    <div class="col-sm-3 dashboard-hours-container no-gutter shadow">
        <div id="circleChart"></div>
        <div class="col-sm-6 chart-data text-center">
            <div class="divider-inside-right">
                <p class="dashboard-text-alt">Days Left</p>
                <p class="social-metric">{ countdownTimer }</p>
            </div>
        </div>
        <div class="col-sm-6 chart-data text-center">
            <div>
                <p class="dashboard-text-alt">Total Days</p>
                <p class="social-metric">{ projectLength }</p>
            </div>
        </div>
    </div>
<script>
    this.progBar = null;

this.on('update', ()=>
    {
        if(!opts.project)
            return;
        
        let res = {data: [opts.project]}

        let endTime = res.data[0].project_data.web_data.hours['data-end_time'],
            projectTime = res.data[0].project_data.web_data.hours['data-duration'],
            end = new Date(endTime),
            remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 86400000,
            daysMax = Math.max(0, remaining);
            
        let bar = null;
        
        if(!this.progBar)
            this.progBar = bar = new ProgressBar.Circle(circleChart, 
            {
                color: '#3f434f',
                strokeWidth: 16,
                trailWidth: 16,
                easing: 'easeInOut',
                duration: 1400,
                text: 
                {
                    autoStyleContainer: false
                },
                from: 
                { 
                    color: '#fed136', 
                    width: 16 
                },
                to: 
                { 
                    color: '#fed136', 
                    width: 16 
                },
                step: function(state, circle) 
                {
                    circle.path.setAttribute('stroke', state.color);
                    circle.path.setAttribute('stroke-width', state.width);
                    var value = Math.round(circle.value() * 100);
                    if (value === 0) 
                    {
                        circle.setText('');
                    } else 
                    {
                        circle.setText(value + '%');
                    }
                }
            });
        else
            bar = this.progBar;

    let projectDays = daysMax,
        negativeCircleProgress = projectDays/projectTime - 1,
        circleProgress = Math.abs(negativeCircleProgress);

        bar.text.style.fontFamily = '"Montserrat-Bold"';
        bar.text.style.fontSize = '30px';
        bar.text.style.fontWeight = '600';
        bar.animate(circleProgress);  // Number from 0.0 to 1.0

        this.countdownTimer = Math.floor(daysMax) ;
        this.projectLength = res.data[0].project_data.web_data.hours['data-duration'];
});

</script>
</dashboard-project-hours>	
	