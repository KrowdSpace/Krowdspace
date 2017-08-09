<project-page-title>
     <div class="col-md-6 text-left no-gutter user-container-project">
        <p class="dashboard-text-alt project-title">{ projectTitle }</p>
        <p class="dashboard-text-alt project-description">{ projectDescription }</p>
        <p class="dashboard-text-alt project-reward-text">Reward: { projectReward }</p>
        <p class="dashboard-text-alt hidden-md hidden-sm project-coupon">To view the coupon code or directly link to the rewards page please click on the "Back Project" button below.</p>
        <div class="reward-position-box">
            <div class="col-xs-6 text-center divider-inside-right backed-box">
                <a show={ projectbtn } href="#kickstarter-reward" class="modal-link" data-toggle="modal">
                    <p class="back-project">BACK PROJECT</p>
                </a>
                <a show={ !projectbtn } href="{ projectLink }" target="_blank" >
                    <p class="back-project">BACK PROJECT</p>
                </a>
            </div>
            <div class="col-xs-6 text-center backed-box-right" >
                <p class="social-metric">{ countdown || 0 } DAYS LEFT</p>
            </div>
        </div>
    </div>
    <script>
        krowdspace.projects.project(this.opts.uri).then((res)=>
        {
            let platform = res.data[0].platform;
            if (platform == 'kickstarter') 
            {
                projectbtn = true;    
            }else{
                projectbtn = false;
                this.projectLink = res.data[0].project_data.info_data.ig_reward;
            }; 
            
            this.projectReward = res.data[0].project_data.info_data.reward;
            this.projectTitle = res.data[0].project_data.meta_data.title;
            this.projectDescription = res.data[0].project_data.meta_data.description;

            let endTime = res.data[0].project_data.meta_data.endTime,
                projectTime = res.data[0].project_data.meta_data.duration,
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