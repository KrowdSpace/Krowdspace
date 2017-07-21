riot.tag2('admin-modal-login', '<div class="container login-check-container"> <div class="krowdspace-modal col-lg-offset-3 col-md-6"> <div id="modal"> <div class="modal-body modal-custom"> <form onsubmit="{loginSubmit}"> <div class="col-sm-12 text-left register-container-modal"> <p class="modal-heading modal-heading-alt">Krowdspace Login</p> <div id="errorLog" class="alert alert-danger alert-dismissable fade in"> <a class="close" onclick="$(\'.alert\').hide()"><i class="fa fa-close"></i></a> <strong>Error:</strong> Invalid username or password. </div> <div class="has-feedback"> <label class="control-label" for="username"></label> <input type="text" class="form-control box-radius" id="username" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off"> <span class="fa fa-user form-control-feedback"></span> </div> <div class="has-feedback"> <label class="control-label" for="password"></label> <input type="password" class="form-control box-radius" id="password" placeholder="Password" ref="passwordlogin" autocorrect="off" autocapitalize="off"> <span class="fa fa-lock form-control-feedback"></span> </div> <div class="col-xs-6 checkbox loginbox text-left"> <label> <input type="checkbox" ref="checkbox" id="checkbox">Remember Me </label> </div> <div class="col-xs-6 checkbox text-right forgot-box"> <a onclick="{registerPassword}"><p class="forgot-pass">Forgot Password?</p></a> </div> </div> <div class="text-center"> <input type="submit" class="landing-submit alt-border" name="submit" value="Login"> </div> </form> <div class="text-center"> <p class="login-float-text">Are you in the right place? <a class="function-link" href="/#/explore">Explore Page!</a></p> </div> </div> </div> </div> </div>', '', '', function(opts) {

this.loginSubmit = function(e)
{
    e.preventDefault();

    let USERNAME = this.refs.usernamelogin.value,
        PASSWORD = this.refs.passwordlogin.value,
        STAYLOGGED = this.refs.checkbox.checked;

    krowdspace.v1.login(USERNAME, PASSWORD, STAYLOGGED).then((res) =>
    {
        this.logged_in = true;
        this.update();
        window.location.reload();
    },(err) =>
    {
        $("#errorLog").show();
    });
}.bind(this)
this.registerPassword = function()
{
$('#modal-global-login').modal('hide');
$('#modal-password').modal('show');
}.bind(this)
});
riot.tag2('admin-page-panel', '<div class="col-sm-12 text-left resource-background shadow"> <div class="col-sm-12 no-gutter" style="padding: 10px 0px;"> <div class="col-sm-1"> <p style="font-size: 13px;">NAME</p> </div> <div class="col-sm-6"> <p style="font-size: 13px;">REWARD</p> </div> <div class="col-sm-1 text-center"> <p style="font-size: 13px;">FEATURE</p> </div> <div class="col-sm-1 text-center"> <p style="font-size: 13px;">EXPLORE</p> </div> <div class="col-sm-1 text-center"> <p style="font-size: 13px;">LANDING</p> </div> <div class="col-sm-1 text-center"> <p style="font-size: 13px;">SOCIAL</p> </div> </div> <div class="col-sm-12 no-gutter" style="border-bottom: 1px solid pink; padding: 3px 0px;" each="{adminData}"> <div class="col-sm-1"> <p style="font-size: 13px; margin: 0px;">{unique_id}</p> </div> <div class="col-sm-6"> <p style="font-size: 13px; margin: 0px;">{project_data.info_data.reward}</p> </div> <div class="col-sm-1 text-center"> <input show="{!project_data.meta_data.featured}" input type="checkbox"> <input show="{project_data.meta_data.featured}" input type="checkbox" checked> </div> <div class="col-sm-1 text-center"> <input show="{!project_data.meta_data.explore}" input type="checkbox"> <input show="{project_data.meta_data.explore}" input type="checkbox" checked> </div> <div class="col-sm-1 text-center"> <input show="{!project_data.meta_data.landing}" input type="checkbox"> <input show="{project_data.meta_data.landing}" input type="checkbox" checked> </div> <div class="col-sm-1 text-center"> <input show="{!project_data.meta_data.social}" input type="checkbox"> <input show="{project_data.meta_data.social}" input type="checkbox" checked> </div> </div> </div>', '', '', function(opts) {
        krowdspace.projects.explore().then((res) =>
        {
            this.adminData = res.data;
            this.adminData.reverse();
            this.update();

        },
        (err)=>
        {
            console.log(err)
        });

});


riot.tag2('admin-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container dashboard"> <global-logout show="{logged_in}" uri="{opts.uri}"></global-logout> <div class="col-sm-10 col-sm-offset-1 project-container"> <div class="row dash-row no-gutter shadow"> <admin-page-panel></admin-page-panel> </div> </div> </div> <global-footer></global-footer>', '', '', function(opts) {
});     
riot.tag2('admin', '<admin-modal-login show="{!logged_in}"></admin-modal-login> <admin-page show="{logged_in}" uri="{opts.uri}"></admin-page>', 'admin,[data-is="admin"]{ background-color: #fff }', '', function(opts) {

		krowdspace.v1.check().then((res)=>
			{
				logged_in = true;
				this.update();
			},
			(err)=>
			{
				console.log(err);
			});
});


riot.tag2('dashboard-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container dashboard"> <div class="shadow text-left project-add-container"> <p class="project-add-text">PROJECTS</p> <div class="project-yield text-center" each="{p, index in projects}"> <project-button onclick="{makeButtF(p)}" project="{p}">{project.unique_id}</project-button> </div> <a href="/#/account/register"> <i class="fa fa-plus project-add-btn filterdark"></i> </a> </div> <global-logout class="hidden-xs" show="{logged_in}"></global-logout> <div class="col-sm-10 col-sm-offset-1 project-container"> <div class="row dash-row no-gutter shadow"> <dashboard-project-image show="{project}" project="{project}"></dashboard-project-image> <dashboard-user-image show="{!project}"></dashboard-user-image> <dashboard-project-user index="{projectIndex + 1}" user="{user}" project="{project}"></dashboard-project-user> </div> <div show="{project}" class="row dash-row no-gutter"> <dashboard-project-hours project="{project}"></dashboard-project-hours> <dashboard-project-reward project="{project}"></dashboard-project-reward> </div> <div show="{project}" class="row dash-row no-gutter shadow"> <dashboard-project-title project="{project}"> </dashboard-project-title> </div> <div class="row dash-row no-gutter shadow"> <dashboard-project-bar show="{project}" project="{project}"></dashboard-project-bar> <dashboard-user-bar show="{!project}"></dashboard-user-bar> </div> </div> </div> <dashboard-featured-purchase user="{user}" project="{project}"></dashboard-featured-purchase> <dashboard-explore-purchase user="{user}" project="{project}"></dashboard-explore-purchase> <dashboard-landing-purchase user="{user}" project="{project}"></dashboard-landing-purchase> <dashboard-social-purchase user="{user}" project="{project}"></dashboard-social-purchase> <dashboard-edit-profile user="{user}" project="{project}"></dashboard-edit-profile> <dashboard-edit-reward user="{user}" project="{project}"></dashboard-edit-reward> <dashboard-refresh-content user="{user}" project="{project}"></dashboard-refresh-content> <global-footer></global-footer>', '@media screen and (max-width: 767px) { dashboard-page .shadow,[data-is="dashboard-page"] .shadow{ -webkit-box-shadow: none; -moz-box-shadow: none; } dashboard-page .project-add-container,[data-is="dashboard-page"] .project-add-container{ top: 80px; left:0; right: 0; position: absolute; display: inline-block; font-size: 0px; width: 400px; margin-left: auto; margin-right: auto; } dashboard-page .project-add-text,[data-is="dashboard-page"] .project-add-text{ display: inline-block; padding: 7px; font-size: 13px; margin-top: 1px; border: 1px solid #3f434f; } dashboard-page .project-yield,[data-is="dashboard-page"] .project-yield{ display: inline-block; font-size: 14px; border: 1px solid #3f434f; border-left: none; border-right: none; } dashboard-page .project-add-btn,[data-is="dashboard-page"] .project-add-btn{ width: 35px; padding: 7px 5px 9px 5px; display: inline-block; font-size: 15px; border: 1px solid #3f434f; } dashboard-page .project-add-btn:hover,[data-is="dashboard-page"] .project-add-btn:hover{ border: 1px solid #3f434f; } }', '', function(opts) {
	this.projectNum = 0;
	this.projectIndex = 0;
	this.projects = [];

	this.project = null;
	this.projectIndex = 0;
	this.user = null;

	this.userkey = "";

	this.on('mount', ()=>
	{
		krowdspace.users.user()
		.catch(err=>err)
		.then((res)=>
		{
			this.user = res.data;
			this.userkey = res.data.username;

			return krowdspace.projects.project(this.userkey);
		})
		.catch((err)=>
		{
			if(this.user)
			{
				this.projects = [];
				this.update();
			}
		})
		.then((res)=>
		{
			if(res && res.data)
			{
				this.projects = res.data;
				this.setProject(res.data[0]);
			}
		});

	});
	this.setProject = function(proj)
	{
		this.project = proj;
		this.projectIndex = this.projects.indexOf(proj);
		this.update();
	}.bind(this)

	this.makeButtF = function(proj)
	{
		let p = proj;
		return function(e)
		{
			this.setProject(p);
		};
	}.bind(this);
});
riot.tag2('dashboard-project-bar', '<div class="dash-bar col-sm-12 no-gutter"> <div class="col-xs-3 text-center divider-inside-right"> <a class="hidden-xs" href="{kickstarterShare}" target="_blank"> <img class="icon-share-bar filterdark" src="img/fav/kickstarter-icon.png"> </a> <a href="/#/explore/project/{krowdspacePage}"> <img class="icon-share-bar filterdark" src="img/fav/krowdspace-share-icon.png"> </a> <p class="dashboard-text-bar dash-divider hidden-xs">Live Project Links</p> <p class="dashboard-text-bar dash-divider hidden-lg hidden-md hidden-sm">Project Link</p> </div> <div class="col-xs-7 text-center divider-inside-right"> <div class="col-md-8"> <a href="{facebookShare}" target="_blank"> <span class="fa-stack fa-lg facebook filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="{twitterShare}" target="_blank"> <span class="fa-stack fa-lg twitter filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a class="hidden-md hidden-sm hidden-xs" href="{linkedinShare}" target="_blank"> <span class="fa-stack fa-lg linkedin filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i> </span> </a> <a href="{redditShare}" target="_blank"> <span class="fa-stack fa-lg reddit filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-reddit-alien fa-stack-1x fa-inverse"></i> </span> </a> <a class="hidden-xs" href="{diggShare}" target="_blank"> <span class="fa-stack fa-lg digg filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-digg fa-stack-1x fa-inverse"></i> </span> </a> <a class="hidden-xs" href="{stumbleuponShare}" target="_blank"> <span class="fa-stack fa-lg stumbleupon filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-stumbleupon fa-stack-1x fa-inverse"></i> </span> </a> <p class="dashboard-text-bar dash-divider">Share Your Project on Social Media</p> </div> <div class="col-md-4 hidden-sm hidden-xs"> <a href="#purchase-social" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-wifi fa-stack-1x fa-inverse" style="padding-top: 2px;"></i> </span> </a> <p class="dashboard-text-bar dash-divider">Social Media Boost</p> </div> </div> <div class="col-sm-2 text-center"> <a href="#refresh-content" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-refresh fa-stack-1x fa-inverse"></i> </span> <a href="#purchase-social" class="modal-link" data-toggle="modal"> <p class="dashboard-text-bar dash-divider">Refresh Content</p> </div> </div>', '@media screen and (max-width: 991px) { dashboard-project-bar .icon-share-bar,[data-is="dashboard-project-bar"] .icon-share-bar{ margin: 2px 5px 0px 5px; } dashboard-project-bar .fixed-image-box,[data-is="dashboard-project-bar"] .fixed-image-box{ height: 340px; } } @media screen and (max-width: 767px) { dashboard-project-bar .dash-bar,[data-is="dashboard-project-bar"] .dash-bar{ height: auto; margin-left: auto; margin-right: auto; width: 400px; } }', '', function(opts) {
    this.on('update', ()=>
    {
        if(!opts.project)
            return;

        let res = { data: [opts.project] };

        this.kickstarterShare = res.data[0].project_data.info_data.url;

        this.krowdspacePage = res.data[0].unique_id;

        this.facebookShare = 'https://www.facebook.com/sharer.php?u=' + res.data[0].project_data.info_data.url;

        this.twitterShare = 'https://twitter.com/intent/tweet?text=Get extra rewards and support my crowdfunding project at Krowdspace.com &via=krowdspaced&hashtags=krowdspace, crowdfunding, rewards';

        this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content;

        this.redditShare = 'https://reddit.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content;

        this.diggShare = 'http://digg.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content;

        this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content;
    });
});	
	
riot.tag2('dashboard-project-hours', '<div class="col-lg-3 hidden-md hidden-sm hidden-xs dashboard-hours-container no-gutter shadow"> <div id="circleChart"></div> <div class="col-sm-6 chart-data text-center"> <div class="divider-inside-right"> <p class="dashboard-text-alt">Days Left</p> <p class="social-metric">{countdownTimer}</p> </div> </div> <div class="col-sm-6 chart-data text-center"> <div> <p class="dashboard-text-alt">Total Days</p> <p class="social-metric">{projectLength}</p> </div> </div> </div>', '', '', function(opts) {
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
        console.log(res);
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
        bar.animate(circleProgress);

        this.countdownTimer = Math.floor(daysMax) ;
        this.projectLength = res.data[0].project_data.web_data.hours['data-duration'];
});

});	
	
riot.tag2('dashboard-project-image', '<div class="col-md-6 image-container"> <div class="fixed-image-box"> <img show="{imagebox}" class="img-responsive kickstarter-image" ref="kickstarterImage" src=""> <img show="{!imagebox}" class="img-responsive indiegogo-image" ref="indiegogoImage" src=""> <p class="funding-text-left text-left">$ {dataBacked} RAISED</p> <p class="funding-text-right text-right">$ {dataGoal} GOAL</p> </div> <div id="progressBar"></div> </div>', '@media screen and (max-width: 1200px) { dashboard-project-image .image-container,[data-is="dashboard-project-image"] .image-container{ height: 242px; } dashboard-project-image .fixed-image-box,[data-is="dashboard-project-image"] .fixed-image-box{ height: 220px; } } @media screen and (max-width: 991px) { dashboard-project-image .image-container,[data-is="dashboard-project-image"] .image-container{ height: 360px; border-right: 1px solid #3f434f; } dashboard-project-image .fixed-image-box,[data-is="dashboard-project-image"] .fixed-image-box{ height: 340px; } } @media screen and (max-width: 767px) { dashboard-project-image .image-container,[data-is="dashboard-project-image"] .image-container{ height: auto; margin-left: auto; margin-right: auto; width: 400px; } dashboard-project-image .fixed-image-box,[data-is="dashboard-project-image"] .fixed-image-box{ height: auto; margin-left: auto; margin-right: auto; min-height: 100px; width: 398px; } }', '', function(opts) {
    this.progBar = null;

    this.on('update', ()=>
    {
        if(!opts.project)
            return;

        let platform = opts.project.platform;

        if (platform == 'kickstarter')
        {
            imagebox = true;
            console.log('Kickstarter Image');
            this.refs.kickstarterImage.src = opts.project.project_data.web_data.mainImg.content;
        }else{
            imagebox = false;
            console.log('Indiegogo Image');
            this.refs.indiegogoImage.src = opts.project.project_data.web_data.mainImg.content;
        };

        let goalValue = opts.project.project_data.meta_data.funding,
            goalNumber = parseFloat(goalValue.replace(/,/g, '')),

            percentValue = opts.project.project_data.meta_data.raisedPercent,
            numberMax = Math.min(Math.max(percentValue, 0), 1),

            raisedRawNumber = goalNumber * percentValue,
            raisedNumber = Math.round(raisedRawNumber),
            raisedValue = raisedNumber.toLocaleString(),

            raisedvalue = opts.project.project_data.web_data.stats['data-percent-raised'],
            rawdecimal = Number.parseFloat(raisedvalue);

            this.dataBacked = raisedValue;
            this.dataGoal = goalValue;

            let bar = null;

            if(!this.progBar)
                this.progBar = bar = new ProgressBar.Line(progressBar,
                {
                    strokeWidth: 4,
                    easing: 'easeInOut',
                    duration: 1400,
                    color: '#fed136',
                    trailColor: '#eee',
                    trailWidth: 4,
                    svgStyle: {width: '100%', height: '100%'}
                });
            else
                bar = this.progBar;

            bar.animate(numberMax);
    });
});	
	
riot.tag2('dashboard-project-reward', '<div class="col-lg-9 col-md-12 dashboard-reward-container"> <div class="dashboard-reward-box shadow"> <a href="#edit-reward" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn float-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pencil fa-stack-1x fa-inverse"></i> </span> </a> <p class="dashboard-text-alt reward-text">Reward: {projectReward}</p> <p class="dashboard-text-alt disclaimer-text">Upon succesful completion of your crowdfunding project you have agreed to send out any additional rewards to the backers who have supported your campaign.</p> <div class="couponcode-box text-center" style="width: 300px;"> <p class="couponcode">{couponCode}</p> </div> <p class="dashboard-text-alt">This is your project reward code. Backers from Krowdspace will send you this code through your crowdfunding platform website so that you can verify their discount.</p> </div> </div>', '@media screen and (max-width: 1200px) { dashboard-project-reward .dashboard-reward-box,[data-is="dashboard-project-reward"] .dashboard-reward-box{ margin-left: 0px; } } @media screen and (max-width: 767px) { dashboard-project-reward .dashboard-reward-box,[data-is="dashboard-project-reward"] .dashboard-reward-box{ height: auto; margin-left: auto; margin-right: auto; width: 400px; } }', '', function(opts) {
    this.on('update', ()=>
    {
        if(!opts.project)
            return;

        let res = {data: [opts.project]};

        this.projectReward = res.data[0].project_data.info_data.reward;
        this.couponCode = res.data[0].coupon_code;
    });
});	
	
riot.tag2('dashboard-project-title', '<div class="col-sm-12 dashboard-title-container no-gutter"> <div class="col-md-4 hidden-sm hidden-xs divider-inside-right dashboard-title-box"> <p class="dashboard-text-alt">{projectTitle}</p> <p class="dashboard-text-alt description-text">{projectDescription}</p> </div> <div class="col-md-8 col-sm-12 no-gutter text-center"> <div class="col-sm-4 text-center feature-box"> <div class="purchase-view"> <a href="#purchase-featured" class="modal-link" data-toggle="modal"> <img class="img-responsive feature-buy" src="/img/content/featured-purchase.jpg"> <div class="filter-background"> <p class="featured-text-buy">FEATURED ICON</p> </div> </a> </div> </div> <div class="col-sm-4 feature-box"> <div class="purchase-view"> <a href="#purchase-explore" class="modal-link" data-toggle="modal"> <img class="img-responsive feature-buy" src="/img/content/explore-purchase.jpg"> <div class="filter-background"> <p class="featured-text-buy">EXPLORE BANNER</p> </div> </div><a></a> </div> <div class="col-sm-4 feature-box"> <div class="purchase-view"> <a href="#purchase-landing" class="modal-link" data-toggle="modal"> <img class="img-responsive feature-buy" src="/img/content/landing-purchase.jpg"> <div class="filter-background"> <p class="featured-text-buy">LANDING BANNER</p> </div> </div><a></a> </div> </div> </div>', '@media screen and (max-width: 1200px) { dashboard-project-title .feature-box,[data-is="dashboard-project-title"] .feature-box{ padding: 10px 10px 10px 20px !important; margin-top: 10px; } dashboard-project-title .featured-text-buy,[data-is="dashboard-project-title"] .featured-text-buy{ top: 30px; } } @media screen and (max-width: 991px) { dashboard-project-title .feature-box,[data-is="dashboard-project-title"] .feature-box{ padding: 0px 10px 0px 20px !important; margin-top: 0px; } dashboard-project-title .featured-text-buy,[data-is="dashboard-project-title"] .featured-text-buy{ top: 37px; } dashboard-project-title .dashboard-title-container,[data-is="dashboard-project-title"] .dashboard-title-container{ height: auto; } } @media screen and (max-width: 767px) { dashboard-project-title .dashboard-title-container,[data-is="dashboard-project-title"] .dashboard-title-container{ height: auto; margin-left: auto; margin-right: auto; width: 400px; } dashboard-project-title .feature-box,[data-is="dashboard-project-title"] .feature-box{ padding: 10px 50px !important; } dashboard-project-title .featured-text-buy,[data-is="dashboard-project-title"] .featured-text-buy{ top: 60px; font-size: 18px; } }', '', function(opts) {
    this.on('update', ()=>
    {
        if(!opts.project)
            return;

        this.projectTitle = opts.project.project_data.web_data.title.content;
        this.projectDescription = opts.project.project_data.web_data.description.content;
    });

console.log(this.opts.project);
});	
	
