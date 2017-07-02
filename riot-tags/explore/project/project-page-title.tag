<project-page-title>
    <div class="col-sm-6 text-left no-gutter user-container-project">
        <p class="dashboard-text-alt" style="height: 38px;">{ projectTitle }</p>
            <p class="dashboard-text-alt"style="height: 60px;">{ projectDescription }</p>
            <p class="dashboard-text-alt" style="height: 38px;">Reward: { projectReward }</p>
            <p class="dashboard-text-alt" style="height: 50px;">To view the coupon code or directly link to the rewards page please follow the "Support Project button below</p>
            <div class="col-sm-6 text-center divider-inside-right backed-box">
				<a show={ projectbtn } href="#kickstarter-reward" class="modal-link" data-toggle="modal"><p class="back-project">BACK PROJECT</p></a>
                <a show={ !projectbtn } href="{ projectLink }" target="_blank" ><p class="back-project">BACK PROJECT</p></a>
			</div>
            <div class="col-sm-6 text-center backed-box-right">
                <p class="social-metric">{ countdown || 0 } DAYS LEFT</p>
			</div>
	</div>
<script>
    krowdspace.projects.project(this.opts.uri).then((res)=>
    {
        this.projectTitle = res.data[0].project_data.web_data.title.content;
        this.projectDescription = res.data[0].project_data.web_data.description.content;
        this.projectReward = res.data[0].project_data.info_data.reward;
        this.projectLink = res.data[0].project_data.info_data.url;

        let platform = res.data[0].platform;

        if (platform == 'kickstarter') 
        {
            projectbtn = true;
            console.log('Kickstarter Reward');
        }else{
            console.log('Indiegogo Reward');
        }; 

        let endTime = res.data[0].project_data.web_data.hours['data-end_time'],
            projectTime = res.data[0].project_data.web_data.hours['data-duration'],
            end = new Date(endTime),
            remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 86400000;
            daysMax = Math.max(0, remaining);

        this.countdown = Math.floor(daysMax);
        this.update();
    },
    (err)=> 
    {
        
    });
</script>
</project-page-title>	
	