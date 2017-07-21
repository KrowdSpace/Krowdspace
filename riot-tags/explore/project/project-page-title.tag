<project-page-title>
<style>
@media screen and (max-width: 1200px) {
        .user-container-project {
            height: 242px;
        }
    }
@media screen and (max-width: 767px) {
        .user-container-project {
            height: auto;
            margin-left: auto;
            margin-right: auto;
            width: 400px;
            border-top: none;
        }
        .project-coupon {
            margin-bottom: 50px;
        }
    }
</style>
    <div class="col-md-6 text-left no-gutter user-container-project">
        <p class="dashboard-text-alt project-title">{ projectTitle }</p>
            <p class="dashboard-text-alt hidden-md project-description">{ projectDescription }</p>
            <p class="dashboard-text-alt project-reward-text">Reward: { projectReward }</p>
            <p class="dashboard-text-alt hidden-md hidden-sm project-coupon">To view the coupon code or directly link to the rewards page please follow the "Support Project button below</p>
            <div style="position: absolute; bottom: 10px; left: 0; right: 0;">
            <div class="col-xs-6 text-center divider-inside-right backed-box">
				<a show={ projectbtn } href="#kickstarter-reward" class="modal-link" data-toggle="modal"><p class="back-project">BACK PROJECT</p></a>
                <a show={ !projectbtn } href="{ projectLink }" target="_blank" ><p class="back-project">BACK PROJECT</p></a>
			</div>
            <div class="col-xs-6 text-center backed-box-right" >
                <p class="social-metric">{ countdown || 0 } DAYS LEFT</p>
            </div>
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
	