riot.tag2('dashboard-project-user', '<div class="col-md-6 text-center no-gutter user-container"> <a href="#edit-profile" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn float-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pencil fa-stack-1x fa-inverse"></i> </span> </a> <p class="dashboard-text profile-name">{firstname} {lastname}</p> <div show="{project}"> <div class="col-xs-4 text-center divider-inside-right user-stat-box"> <p class="dashboard-user">Current Project</p> <p class="social-metric">{opts.index}</p> </div> <div class="col-xs-4 text-center divider-inside-right user-stat-box"> <p class="dashboard-user">Hours Remaining</p> <p class="social-metric">{countdowntimer || 0}</p> </div> <div class="col-xs-4 text-center user-stat-box"> <p class="dashboard-user">Reward Value</p> <p class="social-metric">{rewardAmount || 0}</p> </div> </div> <div show="{!project}"> <div class="col-xs-4 text-center divider-inside-right user-stat-box"> <p class="dashboard-user">Projects Launched</p> <p class="social-metric">13</p> </div> <div class="col-xs-4 text-center divider-inside-right user-stat-box"> <p class="dashboard-user">Value of Rewards</p> <p class="social-metric">{\'$1,329\'}</p> </div> <div class="col-xs-4 text-center user-stat-box"> <p class="dashboard-user">Project Pledges</p> <p class="social-metric">{\'$84,322\'}</p> </div> </div> <div class="col-lg-8 col-md-12 text-left"> <div class="col-md-4 col-sm-4 col-xs-4 user-box-left"> <p class="dashboard-user">Username:</p> <p class="dashboard-user">Email:</p> <p class="dashboard-user hidden-md">Kickstarter:</p> <p class="dashboard-user hidden-md">Indiegogo:</p> </div> <div class="col-md-8 col-sm-8 col-xs-8 user-box-right"> <p class="dashboard-user">{username}</p> <p class="dashboard-user">{email}</p> <p class="dashboard-user hidden-md">{kickstarter || \'N/A\'}</p> <p class="dashboard-user hidden-md">{indiegogo || \'N/A\'}</p> </div> <div class="clearfix"></div> </div> <div class="col-lg-4 hidden-md hidden-sm hidden-xs"> </div> </div>', '@media screen and (max-width: 1200px) { dashboard-project-user .user-container,[data-is="dashboard-project-user"] .user-container{ height: 242px; } } @media screen and (max-width: 991px) { dashboard-project-user .user-container,[data-is="dashboard-project-user"] .user-container{ height: 282px; } } @media screen and (max-width: 767px) { dashboard-project-user .user-container,[data-is="dashboard-project-user"] .user-container{ height: auto; margin-left: auto; margin-right: auto; width: 400px; border-top: none; } }', '', function(opts) {
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

    this.setUserDeets = function(res)
    {
        this.firstname = res.data.user_data.fname;
        this.lastname = res.data.user_data.lname;
        this.email = res.data.email;
        this.kickstarter = res.data.user_data.ksuser;
        this.indiegogo = res.data.user_data.iguser;
        this.username = res.data.username;
        console.log(res);
    }.bind(this)

    this.setProjectDeets = function(res)
    {
        let endTime = res.data[0].project_data.web_data.hours['data-end_time'],
            projectTime = res.data[0].project_data.web_data.hours['data-duration'],
            end = new Date(endTime),
            remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 3600000,
            daysMax = Math.max(0, remaining);

        this.countdowntimer = Math.floor(daysMax);
        this.rewardAmount = '$' + res.data[0].project_data.info_data.reward_ammount;
    }.bind(this)
});
riot.tag2('dashboard-user-bar', '<div class="dash-bar col-sm-12 no-gutter"> <div class="col-sm-3 text-center divider-inside-right"> <a href="{kickstarterPage}" target="_blank"> <img class="icon-share-bar filterdark" src="img/fav/kickstarter-icon.png"> </a> <a href="{indiegogoPage}" target="_blank"> <img class="icon-share-bar filterdark" src="img/fav/indiegogo-icon.png"> </a> <p class="dashboard-text-bar dash-divider">Crowdfunding Links</p> </div> <div class="col-sm-6 text-center divider-inside-right"> <div class="col-sm-12"> <a href="{facebookShare}" target="_blank"> <span class="fa-stack fa-lg facebook filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="{twitterShare}" target="_blank"> <span class="fa-stack fa-lg twitter filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="{linkedinShare}" target="_blank"> <span class="fa-stack fa-lg linkedin filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i> </span> </a> <a href="{redditShare}" target="_blank"> <span class="fa-stack fa-lg reddit filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-reddit-alien fa-stack-1x fa-inverse"></i> </span> </a> <a href="{diggShare}" target="_blank"> <span class="fa-stack fa-lg digg filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-digg fa-stack-1x fa-inverse"></i> </span> </a> <a href="{stumbleuponShare}" target="_blank"> <span class="fa-stack fa-lg stumbleupon filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-stumbleupon fa-stack-1x fa-inverse"></i> </span> </a> <p class="dashboard-text-bar dash-divider">Share Krowdspace on Social Media</p> </div> </div> <div class="col-sm-3 text-center"> <a href="#modal-giveaway" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-money fa-stack-1x fa-inverse"></i> </span> </a> <p class="dashboard-text-bar dash-divider">Krowdspace Giveaways</p> </div> </div>', '', '', function(opts) {

        this.kickstarterPage = 'https://www.kickstarter.com';

        this.indiegogoPage = 'https://www.indiegogo.com';

        this.facebookShare = 'https://www.facebook.com/sharer.php?u=https://www.krowdspace.com';

        this.twitterShare = 'https://twitter.com/intent/tweet?text=Get extra rewards and support awesome crowdfunding project at Krowdspace.com &via=krowdspaced&hashtags=krowdspace, crowdfunding, rewards';

        this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com';

        this.redditShare = 'https://reddit.com/submit?url=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com';

        this.diggShare = 'http://digg.com/submit?url=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com';

        this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com';
});	
	
riot.tag2('dashboard-user-image', '<div class="col-sm-6 image-container"> <div class="single-item slider"> <div class="dash-banner-box" each="{ExploreBannerFilter}"> <img riot-src="{project_data.web_data.mainImg.content}" alt="{project_data.web_data.description.content}"> <div class="explore-box"> <div class="col-sm-8"> <div class="reward-slider-push"> <div class="explore-feature-left"> <div class="dash-box-text"> <span class="dash-user-title">{project_data.info_data.reward}</span> </div> </div> </div> </div> <div class="col-sm-4 dash-feature-right text-center"> <a href="{unique_url || \'/#/explore/project/\' + unique_id}" data-toggle="modal"><p class="learn-more">Learn More</p></a> </div> </div> </div> </div> </div>', 'dashboard-user-image .slick-slide img,[data-is="dashboard-user-image"] .slick-slide img{ width: 515px; overflow: hidden; } @media screen and (max-width: 1200px) { dashboard-user-image .slick-slide img,[data-is="dashboard-user-image"] .slick-slide img{ width: 395px; overflow: hidden; } dashboard-user-image .dash-banner-box,[data-is="dashboard-user-image"] .dash-banner-box{ height: 222px; } dashboard-user-image .reward-slider-push,[data-is="dashboard-user-image"] .reward-slider-push{ height: 212px; } dashboard-user-image .dash-feature-right,[data-is="dashboard-user-image"] .dash-feature-right{ margin-top: 187px; padding-right: 0px; } }', '', function(opts) {
    krowdspace.projects.explore().then((res) =>
    {
        let ExploreBannerData = res.data,
            FilterExplore = ExploreBannerData.filter((element) => {
            return (element.project_data.meta_data.landing === true);
        });

            let newObject={
                        unique_url: '#modal-feature-info',
                        name: '',
                        project_data:
                        {
                            web_data:
                            {
                                mainImg: {
                                content: '/img/projects/krowdspace-banner-1.jpg'
                                },
                            description: {
                                content: '',
                                },
                            },
                            info_data:
                            {
                                reward: '',
                            },
                        },
                    };
            FilterExplore.unshift(newObject);
            FilterExplore.reverse();
            this.ExploreBannerFilter = FilterExplore;
            this.update();

        $('.single-item').slick
        ({
            arrows: false,
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 5000,
            centerMode: true,
            variableWidth: true,
        });
    },
    (err)=>
    {
        console.log(err)
    });
});	
	
riot.tag2('dashboard', '<dashboard-page show="{logged_in}"></dashboard-page>', 'dashboard,[data-is="dashboard"]{ background-color: #fff }', '', function(opts) {

	krowdspace.v1.check().then((res)=>
	{
		logged_in = true;
		this.update();
	},
	(err)=>
	{
		window.location.replace("/#account/login");
	});
});

