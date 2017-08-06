<dashboard-user-user>
    <div class="col-md-6 text-left no-gutter user-container-2">
        <a href="#edit-profile" class="modal-link" data-toggle="modal">
            <span class="fa-stack fa-lg social-btn filterdark float-btn">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
            </span>
        </a>
        <p class="dashboard-text profile-name">{ firstname } { lastname }</p>
        <div class="col-sm-4 col-xs-5 user-profile-push">
                <p class="dashboard-user user-text">Username:</p>
        </div>
        <div class="col-sm-8 col-xs-7">
            <p class="dashboard-user user-text">{ username }</p>
        </div>
        <div class="col-sm-4 col-xs-5 user-profile-push">
                <p class="dashboard-user user-text-alt">Email:</p>
        </div>
        <div class="col-sm-8 col-xs-7">
            <p class="dashboard-user user-text-alt">{ email }</p>
        </div>
        <div class="col-sm-4 col-xs-5 user-profile-push">
                <p class="dashboard-user user-break hidden-md">Kickstarter Name:</p>
        </div>
        <div class="col-sm-8 col-xs-7">
            <p class="dashboard-user user-break hidden-md">{ kickstarter || 'N/A' }</p>
        </div>
        <div class="col-sm-4 col-xs-5 user-profile-push">
                <p class="dashboard-user user-text-alt hidden-md">Indiegogo Name:</p>
        </div>
        <div class="col-sm-8 col-xs-7">
            <p class="dashboard-user user-text-alt hidden-md">{ indiegogo || 'N/A' }</p>
        </div>

        <div class="user-position-box">
        <p class="dashboard-text profile-name">Krowdspace Stats</p>
            <div class="col-xs-4 no-gutters text-center user-stat-box-2">
            <p class="dashboard-user user-text-alt">Campaigns</p>
                <p class="social-metric">13</p>
            </div> 
            <div class="col-xs-4 no-gutters text-center user-stat-box-2">
                <p class="dashboard-user user-text-alt">Rewards</p>
                    <p class="social-metric">{ '$1,329' }</p>
            </div> 
            <div class="col-xs-4 no-gutters text-center user-stat-box-2">
                <p class="dashboard-user user-text-alt">Pledges</p>
                    <p class="social-metric">{ '$84,322' }</p>
            </div> 
        </div>
        <div class="clearfix"></div>
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
        console.log(res);
    }

    setProjectDeets(res)
    {
        let endTime = res.data[0].project_data.meta_data.endTime,
            projectTime = res.data[0].project_data.meta_data.duration,
            end = new Date(endTime),
            remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 3600000,
            daysMax = Math.max(0, remaining);

        this.countdowntimer = Math.floor(daysMax);
        this.rewardAmount = '$' + res.data[0].project_data.info_data.reward_ammount;
    }
</script>
</dashboard-user-user>