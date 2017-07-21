<dashboard-project-user>
<style>
@media screen and (max-width: 1200px) {
        .user-container {
            height: 242px;
        }
    }
@media screen and (max-width: 991px) {
        .user-container {
            height: 282px;
        }
    }
@media screen and (max-width: 767px) {
        .user-container {
            height: auto;
            margin-left: auto;
            margin-right: auto;
            width: 400px;
            border-top: none;
        }
    }
</style>
    <div class="col-md-6 text-center no-gutter user-container">
        <a href="#edit-profile" class="modal-link" data-toggle="modal">
            <span class="fa-stack fa-lg social-btn float-btn">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
            </span>
        </a>
            <p class="dashboard-text profile-name">{ firstname } { lastname }</p>

            <div show={ project }>
                <div class="col-xs-4 text-center divider-inside-right user-stat-box">
                        <p class="dashboard-user">Current Project</p>
                        <p class="social-metric">{ opts.index }</p>
                </div>
                <div class="col-xs-4 text-center divider-inside-right user-stat-box">
                        <p class="dashboard-user">Hours Remaining</p>
                        <p class="social-metric">{ countdowntimer || 0 }</p>
                </div>
                <div class="col-xs-4 text-center user-stat-box">
                    <p class="dashboard-user">Reward Value</p>
                    <p class="social-metric">{ rewardAmount || 0 }</p>
                </div>

            </div>
            <div show={ !project }>
                <div class="col-xs-4 text-center divider-inside-right user-stat-box">
                        <p class="dashboard-user">Projects Launched</p>
                        <p class="social-metric">13</p>
                </div>
                <div class="col-xs-4 text-center divider-inside-right user-stat-box">
                        <p class="dashboard-user">Value of Rewards</p>
                        <p class="social-metric">{ '$1,329' }</p>
                </div>
                <div class="col-xs-4 text-center user-stat-box">
                    <p class="dashboard-user">Project Pledges</p>
                    <p class="social-metric">{ '$84,322' }</p>
                </div>
            </div>
            <div class="col-lg-8 col-md-12 text-left">
                <div class="col-md-4 col-sm-4 col-xs-4 user-box-left">
                    <p class="dashboard-user">Username:</p>
                <p class="dashboard-user">Email:</p>
                <p class="dashboard-user hidden-md">Kickstarter:</p>
                <p class="dashboard-user hidden-md">Indiegogo:</p>
                </div>
                <div class="col-md-8 col-sm-8 col-xs-8 user-box-right">
                    <p class="dashboard-user">{ username }</p>
                <p class="dashboard-user">{ email }</p>
                <p class="dashboard-user hidden-md">{ kickstarter || 'N/A' }</p>
                <p class="dashboard-user hidden-md">{ indiegogo || 'N/A' }</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="col-lg-4 hidden-md hidden-sm hidden-xs">
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
        console.log(res);
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