<project-page-title>
    <div class="col-sm-6 text-left no-gutter user-container" style="padding: 20px;">
        <p class="dashboard-text" style="height: 38px;">{ projectTitle }</p>
            <p class="dashboard-text"style="height: 74px;">{ projectDescription }</p>
            <p class="dashboard-text" style="height: 38px;">Reward: { projectReward }</p>
            <p class="dashboard-text">To view the coupon code or directly link to the rewards page please follow the "Support Project button below</p>
            <div class="col-sm-6 text-center divider-inside-right" style="padding-right: 20px; margin-top: 15px;">
				<p class="back-project">BACK PROJECT</p>
			</div>
            <div class="col-sm-6 text-center" style="padding-left: 20px; margin-top: 25px;">
                <p class="social-metric">{ countdown } DAYS LEFT</p>
			</div>
	</div>
<script>

    krowdspace.projects.project('Adam').then((res)=>
    {
        this.projectTitle = res.data[0].project_data.web_data.title.content;
        this.projectDescription = res.data[0].project_data.web_data.description.content;
        this.projectReward = res.data[0].project_data.info_data.reward;

        let endTime = res.data[0].project_data.web_data.hours['data-end_time'],
            projectTime = res.data[0].project_data.web_data.hours['data-duration'],
            end = new Date(endTime),
            _second = 1000,
            _minute = _second * 60,
            _hour = _minute * 60,
            _day = _hour * 24,
            timer;

        function showRemaining() 
        {
            let now = new Date();
                distance = end - now;
                projectdays = Math.floor(distance / _day);
                hours = Math.floor((distance % _day) / _hour);
                minutes = Math.floor((distance % _hour) / _minute);
                seconds = Math.floor((distance % _minute) / _second);
            return projectdays;
        }

        timer = setInterval(showRemaining, 1000);
        this.countdown = showRemaining(); 
        this.update();

    },
    (err)=> 
    {
        console.log(err);
    });
</script>
</project-page-title>	
	