riot.tag2('dashboard-edit-profile', '<div id="edit-profile" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8" style="padding: 0px;"> <div id="modal"> <div class="no-gutter"> <form role="form" onsubmit="{submitUser}"> <div class="edit-user-box modal-max-login" style="position: relative;"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading">Edit Profile Information</p> <div class="form-group form-split-right edit-margin"> <p class="dashboard-text-alt text-left edit-text-title">First Name</p> <input ref="firstname" riot-value="{firstname}" type="text" class="form-control placeholder-color" required minlength="1"> </div> <div class="form-group form-split-left edit-margin"> <p class="dashboard-text-alt text-left edit-text-title">Last Name</p> <input type="text" ref="lastname" class="form-control placeholder-color" riot-value="{lastname}" required minlength="1"> </div> <div class="clearfix"></div> <div class="form-group"> <p class="dashboard-text-alt text-left edit-text-title">Kickstarter Username</p> <input ref="kickstarter" class="form-control placeholder-color" riot-value="{kickstarter}" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <p class="dashboard-text-alt text-left edit-text-title">Indiegogo Username</p> <input ref="indiegogo" class="form-control placeholder-color" riot-value="{indiegogo}" aria-required="true" aria-invalid="true"> </div> </div> <div class="text-center modal-max-login"> <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit" value="Update" class="btn-register"> </div> </form> </div> </div> </div> </div> </div>', '', '', function(opts) {
      krowdspace.users.user().then((res)=>
          {
          this.firstname = res.data.user_data.fname;
          this.lastname = res.data.user_data.lname;
          this.kickstarter = res.data.user_data.ksuser;
          this.indiegogo = res.data.user_data.iguser;
          this.update();
          },
          (err)=>
          {
              console.log(err);
          }
      );

      this.submitUser = function(e)
      {
          e.preventDefault();
          krowdspace.users.user().then((res)=>
          {
          let project = res.data.username,
              projectData = {

                          fname: this.refs.firstname.value,
                          lname: this.refs.lastname.value,
                          iguser: this.refs.kickstarter.value,
                          ksuser: this.refs.indiegogo.value,

              };
              krowdspace.users.set_user(projectData).then((res)=>
              {
                  window.location.reload();
              },
              (err)=>
              {
                  console.log(err);
              });
          },
              (err)=>
              {
                  console.log(err);
              }
          );
      }.bind(this);
});
riot.tag2('dashboard-edit-reward', '<div id="edit-reward" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8" style="padding: 0px;"> <div id="modal" class="no-gutter"> <form id="rewardUpgrade" role="form" onsubmit="{submitReward}"> <div class="edit-user-box modal-max-login" style="position: relative;"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading">Edit Reward Information</p> <p class="text-left edit-text-title" style="margin-top: 15px;">Updating your project reward will reset your project and it can take up to 24 hours to verify and publish on our Explore Page. If you wish to not edit your reward please close the popup window. </p> <div class="form-group"> <p class="text-left edit-text-title">Please provide an exclusive reward for our Krowdspace users.</p> <input ref="rewardtext" class="form-control placeholder-color" riot-value="{rewardtext}" name="reward" required maxlength="110"> </div> <div class="form-group"> <p class="text-left edit-text-title">Does your reward have a value or is it a discount?</p> <select ref="rewardoption" class="form-control" name="rewardOption"> <option disabled selected value>Choose an Option</option> <option value="Yes">Reward has a Value</option> <option value="No">Reward is a Discount</option> </select> </div> <div class="form-group"> <p class="text-left edit-text-title">Please estimate the value of your reward.</p> <input ref="rewardvalue" class="form-control placeholder-color" name="rewardAmount" riot-value="{rewardvalue}" required type="{\'number\'}"> </div> </div> <div class="text-center modal-max-login"> <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit" value="Update" class="btn-register"> </div> </form> </div> </div> </div> </div>', '', '', function(opts) {
      this.on('update', ()=>
      {
          if(!opts.project)
              return;

          let res = {data: [opts.project]};

          this.rewardtext = res.data[0].project_data.info_data.reward;
          this.rewardvalue = res.data[0].project_data.info_data['reward_ammount'];
      });

      this.submitReward = function(e)
      {
          e.preventDefault();

          if(!opts.project)
              return;

          let userRes = {data: opts.user}
              projRes = {data: [opts.project]};

          this.setUserDeets(userRes, projRes);

      }.bind(this);

      this.setUserDeets = function(res, pRes)
      {
          let project = pRes.data[0].name,
              projectData =
              {
                  project_data:
                  {
                     info_data:
                      {
                          reward: this.refs.rewardtext.value,
                          reward_ammount: this.refs.rewardvalue.value,
                          reward_value: this.refs.rewardoption.value,
                      },
                      meta_data:
                      {
                          reward_check : false,
                      }
                  }
          };

          this.setProjDeets(project, projectData);
      }.bind(this)

      this.setProjDeets = function(project, projectData)
      {
          krowdspace.projects.set_project(project, projectData).then((res)=>
          {
              window.location.reload();
          });
      }.bind(this)
});
riot.tag2('dashboard-explore-purchase', '<div id="purchase-explore" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-2 col-lg-8 col-md-offset-0 col-md-12"> <div id="modal"> <div class="modal-purchase no-gutter" style="max-width: 695px; margin: 0 auto;"> <div class="col-sm-7 purchase-container-left"> <button type="button" class="close btn-modal hidden-lg hidden-md hidden-sm" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading">EXPLORE PAGE BANNER</p> <p class="modal-purchase-text text-left">Your project will be listed on our Explore Page with a featured project icon. Having your project featured means it will get priority filtering and have increased viewership. For a limited time we are offering this as a free service while we work through our initial launch! Please click the Upgrade button below to add this feature.</p> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center divider-inside-right"> <p class="purchase-text">EXPLORE BANNER</p> </div> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center"> <p class="purchase-text-right">FREE</p> </div> </div> <div class="col-sm-5 hidden-xs purchase-container-right"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <img class="img-responsive" src="/img/content/explore-purchase.jpg"> <div class="purchase-price-box no-gutter"> <div class="col-sm-6 text-center divider-inside-right"> <p class="purchase-text">EXPLORE BANNER</p> </div> <div class="col-sm-6 text-center"> <p class="purchase-text-right">FREE</p> </div> <div class="clearfix"></div> </div> <div> <form id="purchaseExplore" role="form" onsubmit="{submitExplore}"> <div class="text-center"> <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit" value="Upgrade" class="btn-register"> </div> </form> </div> </div> </div> <div class="hidden-lg hidden-md hidden-sm" style="max-width: 695px; margin: 0 auto;"> <form id="purchaseExplore" role="form" onsubmit="{submitExplore}"> <div class="text-center"> <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit" value="Upgrade" class="btn-register"> </div> </form> </div> </div> </div> </div>', '@media screen and (max-width: 767px) { dashboard-explore-purchase .purchase-container-left,[data-is="dashboard-explore-purchase"] .purchase-container-left{ border-right:2px solid #fed136; } }', '', function(opts) {
        this.on('update', ()=>
         {
             if(!opts.project)
                 return;

             let res = {data: [opts.project]};
         });

         this.submitExplore = function(e)
         {
             e.preventDefault();

             if(!opts.project)
                 return;

             let userRes = {data: opts.user}
                 projRes = {data: [opts.project]};
             this.setUserDeets(userRes, projRes);

         }.bind(this);

         this.setUserDeets = function(res, pRes)
         {
             let project = pRes.data[0].name,
                 projectData =
                 {
                     project_data:
                     {
                         meta_data:
                         {
                             explore : true,
                         }
                     }
                 };

             this.setProjDeets(project, projectData);
         }.bind(this)

         this.setProjDeets = function(project, projectData)
         {
             krowdspace.projects.set_project(project, projectData).then((res)=>
             {
                 window.location.reload();
             });
         }.bind(this)
});
riot.tag2('dashboard-featured-purchase', '<div id="purchase-featured" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-2 col-lg-8 col-md-offset-0 col-md-12"> <div id="modal"> <div class="modal-purchase no-gutter" style="max-width: 695px; margin: 0 auto;"> <div class="col-sm-7 purchase-container-left"> <button type="button" class="close btn-modal hidden-lg hidden-md hidden-sm" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading">FEATURED PROJECT LISTING</p> <p class="modal-purchase-text text-left">Your project will be listed on our Explore Page with a featured project icon. Having your project featured means it will get priority filtering and have increased viewership. For a limited time we are offering this as a free service while we work through our initial launch! Please click the Upgrade button below to add this feature.</p> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center divider-inside-right"> <p class="purchase-text">FEATURED ICON</p> </div> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center"> <p class="purchase-text-right">FREE</p> </div> </div> <div class="col-sm-5 hidden-xs purchase-container-right"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <img class="img-responsive" src="/img/content/featured-purchase.jpg"> <div class="purchase-price-box no-gutter"> <div class="col-sm-6 text-center divider-inside-right"> <p class="purchase-text">FEATURED ICON</p> </div> <div class="col-sm-6 text-center"> <p class="purchase-text-right">FREE</p> </div> <div class="clearfix"></div> </div> <div> <form id="purchaseFeature" role="form" onsubmit="{submitFeatured}"> <div class="text-center"> <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit" value="Upgrade" class="btn-register"> </div> </form> </div> </div> </div> <div class="hidden-lg hidden-md hidden-sm" style="max-width: 695px; margin: 0 auto;"> <form id="purchaseFeature" role="form" onsubmit="{submitFeatured}"> <div class="text-center"> <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit" value="Upgrade" class="btn-register"> </div> </form> </div> </div> </div> </div>', '@media screen and (max-width: 767px) { dashboard-featured-purchase .purchase-container-left,[data-is="dashboard-featured-purchase"] .purchase-container-left{ border-right:2px solid #fed136; } }', '', function(opts) {
        this.on('update', ()=>
         {
             if(!opts.project)
                 return;

             let res = {data: [opts.project]};
         });

         this.submitFeatured = function(e)
         {
             e.preventDefault();

             if(!opts.project)
                 return;

             let userRes = {data: opts.user}
                 projRes = {data: [opts.project]};

             this.setUserDeets(userRes, projRes);

         }.bind(this);

         this.setUserDeets = function(res, pRes)
         {
             let project = pRes.data[0].name,
                 projectData =
                 {
                     project_data:
                     {
                         meta_data:
                         {
                             featured : true,
                         }
                     }
             };

             this.setProjDeets(project, projectData);
         }.bind(this)

         this.setProjDeets = function(project, projectData)
         {
             krowdspace.projects.set_project(project, projectData).then((res)=>
             {
                 window.location.reload();
             });
         }.bind(this)
});
riot.tag2('dashboard-landing-purchase', '<div id="purchase-landing" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-2 col-lg-8 col-md-offset-0 col-md-12"> <div id="modal"> <div class="modal-purchase no-gutter" style="max-width: 695px; margin: 0 auto;"> <div class="col-sm-7 purchase-container-left"> <button type="button" class="close btn-modal hidden-lg hidden-md hidden-sm" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading">LANDING PAGE BANNER</p> <p class="modal-purchase-text text-left">Your project will be listed on our Explore Page with a featured project icon. Having your project featured means it will get priority filtering and have increased viewership. For a limited time we are offering this as a free service while we work through our initial launch! Please click the Upgrade button below to add this feature.</p> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center divider-inside-right"> <p class="purchase-text">LANDING BANNER</p> </div> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center"> <p class="purchase-text-right">FREE</p> </div> </div> <div class="col-sm-5 hidden-xs purchase-container-right"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <img class="img-responsive" src="/img/content/landing-purchase.jpg"> <div class="purchase-price-box no-gutter"> <div class="col-sm-6 text-center divider-inside-right"> <p class="purchase-text">LANDING BANNER</p> </div> <div class="col-sm-6 text-center"> <p class="purchase-text-right">FREE</p> </div> <div class="clearfix"></div> </div> <div> <form id="purchaseLanding" role="form" onsubmit="{submitLanding}"> <div class="text-center"> <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit" value="Upgrade" class="btn-register"> </div> </form> </div> </div> </div> <div class="hidden-lg hidden-md hidden-sm" style="max-width: 695px; margin: 0 auto;"> <form id="purchaseFeature" role="form" onsubmit="{submitLanding}"> <div class="text-center"> <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit" value="Upgrade" class="btn-register"> </div> </form> </div> </div> </div> </div>', '@media screen and (max-width: 767px) { dashboard-landing-purchase .purchase-container-left,[data-is="dashboard-landing-purchase"] .purchase-container-left{ border-right:2px solid #fed136; } }', '', function(opts) {
        this.on('update', ()=>
         {
             if(!opts.project)
                 return;

             let res = {data: [opts.project]};
         });

         this.submitLanding = function(e)
         {
             e.preventDefault();

             if(!opts.project)
                 return;

             let userRes = {data: opts.user}
                 projRes = {data: [opts.project]};

             this.setUserDeets(userRes, projRes);

         }.bind(this);

         this.setUserDeets = function(res, pRes)
         {
             let project = pRes.data[0].name,
                 projectData =
                 {
                     project_data:
                     {
                         meta_data:
                         {
                             landing : true,
                         }
                     }
             };

             this.setProjDeets(project, projectData);
         }.bind(this)

         this.setProjDeets = function(project, projectData)
         {
             krowdspace.projects.set_project(project, projectData).then((res)=>
             {
                 window.location.reload();
             });
         }.bind(this)
});
riot.tag2('dashboard-refresh-content', '<div id="refresh-content" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8" style="padding: 0px;"> <div id="modal"> <form id="submitRefresh" role="form" onsubmit="{submitRefresh}"> <div class="edit-user-box modal-max-login" style="position: relative;"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading">Refresh Project Content</p> <p class="modal-purchase-text text-left edit-text-title" style="margin-top: 15px;">To refresh your project content please click the update button below. This will refresh any content changes as well as your project metric data.</p> <p class="modal-purchase-text">If you would like to set this feature to auto update every 24 hours please check the box below and then press the update button</p> <div class="check-terms checkbox"> <label> <input type="checkbox" id="terms" ref="checkbox"><span class="modal-purchase-text">Refresh Automatically Every 24 Hours</span> </label> </div> </div> <div class="text-center modal-max-login"> <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit" value="Update" class="btn-register"> </div> </form> </div> </div> </div>', '', '', function(opts) {
      this.on('update', ()=>
       {
           if(!opts.project)
               return;

           let res = {data: [opts.project]};

           this.refreshContent = res.data[0].project_data.meta_data.refresh;
       });

       this.submitRefresh = function(e)
       {
           e.preventDefault();

           if(!opts.project)
               return;

           let userRes = {data: opts.user}
               projRes = {data: [opts.project]};

           this.setUserDeets(userRes, projRes);

       }.bind(this);

       this.setUserDeets = function(res, pRes)
       {
           let project = pRes.data[0].name,
               projectData =
               {
                   project_data:
                   {
                       meta_data:
                       {
                           refresh : this.refs.checkbox.checked,
                       }
                   }
           };

           this.setProjDeets(project, projectData);
       }.bind(this)

       this.setProjDeets = function(project, projectData)
       {
           krowdspace.projects.update_project(project).then((res)=>
           {
               window.location.reload();
           });
       }.bind(this)
});
riot.tag2('dashboard-social-purchase', '<div id="purchase-social" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-2 col-lg-8 col-md-offset-0 col-md-12"> <div id="modal"> <div class="modal-purchase no-gutter" style="max-width: 695px; margin: 0 auto;"> <div class="col-sm-7 purchase-container-left"> <button type="button" class="close btn-modal hidden-lg hidden-md hidden-sm" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading">SOCIAL MEDIA POSTS</p> <p class="modal-purchase-text text-left">Your project will be listed on our Explore Page with a featured project icon. Having your project featured means it will get priority filtering and have increased viewership. For a limited time we are offering this as a free service while we work through our initial launch! Please click the Upgrade button below to add this feature.</p> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center divider-inside-right"> <p class="purchase-text">SOCIAL POSTS</p> </div> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center"> <p class="purchase-text-right">FREE</p> </div> </div> <div class="col-sm-5 hidden-xs purchase-container-right"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <img class="img-responsive" src="/img/content/social-purchase.jpg"> <div class="purchase-price-box no-gutter"> <div class="col-sm-6 text-center divider-inside-right"> <p class="purchase-text">SOCIAL POSTS</p> </div> <div class="col-sm-6 text-center"> <p class="purchase-text-right">FREE</p> </div> <div class="clearfix"></div> </div> <div> <form id="purchaseFeature" role="form" onsubmit="{submitSocial}"> <div class="text-center"> <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit" value="Upgrade" class="btn-register"> </div> </form> </div> </div> </div> <div class="hidden-lg hidden-md hidden-sm" style="max-width: 695px; margin: 0 auto;"> <form id="purchaseFeature" role="form" onsubmit="{submitSocial}"> <div class="text-center"> <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit" value="Upgrade" class="btn-register"> </div> </form> </div> </div> </div> </div>', '@media screen and (max-width: 767px) { dashboard-social-purchase .purchase-container-left,[data-is="dashboard-social-purchase"] .purchase-container-left{ border-right:2px solid #fed136; } }', '', function(opts) {
        this.on('update', ()=>
         {
             if(!opts.project)
                 return;

             let res = {data: [opts.project]};
         });

         this.submitSocial = function(e)
         {
             e.preventDefault();

             if(!opts.project)
                 return;

             let userRes = {data: opts.user}
                 projRes = {data: [opts.project]};

             this.setUserDeets(userRes, projRes);

         }.bind(this);

         this.setUserDeets = function(res, pRes)
         {
             let project = pRes.data[0].name,
                 projectData =
                 {
                     project_data:
                     {
                         meta_data:
                         {
                             social : true,
                         }
                     }
             };

             this.setProjDeets(project, projectData);
         }.bind(this)

         this.setProjDeets = function(project, projectData)
         {
             krowdspace.projects.set_project(project, projectData).then((res)=>
             {
                 window.location.reload();
             });
         }.bind(this)
});
riot.tag2('project-button', '<div class="project-btn filterdark"> <yield></yield> </div>', '', '', function(opts) {
		this.project = opts.project;
});
riot.tag2('login-account', '<div class="container login-check-container"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-body modal-custom"> <form onsubmit="{loginSubmit}"> <div class="text-left register-container-modal modal-max-login"> <p class="modal-heading modal-heading-alt">Krowdspace Login</p> <div id="errorLog" class="alert alert-danger alert-dismissable fade in"> <a class="close" onclick="$(\'.alert\').hide()"><i class="fa fa-close"></i></a> <strong>Error:</strong> Invalid username or password. </div> <div class="has-feedback"> <label class="control-label" for="username"></label> <input type="text" class="form-control" id="username" name="username" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off" style="border-radius: 0px;"> <span class="fa fa-user form-control-feedback"></span> </div> <div class="has-feedback"> <label class="control-label" for="password"></label> <input type="password" class="form-control" id="password" name="password" placeholder="Password" ref="passwordlogin" autocorrect="off" autocapitalize="off" style="border-radius: 0px;"> <span class="fa fa-lock form-control-feedback"></span> </div> <div class="col-xs-6 checkbox text-left" style="padding-left: 0px;"> <label> <input type="checkbox" ref="checkbox" id="checkbox">Remember Me </label> </div> <div class="col-xs-6 checkbox text-right forgot-box"> <a style="cursor: pointer;" onclick="{registerPassword}"><p class="forgot-pass">Forgot Password?</p></a> </div> <div class="clearfix"></div> </div> <div class="text-center modal-max-login"> <input type="submit" class="landing-submit alt-border" name="submit" value="Login"> </div> </form> <div class="text-center"> <p class="login-float-text">Dont have an account? <a class="function-link" onclick="{registerModal}">Register today!</a></p> </div> </div> </div> </div> </div>', '', '', function(opts) {
        this.loginSubmit = function(e)
        {

            e.preventDefault();

            var USERNAME = this.refs.usernamelogin.value,
                PASSWORD = this.refs.passwordlogin.value;
                STAYLOGGED = this.refs.checkbox.checked;

	krowdspace.v1.login(USERNAME, PASSWORD, STAYLOGGED).then((res)=>
	{
		this.logged_in = true;
		this.update();
        $('#modal-global-login').modal('hide');
        window.location.replace("/#/account/dashboard");
	},
	(err) =>
	{
		console.log(err);
        $("#errorLog").show();
	});
}.bind(this)
this.registerModal = function()
{
	$('#modal-global-login').modal('hide');
    $('#modal-global-register').modal('show');
}.bind(this)
this.registerPassword = function()
{
	$('#modal-global-login').modal('hide');
    $('#modal-password').modal('show');
}.bind(this)
});
riot.tag2('register-project-error', '<div id="modal-project-error" class="modal container fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Project Submission Error</p> </div> <div class="modal-body"> <p class="registration-text">It looks like something went wrong! Please make sure that you have one of our <a onclick="{pressKit}" class="modal-link home-links">Press Kit</a> images with the correct hyperlink located on your project page. If the problem persists please reach out to us on social media or through our contact form in the footer.</p> <div class="col-sm-9 text-left boost-warning"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-instagram fa-stack-1x fa-inverse"></i> </span> </a> </div> <div class="clearfix"></div> </div> </div> </div> </div>', '', '', function(opts) {
this.pressKit = function()
{
	$('#modal-project-error').modal('hide');
    $('#modal-press-kit').modal('show');
}.bind(this)
});
riot.tag2('register-content-signup', '<div class="no-gutter register-background shadow"> <div class="col-lg-5 hidden-md hidden-sm hidden-xs register"> <img class="img-responsive" src="/img/projects/krowdspace-register.png"> <p class="text-center register-cta">Register your crowdfunding campaign and accelerate your growth today!</p> </div> <form class="col-lg-7 col-md-12" id="registerProjectForm" onsubmit="{submit}"> <div class="registration-box shadow"> <fieldset id="project_information"> <div class="form-group col-sm-12"> <p class="text-left registration-text">Do you own this crowdfunding project?</p> <select ref="pvalid" type="text" class="form-control" name="projectOwner"> <option disabled selected value>Select Yes or No</option> <option value="Yes">Yes</option> <option value="No">No</option> </select> </div> <div class="form-group col-sm-12"> <p class="text-left registration-text">What category best fits your project?</p> <select ref="category" type="text" class="form-control" name="projectCategory"> <option disabled selected value>Choose a Category</option> <option value="Art">Art</option> <option value="Design">Design</option> <option value="Film">Film</option> <option value="Food">Food</option> <option value="Music">Music</option> <option value="Photography">Photography</option> <option value="Technology">Technology</option> <option value="Videogames">Video Games</option> <option value="Publishing">Publishing</option> </select> </div> <div class="form-group col-sm-12 no-gutter"> <p class="text-left registration-text">Please provide your live crowdfunding project url.</p> <div class="col-sm-4 form-group link-left"> <select ref="crowdportal" type="text" class="form-control" name="crowdSite"> <option disabled selected value>Choose Site</option> <option value="https://www.kickstarter.com/">Kickstarter.com</option> <option value="https://www.indiegogo.com/">Indiegogo.com</option> </select> </div> <div class="form-group col-sm-8 link-right"> <input ref="projecturl" type="text" class="form-control" name="projectLink" placeholder="/project/project-url"> </div> </div> <div class="register-controls text-center"> <p><a class="back-project next next-step">NEXT</a></p> </div> </fieldset> <fieldset id="reward_information"> <div class="form-group col-sm-12"> <p class="text-left registration-text">Please provide an exclusive reward for our Krowdspace users.</p> <input ref="rewardtext" class="form-control" name="reward" maxlength="110" placeholder="See Sample Rewards Below ( Max Character 110 )"> </div> <div class="form-group col-sm-12"> <p class="text-left registration-text">Does your reward have a value or is it a discount?</p> <select ref="rewardoption" class="form-control" name="rewardValue"> <option disabled selected value>Choose an Option</option> <option value="Yes">Reward has a Value</option> <option value="No">Reward is a Discount</option> </select> </div> <div class="form-group col-sm-12"> <p class="text-left registration-text">Please estimate the value of your reward.</p> <input ref="rewardvalue" class="form-control" name="rewardAmount"> </div> <div class="register-controls"> <div class="col-xs-offset-3 col-xs-6"> <p class="pull-left"><a class="back-project previous">PREVIOUS</a></p> <p class="pull-right"><a class="back-project next next-step">NEXT</a></p> </div> </div> </fieldset> <fieldset id="project_verify"> <div class="col-sm-12"> <p class="text-left registration-text" style="margin-top: 10px;">PROJECT VERIFICATION</p> <p class="text-left registration-text">To verify that you are the project owner please upload one of the images from our <a href="#modal-press-kit" data-toggle="modal" class="modal-link home-links">Press Kit</a> area onto your crowdfunding project. This will prevent any false submissions and let us know you are indeed the owner.</p> <p class="text-left registration-text">The image that you select will need to be hyperlinked back to Krowdspace. We are verifying the actual hyperlink and not just the image being present. Please use the link below:</p> <p class="text-left registration-text">https://www.Krowdspace.com</p> <p class="text-left registration-text">If you have any questions or concerns please contact us and thank you for your understanding!</p> </div> <div class="register-controls"> <div class="col-xs-offset-3 col-xs-6"> <p class="pull-left"><a class="back-project previous">PREVIOUS</a></p> <p class="pull-right"><a class="back-project next next-step">NEXT</a></p> </div> <div class="clearfix"></div> </div> </fieldset> <fieldset id="service_terms"> <div class="col-sm-12"> <p class="text-left registration-text" style="margin-top: 10px;">TERMS AND CONDITIONS</p> <p class="text-left registration-text">Krowdspace is not liable for any damages or losses related to using our services.</p> <p class="text-left registration-text">Project owners are legally bound to fullfill any rewards promised to the Krowdspace users.</p> <p class="text-left registration-text">Krowdspace is not responsible for the puncuality and delivery of the rewards and will not become involved between user disputes.</p> <p class="text-left registration-text">I have read through and understand the Terms of Service in relation to Krowdspace.</p> <div class="check-terms checkbox"> <label> <input type="checkbox" value="checked" name="serviceTerms" required minlength="1" aria-required="true"><span class="registration-text">I agree to <a href="#modal-service-terms" data-toggle="modal" class="home-links registration-text">Krowdspace terms</a></span> </label> </div> <div class="clearfix"></div> </div> <div class="register-controls"> <div class="col-xs-offset-3 col-xs-6"> <p class="pull-left"><a class="back-project previous">PREVIOUS</a></p> <p class="pull-right"><input class="back-project" type="submit" value="SUBMIT" name="submit"></p> </div> </div> </fieldset> </div> </form> <div class="clearfix"></div> </div> <div class="col-sm-12 text-center"> <p style="font-size: 13px; padding-top: 25px;">For more information about Krowdspace Rewards please view our <a href="#modal-global-rewards" data-toggle="modal" class="home-links">Reward Page</a>.</p> </div>', '@media screen and (max-width: 1200px) { register-content-signup .registration-box,[data-is="register-content-signup"] .registration-box{ margin: 20px; } } @media screen and (max-width: 560px) { register-content-signup .registration-box,[data-is="register-content-signup"] .registration-box{ margin: 0px; border: none; height: 430px; } register-content-signup .register-controls,[data-is="register-content-signup"] .register-controls{ position: relative; } register-content-signup .link-left,[data-is="register-content-signup"] .link-left{ padding-right: 0px !important; } }', '', function(opts) {
        this.submit = function(e)
        {
            e.preventDefault();

            let PVALID = this.refs.pvalid.value,
                CATEGORY = this.refs.category.value,
                DOMAINURL = this.refs.crowdportal.options[this.refs.crowdportal.selectedIndex].value,
                URL =  this.refs.projecturl.value,
                REWARD = this.refs.rewardtext.value,
                REWARDVALUE = this.refs.rewardoption.value,
                IGREWARD = 'test',
                REWARDAMOUNT = this.refs.rewardvalue.value;

            let DATA = {
                        PVALID,
                        CATEGORY,
                        DOMAINURL,
                        URL,
                        REWARD,
                        REWARDVALUE,
                        REWARDAMOUNT,
                        IGREWARD,
                        };

            krowdspace.register.project(DATA).then
            ((res) =>
                {
                console.log('Project Submission Successful');
                window.location.replace("/#/account/dashboard");
                },
            (err) =>
                {
                $('#modal-project-error').modal('show');
                console.log(err);
                });
        }.bind(this)

        this.on('mount', function()
        {
        	$(".next").click(function(){
        		var form = $("#registerProjectForm");
        		form.validate({
        			errorElement: 'span',
        			errorClass: 'help-block',
        			highlight: function(element, errorClass, validClass) {
        				$(element).closest('.form-group').addClass("has-error");
        			},
        			unhighlight: function(element, errorClass, validClass) {
        				$(element).closest('.form-group').removeClass("has-error");
        			},
        			rules: {
        				projectOwner: {
        					required: true,
        				},
        				projectCategory : {
        					required: true,
        				},
        				crowdSite : {
        					required: true,
        				},
        				projectLink:{
        					required: true,
        				},
        				reward:{
        					required: true,
        				},
        				rewardValue: {
        					required: true,

        				},
        				rewardAmount: {
        					required: true,
                          number: true,
        				},
                      serviceTerms: {
        					required: true,
        				},

        			},
        			messages: {
        				projectOwner: {
        					required: "",
        				},
        				projectCategory : {
        					required: "",
        				},
        				crowdSite : {
        					required: "",
        				},
        				projectLink: {
        					required: "",
        				},
        				reward: {
        					required: "",
        				},
                      rewardValue: {
        					required: "",
        				},
                      rewardAmount: {
        					required: "",
        				},
                      serviceTerms: {
        					required: "",
        				},
        			}
        		});
        		if (form.valid() === true){
        			if ($('#project_information').is(":visible")){
        				current_fs = $('#project_information');
        				next_fs = $('#reward_information');
        			}else if($('#reward_information').is(":visible")){
        				current_fs = $('#reward_information');
        				next_fs = $('#project_verify');
        			}else if($('#project_verify').is(":visible")){
        				current_fs = $('#project_verify');
        				next_fs = $('#service_terms');
        			}

        			next_fs.show();
        			current_fs.hide();
        		}
        	});

        	$('.previous').click(function(){
        		if($('#reward_information').is(":visible")){
        			current_fs = $('#reward_information');
        			next_fs = $('#project_information');
        		}else if ($('#project_verify').is(":visible")){
        			current_fs = $('#project_verify');
        			next_fs = $('#reward_information');
        		}else if ($('#service_terms').is(":visible")){
        			current_fs = $('#service_terms');
        			next_fs = $('#project_verify');
        		}
        		next_fs.show();
        		current_fs.hide();
        	});
        });
});
riot.tag2('register-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container dashboard"> <global-logout show="{logged_in}" uri="{opts.uri}"></global-logout> <div class="col-sm-10 col-sm-offset-1 project-container"> <div class="row dash-row no-gutter"> <register-content-signup></register-content-signup> </div> </div> </div> <register-project-error></register-project-error> <global-footer></global-footer>', '', '', function(opts) {
});
riot.tag2('register', '<register-page show="{logged_in}"></register-page>', 'register,[data-is="register"]{ background-color: #fff }', '', function(opts) {

	krowdspace.v1.check().then((res)=>
		{
			logged_in = true;
			this.update();
		},
		(err)=>
		{
			window.location.replace("/#/account/login");
		});
});
riot.tag2('resource-content', '<div class="col-sm-12 text-left resource-background shadow"> <p class="modal-heading">Crowdfunding Resources</p> <p class="legal-text">Submitting a project to Krowdspace is just the first step to having a successful campaign. We have provided some extra tools that are completly free for all Krowdspace members and will guide you in the right direction. Make sure to have a compelling email subject header and headline. Editors and Publishers receive 100\'s of emails per day and decide wether or not to open an email based on the subject alone.</p> <p class="privacy-title">Submit Your Press Release for Media Coverage</p> <div class="row media-box"> <div class="col-lg-12 col-lg-offset-0 col-md-8 col-md-offset-2"> <div class="col-lg-3 col-md-6 col-sm-6"> <p each="{media1}"> <a class="mediaLink" onclick="$(\':first-child\', this).css(\'color\', \'#5cb85c\');" href="{mediaLink}" target="{target}"> <i class="fa fa-check media-icons"></i> {mediaTitle} </a> </p> </div> <div class="col-lg-3 hidden-md hidden-sm"> <p each="{media2}"> <a class="mediaLink" onclick="$(\':first-child\', this).css(\'color\', \'#5cb85c\');" href="{mediaLink}" href="{mediaLink}" target="{target}"> <i class="fa fa-check media-icons"></i> {mediaTitle} </a> </p> </div> <div class="col-lg-3 col-md-6 col-sm-6"> <p each="{media3}"> <a class="mediaLink" onclick="$(\':first-child\', this).css(\'color\', \'#5cb85c\');" href="{mediaLink}" href="{mediaLink}" target="{target}"> <i class="fa fa-check media-icons"></i> {mediaTitle} </a> </p> </div> <div class="hidden-lg col-md-6 col-sm-6"> <p each="{media2}"> <a class="mediaLink" onclick="$(\':first-child\', this).css(\'color\', \'#5cb85c\');" href="{mediaLink}" href="{mediaLink}" target="{target}"> <i class="fa fa-check media-icons"></i> {mediaTitle} </a> </p> </div> <div class="col-lg-3 col-md-6 col-sm-6"> <p each="{media4}"> <a class="mediaLink" onclick="$(\':first-child\', this).css(\'color\', \'#5cb85c\');" href="{mediaLink}" href="{mediaLink}" target="{target}"> <i class="fa fa-check media-icons"></i> {mediaTitle} </a> </p> </div> </div> <div class="col-sm-12 text-center"> <p class="media-refresh">*Refresh Browser to Reset Checkmarks</p> </div> </div> <div class="row"> <div class="col-sm-12"> <p class="privacy-title">Example Press Release</p> <p class="legal-text">Creating a Press Release is imperative to running a successful crowdfunding campaign. While launching our own crowdfunding project we spent over $1000 to have it professionally written and marketed to media outlets. You can find a copy of that Press Release below along with some others. We highly recommend taking the time to research and write your own Press Release. Please take a look at our format and built off of it with your own content.</p> <div class="col-sm-6 text-center media-padding"> <p><a class="mediaLink" href="pdf/Lala-Bahari-PR.pdf"><i class="fa fa-file-pdf-o fa-2x" download></i> Krowdspace Press Release</a></p> <p><a class="mediaLink" href="http://www.prnewswire.com/news-releases/first-truly-consumer-3d-printer-the-micro-launches-on-kickstarter-254179611.html" target="_blank">Micro 3D Printer Press Release</a></p> </div> <div class="col-sm-6 text-center media-padding"> <p><a class="mediaLink" href="pdf/Pebble-Time-PR.pdf"><i class="fa fa-file-pdf-o fa-2x" download></i> Pebble Time Press Release</a></p> <p><a class="mediaLink" href="http://www.prnewswire.com/news-releases/travel-light-announces-breakthrough-g-ro-luggage-system-300161006.html" target="_blank">G-RO Luggage System</a></p> </div> <p class="privacy-title">Format Press Release</p> <p class="legal-text">There are a few key elements that every press release should have so that media outlets can quickly identify the story. Here are a few links we a found that can help you structure your Press Release in an appealing way.</p> <div class="col-sm-6 text-center media-padding"> <p><a class="mediaLink" href="http://fundbeam.com/kickstarter-press-release/" target="_blank">Fundbeam Press Release Guide</a></p> </div> <div class="col-sm-6 text-center media-padding"> <p><a class="mediaLink" href="https://crowdfundingheadlines.com/press-release-tips/" target="_blank">Crowdfunding Headlines Press Release Guide</a></p> </div> </div> </div> </div>', '', '', function(opts) {
        this.media1 = [
            { mediaLink:"mailto:review.monkey@148apps.com", mediaTitle:"148Apps", target:""},
            { mediaLink:"mailto:contact@fivethirtyeight.com", mediaTitle:"538", target:""},
            { mediaLink:"mailto:tips@9to5mac.com", mediaTitle:"9to5Mac", target:""},
            { mediaLink:"mailto:news@appleinsider.com", mediaTitle:"Apple Insider", target:""},
            { mediaLink:"mailto:news@appspy.com", mediaTitle:"AppSpy", target:""},
            { mediaLink:"https://arstechnica.com/contact-us/", mediaTitle:"Ars Technica", target:"_blank"},
            { mediaLink:"mailto:haveyoursay@bbc.co.uk", mediaTitle:"BBC", target:""},
            { mediaLink:"mailto:PR@bleacherreport.com", mediaTitle:"Bleacher Report", target:""},
            { mediaLink:"mailto:oped@bloomberg.net", mediaTitle:"Bloomberg", target:""},
            { mediaLink:"mailto:reader.pitches@buzzfeed.com", mediaTitle:"BuzzFeed", target:""},
            { mediaLink:"http://www.suntimes.com/aboutus/contactus/index.html", mediaTitle:"Chicago Sun Times", target:"_blank"},
            { mediaLink:"http://www.chicagotribune.com/about/chi-newspaperemail,0,3525235.htmlstory", mediaTitle:"Chicago Tribune", target:"_blank"},
            { mediaLink:"mailto:powerpitch@cnbc.com", mediaTitle:"CNBC", target:""},
            { mediaLink:"https://www.cnet.com/contact/", mediaTitle:"CNET", target:"_blank"},
        ],
        this.media2 = [
            { mediaLink:"mailto:news@industryreview.com", mediaTitle:"Computer Business", target:""},
            { mediaLink:"mailto:pitches@computerworld.com", mediaTitle:"Computer World", target:""},
            { mediaLink:"mailto:tips@consumerist.com", mediaTitle:"Consumerist", target:""},
            { mediaLink:"http://www.coolhunting.com/contact.php", mediaTitle:"Cool Hunting", target:"_blank"},
            { mediaLink:"mailto:editor@craveonline.com", mediaTitle:"Crave", target:""},
            { mediaLink:"https://www.crowdfundinsider.com/submit-a-tip/", mediaTitle:"Crowdfund Insider", target:"_blank"},
            { mediaLink:"mailto:news@cultofmac.com", mediaTitle:"Cult of Mac", target:""},
            { mediaLink:"mailto:tips@dailydot.com", mediaTitle:"Daily Dot", target:""},
            { mediaLink:"http://www.dailynews.com/contactus", mediaTitle:"Daily News", target:"_blank"},
            { mediaLink:"mailto:contact@designboom.com", mediaTitle:"Design Bloom", target:""},
            { mediaLink:"https://www.digitaltrends.com/news-tips/", mediaTitle:"Digital Trends", target:"_blank"},
            { mediaLink:"https://www.engadget.com/about/tips/", mediaTitle:"Engadget", target:"_blank"},
            { mediaLink:"mailto:ideas@forbes.com", mediaTitle:"Forbes", target:""},
            { mediaLink:"https://fstoppers.com/contact", mediaTitle:"Fstoppers", target:"_blank"},
        ],
        this.media3 = [
            { mediaLink:"mailto:website.services@fusion.net", mediaTitle:"Fusion", target:""},
            { mediaLink:"mailto:editors@indiegames.com", mediaTitle:"Gamasutra", target:""},
            { mediaLink:"mailto:info@gamerant.com", mediaTitle:"Gamerant", target:""},
            { mediaLink:"mailto:gamesindustry@gaminginsiders.net", mediaTitle:"Gaming Insider", target:""},
            { mediaLink:"https://www.geekwire.com/tips/", mediaTitle:"GeekWire", target:"_blank"},
            { mediaLink:"http://www.huffingtonpost.com/contact//", mediaTitle:"Huffington Post", target:"_blank"},
            { mediaLink:"mailto:pr@theladbiblegroup.com", mediaTitle:"LAD Bible", target:""},
            { mediaLink:"http://www.latimes.com/about/mediagroup/la-mediagroup-contactus,0,7698150.htmlstory", mediaTitle:"Los Angeles Times", target:"_blank"},
            { mediaLink:"http://mashable.com/submit/", mediaTitle:"Mashable", target:"_blank"},
            { mediaLink:"http://www.nypost.com/contact/contactus.htm", mediaTitle:"New York Post", target:"_blank"},
            { mediaLink:"http://www.newsday.com/services/contact-newsday-1.1303755", mediaTitle:"Newsday", target:"_blank"},
            { mediaLink:"mailto:tips@redmondpie.com", mediaTitle:"Redmond Pie", target:""},
            { mediaLink:"http://www.sfgate.com/chronicle/info/e-mail/", mediaTitle:"San Francisco Chronicle", target:"_blank"},
            { mediaLink:"http://www.mercurynews.com/contact-us/", mediaTitle:"San Jose Mercury",
            target:"_blank"},
        ],
        this.media4 = [
            { mediaLink:"http://seattletimes.nwsource.com/flatpages/services/contactus.html", mediaTitle:"Seattle Times", target:"_blank"},
            { mediaLink:"mailto:pitchslate@slate.com", mediaTitle:"Slate", target:""},
            { mediaLink:"https://techcrunch.com/got-a-tip/", mediaTitle:"Tech Crunch", target:"_blank"},
            { mediaLink:"mailto:news@techradar.com", mediaTitle:"Tech Radar", target:""},
            { mediaLink:"https://witness.theguardian.com/assignment/submitastory#contribute", mediaTitle:"The Guardian", target:"_blank"},
            { mediaLink:"http://biz.oregonian.com/newsroom/", mediaTitle:"The Oregonian", target:"_blank"},
            { mediaLink:"http://www.purch.com/about/#contact-press", mediaTitle:"Tom's Guide", target:"_blank"},
            { mediaLink:"http://feedbackforms.usatoday.com/marketing/feedback/feedback-online.aspx?type=12", mediaTitle:"USA Today", target:"_blank"},
            { mediaLink:"http://www.vox.com/contact", mediaTitle:"Vox", target:"_blank"},
            { mediaLink:"https://www.voxmedia.com/contact", mediaTitle:"Vox Media", target:"_blank"},
            { mediaLink:"http://www.theverge.com/tip-us", mediaTitle:"Verge", target:"_blank"},
            { mediaLink:"http://help.wsj.com/contact-us/?mod=WSJ_footer", mediaTitle:"Wall Street Journal", target:"_blank"},{mediaLink:"http://www.washingtonpost.com/blogs/ask-the-post/post/how-to-contact-the-post-newsroom/2011/11/17/gIQAd0WJlN_blog.html", mediaTitle:"Washington Post", target:"_blank"},
            { mediaLink:"mailto:press@WIRED.com", mediaTitle:"WIRED", target:""},
        ];
});
riot.tag2('resource-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container dashboard"> <global-logout class="hidden-xs" show="{logged_in}" uri="{opts.uri}"></global-logout> <div class="col-sm-10 col-sm-offset-1 project-container"> <div class="row dash-row no-gutter"> <resource-content></resource-content> </div> </div> </div> <global-footer></global-footer>', '', '', function(opts) {
});
riot.tag2('resource', '<resource-page show="{logged_in}"></resource-page>', 'resource,[data-is="resource"]{ background-color: #fff }', '', function(opts) {

        krowdspace.v1.check().then((res)=>
            {
                logged_in = true;
                this.update();
            },
            (err)=>
            {
                window.location.replace("/#/account/login");
            });
});
riot.tag2('success-page-register', '<div class="row"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div class="modal-content"> <div class="modal-header"> <p class="modal-heading">Thank You From Krowdspace</p> </div> <div class="modal-body"> <p>Thank you for registering with Krowdspace. If you selected to submit a project we will most likely be contacting you shortly. If you are joining as a member we look forward to launching our unique crowdfunding dashboard with you!</p> <p>We will be sending updates on the latest news, promotions and exclusive giveaways leading up to our official launch. Until then, make sure to stay connected with our social media channels:</p> <div class="text-left boost-warning"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-instagram fa-stack-1x fa-inverse"></i> </span> </a> </div> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('error', '<h1>Something went wrong</h1>', '', '', function(opts) {
});
riot.tag2('success', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container"> <verify-content-confirm></verify-content-confirm> </div> <global-footer></global-footer>', '', '', function(opts) {
});
riot.tag2('verify-content-confirm', '<div class="row row-verify"> <p class="text-center verify-confirmation">Thank you for registering with Krowdspace!</p> <div class="col-sm-12 verify-text">Enjoy our...</div> <div class="col-sm-4 text-left"> <i class="fa fa-check fa-2x text-primary"></i><span class="verify-font"><strong> Extra Rewards</strong></span> <div class="verify-block"> Being a member allows you to gain exclusive rewards for backing the same projects you already have been from major platforms such as Kickstarter and Indiegogo.</div> </div> <div class="col-sm-4 text-left"> <i class="fa fa-check fa-2x text-primary"></i><span class="verify-font "><strong> Exclusive Giveaways</strong></span> <div class="verify-block"> Enter for a chance to win amazing prizes from successful crowdfunding campaigns sponsored by Krowdspace.</div> </div> <div class="col-sm-4 text-left"> <i class="fa fa-check fa-2x text-primary"></i><span class="verify-font"><strong> Metrics Dashboard</strong></span> <div class="verify-block"> If you have a crowdfunding campaign that is currently live you can submit it to Krowdspace and gain access to our free dashboard.</div> </div> </div> <div class="row verify-text-bottom"> <div class="col-sm-7" style="line-height: 38px;"> Would you like to submit your own crowdfunding project to Krowdspace?</div> <div class="col-sm-4 text-center"> <a href="/#/account/register"><span class="verify-submit"><strong>YES</strong> </span></a> <a href="/#/explore.html"><span class="verify-submit"><strong>NO</strong> </span></a> </div> </div>', '', '', function(opts) {
});
riot.tag2('verify', '<success></success>', '', '', function(opts) {
});
riot.tag2('explore-content-card', '<div class="row"> <div each="{exploreCard in displayCards}" class="col-lg-4 col-md-6 col-sm-6" style="padding-left: 0px; padding-right: 0px;"> <div ref="exploreCard.ExploreCard.data.category"> <div class="no-gutter explore-container shadow"> <a href="/#/explore/project/{exploreCard.ExploreCard.data.id}"> <img class="img-responsive image-card" riot-src="{exploreCard.ExploreCard.data.image}"></a> <span show="{exploreCard.ExploreCard.data.featured}" class="fa-stack fa-lg explore-feature-icon"> <i class="fa fa-circle fa-stack-xx text-primary"></i> <i class="fa fa-heart fa-stack-1x fa-inverse"></i> </span> <div class="card-title-height"> <p class="card-text-alt">{exploreCard.ExploreCard.data.title}</p> <p class="card-text-alt">Reward: {exploreCard.ExploreCard.data.reward}</p> </div> <div class="col-xs-5 text-left" style="max-height: 23px;"> <p class="card-text-alt">${exploreCard.ExploreCard.data.backed} Raised</p> </div> <div class="col-xs-2 text-center" style="max-height: 23px;"> <p class="card-text-alt days-center">{exploreCard.ExploreCard.data.days} Days</p> </div> <div class="col-xs-5 text-right" style="max-height: 23px;"> <p class="card-text-alt">${exploreCard.ExploreCard.data.goal} Goal</p> </div> <div class="col-xs-12"> <div class="progress"> <div class="progress-bar" role="progressBar" riot-style="width: {exploreCard.ExploreCard.data.percent + \'%\'};" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div> </div> </div> <div class="clearfix"></div> </div> </div> </div> </div> <img show="{Cards}" class="img-responsive" src="/img/content/krowdspace-coming-soon.png">', '@media screen and (max-width: 991px) { explore-content-card .explore-container,[data-is="explore-content-card"] .explore-container{ width: 348px; } } @media screen and (max-width: 767px) { explore-content-card .explore-container,[data-is="explore-content-card"] .explore-container{ width: 368px; } }', '', function(opts) {
        this.displayCards = [];

        this.fixMetaCrap = function fixMetaCrap(pa)
        {
            let res = {data: pa};

            let projectArray = res.data;

            projectArray.forEach((element) =>
            {
                let platform = element.platform,
                    goalValue = element.project_data.meta_data.funding,
                    goalNumber = parseFloat(goalValue.replace(/,/g, '')),
                    percentRaised = element.project_data.meta_data.raisedPercent,
                    percentMax = Math.min(Math.max(percentRaised, 0), 1),
                    percentWhole = percentMax * 100;
                    raisedRawNumber = goalNumber * percentRaised,
                    raisedNumber = Math.round(raisedRawNumber),
                    raisedValue = raisedNumber.toLocaleString(),
                    endTime = element.project_data.web_data.hours['data-end_time'],
                    end = new Date(endTime),
                    remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 86400000,
                    countdown = Math.floor(remaining),
                    daysMax = Math.max(0, countdown);

                element.ExploreCard = (
                    {
                        data:
                        {
                            'platform': platform,
                            'id': element.unique_id,
                            'category': element.project_data.info_data.category,
                            'featured': element.project_data.meta_data.featured,
                            'image': element.project_data.web_data.mainImg.content,
                            'backed': raisedValue,
                            'goal': goalValue,
                            'percent': percentWhole,
                            'days': daysMax,
                            'title': element.project_data.web_data.title.content,
                            'reward': element.project_data.info_data.reward,
                        }
                    }
                );
            });

            return projectArray;
        }

        this.setExploreCards = function setExploreCards(neA)
        {
            this.displayCards = neA;
            this.fixMetaCrap(this.displayCards);

            this.update();
        };

});
riot.tag2('explore-content-filter', '<div class="row"> <div class="col-md-3 hidden-sm hidden-xs" style="margin-top: 15px;"> <select class="form-control"> <option value="">Just Launched</option> <option value="">Closing Soon</option> </select> </div> <div class="col-md-3 col-sm-5 col-sm-offset-0 col-xs-12" style="margin-top: 15px;"> <select class="form-control" ref="options" onchange="{onCatChange}"> <option value="*">Featured Projects</option> <option each="{cat in catArr}" riot-value="{cat}">{cat}</option> </select> </div> <div class="col-lg-2 hidden-md"></div> <div class="col-lg-4 col-md-6 col-sm-7 col-sm-offset-0 col-xs-12" style="margin-top: 15px;"> <form role="search"> <div class="input-group"> <input type="text" ref="searchBox" class="form-control" placeholder="Search Projects" onkeyup="{onSearch}"> <div class="input-group-btn"> <div class="btn btn-void"> <i class="fa fa-search fa-lg"></i> </div> </div> </div> </form> </div> </div>', '', '', function(opts) {

    this.exploreCards = [];

    this.displayCards = [];

    this.catArr = [];

    this.on('mount', function()
    {
        this.filterTag = opts.filtersearch;

        krowdspace.projects.explore().catch(err=>console.log('error: ', err)).then((res) =>
        {
            let rewardFilter = res.data;
            this.exploreCards = rewardFilter.filter((element) => {
                return (element.project_data.meta_data.reward === false);
            });

            let catSet = new Set();

            res.data.forEach((el)=>
            {
                catSet.add(el.project_data.info_data.category);
            });

            catSet.forEach((el)=>
            {
                this.catArr.push(el);
            });

            let pa = this.exploreCards,
                ca = this.projectSorter(this.exploreCards);

            this.setExploreCards(ca);
            this.update();
        });
    });

    this.setExploreCards = function(neA)
    {
        this.displayCards = neA;
        if(this.filterTag)
        {
            this.filterTag.setExploreCards(this.displayCards);
        }
    }.bind(this);

    this.onSearch = function onSearch()
    {
        var value = this.refs.searchBox.value;
        var exploreCards = this.filterTag.exploreCards;

        let filterArray = this.projectSorter( this.exploreCards.filter( this.categoriesFilter(value) ) );

        this.setExploreCards(filterArray);
    };

    this.onCatChange = function onCatChange()
    {
        let o = this.refs.options;
        let option = o.options[o.selectedIndex].value;
        this.onSearch();
    };

    this.projectSorter = function projectsSorter(pa)
    {
        let fpA = pa.filter((el, i, arr)=>
        {
            return el.project_data.meta_data.featured;
        });

        let spA = pa.filter((el, i, arr)=>
        {
            return !el.project_data.meta_data.featured;
        });

        fpA.reverse();

        spA.reverse();

        spA.splice(0, 0, ...fpA);

        return spA;
    };

    this.categoriesFilter = function categoriesFilter(filterText)
    {
        let o = this.refs.options;
        let option = o.options[o.selectedIndex].value.toLowerCase();
        filterText = filterText.toLowerCase();

        return function(el)
        {
            let cat = el.project_data.info_data.category.toLowerCase();

            if(option === "*")
            {
                return ( filterText == '' || el.name.toLowerCase().includes( filterText ) );
            }
            else
            {
                return cat.includes( option )
                    && (filterText == '' || el.name.toLowerCase().includes( filterText ));
            }
        }
    };
});
riot.tag2('explore-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> <explore-slider-hero></explore-slider-hero> </div> <div class="container explore-bottom"> <explore-content-filter filtersearch="{filter}"></explore-content-filter> <explore-content-card ref="filter"></explore-content-card> </div> <div class="row"> <global-footer></global-footer> </div> <explore-modal-login></explore-modal-login> <explore-modal-register></explore-modal-register>', '', '', function(opts) {
        this.on('mount', ()=>
        {
            this.filter = this.refs.filter;
            this.update();
        });
});
riot.tag2('explore-slider-hero', '<div class="autoplay slider explore-header"> <div class="explore-banner-box" each="{ExploreBannerFilter}"> <img riot-src="{project_data.web_data.mainImg.content}" alt="{project_data.web_data.description.content}"> <div class="explore-box"> <div class="col-sm-9"> <div class="slider-left-box"> <div class="explore-feature-left"> <div> <span class="explore-title">{name}</span> </div> <div class="explore-box-text"> <span class="explore-title">{project_data.info_data.reward}</span> </div> </div> </div> </div> <div class="col-sm-3 explore-feature-right text-center"> <a href="{unique_url || \'/#/explore/project/\' + unique_id}" data-toggle="modal"><p class="learn-more">Learn More</p></a> </div> </div> <div class="col-md-12 learn-responsive text-right"> <a href="{unique_url || \'/#/explore/project/\' + unique_id}" data-toggle="modal"> <p class="learn-more">Learn More</p> </a> </div> </div> </div>', 'explore-slider-hero .slick-slide img,[data-is="explore-slider-hero"] .slick-slide img{ border-top: 1px solid #3f434f; border-bottom: 1px solid #3f434f; width: 550px; } @media screen and (max-width: 991px) { explore-slider-hero .explore-feature-right,[data-is="explore-slider-hero"] .explore-feature-right{ padding-right: 10px; } } @media screen and (max-width: 768px) { explore-slider-hero .explore-feature-left,[data-is="explore-slider-hero"] .explore-feature-left{ margin-top: 100px; } explore-slider-hero .explore-feature-right,[data-is="explore-slider-hero"] .explore-feature-right{ padding-right: 10px; } } @media screen and (max-width: 550px) { explore-slider-hero .slick-slide img,[data-is="explore-slider-hero"] .slick-slide img{ width: 400px; } explore-slider-hero .explore-banner-box,[data-is="explore-slider-hero"] .explore-banner-box{ height: 227px; } explore-slider-hero .explore-box,[data-is="explore-slider-hero"] .explore-box{ display: none; } explore-slider-hero .learn-responsive,[data-is="explore-slider-hero"] .learn-responsive{ display: inline-block; } }', '', function(opts) {
        krowdspace.projects.explore().then((res) =>
        {
            let ExploreBannerData = res.data,
                FilterExplore = ExploreBannerData.filter((element) => {
                return (element.project_data.meta_data.explore === true);
            });

            let newObject={
                        unique_url: '#modal-feature-info',
                        name: '',
                        project_data:
                        {
                            web_data:
                            {
                                mainImg: {
                                    content: '/img/projects/krowdspace-banner-1.jpg'
                                },
                                description: {
                                    content: '',
                                },
                            },
                            info_data:
                            {
                                reward: ''
                            }
                        },
                    };
            let newObject2={
                        unique_url: '#modal-global-register',
                        name: 'Join Krowdspace Today!',
                        project_data:
                        {
                            web_data:
                            {
                                mainImg: {
                                    content: '/img/content/krowdspace-join.jpg'
                                },
                                description: {
                                    content: '',
                                },
                            },
                            info_data:
                            {
                                reward: 'Discover Extra Rewards For Projects You Love!'
                            }
                        },
                    };

            FilterExplore.unshift(newObject, newObject2);
            FilterExplore.reverse();
            this.ExploreBannerFilter = FilterExplore;
            this.update();

            $('.autoplay').slick
            ({
                arrows: false,
                slidesToShow: 1,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 5000,
                centerMode: true,
                variableWidth: true,
            });
        },
        (err)=>
        {
            console.log(err)
        });
});

