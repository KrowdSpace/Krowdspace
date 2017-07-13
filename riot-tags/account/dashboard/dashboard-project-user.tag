<dashboard-project-user>
    <div class="col-sm-6 text-center no-gutter user-container">
        <a href="#edit-profile" class="modal-link" data-toggle="modal">
            <span class="fa-stack fa-lg social-btn float-btn">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
            </span>
        </a>
            <p class="dashboard-text profile-name">{ firstname } { lastname }</p>
            <div class="col-sm-4 text-center divider-inside-right user-stat-box">
                    <p class="dashboard-user">Projects Launched</p>
                    <p class="social-metric">{ index }</p>
            </div>
            <div class="col-sm-4 text-center divider-inside-right user-stat-box">
                    <p class="dashboard-user">Hours Remaining</p>
                    <p class="social-metric">{ countdowntimer || 0 }</p>

            </div>
            <div class="col-sm-4 text-center user-stat-box">
                <p class="dashboard-user">Reward Value</p>
                <p class="social-metric">{ rewardAmount || 0 }</p>
            </div>
            <div class="col-sm-8 text-left">
                <div class="col-sm-4 user-box-left">
                    <p class="dashboard-user">Username:</p>
                <p class="dashboard-user">Email:</p>
                <p class="dashboard-user">Kickstarter:</p>
                <p class="dashboard-user">Indiegogo:</p>
                </div>
                <div class="col-sm-8 user-box-right">
                    <p class="dashboard-user">{ username }</p>
                <p class="dashboard-user">{ email }</p>
                <p class="dashboard-user">{ kickstarter || 'N/A' }</p>
                <p class="dashboard-user">{ indiegogo || 'N/A' }</p>
                </div>
            </div>
            <div class="col-sm-4">
            </div>
        </div>
<script>
    this.on('update', ()=>
    {
        if(!opts.user) 
            return;

        let userRes = { data: opts.user },
            projRes = { data: [opts.project] };

        this.setUserDeets(userRes);
        if(opts.project)
            this.setProjectDeets(projRes);
    });

    setUserDeets(res)
    {
        this.firstname = res.data.user_data.fname;
        this.lastname = res.data.user_data.lname;
        this.email = res.data.email;
        this.kickstarter = res.data.user_data.ksuser;
        this.indiegogo = res.data.user_data.iguser;
        this.username = res.data.username;
    }

    setProjectDeets(res)
    {
        let endTime = res.data[0].project_data.web_data.hours['data-end_time'],
            projectTime = res.data[0].project_data.web_data.hours['data-duration'],
            end = new Date(endTime),
            remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 3600000,
            daysMax = Math.max(0, remaining);

        this.countdowntimer = Math.floor(daysMax);
        this.rewardAmount = '$' + res.data[0].project_data.info_data.reward_ammount;
    }
</script>
</dashboard-project-user>