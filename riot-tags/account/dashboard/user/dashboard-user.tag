<dashboard-user>
<style>
    @media screen and (max-width: 1200px) {
        .project-user-container {
            height: 224px;
        }
    }
    @media screen and (max-width: 991px) {
        .project-user-container {
            height: 300px;
            border-left:1px solid #000;
        }
    }
    @media screen and (max-width: 767px) {
        .project-user-container {
            width: 400px;
            margin-left: auto;
            margin-right: auto;
        }
    }
</style>
    <div class="col-md-6 text-left no-gutter project-user-container">
        <a href="#edit-profile" class="modal-link" data-toggle="modal">
            <span class="fa-stack fa-lg social-btn filterdark float-btn">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
            </span>
        </a>
        <p class="profile-name capital">{ firstname || 'Firstname' } { lastname || 'Lastname' }</p>
        <div class="col-sm-4 col-xs-5 user-profile-push">
                <p class="dashboard-user user-break">Username:</p>
        </div>
        <div class="col-sm-8 col-xs-7">
            <p class="dashboard-user user-break capital">{ username || 'Username' }</p>
        </div>
        <div class="col-sm-4 col-xs-5 user-profile-push">
                <p class="dashboard-user">Email:</p>
        </div>
        <div class="col-sm-8 col-xs-7">
            <p class="dashboard-user capital">{ email || 'Email Address' }</p>
        </div>
        <div class="col-sm-4 col-xs-5 user-profile-push">
                <p class="dashboard-user user-break hidden-md">Kickstarter Name:</p>
        </div>
        <div class="col-sm-8 col-xs-7">
            <p class="dashboard-user user-break hidden-md capital">{ kickstarter || 'N/A' }</p>
        </div>
        <div class="col-sm-4 col-xs-5 user-profile-push">
                <p class="dashboard-user hidden-md">Indiegogo Name:</p>
        </div>
        <div class="col-sm-8 col-xs-7">
            <p class="dashboard-user hidden-md capital">{ indiegogo || 'N/A' }</p>
        </div>

        <div class="user-position-box">
        <p class="dashboard-text profile-name">Krowdspace Campaigns</p>
            <div class="col-xs-4 no-gutters text-center user-stat-box">
            <p class="dashboard-user user-text-alt">Kickstarter</p>
                <p class="social-metric">{ kickstarterTotal }</p>
            </div> 
            <div class="col-xs-4 no-gutters text-center user-stat-box">
                <p class="dashboard-user user-text-alt">Indiegogo</p>
                    <p class="social-metric">{ indiegogoTotal }</p>
            </div> 
            <div class="col-xs-4 no-gutters text-center user-stat-box">
                <p class="dashboard-user user-text-alt">Rewards</p>
                    <p class="social-metric">${ krowdspaceTotalReward || 0}</p>
            </div> 
        </div>
        <div class="clearfix"></div>
    </div>
<script>
this.on('mount', () => {
    krowdspace.v1.stats().then((res)=>
    {
        this.kickstarterTotal = res.data.ksTotal;
        this.indiegogoTotal = res.data.igTotal;

        let kickstarterTotalReward = res.data.platforms[0].rewardAmmount,
            indiegogoTotalReward = res.data.platforms[1].rewardAmmount,
            rewardValue = kickstarterTotalReward + indiegogoTotalReward;
        this.krowdspaceTotalReward = rewardValue.toLocaleString();

        this.update();

    },
    (err)=> 
    {
        console.log(err);
    })
});
</script> 
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
        let endTime = res.data[0].project_data.meta_data.endTime,
            projectTime = res.data[0].project_data.meta_data.duration,
            end = new Date(endTime),
            remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 3600000,
            daysMax = Math.max(0, remaining);

        this.countdowntimer = Math.floor(daysMax);
        this.rewardAmount = '$' + res.data[0].project_data.info_data.reward_ammount;
    }
</script>
</dashboard-user>