riot.tag2('explore', '<explore-page></explore-page>', 'explore,[data-is="explore"]{ background-color: #fff }', '', function(opts) {
});
riot.tag2('project-modal-login', '<div class="container login-check-container"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-body modal-custom"> <form onsubmit="{loginSubmit}"> <div class="text-left register-container-modal modal-max-login"> <p class="modal-heading modal-heading-alt">Krowdspace Login</p> <div id="errorLog" class="alert alert-danger alert-dismissable fade in"> <a class="close" onclick="$(\'.alert\').hide()"><i class="fa fa-close"></i></a> <strong>Error:</strong> Invalid username or password. </div> <div class="has-feedback"> <label class="control-label" for="username"></label> <input type="text" class="form-control box-radius" id="username" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off"> <span class="fa fa-user form-control-feedback"></span> </div> <div class="has-feedback"> <label class="control-label" for="password"></label> <input type="password" class="form-control box-radius" id="password" placeholder="Password" ref="passwordlogin" autocorrect="off" autocapitalize="off"> <span class="fa fa-lock form-control-feedback"></span> </div> <div class="col-xs-6 checkbox loginbox text-left"> <label> <input type="checkbox" ref="checkbox" id="checkbox">Remember Me </label> </div> <div class="col-xs-6 checkbox text-right forgot-box"> <a onclick="{registerPassword}"><p class="forgot-pass">Forgot Password?</p></a> </div> <div class="clearfix"></div> </div> <div class="text-center modal-max-login"> <input type="submit" class="landing-submit alt-border" name="submit" value="Login"> </div> </form> <div class="text-center"> <p class="login-float-text">Dont have an account? <a class="function-link" onclick="{registerModal}">Register today!</a></p> </div> </div> </div> </div> </div>', '', '', function(opts) {

this.loginSubmit = function(e)
{
    e.preventDefault();

    let USERNAME = this.refs.usernamelogin.value,
        PASSWORD = this.refs.passwordlogin.value,
        STAYLOGGED = this.refs.checkbox.checked;

    krowdspace.v1.login(USERNAME, PASSWORD, STAYLOGGED).then((res) =>
    {
        this.logged_in = true;
        this.update();
        window.location.reload();
    },(err) =>
    {
        $("#errorLog").show();
    });
}.bind(this)
this.registerModal = function()
{
$('#modal-global-login').modal('hide');
$('#modal-global-register').modal('show');
}.bind(this)
this.registerPassword = function()
{
$('#modal-global-login').modal('hide');
$('#modal-password').modal('show');
}.bind(this)
});
riot.tag2('project-modal-reward', '<div id="kickstarter-reward" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-body"> <div class="edit-user-box modal-max-login"> <p class="modal-heading">Support Project</p> <p class="registration-text text-left coupon-code-box">To support this project and receive the posted reward make sure to send the below COUPON CODE after completing your pledge. All project owners have agreed to fulfill any and all rewards posted on their project page.</p> <div class="couponcode-box text-center"> <p class="couponcode">{couponCode}</p> </div> </div> <div class="text-center modal-max-login"> <a href="{projectLink}" target="_blank"> <p class="landing-submit alt-border">SUPPORT PROJECT</p> </a> </div> </div> </div> </div> </div>', '', '', function(opts) {
krowdspace.projects.project(this.opts.uri).then((res)=>
    {
        this.couponCode = res.data[0].coupon_code;
        this.projectLink = res.data[0].project_data.info_data.url;
        this.update();

    },
    (err)=>
    {

    });
});
riot.tag2('project-page-content', '<div class="col-sm-12 explore-project" ref="projectcontent"></div>', '@media screen and (max-width: 767px) { project-page-content .explore-project,[data-is="project-page-content"] .explore-project{ margin-left: auto; margin-right: auto; width: 400px; -webkit-box-shadow: none; -moz-box-shadow: none; } }', '', function(opts) {
    krowdspace.projects.project(this.opts.uri).then((res)=>
    {
        this.refs.projectcontent.innerHTML = res.data[0].project_data.web_data.content.html;
        this.update();
    },
    (err)=>
    {

    });
});
riot.tag2('project-page-image', '<div class="col-md-6 image-container"> <div class="fixed-image-box"> <img show="{imagebox}" class="img-responsive kickstarter-image" ref="kickstarterImage" src=""> <img show="{!imagebox}" class="img-responsive indiegogo-image" ref="indiegogoImage" src=""> <p class="funding-text-left text-left">$ {dataBacked} Raised</p> <p class="funding-text-right text-right">$ {dataGoal} Goal</p> </div> <div id="progressBar"></div> </div>', '@media screen and (max-width: 1200px) { project-page-image .image-container,[data-is="project-page-image"] .image-container{ height: 242px; } project-page-image .fixed-image-box,[data-is="project-page-image"] .fixed-image-box{ height: 220px; } } @media screen and (max-width: 991px) { project-page-image .image-container,[data-is="project-page-image"] .image-container{ height: 360px; border-right: 1px solid #3f434f; } project-page-image .fixed-image-box,[data-is="project-page-image"] .fixed-image-box{ height: 340px; } } @media screen and (max-width: 767px) { project-page-image .image-container,[data-is="project-page-image"] .image-container{ height: auto; margin-left: auto; margin-right: auto; width: 400px; } project-page-image .fixed-image-box,[data-is="project-page-image"] .fixed-image-box{ height: auto; margin-left: auto; margin-right: auto; min-height: 100px; width: 398px; } }', '', function(opts) {
    krowdspace.projects.project(this.opts.uri).then((res)=>
    {

        let platform = res.data[0].platform;

    if (platform == 'kickstarter')
    {
        imagebox = true;
        console.log('Kickstarter Image');
        this.refs.kickstarterImage.src = res.data[0].project_data.web_data.mainImg.content;
    }else{
        imagebox = false;
        console.log('Indiegogo Image');
        this.refs.indiegogoImage.src = res.data[0].project_data.web_data.mainImg.content;
    };

    let goalValue = res.data[0].project_data.meta_data.funding,
        goalNumber = parseFloat(goalValue.replace(/,/g, '')),

        percentValue = res.data[0].project_data.meta_data.raisedPercent,
        numberMax = Math.min(Math.max(percentValue, 0), 1),
        raisedRawNumber = goalNumber * percentValue,
        raisedNumber = Math.round(raisedRawNumber),
        raisedValue = raisedNumber.toLocaleString(),

        raisedvalue = res.data[0].project_data.web_data.stats['data-percent-raised'],
        rawdecimal = Number.parseFloat(raisedvalue);

        this.dataBacked = raisedValue;
        this.dataGoal = goalValue;

        let bar = new ProgressBar.Line(progressBar,
        {
            strokeWidth: 4,
            easing: 'easeInOut',
            duration: 1400,
            color: '#fed136',
            trailColor: '#eee',
            trailWidth: 4,
            svgStyle: {width: '100%', height: '100%'}
        });
        bar.animate(numberMax);
        this.update();
    },
    (err)=>
    {

    });
});	
	
riot.tag2('project-page-share', '<div class="col-sm-1 hidden-xs no-gutter share-container"> <div class="text-left shadow share-box"> <a href="{facebookShare}" target="_blank"> <span class="fa-stack fa-lg facebook icon-reset facebook-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <br> <a href="{twitterShare}" target="_blank"> <span class="fa-stack fa-lg twitter icon-reset twitter-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <br> <a href="{linkedinShare}" target="_blank"> <span class="fa-stack fa-lg linkedin icon-reset linked-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i> </span> </a> <br> <a href="{redditShare}" target="_blank"> <span class="fa-stack fa-lg reddit icon-reset reddit-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-reddit-alien fa-stack-1x fa-inverse"></i> </span> </a> <br> <a href="{diggShare}" target="_blank"> <span class="fa-stack fa-lg digg icon-reset digg-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-digg fa-stack-1x fa-inverse"></i> </span> </a> <br> <a href="{stumbleuponShare}" target="_blank"> <span class="fa-stack fa-lg stumbleupon icon-reset stumble-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-stumbleupon fa-stack-1x fa-inverse"></i> </span> </a> <br> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <img class="icon-share icon-reset krowdspace-back filterdark" src="img/fav/krowdspace-share-icon.png"> </a> </div> </div>', '', '', function(opts) {
    krowdspace.projects.project(this.opts.uri).then((res)=>
    {
        this.facebookShare = 'https://www.facebook.com/sharer.php?u=' + res.data[0].project_data.info_data.url;

        this.twitterShare = 'https://twitter.com/intent/tweet?text=Check out ' + res.data[0].project_data.web_data.title.content + ' at Krowdspace.com!&hashtags=krowdspace, kickstarter, indiegogo';

        this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content;

        this.redditShare = 'https://reddit.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content;

        this.diggShare = 'http://digg.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content;

        this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content;

        this.update();

    },
    (err)=>
    {

    });
});	
	
riot.tag2('project-page-title', '<div class="col-md-6 text-left no-gutter user-container-project"> <p class="dashboard-text-alt project-title">{projectTitle}</p> <p class="dashboard-text-alt hidden-md project-description">{projectDescription}</p> <p class="dashboard-text-alt project-reward-text">Reward: {projectReward}</p> <p class="dashboard-text-alt hidden-md hidden-sm project-coupon">To view the coupon code or directly link to the rewards page please follow the "Support Project button below</p> <div style="position: absolute; bottom: 10px; left: 0; right: 0;"> <div class="col-xs-6 text-center divider-inside-right backed-box"> <a show="{projectbtn}" href="#kickstarter-reward" class="modal-link" data-toggle="modal"><p class="back-project">BACK PROJECT</p></a> <a show="{!projectbtn}" href="{projectLink}" target="_blank"><p class="back-project">BACK PROJECT</p></a> </div> <div class="col-xs-6 text-center backed-box-right"> <p class="social-metric">{countdown || 0} DAYS LEFT</p> </div> </div> </div>', '@media screen and (max-width: 1200px) { project-page-title .user-container-project,[data-is="project-page-title"] .user-container-project{ height: 242px; } } @media screen and (max-width: 767px) { project-page-title .user-container-project,[data-is="project-page-title"] .user-container-project{ height: auto; margin-left: auto; margin-right: auto; width: 400px; border-top: none; } project-page-title .project-coupon,[data-is="project-page-title"] .project-coupon{ margin-bottom: 50px; } }', '', function(opts) {
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
});	
	
riot.tag2('project-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container dashboard"> <project-page-share uri="{opts.uri}"></project-page-share> <global-logout class="hidden-xs" show="{logged_in}" uri="{opts.uri}"></global-logout> <div class="col-sm-10 col-sm-offset-1 project-container"> <div class="row dash-row no-gutter shadow"> <project-page-image uri="{opts.uri}"></project-page-image> <project-page-title uri="{opts.uri}"></project-page-title> </div> </div> <div class="col-sm-10 col-sm-offset-1 project-container"> <div class="row project-row no-gutter dash"> <project-page-content uri="{opts.uri}"></project-page-content> </div> </div> </div> <project-modal-reward uri="{opts.uri}"></project-modal-reward> <global-footer></global-footer>', '@media screen and (max-width: 767px) { project-page .shadow,[data-is="project-page"] .shadow{ -webkit-box-shadow: none; -moz-box-shadow: none; } }', '', function(opts) {
});
riot.tag2('project', '<project-modal-login show="{!logged_in}"></project-modal-login> <project-page show="{logged_in}" uri="{opts.uri}"></project-page>', 'project,[data-is="project"]{ background-color: #fff }', '', function(opts) {
		krowdspace.v1.check().then((res)=>
			{
				logged_in = true;
				this.update();
			},
			(err)=>
			{

			});
});


riot.tag2('global-analytics-google', '', '', '', function(opts) {
  if(!opts.id) {
    console.log('Google analytics ID is undefined')
  }
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga')
  ga('create', opts.id)
  ga('send', 'pageview')
});
riot.tag2('global-footer', '<footer id="contacts" class="alternate-background"> <div class="custom-footer"> <div class="container"> <div class="row"> <div class="col-md-3 hidden-sm hidden-xs"> <p class="footer-text"> <strong>Quick Links</strong> </p> <ul class="text-left quicklinks"> <li><a class="page-scroll neutral-footer-link" href="/#/account/dashboard">View Dashboard</a></li> <li><a class="page-scroll neutral-footer-link" href="/#/account/register">Submit A Project</a></li> <li><a href="#modal-about" data-toggle="modal" class="modal-link neutral-footer-link">About Krowdspace</a></li> <li><a href="#modal-privacy-policy" data-toggle="modal" class="modal-link neutral-footer-link">Privacy Policy</a></li> <li><a href="#modal-service-terms" data-toggle="modal" class="modal-link neutral-footer-link">Terms of Service</a></li> <li><a href="#modal-giveaway" data-toggle="modal" class="modal-link neutral-footer-link">Giveaways</a></li> <li><a href="#modal-press-kit" data-toggle="modal" class="modal-link neutral-footer-link">Press Kit</a></li> </ul> </div> <div class="col-md-4 col-sm-offset-0 col-sm-6 col-xs-offset-0 col-xs-12" style="padding-bottom: 20px;"> <p class="footer-text"> <strong>Follow Us On Social Media</strong> </p> <p class="text-left social-footer">We are constantly building our social media community. Connect with us for updates on the latest news, promotion and exclusive giveaways. </p> <div class="text-left social-icons"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <i class="fa fa-facebook footer-social-icon filterprimary"></i> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <i class="fa fa-pinterest footer-social-icon filterprimary"></i> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <i class="fa fa-twitter footer-social-icon filterprimary"></i> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <i class="fa fa-instagram footer-social-icon filterprimary"></i> </a> </div> </div> <div class="col-lg-push-1 col-lg-4 col-md-5 col-sm-offset-0 col-sm-6 col-xs-offset-0 col-xs-12 text-center"> <p class="footer-text contact-box"><strong>Contact Krowdspace</strong></p> <form onsubmit="{contactMessage}" ref="commentForm"> <div class="form-group"> <input type="text" ref="fullname" class="form-control" placeholder="Full Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input ref="email" class="form-control" placeholder="Email Address" required="" aria-required="true" aria-invalid="true" type="email"> </div> <div class="form-group"> <textarea class="form-control" ref="comment" type="text" placeholder="Your Message" rows="3" required="required"></textarea> </div> <div> <input type="submit" class="contact-btn" name="submit" value="Send Message"> </div> </form> </div> </div> <div class="text-left"> <p class="copyright">&copy; Krowdspace {year}</p> </div> </div> </div> </footer>', '', '', function(opts) {
        this.on('mount', function()
        {
            $('a.page-scroll').bind('click', function(event)
            {
                var $anchor = $(this);
                $('html, body').stop().animate({
                    scrollTop: ($($anchor.attr('href')).offset().top - 50)
                }, 1250, 'easeInOutExpo');
                event.preventDefault();
            })
        });
      this.contactMessage = function(e)
        {
            e.preventDefault();

            var FULLNAME = this.refs.fullname.value,
                EMAIL = this.refs.email.value,
                COMMENT = this.refs.commentForm.value;

            krowdspace.register.contact_us(FULLNAME,EMAIL,COMMENT).then
            ((res) =>
            {
                $('#modal-comment').modal('show');
                this.refs.commentForm.reset();
            },
            (err) =>
            {
                console.log(err);
            });
        }.bind(this)
        this.year = new Date().getFullYear();
        this.update();
});

riot.tag2('global-krowdspace-navigation', '<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-alt explore-fixed-top"> <div class="container"> <div class="navbar-header page-scroll"> <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#explore-nav-collapse"> <span class="sr-only">Toggle navigation</span><i class="fa fa-bars hamburger"></i> </button> <a class="navbar-logo-alt" href="/#/explore"><img class="logo-size" src="/../img/press/krowdspace-icon-v1.svg" alt="Krowdspace Logo Small"></a> </div> <div class="collapse navbar-collapse text-center" id="explore-nav-collapse"> <ul class="nav navbar-nav navbar-left"> <li class="hidden"> <a href="#page-top"></a> </li> <li> <a class="explore-scroll" href="/#/explore">Explore</a> </li> <li> <a class="explore-scroll" href="/#/account/register">Submit Project</a> </li> </ul> <a href="/#/explore"> <img class="logo-float logo-size" src="img/press/krowdspace-icon-v1.svg" alt="Krowdspace Logo Small"> </a> <ul class="nav navbar-nav navbar-right"> <li class="hidden"> <a href="#page-top"></a> </li> <li> <a show="{logged_in}" class="explore-scroll" href="/#/account/dashboard">Dashboard</a> </li> <li> <a show="{!logged_in}" href="#modal-global-login" class="modal-link" data-toggle="modal">Login</a> </li> <li> <a show="{!logged_in}" href="#modal-global-register" class="modal-link" data-toggle="modal">Register</a> </li> <li> <a show="{logged_in}" href="/#/account/resource">Resource</a> </li> </ul> </div> </div> </nav>', '', '', function(opts) {

    krowdspace.v1.check().then((res)=>
	{
		logged_in = true;
		this.update();
	},
	(err)=>
	{

	});

    this.on('mount', function()
    {
        $('a.page-scroll').bind('click', function(event) {
            var $anchor = $(this);
            $('html, body').stop().animate({
                scrollTop: ($($anchor.attr('href')).offset().top - 50)
            }, 1250, 'easeInOutExpo');
            event.preventDefault();
        }),
        $('body').scrollspy({
            target: '.explore-fixed-top',
            offset: 51
        }),
        $('.navbar-collapse ul li a').click(function(){
                $('.navbar-toggle:visible').click();
        }),
        $('#mainNav').affix({
            offset: {
                top: 10
            }
        })
    });
});
riot.tag2('global-logout', '<div class="col-sm-1 text-right no-gutter share-container-right"> <div class="shadow share-box logout-box"> <a onclick="{krowdspaceLogout}"> <span class="fa-stack fa-lg icon-reset krowdspace-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-sign-out fa-stack-1x fa-inverse share-icon-push"></i> </span> </a> </div> </div>', '', '', function(opts) {
    this.krowdspaceLogout = function()
    {
        krowdspace.v1.logout().then((res) =>
        {
            window.location.replace("/");
        },
        (err) =>
        {
            console.log(err);
        });
    }.bind(this);
});
riot.tag2('global-modal-about', '<div id="modal-about" class="modal container fade modal-padding"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading">About Krowdspace</p> </div> <div class="modal-body"> <ul class="timeline"> <li> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/1.jpg" alt="Creating a crowdfunding project on a computer."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading">October 2016</p> <p class="about-heading">The Crowdfunding Experiment</p> <div class="text-left"> <p>We had our first encounter with crowdfunding while attempting to launch our original product "The Bahari Bag" on Kickstarter. We had the great product, a full functioning website, personal story and a well crafted project page. It became very clear that we were missing one thing. Our community wasnt large enough and it was very difficulty to gain any traction. We searched high and low for a free or affordable website to show off our hard work and build our community but there was none.</p> </div> </div> </div> </li> <li class="timeline-inverted"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/2.jpg" alt="Open nature themed background."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading">November 2016</p> <p class="about-heading">The Seed is Planted</p> <div class="text-left"> <p>As we came to terms with the results of our Kickstarter our team decided to analyze and learn from our mistakes. We had invested a lot of money into companies who promised promotions and news coverage or articles but never delivered. Our hard work and dreams had been taken advantage of by people looking to make a quick profit. The idea of a new and innovative company started to take shape to help others navigate the extreme world of crowdfunding.</p> </div> </div> </div> </li> <li> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/3.jpg" alt="Social media on ipad."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading">December 2016</p> <p class="about-heading">Krowdspace is Born</p> <div class="text-left"> <p>Krowdspace begins development to create a unified platform for people who need help launching their own crowdfunding projects. We wanted to offer a service that is appreciated and transparent. As our development continued new features were added regularly. Our social media channels go live and we start building our own brand.</p> </div> </div> </div> </li> <li class="timeline-inverted"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/4.jpg" alt="Business meeting at a desk."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading">January 2017</p> <p class="about-heading">Building our Platform</p> <div class="text-left"> <p>Along with social media boosts and featured banners for our users, we have also collected news media contacts for Press Kits to help gain traction. We are also providing targeted ad campaigns that will be fully transparent. By investing in our advertisements plans we will put 100% of the money you provide towards your campaigns. Krowdspace will not take a cut.</p> </div> </div> </div> </li> <li class="timeline"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/5.jpg" alt="old Krowdspace Logo with background."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading">March 2017</p> <p class="about-heading">Krowdspace Launch</p> <div class="text-left"> <p>The Krowdspace Landing page is launched! With the hard work and dedication of our team we were able to launch a month ahead of schedule. Next step is bringing to life the unified dashboard to pull in crowdfunding projects from the top sites. We have also launched limited crowdfunding tools to help your project be successful.</p> </div> </div> </div> </li> <li class="timeline-inverted"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/7.jpg" alt="Updated Krowdspace Logo."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading">June 2017</p> <p class="about-heading">Finish Strong</p> <div class="text-left"> <p>Krowdspace is nearing completion and we are getting closer to the final launch! A date has been set and we should be launching August 22, 2017. Krowdspace has made a slight pivot to stay within the bounds of the internet and are excited to bring you the first ever crowdfunding discount site.</p> </div> </div> </div> </li> <li class="timeline time-bottom"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/6.jpg" alt="Background image of Seattle."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading">Krowdspace</p> <div class="text-left"> <p>Krowdspace consists of a small team from the Seattle Washington area. Each one of us brings a special skill set to create something special. Support us on this journey and see how Krowdspace takes shape.</p> </div> </div> </div> </li> </ul> <div class="text-center"> <button type="button" class="text-center modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('global-modal-comment', '<div id="modal-comment" class="modal container fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Thank You From Krowdspace</p> </div> <div class="modal-body"> <p>Thank you for submitting your comment to Krowdspace. We will respond as quickly as possible. Please register with Krowdspace and get to know our new site!</p> <p>We will be sending updates on the latest news, promotions and exclusive giveaways to all of our Krowdspace members. Until then, make sure to stay connected on our social media channels:</p> <div class="col-sm-9 text-left boost-warning"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-instagram fa-stack-1x fa-inverse"></i> </span> </a> </div> <div class="col-sm-3 text-right boost-warning social-padding"> <a onclick="{comment}"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-sign-out fa-stack-1x fa-inverse center-icon"></i> </span> </a> </div> <div class="clearfix"></div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
this.comment = function()
{
	$('#modal-comment').modal('hide');
    window.location.replace("/#/explore");
}.bind(this)
});
riot.tag2('global-modal-feature', '<div id="modal-feature-info" class="modal container fade modal-padding"> <div class="krowdspace-modal col-lg-10 col-lg-offset-1 col-md-12 col-md-offset-0"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading">FEATURED PROJECTS AND BOOSTS</p> <p class="legal-text">Welcome to our featured project options for your live crowdfunding project. At Krowdspace we have experienced first-hand how difficult it can be to launch a crowdfunding campaign. For a limited time, we are offering free featured project packages and social media posts! If you would like to take advantage of this special offer please <a onclick="{registerFeatured}" href="/#/account/register" class="modal-link home-links">submit your project</a> to Krowdspace and activate these packages on your <a onclick="{dashboardFeatured}" href="/#/account/dashboard" class="modal-link home-links">Krowdspace Dashboard</a>.</p> </div> <div class="modal-body"> <div class="row"> <div class="col-md-8 featured-text-box"> <p class="featured-title">FEATURED PROJECT LISTING</p> <p class="legal-text">Every featured project will have a yellow heart icon located in the corner of your project image. These icons will be displayed on our Explore Page filtering system. Having the icon will allow your project to have priority filtering and will always show ahead of other projects without the icon. Our featured project listing will last the entire length of your campaign.</p> </div> <div class="col-md-4 hidden-sm hidden-xs featured-image-box"> <img class="img-responsive" src="/img/content/featured-purchase.jpg"> </div> </div> <div class="row"> <div class="col-md-8 featured-text-box"> <p class="featured-title">EXPLORE PAGE BANNER</p> <p class="legal-text">Every project that is featured on our Explore Page Rotating Banner will have increased viewership and a higher click through rate compared to only having the featured icon. Your project will be displayed on our rotating banner located on the Explore Page as a hero image. This explore featured banner will last 7 days and then expire. </p> </div> <div class="col-md-4 hidden-sm hidden-xs featured-image-box"> <img class="img-responsive" src="/img/content/explore-purchase.jpg"> </div> </div> <div class="row"> <div class="col-md-8 featured-text-box"> <p class="featured-title">LANDING PAGE BANNER</p> <p class="legal-text">Our Landing Page package will bring the most traffic to your campaign. Every project owner that purchases this package will be featured on the Krowdspace Landing Page rotating banner as well as every Krowdspace users dashboard rotating banner. Your campaign will be seen by everyone! The landing page package will last for 7 days and then expire.</p> </div> <div class="col-sm-4 hidden-sm hidden-xs featured-image-box"> <img class="img-responsive" src="/img/content/landing-purchase.jpg"> </div> </div> <div class="row"> <div class="col-md-8 featured-text-box"> <p class="featured-title">SOCIAL MEDIA POSTS</p> <p class="legal-text">We will post your project on our 4 social media channels. By purchasing this package, you will see your project on our Facebook, Twitter, Pinterest and Instagram accounts with a link to your crowdfunding site when applicable. We currently have over 6,000 combined followers!</p> </div> <div class="col-sm-4 hidden-sm hidden-xs featured-image-box"> <img class="img-responsive" src="/img/content/social-purchase.jpg"> </div> </div> </div> </div> </div> </div>', '@media screen and (max-width: 767px) { global-modal-feature img,[data-is="global-modal-feature"] img{ width: 300px; margin: 0 auto; } }', '', function(opts) {
    this.dashboardFeatured = function()
    {
        $('#modal-feature-info').modal('hide');
    }.bind(this)
    this.registerFeatured = function()
    {
        $('#modal-feature-info').modal('hide');
    }.bind(this)
});
riot.tag2('global-modal-giveaway', '<div id="modal-giveaway" class="modal container fade modal-padding"> <div class="krowdspace-modal col-sm-8 col-sm-offset-2 col-xs-12 col-xs-offset-0" style="margin-bottom: 0px;"> <div id="modal" class="modal-content text-center"> <div> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <iframe style="width: 100%; height: 1150px; overflow: hidden;" src="https://gleam.io/XsDXo/krowdspace-party-pack-giveaway" frameborder="0" allowfullscreen></iframe> <p class="modal-heading">Previous Giveaways</p> <div class="giveaway-box text-left"> <p class="privacy-title">$50 Amazon Card - 04/01/17</p> <p class="privacy-title">$75 K POP Prize Package - 05/25/17</p> <p class="privacy-title">$60 Krowdspace Party Pack - 08/22/17</p> </div> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('global-modal-login', '<div id="modal-global-login" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-body modal-custom"> <form onsubmit="{loginSubmit}"> <div class="text-left register-container-modal modal-max-login"> <p class="modal-heading modal-heading-alt">Krowdspace Login</p> <div id="errorLog" class="alert alert-danger alert-dismissable fade in"> <a class="close" onclick="$(\'.alert\').hide()"><i class="fa fa-close"></i></a> <strong>Error:</strong> Invalid username or password. </div> <div class="has-feedback"> <label class="control-label" for="username"></label> <input type="text" class="form-control box-radius" id="username" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off"> <span class="fa fa-user form-control-feedback"></span> </div> <div class="has-feedback"> <label class="control-label" for="password"></label> <input type="password" class="form-control box-radius" id="password" placeholder="Password" ref="passwordlogin" autocorrect="off" autocapitalize="off"> <span class="fa fa-lock form-control-feedback"></span> </div> <div class="col-xs-6 loginbox checkbox text-left"> <label> <input type="checkbox" ref="checkbox" id="checkbox" name="remember">Remember Me </label> </div> <div class="col-xs-6 checkbox text-right forgot-box"> <a style="cursor: pointer;" onclick="{registerPassword}"> <p class="forgot-pass">Forgot Password?</p> </a> </div> <div class="clearfix"></div> </div> <div class="text-center modal-max-login"> <input type="submit" class="landing-submit alt-border" name="submit" value="Login"> </div> </form> <div class="text-center"> <p class="login-float-text">Dont have an account? <a class="function-link" onclick="{registerModal}">Register today!</a></p> </div> </div> </div> </div> </div>', '', '', function(opts) {
        this.loginSubmit = function(e)
        {

        	e.preventDefault();

        	let USERNAME = this.refs.usernamelogin.value,
        	    PASSWORD = this.refs.passwordlogin.value,
                STAYLOGGED = this.refs.checkbox.checked;

        	krowdspace.v1.login(USERNAME, PASSWORD, STAYLOGGED).then
        	((res) =>
        	{
        		this.logged_in = true;
        		this.update();
                $('#modal-global-login').modal('hide');
                window.location.replace("/#/account/dashboard");
        	},
        	(err) =>
        	{
        		console.log(err);
                $('#errorLog').show();
        	});
        }.bind(this)
        this.registerModal = function()
        {
        	$('#modal-global-login').modal('hide');
            $('#modal-global-register').modal('show');
        }.bind(this)
        this.registerPassword = function()
        {
        	$('#modal-global-login').modal('hide');
            $('#modal-password').modal('show');
        }.bind(this)
});
riot.tag2('global-modal-marketing', '<div id="modal-global-marketing" class="modal container modal-padding-none"> <div class="krowdspace-modal col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-body modal-custom" style="margin: 0px;"> <img class="img-responsive" src="img/social-content/krowdspace-marketing.jpg"> <div class="col-sm-12 text-left market-container-modal"> <p class="modal-heading modal-heading-alt">Who Doesnt like Free stuff?</p> <p class="text-left landing-text cta-header">If you have ever backed a crowdfunding project on Kickstarter or Indiegogo then you have to check out Krowdspace.com! If you dont, you will be missing out on free secret perks and extra rewards associated with every campaign.</p> <p class="text-left landing-text cta-header">Project owners from Indeigogo and Kickstarter submit their projects to Krowdspace with exclusive rewards to gain a larger community. Members on Krowdspace will then have access to these secret rewards and perks and receive them upon backing the campaign. Check to see if the project you want to support has already submitted to Krowdspace. It is that simple and 100% free.</p> <p class="text-left landing-text cta-header">You can register by using the form below!</p> </div> <form onsubmit="{submitRegister}"> <div class="col-sm-12 text-left market-container-modal"> <p class="modal-heading modal-heading-alt">Krowdspace Register</p> <p class="text-left landing-text cta-header">Discover extra rewards for projects you love or submit your own crowdfunding project!</p> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control" placeholder="First Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input ref="email" class="form-control" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true" type="email"> </div> <div class="form-group"> <input type="text" ref="usernameform" class="form-control" placeholder="Username" required="required" aria-required="true" aria-invalid="true" minlength="5"> </div> <div class="input-group"> <input type="password" ref="passwordform" placeholder="New Password" id="PASSWORD2" class="masked form-control" required="required" minlength="5"> <div class="input-group-btn"> <button type="button" id="eyeRegister" class="btn btn-eye"> <i class="fa fa-eye fa-lg"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter" class="form-control" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo" class="form-control" placeholder="Indiegogo Username (Optional)"> </div> <div class="check-terms checkbox"> <label> <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link home-links">Krowdspace terms</a> </label> </div> </div> <div class="text-center"> <input type="submit" class="landing-submit alt-border" name="submit" value="Join Krowdspace"> </div> </form> </div> </div> </div>', '', '', function(opts) {

this.on('mount', function()
{
	function show()
	{
		let pass = document.getElementById('PASSWORD2');
		pass.setAttribute('type', 'text');
	}
	function hide()
	{
		let pass = document.getElementById('PASSWORD2');
		pass.setAttribute('type', 'password');
	}

	let pwShown = 0;

	document.getElementById("eyeRegister").addEventListener("click", function ()
	{
		if (pwShown == 0)
		{
			pwShown = 1;
			show();
		}
		else
		{
			pwShown = 0;
			hide();
		}
	}, false);
});

this.submitRegister = function(e)
{
	e.preventDefault();

	let FNAME = this.refs.firstname.value,
            LNAME = this.refs.lastname.value,
            EMAIL = this.refs.email.value,
            USERNAME = this.refs.usernameform.value,
            PASSWORD = this.refs.passwordform.value,
            KSUSER = this.refs.kickstarter.value,
            IGUSER = this.refs.indiegogo.value;

	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
	((res) =>
	{
                $('#modal-global-marketing').modal('hide');
                $('#modal-submission').modal('show');
	},
	(err) =>
	{
		console.log(err);
	});
}.bind(this)

        this.on('mount', function()
        {
            var url = window.location.href;
            if (url.indexOf('?facebook=1') != -1)
            {
                $("#modal-global-marketing").modal('show');
            };
        });
});
riot.tag2('global-modal-password', '<div id="modal-password" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-body modal-custom"> <form> <div class="text-left register-container-modal modal-max-login"> <p class="modal-heading modal-heading-alt">Forgot your Password?</p> <p class="text-left landing-text">Please enter your email address and we will send you instructions on how to reset your password.</p> <div class="has-feedback email-box"> <label class="control-label" for="username"></label> <input type="text" class="form-control" id="email" placeholder="Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off" style="border-radius: 0px;"> <span class="fa fa-envelope form-control-feedback"></span> </div> </div> <div class="text-center modal-max-login"> <input type="submit" class="landing-submit alt-border" name="submit" value="Send Email"> </div> </form> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('global-modal-press', '<div id="modal-press-kit" class="modal container fade modal-padding"> <div class="krowdspace-modal col-lg-offset-1 col-lg-10"> <div id="modal"> <div class="modal-purchase no-gutter"> <div class="col-lg-6 hidden-md hidden-sm hidden-xs press-left"> <p class="modal-heading">KROWDSPACE PRESS KIT</p> <p class="press-text">Our logo is our identity so please treat it with respect. Please do not alter the Krowdspace logo in any form unless given permission by our staff.</p> <p class="press-text">If you are a project owner please download one of our logos, icons or banners and place it on your crowdfunding project. We verify every project that is submitted to Krowdspace by checking for a hyperlink back to our site. Make sure the image is visible and uses the below url. </p> <p class="press-text">https://www.Krowdspace.com</p> <p class="press-text">We appreciate your understanding and look forward to seeing your project on Krowdspace.</p> </div> <div class="col-lg-6 press-right"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading logo-push">KROWDSPACE LOGO</p> <div class="col-sm-3 col-xs-6 text-center no-gutter press-box"> <img class="press-img" src="img/press/krowdspace-icon-v1.svg"> <div class="col-xs-6 press-download-left"> <a href="img/press/krowdspace-icon-v1.png" download> <p class="download-font">PNG</p> </a> </div> <div class="col-xs-6"> <a href="img/press/krowdspace-icon-v1.svg" download> <p class="download-font">SVG</p> </a> </div> </div> <div class="col-sm-3 col-xs-6 text-center no-gutter press-box"> <div class="checker press-img no-gutter"> <img src="img/press/krowdspace-icon-v2.svg"> </div> <div class="col-xs-6 press-download-left"> <a href="img/press/krowdspace-icon-v2.png" download> <p class="download-font">PNG</p> </a> </div> <div class="col-xs-6"> <a href="img/press/krowdspace-icon-v2.svg" download> <p class="download-font">SVG</p> </a> </div> </div> <div class="col-sm-3 col-xs-6 text-center no-gutter press-box"> <img class="press-img" src="img/press/krowdspace-icon-v3.svg"> <div class="col-xs-6 press-download-left"> <a href="img/press/krowdspace-icon-v3.png" download> <p class="download-font">PNG</p> </a> </div> <div class="col-xs-6"> <a href="img/press/krowdspace-icon-v3.svg" download> <p class="download-font">SVG</p> </a> </div> </div> <div class="col-sm-3 col-xs-6 text-center no-gutter press-box"> <img class="press-img" src="img/press/krowdspace-icon-v4.svg"> <div class="col-xs-6 press-download-left"> <a href="img/press/krowdspace-icon-v4.png" download> <p class="download-font">PNG</p> </a> </div> <div class="col-xs-6"> <a href="img/press/krowdspace-icon-v4.svg" download> <p class="download-font">SVG</p> </a> </div> </div> <div class="col-xs-12 no-gutter press-box"> <img class="press-img-alt" src="img/press/krowdspace-icon-v6.svg"> <div class="col-xs-6 text-right press-download-left"> <a href="img/press/krowdspace-icon-v6.png" download> <p class="download-font png-left">PNG</p> </a> </div> <div class="col-xs-6 text-left"> <a href="img/press/krowdspace-icon-v6.svg" download> <p class="download-font svg-right">SVG</p> </a> </div> </div> <div class="col-xs-12 no-gutter press-box"> <img class="press-img-alt" src="img/press/krowdspace-icon-v7.svg"> <div class="col-xs-6 text-right press-download-left"> <a href="img/press/krowdspace-icon-v7.png" download> <p class="download-font png-left">PNG</p> </a> </div> <div class="col-xs-6 text-left"> <a href="img/press/krowdspace-icon-v7.svg" download> <p class="download-font svg-right">SVG</p> </a> </div> </div> <div class="col-xs-12 no-gutter press-box"> <img class="press-img-alt" src="img/press/krowdspace-icon-v5.svg"> <div class="col-xs-6 text-right press-download-left"> <a href="img/press/krowdspace-icon-v5.png" download> <p class="download-font png-left">PNG</p> </a> </div> <div class="col-xs-6 text-left"> <a href="img/press/krowdspace-icon-v5.svg" download> <p class="download-font svg-right">SVG</p> </a> </div> </div> </div> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('global-modal-privacy', '<div id="modal-privacy-policy" class="modal container fade modal-padding"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading">Privacy Policy - May 20, 2017</p> </div> <div class="modal-body"> <p class="privacy-title">SECTION 1 - WHAT DO WE DO WITH YOUR INFORMATION?</p> <p class="legal-text">When you purchase a service from our store, as part of the buying and selling process, we collect the personal information you give us such as your name, address and email address. When you browse our store, we also automatically receive your computer’s internet protocol (IP) address in order to provide us with information that helps us learn about your browser and operating system. Email marketing: With your permission, we may send you emails about our store, new products and other updates. </p> <p class="privacy-title">SECTION 2 - CONSENT</p> <p class="legal-text">How do you get my consent?</p> <p class="legal-text">When you provide us with personal information to complete a transaction, verify your credit card, place an order, arrange for a delivery or return a purchase, we imply that you consent to our collecting it and using it for that specific reason only. If we ask for your personal information for a secondary reason, like marketing, we will either ask you directly for your expressed consent, or provide you with an opportunity to say no. </p> <p class="legal-text">How do I withdraw my consent?</p> <p class="legal-text">If after you opt-in, you change your mind, you may withdraw your consent for us to contact you, for the continued collection, use or disclosure of your information, at anytime, by contacting us at mason@krowdspace.com or mailing us at: </p> <p>Krowdspace LLC<br> P.O. Box 1225 <br> Snohomish, WA 98291-1225 </p> <p class="privacy-title">SECTION 3 - DISCLOSURE</p> <p class="legal-text">We may disclose your personal information if we are required by law to do so or if you violate our Terms of Service.</p> <p class="privacy-title">SECTION 4 - SHOPIFY</p> <p class="legal-text">Our stores payment processing is hosted on Shopify Inc. They provide us with the online e-commerce platform that allows us to sell our products and services to you. Your data is stored through Shopify’s data storage, databases and the general Shopify application. They store your data on a secure server behind a firewall. </p> <p class="legal-text">Payment:</p> <p class="legal-text"> If you choose a direct payment gateway to complete your purchase, then Shopify stores your credit card data. It is encrypted through the Payment Card Industry Data Security Standard (PCI-DSS). Your purchase transaction data is stored only as long as is necessary to complete your purchase transaction. After that is complete, your purchase transaction information is deleted. All direct payment gateways adhere to the standards set by PCI-DSS as managed by the PCI Security Standards Council, which is a joint effort of brands like Visa, MasterCard, American Express and Discover. PCI-DSS requirements help ensure the secure handling of credit card information by our store and its service providers. For more insight, you may also want to read Shopify’s Terms of Service (https://www.shopify.com/legal/terms) or Privacy Statement (https://www.shopify.com/legal/privacy). </p> <p class="privacy-title">SECTION 5 - THIRD-PARTY SERVICES</p> <p class="legal-text">In general, the third-party providers used by us will only collect, use and disclose your information to the extent necessary to allow them to perform the services they provide to us. However, certain third-party service providers, such as payment gateways and other payment transaction processors, have their own privacy policies in respect to the information we are required to provide to them for your purchase-related transactions. For these providers, we recommend that you read their privacy policies so you can understand the manner in which your personal information will be handled by these providers. In particular, remember that certain providers may be located in or have facilities that are located a different jurisdiction than either you or us. So if you elect to proceed with a transaction that involves the services of a third-party service provider, then your information may become subject to the laws of the jurisdiction(s) in which that service provider or its facilities are located. As an example, if you are located in Canada and your transaction is processed by a payment gateway located in the United States, then your personal information used in completing that transaction may be subject to disclosure under United States legislation, including the Patriot Act. Once you leave our store’s website or are redirected to a third-party website or application, you are no longer governed by this Privacy Policy or our website’s Terms of Service. </p> <p class="legal-text">Links:</p> <p class="legal-text" p> When you click on links on our store, they may direct you away from our site. We are not responsible for the privacy practices of other sites and encourage you to read their privacy statements. </p> <p class="privacy-title">SECTION 6 - SECURITY</p> <p class="legal-text">To protect your personal information, we take reasonable precautions and follow industry best practices to make sure it is not inappropriately lost, misused, accessed, disclosed, altered or destroyed. If you provide us with your credit card information, the information is encrypted using secure socket layer technology (SSL) and stored with a AES-256 encryption. Although no method of transmission over the Internet or electronic storage is 100% secure, we follow all PCI-DSS requirements and implement additional generally accepted industry standards. </p> <p class="privacy-title">SECTION 7 - COOKIES</p> <p class="legal-text">Here is a list of cookies that we use. We’ve listed them here so you that you can choose if you want to opt-out of cookies or not.<br> <ul class="text-left privacy-list"> <li>_session_id, unique token, sessional, Allows Shopify to store information about your session (referrer, landing page, etc).</li> <li>_shopify_visit, no data held, Persistent for 30 minutes from the last visit, Used by our website provider’s internal stats tracker to record the number of visits.</li> <li>_shopify_uniq, no data held, expires midnight (relative to the visitor) of the next day, Counts the number of visits to a store by a single customer.</li> <li>cart, unique token, persistent for 2 weeks, Stores information about the contents of your cart. <li>_secure_session_id, unique token, sessional.</li> <li>storefront_digest, unique token, indefinite If the shop has a password, this is used to determine if the current visitor has access.</li> </ul> <p class="privacy-title">SECTION 8 - AGE OF CONSENT</p> <p class="legal-text">By using this site, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p> <p class="privacy-title">SECTION 9 - CHANGES TO THIS PRIVACY POLICY</p> <p class="legal-text">We reserve the right to modify this privacy policy at any time, so please review it frequently. Changes and clarifications will take effect immediately upon their posting on the website. If we make material changes to this policy, we will notify you here that it has been updated, so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we use and/or disclose it. If our store is acquired or merged with another company, your information may be transferred to the new owners so that we may continue to sell products to you. </p> <p class="privacy-title">QUESTIONS AND CONTACT INFORMATION</p> <p class="legal-text">If you would like to: access, correct, amend or delete any personal information we have about you, register a complaint, or simply want more information contact our Privacy Compliance Officer by email at mason@krowdspace.com or by mail at</p> <br> <p>Krowdspace LLC<br> Re: Privacy Compliance Officer <br> P.O. Box 1225<br> Snohomish, WA 98291-1225 </p> <div class="text-center"> <button type="button" class="modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('global-modal-register', '<div id="modal-global-register" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-body modal-custom"> <form onsubmit="{submitRegister}"> <div class="text-left register-container-modal modal-max-register"> <p class="modal-heading modal-heading-alt">Krowdspace Register</p> <p class="text-left landing-text cta-header">Discover extra rewards for projects you love or submit your own crowdfunding project!</p> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control" placeholder="First Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input ref="email" class="form-control" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true" type="email"> </div> <div class="form-group"> <input type="text" ref="usernameform" class="form-control" placeholder="Username" required="required" aria-required="true" aria-invalid="true" minlength="5"> </div> <div class="input-group"> <input type="password" ref="passwordform" placeholder="New Password" id="PASSWORD2" class="masked form-control" required="required" minlength="5"> <div class="input-group-btn"> <button type="button" id="eyeRegister" class="btn btn-eye"> <i class="fa fa-eye fa-lg"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter" class="form-control" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo" class="form-control" placeholder="Indiegogo Username (Optional)"> </div> <div class="check-terms checkbox"> <label> <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link home-links">Krowdspace terms</a> </label> </div> </div> <div class="text-center modal-max-register"> <input type="submit" class="landing-submit alt-border" name="submit" value="Join Krowdspace"> </div> </form> </div> </div> </div>', '', '', function(opts) {

this.on('mount', function()
{
	function show()
	{
		let pass = document.getElementById('PASSWORD2');
		pass.setAttribute('type', 'text');
	}
	function hide()
	{
		let pass = document.getElementById('PASSWORD2');
		pass.setAttribute('type', 'password');
	}

	let pwShown = 0;

	document.getElementById("eyeRegister").addEventListener("click", function ()
	{
		if (pwShown == 0)
		{
			pwShown = 1;
			show();
		}
		else
		{
			pwShown = 0;
			hide();
		}
	}, false);
});

this.submitRegister = function(e)
{
	e.preventDefault();

	let FNAME = this.refs.firstname.value,
            LNAME = this.refs.lastname.value,
            EMAIL = this.refs.email.value,
            USERNAME = this.refs.usernameform.value,
            PASSWORD = this.refs.passwordform.value,
            KSUSER = this.refs.kickstarter.value,
            IGUSER = this.refs.indiegogo.value;

	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
	((res) =>
	{
                $('#modal-global-register').modal('hide');
                $('#modal-submission').modal('show');
	},
	(err) =>
	{
		console.log(err);
	});
}.bind(this)
});
riot.tag2('global-modal-rewards', '<div id="modal-global-rewards" class="modal container fade modal-padding"> <div class="krowdspace-modal col-sm-8 col-sm-offset-2"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading">KROWDSPACE REWARDS</p> </div> <div class="modal-body"> <p>For your project to be eligible on Krowdspace you must provide an exclusive reward for backers who support you through our platform. Krowdspace will look over each reward submission before approving it for our site. This process can take up to 24 hours. You will be obligated to fulfill any extra rewards listed on your Krowdspace project profile.</p> <p class="privacy-title">KICKSTARTER CAMPAIGNS</p> <p class="legal-text">Currently Kickstarter does not have a "Loyalty Program" to reward loyal customers and provide discount to friends and family. This is one of the many benefits of using Krowdspace. Once you decide on a reward or discount we will generate a coupon code so that your loyal customers can visit Krowdspace, retrieve that coupon code, and provide it back to you upon supporting your campaign on Kickstarter.</p> <p class="privacy-title">INDIEGOGO CAMPAIGNS</p> <p class="legal-text">To submit a project from Indiegogo you will need to provide your "Secret Perks" link and a description of one of your Secret Perks. Using Krowdspace will open up new opportunities and get your project viewed by not only an Indiegogo audience but a Kickstarter audience as well. </p> <p class="privacy-title">REWARD EXAMPLES</p> <div class="reward-examples"> <p class="text-reset">All Krowdspace members will have continued access to Early Bird Pricing.</p> <p class="text-reset">All Krowdspace members will get a free upgrade to the next tier automatically.</p> <p class="text-reset">Krowdspace members will get to choose from additional colors that won’t be available to anyone else.</p> <p class="text-reset">If you back our 3 bundle tier we will send you an extra bundle free.</p> <p class="text-reset">All Krowdspace members will be given protective cases with your pledge item.</p> <p class="text-reset">All Krowdspace members who back over $50 will receive another item free.</p> <p class="text-reset">All Krowdspace members will receive 15% off their pledges.</p> <p class="text-reset">All Krowdspace members will be given a custom engraved wallet with their watch.</p> </div> <p class="legal-text">Keep it simple and make it creative. People love to see that their pledge is helping your project come to life and personal touches make all the difference. if you have any questions about rewards please contact us through our footer form.</p> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('global-modal-service', '<div id="modal-service-terms" class="modal container fade modal-padding"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i> </button> <p class="modal-heading">Terms of Service - May 20, 2017</p> </div> <div class="modal-body"> <p class="privacy-title">OVERVIEW</p> <p class="legal-text">This website is operated by Krowdspace LLC, a limited liability company incorporated in the state of Washington, United States. Throughout the site, the terms “we”, “us” and “our” refer to Krowdspace. Krowdspace offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.</p> <p class="legal-text">By visiting our site and/ or purchasing something from us, you engage in our “Service” and agree to be bound by the following terms and conditions (“Terms of Service”, “Terms”), including those additional terms and conditions and policies referenced herein. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.</p> <p class="legal-text">Please read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.</p> <p class="legal-text">Any new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.</p> <p class="legal-text">Our stores payment gateway is hosted on Shopify Inc. They provide us with the online e-commerce platform that allows us to sell our products and services to you.</p> <p class="privacy-title">SECTION 1 - ONLINE STORE TERMS</p> <p class="legal-text">By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site. You may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws). You must not transmit any worms or viruses or any code of a destructive nature. A breach or violation of any of the Terms will result in an immediate termination of your Services. </p> <p class="privacy-title">SECTION 2 - GENERAL CONDITIONS</p> <p class="legal-text">We reserve the right to refuse service to anyone for any reason at any time. You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks. <p class="legal-text">You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us. The headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms. </p> <p class="privacy-title">SECTION 3 - ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION</p> <p class="legal-text">We are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk. This site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site. </p> <p class="privacy-title">SECTION 4 - MODIFICATIONS TO THE SERVICE AND PRICES</p> <p class="legal-text">Prices for our products are subject to change without notice. We reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time. We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service. </p> <p class="privacy-title">SECTION 5 - PRODUCTS OR SERVICES (if applicable)</p> <p class="legal-text">Certain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy. We have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor\'s display of any color will be accurate. We reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited. We do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected. </p> <p class="privacy-title">SECTION 6 - ACCURACY OF BILLING AND ACCOUNT INFORMATION</p> <p class="legal-text">We reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.</p> <p class="legal-text">You agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.</p> <p class="privacy-title">SECTION 7 - OPTIONAL TOOLS</p> <p class="legal-text">We may provide you with access to third-party tools over which we neither monitor nor have any control nor input. You acknowledge and agree that we provide access to such tools ”as is” and “as available” without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools. Any use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s). We may also, in the future, offer new services and/or features through the website (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service. </p> <p class="privacy-title">SECTION 8 - THIRD-PARTY LINKS</p> <p class="legal-text">Certain content, products and services available via our Service may include materials from third-parties. Third-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties. We are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party\'s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party. </p> <p class="privacy-title">SECTION 9 - USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS</p> <p class="legal-text">If, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, photographs, or other materials, whether online, by email, by postal mail, or otherwise (collectively, \'comments\'), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments or photographs that you forward to us. We are and shall be under no obligation (1) to maintain any comments or photographs in confidence; (2) to pay compensation for any comments or photographs; or (3) to respond to any comments or photographs. We may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party’s intellectual property or these Terms of Service. You agree that your comments and photographs will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments and photographs will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments or photographs. You are solely responsible for any comments and photographs you make and their accuracy. We take no responsibility and assume no liability for any comments or photographs posted by you or any third-party. </p> <p class="privacy-title">SECTION 10 - PERSONAL INFORMATION</p> <p>Your submission of personal information through the store is governed by our Privacy Policy.</p> <p class="privacy-title">SECTION 11 - ERRORS, INACCURACIES AND OMISSIONS</p> <p class="legal-text">Occasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order). We undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated. </p> <p class="privacy-title">SECTION 12 - PROHIBITED USES</p> <p class="legal-text">In addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.</p> <p class="privacy-title">SECTION 13 - DISCLAIMER OF WARRANTIES; LIMITATION OF LIABILITY</p> <p class="legal-text">We do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free. We do not warrant that the results that may be obtained from the use of the service will be accurate or reliable. You agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you. You expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided \'as is\' and \'as available\' for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement. In no case shall Krowdspace, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law. </p> <p class="privacy-title">SECTION 14 - INDEMNIFICATION</p> <p class="legal-text">You agree to indemnify, defend and hold harmless Krowdspace and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys’ fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.</p> <p class="privacy-title">SECTION 15 - SEVERABILITY</p> <p class="legal-text">In the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.</p> <p class="privacy-title">SECTION 16 - TERMINATION</p> <p class="legal-text">The obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes. These Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site. If in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof). </p> <p class="privacy-title">SECTION 17 - ENTIRE AGREEMENT</p> <p class="legal-text">The failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision. These Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service). Any ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party. </p> <p class="privacy-title">SECTION 18 - GOVERNING LAW</p> <p class="legal-text">These Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of the state of Washington, United States, and disputes shall be resolved in Snohomish County Superior Court in Everett, Washington.</p> <p class="privacy-title">SECTION 19 - CHANGES TO TERMS OF SERVICE</p> <p class="legal-text">You can review the most current version of the Terms of Service at any time at this page. We reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes. </p> <p class="privacy-title">SECTION 20 - CONTACT INFORMATION</p> <p class="legal-text">Questions about the Terms of Service should be sent to us at mason@krowdspace.com.</p> <div class="text-center"> <button type="button" class="modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('global-modal-submission', '<div id="modal-submission" class="modal container fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Thank You From Krowdspace</p> </div> <div class="modal-body"> <p>Thank you for registering with Krowdspace. To activate your account please check your email and click on the verification link provided. We hope you enjoy our services and happy crowdfunding!</p> <p>Being a Krowdspace member will give you access to the latest news, promotions and exclusive giveaways! Until then, make sure to stay connected with our social media channels:</p> <div class="col-sm-9 text-left boost-warning"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-instagram fa-stack-1x fa-inverse"></i> </span> </a> </div> <div class="col-sm-3 text-right boost-warning"> <a onclick="{submission}"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-sign-out fa-stack-1x fa-inverse center-icon"></i> </span> </a> </div> <div class="clearfix"></div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
this.submission = function()
{
	$('#modal-submission').modal('hide');
    window.location.replace("/#/explore");
}.bind(this)
});
riot.tag2('home-content-benefits', '<div id="project" class="home-section"> <div class="container"> <div class="row"> <div class="col-sm-12 text-center"> <h2 class="landing-header">How it works</h2> </div> <div class="col-lg-offset-2 col-lg-8 col-md-12 text-left"> <p class="text-reset">At Krowdspace, we feature projects gathered from the top crowdfunding sites and bring them together into one unified platform. Why is this beneficial? Projects are detached from their original platform branding, which removes backer bias and exposes them to a broader audience. As a project’s audience grows, the probability of reaching funding goals is increased. Pair that with Krowdspace’s effective <a href="#modal-feature-info" data-toggle="modal" class="modal-link home-links">project boosts</a> and campaigns gain momentum faster. Join the Krowdspace community today by <a href="/#/explore" class="modal-link home-links">discovering new projects</a> or <a href="/#/account/register" class="modal-link home-links">submit your own project</a>.</p> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('home-content-directions', '<div id="project" class="home-top"> <div class="container"> <div class="row"> <div class="col-sm-12 text-center"> <h2 class="landing-header">How to submit a project</h2> </div> <div class="home-bottom col-lg-offset-2 col-lg-8 col-md-12 text-left"> <p class="text-reset">Krowdspace is currently accepting live crowdfunding projects from Kickstarter and Indiegogo. The process to submit a project is simple: once your project is live on either platform, <a href="/#/account/register" class="modal-link home-links">submit your project</a> for approval to Krowdspace by filling out our easy to use submission form. In order to have your project published on Krowdspace, you must offer an exclusive reward for backers who support you through our community. Supporters that might not usually use the funding platform you’ve chosen can now discover your project and get on board. When it comes to fundraising, every advantage counts.</p> </div> <div class="col-md-4 home-bottom hidden-sm hidden-xs"> <div class="text-center price-box shadow"> <img src="/img/content/submit-icon.png" class="img-responsive" alt="Submit a Project Icon"> <p class="boost-small"> <i>Register Project</i> </p> </div> </div> <div class="col-md-4 home-bottom hidden-sm hidden-xs"> <div class="text-center price-box shadow"> <img src="/img/content/reward-icon.png" class="img-responsive" alt="Rewards Icon"> <p class="boost-small"> <i>Offer an Extra Reward</i> </p> </div> </div> <div class="col-md-4 home-bottom hidden-sm hidden-xs"> <div class="text-center price-box shadow"> <img src="/img/content/backer-icon.png" class="img-responsive" alt="Gain Backers Icon"> <p class="boost-small"> <i>Gather More Backers</i> </p> </div> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('home-content-hero', '<header alt="Back the project, not the platform. Launch your project with Krowdspace today!"> <div class="container-header"> <div class="row"> <div class="col-lg-8 col-md-12 header-left text-left"> <h1 class="header-title hidden-xs">Back the Project, not the Platform</h1> <div class="container-top-header"> <p>At Krowdspace, our goal is to unify the crowdfunding community. Whether you’re a project owner building momentum for your campaign, or a backer looking to support the next big idea, Krowdspace offers a platform to discover the latest projects from top crowdfunding sites all in one place.</p> <p class="hero-text">Krowdspace members will receive exclusive rewards for backing projects and project owners gain access to our easy to use promotional tools to take their campaigns to the next level.</p> <a href="#modal-global-login" data-toggle="modal" class="btn-landing shadow">Submit a Project</a> </div> </div> <div class="col-lg-4 header-right hidden-md hidden-sm hidden-xs"> <div class="shadow"> <form ref="registerform" onsubmit="{submit}"> <div class="col-sm-12 register-container text-left"> <p class="text-left landing-text cta-header">Discover extra rewards for projects you love or submit your own crowdfunding project!</p> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control" placeholder="First Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input name="email" ref="email" class="form-control" placeholder="Email Address" required type="email"> </div> <div class="form-group"> <input type="text" ref="username" class="form-control" placeholder="Username" required="required" aria-required="true" aria-invalid="true" minlength="5"> </div> <div class="input-group"> <input type="password" ref="password" placeholder="New Password" id="PASSWORD" class="masked form-control" required="required" minlength="5"> <div class="input-group-btn"> <button type="button" id="eye" class="btn btn-eye"> <i class="fa fa-eye fa-lg"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter" class="form-control" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo" class="form-control" placeholder="Indiegogo Username (Optional)"> </div> <div class="check-terms checkbox"> <label> <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link home-links">Krowdspace terms</a> </label> </div> </div> <div class="text-center"> <input type="submit" class="landing-submit" name="submit" value="Join Krowdspace"> </div> </form> </div> </div> </div> </div> </header>', '', '', function(opts) {
        this.submit = function(e)
        {
        	e.preventDefault();

        	let FNAME = this.refs.firstname.value,
        		LNAME = this.refs.lastname.value,
        		EMAIL = this.refs.email.value,
        	    USERNAME = this.refs.username.value,
        	    PASSWORD = this.refs.password.value,
        		KSUSER = this.refs.kickstarter.value,
        	    IGUSER = this.refs.indiegogo.value;

        	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
        	((res) =>
        	{

                $('#modal-submission').modal('show');
                this.refs.registerform.reset();
        	},
        	(err) =>
        	{

        	});
        }.bind(this)
        this.on('mount', function()
        {
        	function show()
        	{
        		var pass = document.getElementById('PASSWORD');
        		pass.setAttribute('type', 'text');
        	}
        	function hide()
        	{
        		var pass = document.getElementById('PASSWORD');
        		pass.setAttribute('type', 'password');
        	}

        	var pwShown = 0;

        	document.getElementById("eye").addEventListener("click", function ()
        	{
        		if (pwShown == 0)
        		{
        			pwShown = 1;
        			show();
        		}
        		else
        		{
        			pwShown = 0;
        			hide();
        		}
        	}, false);
        });
});
riot.tag2('home-content-influence', '<div> <div class="container"> <div class="row"> <div class="col-sm-12 text-center"> <h2 class="landing-header">General Questions</h2> </div> <div class="home-bottom col-lg-offset-2 col-lg-8 col-md-12 text-left"> <p class="text-reset">If you have any doubts about how Krowdspace can help your project please read through these general questions. Check out our <a class="home-links" href="/#/explore">Explore Page</a> and see first hand what submitted projects look like to our users. Feel free to contact us if you are still unsure about jumping onboard with our services.</p> </div> <div class="col-lg-offset-0 col-lg-6 col-md-offset-2 col-md-8 text-left faq-box-left"> <div class="faq-container"> <p class="question-text">How is Krowdspace different?</p> <i data-toggle="collapse" data-target="#question1" class="fa fa-plus plus-icon"></i> <div id="question1" class="collapse answer-container"> <p class="answer-text">Krowdspace was built on the idea to provide open and honest crowdfunding support. While launching our own crowdfunding project, we experienced a lack of online resources to showcase our campaign. The massive marketing companies would spam us with emails and promised “guaranteed” success. We caved in and our initial investment produced zero results, we felt scammed. At Krowdspace, we want to provide a low cost alternative by combining multiple crowdfunding communities into one simple location. We are committed to the success of our community and to provide easy and affordable tools to take your hard work to the next level.</p> </div> </div> <div class="faq-container"> <p class="question-text">How do I submit a project on Krowdspace?</p> <i data-toggle="collapse" data-target="#question2" class="fa fa-plus plus-icon"></i> <div id="question2" class="collapse answer-container"> <p class="answer-text">You must have a live crowdfunding project on Indiegogo or Kickstarter and offer our Krowdspace users a unique and exclusive reward. You can <a class="home-links" href="/#/account/register">submit your project</a> after signing up as a member to Krowdspace.</p> </div> </div> <div class="faq-container"> <p class="question-text">What kind of a reward should I offer?</p> <i data-toggle="collapse" data-target="#question3" class="fa fa-plus plus-icon"></i> <div id="question3" class="collapse answer-container"> <p class="answer-text">You can submit any kind of reward ranging from free swag to a discount off a pledge. Keep in mind that all rewards need to be approved by our staff before being displayed on our Explore Page. To see more example please check out our <a href="#modal-global-rewards" data-toggle="modal" class="home-links">Rewards Page</a>.</p> </div> </div> <div class="faq-container hidden-xs"> <p class="question-text">What are some reasons my reward would not be approved?</p> <i data-toggle="collapse" data-target="#question4" class="fa fa-plus plus-icon"></i> <div id="question4" class="collapse answer-container"> <p class="answer-text">Rewards might be sent back because they do not offer our community members enough incentive to support a project. We recommend staying away from very small discounts under 3% and incentives that dont hold a value. An example would be a thank you email or shout out on social media.</p> </div> </div> <div class="faq-container hidden-xs"> <p class="question-text">How long does it take before my reward is approved?</p> <i data-toggle="collapse" data-target="#question5" class="fa fa-plus plus-icon"></i> <div id="question5" class="collapse answer-container"> <p class="answer-text">Our turn around time is usually 8 - 12 hours but can take up to 24 hours.</p> </div> </div> <div class="faq-container hidden-xs"> <p class="question-text">What are some benefits to submitting a project on Krowdspace?</p> <i data-toggle="collapse" data-target="#question6" class="fa fa-plus plus-icon"></i> <div id="question6" class="collapse answer-container"> <p class="answer-text">It is well known that Kickstarter and Indiegogo make up the majority of the crowdfunding marketplace. If you choose to host your project on one of these platforms you potentially miss out on accessing the large number of backers from the other’s site. At Krowdspace we pull projects from both sites into a unified platform. That means backers can make unbiased decisions about what projects they want to support without being swayed by where the project is being hosted. A larger audience will translate into more backers!</p> </div> </div> </div> <div class="faq-box-right col-lg-offset-0 col-lg-6 col-md-offset-2 col-md-8 text-left"> <div class="faq-container hidden-xs"> <p class="question-text">How much does it cost to submit a project on Krowdspace?</p> <i data-toggle="collapse" data-target="#question7" class="fa fa-plus plus-icon"></i> <div id="question7" class="collapse answer-container"> <p class="answer-text">Submitting a project to Krowdspace is free. All you need to get started is a live crowdfunding project on either Kickstarter or Indiegogo and a commitment to offer an exclusive reward to backers on Krowdspace. Find out more on <a href="#modal-global-rewards" data-toggle="modal" class="home-links">Backer Rewards</a> or <a href="/#/account/register" data-toggle="modal" class="home-links">Submit a Project</a> today!</p> </div> </div> <div class="faq-container hidden-xs"> <p class="question-text">How can Krowdspace help my project become successful?</p> <i data-toggle="collapse" data-target="#question10" class="fa fa-plus plus-icon"></i> <div id="question10" class="collapse answer-container"> <p class="answer-text">In addition to combining the two major crowdfunding communities into one unified platform, we also offer additional <a href="#modal-feature-info" data-toggle="modal" class="modal-link home-links">Featured Project Listings</a> for campaigns. For a small fee, project boosts will provide promotional benefits such as being featured on our social media channels or becoming a highlighted campaign within high traffic areas of our site.</p> </div> </div> <div class="faq-container hidden-xs"> <p class="question-text">What kind of resources do you provide for project owners?</p> <i data-toggle="collapse" data-target="#question11" class="fa fa-plus plus-icon"></i> <div id="question11" class="collapse answer-container"> <p class="answer-text">We are currently building a <a class="home-links" href="/#/account/resource">Resource Page</a> and we hope to fill it with awesome crowdfunding material. </p> </div> </div> <div class="faq-container hidden-xs"> <p class="question-text">How important is Social Media advertising?</p> <i data-toggle="collapse" data-target="#question12" class="fa fa-plus plus-icon"></i> <div id="question12" class="collapse answer-container"> <p class="answer-text">As of today, there are over 1.65 billion active social media accounts. 71% of people who have had a good social media experience with a given product are likely to recommend that brand. 20% of people who have recommended a brand are likely to make a product purchase. Navigating through advertising software and providing the right content to a targeted user base can be a challenge. At Krowdspace we do the heavy lifting for you. We have already built a targeted organic social media following to post your projects and gain the social outreach that is needed for a succesful campaign.</p> </div> </div> <div class="faq-container"> <p class="question-text">How do I contact Krowdspace?</p> <i data-toggle="collapse" data-target="#question13" class="fa fa-plus plus-icon"></i> <div id="question13" class="collapse answer-container"> <p class="answer-text">Please contact us through our contact form located in the footer of our website.</p> </div> </div> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('home-content-users', '<div id="benefits"> <div class="container"> <div class="row"> <div class="col-sm-12 text-center"> <h2 class="landing-header">Krowdspace Users</h2> </div> <div class="home-bottom col-lg-offset-2 col-lg-8 col-md-12 text-left"> <p class="user-home-box">There are a lot of benefits to <a href="#modal-global-login" class="modal-link" data-toggle="modal">becoming a member</a> at Krowdspace. By signing up you will get exclusive rewards and coupon codes for backing your favorite crowdfunding projects that are hosted on Kickstarter or Indiegogo. We always recommend that members login to Krowdspace before backing a project to see if they have submitted their campaign. We also offer crowdfunding related <a href="#modal-giveaway" data-toggle="modal" class="modal-link home-links">giveaways</a> to our members! They are exclusive to our community and only members can register. At Krowdspace you will learn quickly that <a href="/#/explore" class="modal-link home-links">discovering new projects</a> is easy and its always fun to get extra stuff!</p> <div class="col-xs-4 text-center divider-inside-right"> <p>Projects Submitted</p> <p class="social-metric">15</p> </div> <div class="col-xs-4 text-center divider-inside-right"> <p>Value of Rewards</p> <p class="social-metric">$300</p> </div> <div class="col-xs-4 text-center"> <p>Helped Raise</p> <p class="social-metric">$5,400</p> </div> <div class="clearfix"></div> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('home-navigation', '<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top"> <div class="container"> <div class="navbar-header page-scroll"> <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-collapse"> <span class="sr-only">Toggle navigation</span><i class="fa fa-bars"></i> </button> <a href="/#/explore"><img class="navbar-logo logo-size" src="img/press/krowdspace-icon-v1.svg" alt="Krowdspace Logo Small"></a> </div> <div class="collapse navbar-collapse" id="navigation-collapse"> <ul class="nav navbar-nav navbar-right"> <li class="hidden"> <a href="#page-top"></a> </li> <li> <a href="/#/explore">Explore</a> </li> <li> <a show="{!logged_in}" href="#modal-global-register" class="modal-link" data-toggle="modal">Submit Project</a> </li> <li> <a show="{logged_in}" href="/#/account/dashboard">Dashboard</a> </li> <li> <a show="{logged_in}" href="/#/account/register">Submit Project</a> </li> <li> <a show="{!logged_in}" class="page-scroll" href="#benefits">Benefits</a> </li> <li> <a show="{!logged_in}" href="#modal-global-login" class="modal-link" data-toggle="modal">Login</a> </li> <li> <a show="{logged_in}" href="/#/account/resource">Resource</a> </li> </ul> </div> </div> </nav>', '', '', function(opts) {
this.on('mount', function()
{
    $('a.page-scroll').bind('click', function(event)
    {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 50)
        }, 1250, 'easeInOutExpo');
        event.preventDefault();
    }),
    $('body').scrollspy({
        target: '.navbar-fixed-top',
        offset: 51
    }),
    $('.navbar-collapse ul li a').click(function(){
            $('.navbar-toggle:visible').click();
    }),
    $('#mainNav').affix({
        offset: {
            top: 10
        }
    })
});
krowdspace.v1.check().then((res)=>
    {
        logged_in = true;
        this.update();
        console.log('You are logged in');
    },
    (err)=>
    {
		console.log('You are not logged in');
    });
});

riot.tag2('home-slider-clients', '<aside class="hidden-xs"> <div class="container text-center"> <section class="center slider"> <div each="{indexClients}"> <a href="{imageURL}" target="_blank"><img riot-src="{image}" alt="{imageAlt}"></a> </div> </section> </div> </aside>', 'home-slider-clients .slick-slide img,[data-is="home-slider-clients"] .slick-slide img{ width: 100%; width: 150px; }', '', function(opts) {
        this.indexClients = [
        { image:"img/clients/digital-ocean-logo.png", imageURL:"https://m.do.co/c/0d0a3c0340d3", imageAlt:"Digital Ocean"},
        { image:"img/clients/ryanv-logo.png", imageURL:"http://ryanvillasanti.com", imageAlt:"Ryan Villasanti"},
        { image:"img/clients/lb-logo.png", imageAlt:"Lala Bahari Small"},
        { image:"img/clients/collective-logo.png", imageAlt:"Collective Expression"},
        { image:"img/clients/pepo-logo.png", imageAlt:"Pepo Brand"},
        { image:"img/clients/krowdspace-logo.png", imageURL:"/?giveaway=1", imageAlt:"Krowdspace"},
        ]

    this.on('mount', function()
    {
        $('.center').slick({
        centerMode: true,
        arrows: false,
        centerPadding: '60px',
        slidesToShow: 4,
        autoplay: true,
        autoplaySpeed: 3000,
        });
    });
});

riot.tag2('home-slider-projects', '<div class="row home-slider-box"> <div class="autoplay slider"> <div class="explore-banner-box" each="{ExploreBannerFilter}"> <img riot-src="{project_data.web_data.mainImg.content}" alt="{project_data.web_data.description.content}"> <div class="explore-box"> <div class="col-sm-9"> <div class="slider-left-box"> <div class="explore-feature-left"> <div> <span class="explore-title">{name}</span> </div> <div class="explore-box-text"> <span class="explore-title">{project_data.info_data.reward}</span> </div> </div> </div> </div> <div class="col-md-3 explore-feature-right text-center"> <a href="{unique_url || \'/#/explore/project/\' + unique_id}" data-toggle="modal"> <p class="learn-more">Learn More</p> </a> </div> </div> <div class="col-sm-12 learn-responsive text-right"> <a href="{unique_url || \'/#/explore/project/\' + unique_id}" data-toggle="modal"> <p class="learn-more">Learn More</p> </a> </div> </div> </div> </div>', 'home-slider-projects .slick-slide img,[data-is="home-slider-projects"] .slick-slide img{ border-top: 1px solid #3f434f; border-bottom: 1px solid #3f434f; width: 550px; } @media screen and (max-width: 991px) { home-slider-projects .explore-feature-right,[data-is="home-slider-projects"] .explore-feature-right{ padding-right: 10px; } } @media screen and (max-width: 768px) { home-slider-projects .explore-feature-left,[data-is="home-slider-projects"] .explore-feature-left{ margin-top: 100px; } home-slider-projects .explore-feature-right,[data-is="home-slider-projects"] .explore-feature-right{ padding-right: 10px; } } @media screen and (max-width: 550px) { home-slider-projects .slick-slide img,[data-is="home-slider-projects"] .slick-slide img{ width: 400px; } home-slider-projects .explore-banner-box,[data-is="home-slider-projects"] .explore-banner-box{ height: 227px; } home-slider-projects .explore-box,[data-is="home-slider-projects"] .explore-box{ display: none; } home-slider-projects .learn-responsive,[data-is="home-slider-projects"] .learn-responsive{ display: inline-block; } }', '', function(opts) {
        krowdspace.projects.explore().then((res) =>
        {
            let ExploreBannerData = res.data,
                FilterExplore = ExploreBannerData.filter((element) => {
                return (element.project_data.meta_data.landing === true);
        });

        let newObject= {
                    unique_id: '#modal-feature-info',
                    name: '',
                    project_data:
                    {
                        web_data:
                        {
                            mainImg: {
                                content: '/img/projects/krowdspace-banner-1.jpg'
                            },
                            description: {
                                content: '',
                            },
                        },
                        info_data:
                        {
                            reward: ''
                        }
                    },
                };

        let newObject2= {
                    unique_url: '#modal-global-register',
                    name: 'Join Krowdspace Today!',
                    project_data:
                    {
                        web_data:
                        {
                            mainImg: {
                                content: '/img/content/krowdspace-join.jpg'
                            },
                            description: {
                                content: '',
                            },
                        },
                        info_data:
                        {
                            reward: 'Discover Extra Rewards For Projects You Love!'
                        }
                    },
                };

            FilterExplore.unshift(newObject, newObject2);
            FilterExplore.reverse();
            this.ExploreBannerFilter = FilterExplore;
            this.update();

            $('.autoplay').slick
            ({
                arrows: false,
                slidesToShow: 1,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 5000,
                centerMode: true,
                variableWidth: true,
            });
        },
        (err)=>
        {

        });
});
riot.tag2('home', '<home-navigation></home-navigation> <home-content-hero></home-content-hero> <home-content-benefits></home-content-benefits> <home-slider-projects></home-slider-projects> <home-content-directions></home-content-directions> <home-content-users></home-content-users> <home-content-influence></home-content-influence> <home-slider-clients></home-slider-clients> <global-footer></global-footer> <home-modal-boosts></home-modal-boosts> <home-modal-login></home-modal-login> <home-modal-rewards></home-modal-rewards> <home-modal-verification></home-modal-verification> <home-modal-submission></home-modal-submission>', 'home,[data-is="home"]{ background-color: #fff }', '', function(opts) {
});
riot.tag2('home-modal-verification', '<div id="modal-verification" class="modal container fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content text-center"> <div class="modal-header"> </div> <div class="modal-body"> <p class="modal-heading verify-heading">Confirm Your Email Address</p> <p class="verify-message">A confirmation email has been sent to your inbox. Click on the confirmation link to verify your account.</p> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
});