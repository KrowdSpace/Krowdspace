riot.tag2('admin-page', '<div class="krowdspace-modal col-lg-offset-3 col-lg-6 col-md-6 hidden-sm hidden-xs"> <div class="modal-content"> <div class="modal-header"> <p class="modal-heading">Krowdspace Register</p> </div> <div class="modal-body" style="padding-top: 0px;"> <p class="register-text text-left">If you have not signed up with Krowdspace please fill out the below form. You will need to sign up with Krowdspace before you can submit or view any projects.</p> <form class="form-vertical" id="commentForm" onsubmit="{submit}"> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control placeholder-color" placeholder="First Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control placeholder-color" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input ref="email" class="form-control placeholder-color" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true" type="email"> </div> <div class="form-group"> <input type="username" ref="username" class="form-control placeholder-color" placeholder="Username" required="required" aria-required="true" aria-invalid="true"> </div> <div class="input-group"> <input id="PASSWORD2" type="password" ref="password" placeholder="New Password" class="masked form-control placeholder-color" required="required"> <div class="input-group-btn"> <button type="button" id="eye2" class="btn btn-default"> <i class="glyphicon glyphicon-eye-open"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter_user" class="form-control placeholder-color" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo_user" class="form-control placeholder-color" placeholder="Indiegogo Username (Optional)"> </div> <div class="check-terms checkbox text-left"> <label> <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link">Krowdspace terms</a> </label> </div> <div class="register-button-box"> <input type="submit" class="button-login" name="submit" value="Register"> </div> </form> <div class="clearfix"></div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('admin', '<admin-page show="{remove}"></admin-page> <global-coming-soon show="{logged_in}"></global-coming-soon>', '', '', function(opts) {

		krowdspace.v1.check().then((res)=>
			{
				logged_in = true;
				this.update();
			},
			(err)=>
			{
				console.log('You are not logged in');
			});
});


riot.tag2('boosts-content-featured', '<div class="row no-gutter dash-boost-row"> <div class="col-sm-9"> <p class="boost-purchase-header" style="padding-top: 0px;">FEATURED LISTING + BANNER LISTING</p> </div> <div class="col-sm-3 text-center"> <p class="boost-purchase-header-right">SELECT FEATURED AREA</p> </div> <div class="col-sm-9"> <div class="row featured-box"> <img class="img-responsive feature-icon" src="/img/content/featured-project-icon.jpg"> <p class="purchase-description"><strong>Featured Project:</strong> Your crowdfunding campaign will be featured on our explore page and filter as the first project card. </p> </div> <div class="row featured-box"> <img class="img-responsive feature-icon" src="/img/content/featured-slider-icon.jpg"> <p class="purchase-description"><strong>Feature Explore Banner:</strong> In addition to being a featured project your campaign will display on our explore page banner.</p> </div> <div class="row featured-box" style="margin-bottom: 0px;"> <img class="img-responsive feature-icon" src="/img/content/featured-landing-icon.jpg"> <p class="purchase-description"><strong>Landing Page Banner:</strong> In addition to being a featured project and on our explore page banner your campaign will be featured on our landing page.</p> </div> </div> <div class="col-sm-3 text-center"> <form> <div class="featured-price-box"> <label class="featured-radio"><input type="radio" name="optradio"></label> <p class="featured-price">$10</p> </div> <div class="featured-price-box"> <label class="featured-radio"><input type="radio" name="optradio"></label> <p class="featured-price">$15</p> </div> <div class="featured-price-box" style="margin-bottom: 0px;"> <label class="featured-radio"><input type="radio" name="optradio"></label> <p class="featured-price">$20</p> </div> <p class="add-cart-center">ADD TO CART</p> </form> </div> </div>', '', '', function(opts) {
});
riot.tag2('boosts-content-mix', '<div class="row no-gutter"> <div class="col-sm-9"> <p class="boost-purchase-header">SOCIAL MEDIA POST</p> <p class="text-left boost-purchase-content">Social media post on 4 of our channels that reach over 5,000 organic users. We will provide 1 post on Facebook, Pinterest, Twitter and Instagram. </p> </div> <div class="col-sm-3 text-center"> <p class="dash-boost-price">$10</p> <p class="add-cart-center">ADD TO CART</p> </div> <div class="col-sm-9"> <p class="boost-purchase-header" style="border: none; margin:0px;">NEWSLETTER</p> <p class="text-left boost-purchase-content">Crowdfunding project will be featured on our bi-weekly newletter that reachs over 2,500 double-opt in users.</p> </div> <div class="col-sm-3 text-center"> <p class="dash-boost-price">$10</p> <p class="add-cart-center">ADD TO CART</p> </div> <div class="col-sm-9"> <p class="boost-purchase-header" style="border: none; margin:0px;">MEDIA LIST (500+ CONTACTS)</p> <p class="text-left boost-purchase-content">Pair the media contact list with our free Press Release guide and build your own marketing campaign without having to rely on expensive agencies.</p> </div> <div class="col-sm-3 text-center"> <p class="dash-boost-price">$20</p> <p class="add-cart-center">ADD TO CART</p> </div> </div>', '', '', function(opts) {
});
riot.tag2('boosts-content-package', '<div class="row text-center no-gutter"> <p class="boost-package-header">KROWDSPACE BOOST PACKAGES</p> <div class="col-sm-4"> <div class="package-title-box"> <p class="package-title">CLASSIC</p> <p class="package-price">29</p> </div> <ul class="fa-ul text-left package-details"> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Social Media Posts</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Weekly Newsletter</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Featured Project Listing</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Access to Dashboard Metrics</span></li> </ul> <div class="col-sm-12 package-purchase-box" style="padding-top: 104px;"> <p class="text-center package-add-cart">PURCHASE CLASSIC</p> </div> </div> <div class="col-sm-4"> <div class="package-title-box"> <p class="package-title">PREMIUM</p> <p class="package-price">49</p> </div> <ul class="fa-ul text-left package-details"> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Social Media Posts (x2)</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Weekly Newsletter (x2)</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Featured Project Listing</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Access to Dashboard Metrics</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Featured Image Banner (7 Days)</span></li> </ul> <div class="col-sm-12 package-purchase-box" style="padding-top: 76px;"> <p class="text-center package-add-cart">PURCHASE PREMIUM</p> </div> </div> <div class="col-sm-4"> <div class="package-title-box" style="border-right: none;"> <p class="package-title">ELITE</p> <p class="package-price">69</p> </div> <ul class="fa-ul text-left package-details" style="border-right: none;"> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Social Media Posts (x4)</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Weekly Newsletter (x4)</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Featured Project Listing</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Access to Dashboard Metrics</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Featured Image Banner</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Landing Page Featured Project</span></li> <li class="package-icon"><i class="fa-li fa fa-check-circle text-primary"></i><span class="package-text">Media List (500+ Contacts)</span></li> </ul> <div class="col-sm-12 package-purchase-box" style="border-right: none;"> <p class="text-center package-add-cart">PURCHASE ELITE</p> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('boosts-content-social', '<div class="row no-gutter boost-row-bottom"> <div class="col-sm-9"> <p class="boost-purchase-header" style="padding-top: 0px;">SOCIAL MEDIA MARKETING</p> <p class="purchase-description">Boost your social media posts with a targeted advertising campaign. We will set up a campaign on our social media channels to increase the viewer outreach with an easy survey. No extra fees!</p> <p class="purchase-description">Minimum purchase amount is $25 per social media channel. Custom selections can be applied upon adding to cart.</p> </div> <div class="col-sm-3 text-center"> <p class="boost-purchase-header-right">SELECT SOCIAL CHANNEL</p> <form> <label class="social-selections facebook-select"> <input id="facebook" type="radio" name="fb"> <img class="social-purchase"> </label> <label class="social-selections twitter-select"> <input id="twitter" type="radio" name="fb"> <img class="social-purchase"> </label> <label class="social-selections pinterest-select"> <input id="pinterest" type="radio" name="fb"> <img class="social-purchase"> </label> <label class="social-selections instagram-select"> <input id="instagram" type="radio" name="fb"> <img class="social-purchase"> </label> <p class="add-cart-center">ADD TO CART</p> </form> </div> </div>', '', '', function(opts) {
});
riot.tag2('boosts-page', '<div class="row"> <account-navigation></account-navigation> </div> <div class="container-alt" style="margin-bottom: 50px;"> <div class="col-sm-10 col-sm-offset-1 no-gutter profile-box" style="padding: 0px 15px;"> <boosts-content-package></boosts-content-package> <boosts-content-mix></boosts-content-mix> <boosts-content-featured></boosts-content-featured> <boosts-content-social></boosts-content-social> </div> </div> <global-footer></global-footer>', '', '', function(opts) {
});
riot.tag2('boosts', '<boosts-page show="{remove}"></boosts-page> <global-coming-soon show="{logged_in}"></global-coming-soon>', 'boosts,[data-is="boosts"]{ background-color: #fff }', '', function(opts) {

        krowdspace.v1.check().then((res)=>
            {
                logged_in = true;
                this.update();
                console.log('You are logged in');
            },
            (err)=>
            {
                console.log('You are not logged in');
                window.location.replace("/#/account/login");
            });
});
riot.tag2('dashboard-content-category', '<div class="social-container" style="padding: 15px; border: 1px solid #3f434f;"> <p class="backer-reward-text" style="margin: 0px 0px 15px 0px;">If you would like to change your project category please select from the dropdown menu and hit the refresh icon.</p> <form role="search"> <div class="input-group"> <select class="form-control remove-arrow"> <option value="art">Art</option> <option value="design">Design</option> <option value="film">Film</option> <option value="food">Food</option> <option value="music">Music</option> <option value="photography">Photography</option> <option value="technology">Technology</option> <option value="videogames">Video Games</option> <option value="writing">Writing</option> </select> <div class="input-group-btn"> <button class="btn btn-default" type="submit"><i class="fa fa-refresh fa-lg"></i></button> </div> </div> </form> </div>', '', '', function(opts) {

	krowdspace.v1.check().then((res)=>
		{
			logged_in = true;
			this.update();
		},
		(err)=>
		{
			window.location.replace("/#/account/login");
		});

    this.on('mount', ()=>
        {
            krowdspace.projects.project('Mason').then((res)=>
                {
                    res.data[0].project_data = JSON.parse(res.data[0].project_data);
                    this.update(res.data[0]);
                    let valueCategory = res.data[0].project_data.info_data.category;
                    $('option[value=' + valueCategory + ']').prop('selected', true);
                },
            (err)=>
                {
                    console.log(err);
                });
        });
});
riot.tag2('dashboard-content-image', '<div class="social-container" style="position: relative; border: 1px solid #3f434f; margin-top: 0px; height: 273px; overflow: hidden;"> <img show="{imagebox}" class="img-responsive kickstarter-image" ref="kickstarterImage" src=""> <img show="{!imagebox}" class="img-responsive indiegogo-image" ref="indiegogoImage" src=""> <div class="clearfix"></div> </div>', '', '', function(opts) {
    this.on('mount', ()=>
    {
        krowdspace.projects.project('Mason').then((res)=>
        {
            res.data[0].project_data = JSON.parse(res.data[0].project_data);

            let platform = res.data[0].platform;
            if (platform == 'kickstarter')
                {
                    imagebox = true;
                    console.log('Kickstarter Image');
                    this.refs.kickstarterImage.src = res.data[0].project_data.web_data.mainImg.content;
                }else{
                    console.log('Indiegogo Image');
                    this.refs.indiegogoImage.src = res.data[0].project_data.web_data.mainImg.content;
                };

            this.update(res.data[0]);

        },
        (err)=>
        {
            console.log(err);
        });
    });
});
riot.tag2('dashboard-content-project', '<div class="social-container project-content no-gutter" style="margin-top: 15px; padding: 15px;"> <div class="col-sm-9"> <p class="boost-purchase-header" style="padding-top: 0px; padding-left: 0px;">FEATURED LISTING + BANNER LISTING</p> </div> <div class="col-sm-3 text-right"> <p class="boost-purchase-header-right">SELECT FEATURED AREA</p> </div> <div class="row" style="margin-bottom: 20px;"> <div class="col-sm-9" style="padding-left: 35px;"> <img class="img-responsive feature-icon" src="/img/content/featured-project-icon.jpg"> <p class="purchase-description"><strong>Featured Project:</strong> Your crowdfunding campaign will be featured on our explore page and filter as the first project card. </p> </div> <div class="col-sm-3 text-center"> <a href="#"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-usd fa-stack-1x fa-inverse"></i> </span> </a> </div> </div> <div class="row" style="margin-bottom: 20px;"> <div class="col-sm-9" style="padding-left: 35px;"> <img class="img-responsive feature-icon" src="/img/content/featured-slider-icon.jpg"> <p class="purchase-description"><strong>Feature Explore Banner:</strong> In addition to being a featured project your campaign will display on our explore page banner.</p> </div> <div class="col-sm-3 text-center"> <a href="#"> <span class="fa-stack fa-lg social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-usd fa-stack-1x fa-inverse"></i> </span> </a> </div> </div> <div class="row" style="margin-bottom: 20px;"> <div class="col-sm-9" style="padding-left: 35px;"> <img class="img-responsive feature-icon" src="/img/content/featured-landing-icon.jpg"> <p class="purchase-description"><strong>Landing Page Banner:</strong> In addition to being a featured project and on our explore page banner your campaign will be featured on our landing page.</p> </div> <div class="col-sm-3 text-center"> <a href="#"> <span class="fa-stack fa-lg social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-usd fa-stack-1x fa-inverse"></i> </span> </a> </div> </div> <div class="col-sm-9"> <p class="boost-purchase-header" style="padding-top: 0px; padding-left: 0px; margin-top: 20px;">SOCIAL MEDIA POST</p> </div> <div class="row" style="margin-bottom: 20px;"> <div class="col-sm-9"> <p class="purchase-description">Social media post on 4 of our channels that reach over 5,000 organic users. We will provide 1 post on Facebook, Pinterest, Twitter and Instagram.</p> </div> <div class="col-sm-3 text-center"> <a href="#"> <span class="fa-stack fa-lg social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-usd fa-stack-1x fa-inverse"></i> </span> </a> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('dashboard-content-reward', '<div class="social-container" style="border: 1px solid #3f434f;"> <div style="position: relative; padding: 15px 15px;"> <a href="#edit-reward" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn" style="position: absolute; top: 5px; right: 5px;"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pencil fa-stack-1x fa-inverse"></i> </span> </a> <p class="backer-reward-text" style="padding-right: 50px; height: 42px;"><strong>REWARD: <span ref="projectReward"></span></strong></p> <p class="backer-reward-text" style="margin: 0px;">Upon succesful completion of your crowdfunding project you have agreed to send out any additional rewards to the backers who have supported your campaign.</p> <div class="text-center" style="border: 3px solid #fed136; margin: 15px 0px;"> <p style="font-size: 30px; margin: 0px; font-weight: 600; color: #fed136;">1XD6D3</p> </div> <p class="backer-reward-text" style="margin: 0px;">This is your project reward code. Backers from Krowdspace will send you this code through your crowdfunding platform website so that you can verify their discount.</p> </div> </div> <div class="clearfix"></div>', '', '', function(opts) {
    this.on('mount', ()=>
        {
            krowdspace.projects.project('Mason').then((res)=>
                {
                    res.data[0].project_data = JSON.parse(res.data[0].project_data);
                    this.update(res.data[0]);
                    this.refs.projectReward.innerHTML = res.data[0].project_data.info_data.reward;
                },
            (err)=>
                {
                    console.log(err);
                });
        });
});
riot.tag2('dashboard-content-title', '<div class="social-container no-gutter" style="border-right: 1px solid #3f434f; border-top: 1px solid #3f434f; border-bottom: 1px solid #3f434f; margin: 0px; height: 273px; padding: 15px; position: relative;"> <a href="#refresh-project" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn" style="position: absolute; top: 5px; right: 5px;"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-refresh fa-stack-1x fa-inverse"></i> </a> </span> <p class="boost-purchase-header" style="text-transform: uppercase; padding: 0px;" ref="projectTitle"></p> <p class="purchase-description" ref="projectDescription" style="height: 75px; padding:0px;"></p> <div class="col-sm-6 text-left" style="margin-top: 30px;"> <p ref="dataBacked" class="dash-project-description"></p> </div> <div class="col-sm-6 text-right" style="margin-top: 30px;"> <p ref="dataGoal" class="dash-project-description"></p> </div> <div id="progressBar" style="position: absolute; bottom: -5px; right: 0px; left: 0px;"></div> </div>', '', '', function(opts) {
    this.on('mount', ()=>
    {
        krowdspace.projects.project('Mason').then((res)=>
        {
            console.log('Your Project is Working!');
            res.data[0].project_data = JSON.parse(res.data[0].project_data);
            this.update(res.data[0]);

            this.refs.projectDescription.innerHTML = res.data[0].project_data.web_data.description.content;
            this.refs.projectTitle.innerHTML = res.data[0].name;

            let y = parseInt(res.data[0].project_data.web_data.stats["data-pledged"]);
            let backed = Number(y).toLocaleString('en');
            Math.round(y);
            this.refs.dataBacked.innerHTML = '$' + backed + ' RAISED';

            let x = parseInt(res.data[0].project_data.web_data.stats["data-goal"]);
            let goal = Number(x).toLocaleString('en');
            Math.round(x);
            this.refs.dataGoal.innerHTML = '$' + goal + ' GOAL';

            var bar = new ProgressBar.Line(progressBar,
            {
                strokeWidth: 4,
                easing: 'easeInOut',
                duration: 1400,
                color: '#fed136',
                trailColor: '#eee',
                trailWidth: 4,
                svgStyle: {width: '100%', height: '100%'}
            });

            var goalPercent = y/x;

            bar.animate(goalPercent);
        },
        (err)=>
        {
            console.log(err);
        });
    });

});
riot.tag2('dashboard-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container" style="margin-top: 50px;"> <div class="row dash-row-top"> <div class="col-fixed-5" style="padding-right: 0px;"> <dashboard-content-image></dashboard-content-image> </div> <div class="col-fixed-7 modify-content-row"> <dashboard-content-title></dashboard-content-title> </div> </div> <div class="row dash-row-bottom"> <div class="col-fixed-4"> <dashboard-content-reward></dashboard-content-reward> <dashboard-content-category></dashboard-content-category> </div> <div class="col-fixed-8 modify-content-row"> <dashboard-content-project></dashboard-content-project> </div> </div> </div> <global-footer></global-footer> <dashboard-edit-reward></dashboard-edit-reward> <dashboard-refresh-project></dashboard-refresh-project>', '', '', function(opts) {
});
riot.tag2('dashboard', '<dashboard-page show="{remove}"></dashboard-page> <global-coming-soon show="{logged_in}"></global-coming-soon>', 'dashboard,[data-is="dashboard"]{ background-color: #fff }', '', function(opts) {

	krowdspace.v1.check().then((res)=>
		{
			logged_in = true;
			this.update();
			console.log('You are logged in');
		},
		(err)=>
		{
			console.log('You are not logged in');
			window.location.replace("/#account/login");
		});
});

riot.tag2('dashboard-edit-reward', '<div id="edit-reward" class="modal fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button> <p class="modal-heading">Edit Backer Reward</p> </div> <div class="modal-body"> <form role="form" onsubmit="{submit}"> <p class="text-left" style="margin: 10px 0px;">Please provide a new and exclusive reward for our Krowdspace users.</p> <div class="form-group"> <input ref="reward" class="form-control placeholder-color" placeholder="Backer Rewards" required="required" aria-required="true" aria-invalid="true"> </div> </form> <p class="backer-reward-text" style="margin: 25px 0px;">CURRENT REWARD: <span ref="currentReward"></span></p> <div style="padding: 0px; margin-top: 35px;"><button type="submit" name="submit" class="btn-register btn-info-full next-step">Update</button></div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div>', '', '', function(opts) {
        this.on('mount', ()=>
            {
                krowdspace.projects.project('Mason').then((res)=>
                    {
                        res.data[0].project_data = JSON.parse(res.data[0].project_data);
                        this.update(res.data[0]);
                        this.refs.currentReward.innerHTML = res.data[0].project_data.info_data.reward;
                    },
                (err)=>
                    {
                        console.log(err);
                    });
            });
});
riot.tag2('dashboard-refresh-project', '<div id="refresh-project" class="modal fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button> <p class="modal-heading">Refresh Project Content</p> </div> <div class="modal-body"> <p class="text-left" style="margin: 10px 0px;">If you would like to refresh your project content please click the refresh button below. This will automatically update your project title, description, content and any metrics. You will only be able to refresh your project once every 24 hours.</p> <div style="padding: 0px; margin-top: 35px;"><button type="submit" name="submit" class="btn-register btn-info-full next-step">Refresh</button></div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div>', '', '', function(opts) {
});
riot.tag2('login-account', '<div class="container login-check-container"> <div class="krowdspace-modal col-lg-offset-1 col-md-5 col-md-offset-0 col-sm-7 col-sm-offset-2"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Krowdspace Login</p> </div> <div class="modal-body"> <div id="errorLog" class="alert alert-danger alert-dismissable fade in" style="display:none;"> <a class="close" onclick="$(\'.alert\').hide()"><i class="fa fa-close"></i></a> <strong>Error:</strong> Invalid username or password. </div> <form id="CustomerLoginForm" class="form-vertical no-gutter" onsubmit="{loginSubmit}"> <div> <input type="text" class="form-control placeholder-color" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off"> </div> <div class="col-xs-8 form-group"> <input type="password" class="form-control placeholder-color" placeholder="Password" value="" ref="passwordlogin"> </div> <div class="col-xs-4 form-group" style="padding-left:10px;"> <button class="button-login" type="submit">Login</button> </div> <div class="col-xs-6 check-terms checkbox text-left" style="margin:10px 0px 0px 0px;"> <label> <input type="checkbox" id="checkbox">Remember Me </label> </div> <div class="col-xs-6 check-terms checkbox text-right" style="margin:10px 0px 0px 0px;"> <p>Forgot Password?</p> </div> </form> <div class="clearfix"></div> </div> </div> </div> <div class="krowdspace-modal col-lg-5 col-md-6 hidden-sm hidden-xs"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Krowdspace Register</p> </div> <div class="modal-body" style="padding-top: 0px;"> <p class="register-text text-left">If you have not signed up with Krowdspace please fill out the below form. You will need to sign up with Krowdspace before you can submit or view any projects.</p> <form class="form-vertical" id="commentForm" onsubmit="{submit}"> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control placeholder-color" placeholder="First Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control placeholder-color" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input ref="email" class="form-control placeholder-color" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true" type="email"> </div> <div class="form-group"> <input type="username" ref="username" class="form-control placeholder-color" placeholder="Username" required="required" aria-required="true" aria-invalid="true"> </div> <div class="input-group"> <input id="PASSWORD2" type="password" ref="password" placeholder="New Password" class="masked form-control placeholder-color" required="required"> <div class="input-group-btn"> <button type="button" id="eye2" class="btn btn-default"> <i class="glyphicon glyphicon-eye-open"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter_user" class="form-control placeholder-color" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo_user" class="form-control placeholder-color" placeholder="Indiegogo Username (Optional)"> </div> <div class="check-terms checkbox text-left"> <label> <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link home-links">Krowdspace terms</a> </label> </div> <div class="register-button-box"> <input type="submit" class="button-login" name="submit" value="Register"> </div> </form> <div class="clearfix"></div> </div> </div> </div> </div>', '', '', function(opts) {


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

            document.getElementById("eye2").addEventListener("click", function ()
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

        this.loginSubmit = function(e)
        {

            e.preventDefault();

            var USERNAME = this.refs.usernamelogin.value,
                PASSWORD = this.refs.passwordlogin.value;
                STAYLOGGED = true;

            console.log(USERNAME);
            console.log(PASSWORD);
	krowdspace.v1.login(USERNAME, PASSWORD, STAYLOGGED).then
	((res) =>
	{
		this.logged_in = true;
		this.update();
        $('#modal-login').modal('hide');
        window.location.replace("/#/account/dashboard");
	},
	(err) =>
	{
		console.log(err);
        $("#errorLog").show();
	});
}.bind(this)

this.submit = function(e)
{
	e.preventDefault();

	var FNAME = this.refs.firstname.value;
	var	LNAME = this.refs.lastname.value;
	var	EMAIL = this.refs.email.value;
	var	USERNAME = this.refs.username.value;
	var	PASSWORD = this.refs.password.value;
	var	KSUSER = this.refs.kickstarter_user.value;
	var	IGUSER = this.refs.indiegogo_user.value;

	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
	((res) =>
	{
        window.location.replace("/#/account/success");
	},
	(err) =>
	{
		console.log(err);
	});
}.bind(this)
});
riot.tag2('profile-content-information', '<div class="col-sm-10 col-sm-offset-1 no-gutter profile-box"> <div class="col-sm-6 profile-image-box;"> <img class="img-responsive" src="/img/projects/bahari-bag.jpg"> </div> <div class="col-sm-6 text-center no-gutter profile-info-box" style="position: relative;"> <span class="fa-stack fa-lg social-btn" style="position: absolute; top: 5px; right: 5px;"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pencil fa-stack-1x fa-inverse"></i> </span> <p class="profile-name">MASON HALSTEAD</p> <p class="profile-email">MASON@KROWDSPACE.COM</p> <div class="col-sm-4 text-center"> <div class="divider-inside-right" style="padding: 0px;"> <p class="social-title-alt">PROJECTS LAUNCHED</p> <p class="social-metric">1</p> </div> </div> <div class="col-sm-4 text-center"> <div class="divider-inside-right"> <p class="social-title-alt">PROJECTS BACKED</p> <p class="social-metric">8</p> </div> </div> <div class="col-sm-4 text-center"> <p class="social-title-alt">REWARD VALUE</p> <p class="social-metric">$300</p> </div> <div class="col-sm-6 text-center"> <p class="social-title-alt profile-crowdfund">KICKSTARTER USERNAME</p> <p class="crowdfund-username">KrowdspaceKS</p> </div> <div class="col-sm-6 text-center"> <p class="social-title-alt profile-crowdfund">INDIEGOGO USERNAME</p> <p class="crowdfund-username">IndiegogoIG</p> </div> </div> </div> <div class="col-sm-10 col-sm-offset-1 no-gutter profile-project-box"> <p class="social-title-alt text-center profile-project-title">PROJECTS BACKED ON KROWDSPACE</p> <div class="col-sm-8 col-sm-offset-2 no-gutter profile-reward-box"> <img class="img-responsive profile-reward-image" src="/img/projects/bahari-bag.jpg"> <p class="profile-reward-text">Lala Bahari: The First Convertible Tote Bag of its Kind</p> <p class="profile-reward-text">Reward: All pledges over $50 will receive a Bahari Sarong and Scarf.</p> </div> <div class="col-sm-8 col-sm-offset-2 no-gutter profile-reward-box"> <img class="img-responsive profile-reward-image" src="/img/projects/bahari-bag.jpg"> <p class="profile-reward-text">Lala Bahari: The First Convertible Tote Bag of its Kind</p> <p class="profile-reward-text">Reward: All pledges over $50 will receive a Bahari Sarong and Scarf.</p> </div> <div class="col-sm-8 col-sm-offset-2 no-gutter profile-reward-box"> <img class="img-responsive profile-reward-image" src="/img/projects/bahari-bag.jpg"> <p class="profile-reward-text">Lala Bahari: The First Convertible Tote Bag of its Kind</p> <p class="profile-reward-text">Reward: All pledges over $50 will receive a Bahari Sarong and Scarf.</p> </div> <div class="col-sm-8 col-sm-offset-2 no-gutter profile-reward-box"> <img class="img-responsive profile-reward-image" src="/img/projects/bahari-bag.jpg"> <p class="profile-reward-text">Lala Bahari: The First Convertible Tote Bag of its Kind</p> <p class="profile-reward-text">Reward: All pledges over $50 will receive a Bahari Sarong and Scarf.</p> </div> </div>', '', '', function(opts) {
});
riot.tag2('profile-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container-alt" style="margin-top: 50px;"> <div class="row"> <profile-content-information></profile-content-information> </div> </div> <global-footer></global-footer>', '', '', function(opts) {
});
riot.tag2('profile', '<profile-page show="{remove}"></profile-page> <global-coming-soon show="{logged_in}"></global-coming-soon>', 'profile,[data-is="profile"]{ background-color: #fff }', '', function(opts) {

        krowdspace.v1.check().then((res)=>
            {
                logged_in = true;
                this.update();
                console.log('You are logged in');
            },
            (err)=>
            {
                console.log('You are not logged in');
                window.location.replace("/#/account/login");
            });
});
riot.tag2('register-content-reward', '<div class="row"> <div class="col-sm-10 col-sm-offset-1 no-gutter profile-box" style="padding: 15px;"> <p class="text-left register-project-title project-reward">PROJECT REWARDS</p> <div class="text-left"> <p class="project-reward">For every project that is submitted to Krowdspace an exclusive reward will need to be provided for backers who support you through our platform. Krowdspace will look over each submission and the reward will need to be approved by our staff. This can take up to 24 hours. Make sure you can achieve these extra rewards when your project is successful. You will be obligated to fulfill any extra rewards listed on your Krowdspace project profile.</p> <p class="project-reward">One of the most common rewards is offering an extra 10%-20% off a backer’s tier pledge. You will need to make sure that it is clear for all backers to pledge a custom backing amount in the $1 "Thank You" area. They will need to put in the correct tier amount minus the 10%-20% you have chosen. Make sure to take into account your shipping costs. Another option would be to refund that 10%-20% on the tail end of your project after it has been completed. This is just an example amount and you can decide what reward amount or add-on you would like to offer. Here are some additional examples: </p> <ul class="project-reward project-list"> <li>All Krowdspace members will get a free upgrade to the next tier automatically.</li> <li>Krowdspace members who back this item will get to choose from additional colors that won’t be available to anyone else.</li> <li>If you back our 3-item tier we will send you an extra item.</li> <li>All Krowdspace members will be given protective cases with your pledge item.</li> <li>All Krowdspace members will receive free shipping. Pledge the custom amount for the tier you would like minus the shipping cost.</li> <li>All Krowdspace members who back over $50 will receive another item free.</li> <li>All Krowdspace members will have continued access to Early Bird Pricing. Pledge the Early Bird Price in the custom pledge area.</li> <li>All Krowdspace members will receive 15% off their pledges. Select the custom pledge amount and put in the tier you would like minus 15%.</li> <li>All Krowdspace members will be given a custom engraved frisbee.</li> </ul> <p>Keep it simple and make it creative. People love to see that their pledge is helping your project come to life and personal touches make all the difference. if you have any questions about rewards please <a class="home-links" href="mailto:Mason@Krowdspace.com">contact us</a>.</p> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('register-content-signup', '<div class="row"> <div class="col-sm-10 col-sm-offset-1 no-gutter profile-box"> <p class="text-center register-confirmation">Register your crowdfunding campaign and accelerate your growth today!</p> <div class="wizard"> <div class="wizard-inner"> <div class="connecting-line"></div> <ul class="nav nav-tabs" role="tablist"> <li role="presentation" class="active"> <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1"> <span class="round-tab"> <img class="img-responsive" src="/img/content/submit-icon-sq.png"> </span> </a> </li> <li role="presentation" class="disabled"> <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2"> <span class="round-tab"> <img class="img-responsive" src="/img/content/reward-icon-sq.png"> </span> </a> </li> <li role="presentation" class="disabled"> <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3"> <span class="round-tab"> <img class="img-responsive" src="/img/content/image-icon-sq.png"> </span> </a> </li> <li role="presentation" class="disabled"> <a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Complete"> <span class="round-tab"> <img class="img-responsive" src="/img/content/backer-icon-sq.png"> </span> </a> </li> </ul> </div> <div class="col-sm-8 col-sm-offset-2"> <form role="form" onsubmit="{submit}" novalidate> <div class="tab-content tab-content-wizard"> <div class="tab-pane active no-gutter" role="tabpanel" id="step1"> <p class="text-left">Do you own this crowdfunding project?</p> <div class="form-group"> <select class="form-control" ref="pvalid" required="required" aria-required="true"> <option disabled selected value>Select Yes or No</option> <option value="Yes">Yes</option> <option value="No">No</option> </select> </div> <p class="text-left project-questions">What category best fits your project?</p> <div class="form-group"> <select class="form-control" ref="category" required="required" aria-required="true"> <option disabled selected value>Choose a Category</option> <option value="art">Art</option> <option value="design">Design</option> <option value="film">Film</option> <option value="food">Food</option> <option value="music">Music</option> <option value="photography">Photography</option> <option value="technology">Technology</option> <option value="videogames">Video Games</option> <option value="publishing">Publishing</option> </select> </div> <p class="text-left project-questions">Please provide your live crowdfunding project url.</p> <div class="form-group col-sm-4" style="margin: 0px;"> <select class="form-control" ref="crowdportal" required="required" aria-required="true"> <option disabled selected value>Choose Site</option> <option value="https://www.kickstarter.com/">Kickstarter.com</option> <option value="https://www.indiegogo.com/">Indiegogo.com</option> </select> </div> <div class="form-group col-sm-8" style="padding-left: 15px; margin: 0px;"> <input type="url" ref="projecturl" class="form-control placeholder-color" placeholder="put-project-url-here" required="required" aria-required="true" aria-invalid="true"> </div> <ul class="list-inline pull-right" style="position: absolute; bottom: 0; right: 0;"> <li style="padding: 0px;"><button type="button" class="btn-register next-step">continue</button></li> </ul> </div> <div class="tab-pane" role="tabpanel" id="step2"> <p class="text-left">Please provide an exclusive reward for our Krowdspace users. see examples</p> <div class="form-group"> <input ref="reward" class="form-control placeholder-color" placeholder="Backer Rewards" required="required" aria-required="true" aria-invalid="true"> </div> <p class="text-left project-questions">Does your reward have a value or is it a discount?</p> <div class="form-group"> <select class="form-control" ref="rewardoption" required="required" aria-required="true"> <option disabled selected value>Choose an Option</option> <option value="Yes">Reward has a Value</option> <option value="No">Reward is a Discount</option> </select> </div> <p class="text-left project-questions">Please provide the dollar amount or discount percentage of the reward.</p> <div class="form-group"> <input ref="rewardvalue" class="form-control placeholder-color" placeholder="Estimated Value or Discount Percentage" required="required" aria-required="true" aria-invalid="true"> </div> <ul class="list-inline pull-right" style="position: absolute; bottom: 0; right: 0;"> <li style="padding: 0px; margin-right: 20px;"><button type="button" class="btn-register prev-step">Previous</button></li> <li style="padding: 0px;"><button type="button" class="btn-register next-step">continue</button></li> </ul> </div> <div class="tab-pane" role="tabpanel" id="step3"> <p class="text-left">To verify that you are the crowdfunding project owner please upload one of these images to your project page before submitting it to Krowdspace. We will check to see if the image is present to prevent false project submissions. Thank you for your understanding!</p> <div class="row text-center" style="margin-top: 30px;"> <img src="img/press/featured-krowdspace-v1.png" style="width: 450px;"> </div> <div class="row text-center" style="margin-top: 25px;"> <img src="img/press/featured-krowdspace-v2.png" style="width: 75px;"> <img src="img/press/featured-krowdspace-v3.png" style="width: 100px; margin: 0px 50px;"> <img src="img/press/featured-krowdspace-v4.png" style="width: 75px;"> </div> <ul class="list-inline pull-right" style="position: absolute; bottom: 0; right: 0;"> <li style="padding: 0px; margin-right: 20px;"><button type="button" class="btn-register prev-step">Previous</button></li> <li style="padding: 0px;"><button type="button" class="btn-register next-step">continue</button></li> </ul> </div> <div class="tab-pane" role="tabpanel" id="complete"> <p class="text-left register-project-title">TERMS AND CONDITIONS</p> <p class="text-left">Krowdspace is not liable for any damages or losses related to using our services.</p> <p class="text-left">Project owners are legally bound to fullfill any rewards promised to the Krowdspace user.</p> <p class="text-left">Krowdspace is not responsible for the puncuality and delivery of the rewards and will not become involved between user disputes.</p> <p class="text-left">Project owners are obligated to respond promptly and truthfully to all questions posed to them by Krowdspace or Krowdspace users.</p> <p class="text-left">You have read through and understand the terms and conditions of Krowdspace.</p> <div class="check-terms checkbox"> <label> <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a class="modal-link" href="#">Krowdspace terms</a> </label> </div> <ul class="list-inline pull-right" style="position: absolute; bottom: 0; right: 0;"> <li style="padding: 0px; margin-right: 20px;"><button type="button" class="btn-register prev-step">Previous</button></li> <li style="padding: 0px;"><button type="submit" name="submit" class="btn-register btn-info-full next-step">Submit Project</button></li> </ul> </div> <div class="clearfix"></div> </div> </form> </div> </div> </div> </div>', '', '', function(opts) {
    this.submit = function(e)
    {
        e.preventDefault();

        let PVALID = this.refs.pvalid.value,
            CATEGORY = this.refs.category.value,
            DOMAINURL = this.refs.crowdportal.options[this.refs.crowdportal.selectedIndex].value,
            URL =  this.refs.projecturl.value,
            REWARD = this.refs.reward.value,
            REWARDVALUE = this.refs.rewardoption.value,
            REWARDAMOUNT = this.refs.rewardvalue.value;

            console.log(DOMAINURL);

        let DATA = {
                    PVALID,
                    CATEGORY,
                    DOMAINURL,
                    URL,
                    REWARD,
                    REWARDVALUE,
                    REWARDAMOUNT,
                    };

        krowdspace.register.project(DATA).then
        ((res) =>
            {
            console.log('winning');
            },
        (err) =>
            {
            console.log(err);
            });
    }.bind(this)

        this.on('mount', function()
        {
            var $imageupload = $('.imageupload');
            $imageupload.imageupload();
            $('#imageupload-disable').on('click', function()
            {
                    $imageupload.imageupload('disable');
                    $(this).blur();
            });

            $('#imageupload-enable').on('click', function()
            {
                $imageupload.imageupload('enable');
                $(this).blur();
            });

            $('#imageupload-reset').on('click', function()
            {
                $imageupload.imageupload('reset');
                $(this).blur();
            });
        });

        this.on('mount', function()
        {
            $(document).ready(function ()
            {

                $('.nav-tabs > li a[title]').tooltip();

                $('a[data-toggle="tab"]').on('show.bs.tab', function (e)
                {
                    var $target = $(e.target);
                    if ($target.parent().hasClass('disabled'))
                    {
                        return false;
                    }
            });

                $(".next-step").click(function (e)
                {
                    var $active = $('.wizard .nav-tabs li.active');
                    $active.next().removeClass('disabled');
                    nextTab($active);
                });

                $(".prev-step").click(function (e)
                {
                    var $active = $('.wizard .nav-tabs li.active');
                    prevTab($active);
                });
            });

            function nextTab(elem)
            {
                $(elem).next().find('a[data-toggle="tab"]').click();
            }
            function prevTab(elem)
            {
                $(elem).prev().find('a[data-toggle="tab"]').click();
            }
        });
});

riot.tag2('register-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container" style="margin-top: 50px; margin-bottom: 50px;"> <register-content-signup></register-content-signup> <register-content-reward></register-content-reward> </div> <global-footer></global-footer>', '', '', function(opts) {
});
riot.tag2('register', '<register-page show="{remove}"></register-page> <global-coming-soon show="{logged_in}"></global-coming-soon>', 'register,[data-is="register"]{ background-color: #fff }', '', function(opts) {

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
riot.tag2('explore-content-card', '<div class="row"> <div each="{exploreCard}" class="col-sm-4"> <div class="no-gutter explore-container"> <a href="{imageURL}"><img class="img-responsive" riot-src="{image}" style="margin-bottom: 10px; border-bottom: 1px solid #3f434f;"></a> <span class="fa-stack fa-lg explore-feature-icon" riot-style="display:{featuredIcon}"> <i class="fa fa-circle fa-stack-xx text-primary"></i> <i class="fa fa-heart fa-stack-1x fa-inverse"></i> </span> <div style="height: 90px; "> <p class="card-text-alt"><strong>{projectTitle}</strong></p> <p class="card-text-alt explore-reward" style="padding-top: 5px;"><strong>Reward:</strong> {reward}</p> </div> <div class="col-sm-4 text-left"> <p class="card-text-alt">${pledged} Raised</p> </div> <div class="col-sm-4 text-center"> <p class="card-text-alt">{days} Days</p> </div> <div class="col-sm-4 text-right"> <p class="card-text-alt">${goal} Goal</p> </div> <div class="col-sm-12"> <div class="progress"> <div class="progress-bar" role="progressbar" riot-style="width:{progressBar}%" aria-valuenow="{progressBar}" aria-valuemin="0" aria-valuemax="100"></div> </div> </div> <div class="clearfix"></div> </div> </div> </div>', '', '', function(opts) {
        this.exploreCard = [
        {
        image:"/img/projects/bahari-bag.jpg",
        imageURL:"/#/explore/project",
        featuredIcon: "visible",
        projectTitle:"Lala Bahari: The First Convertible Tote Bag of its Kind",
        projectDescription:"Made in Africa to support the local communities. Our bag converts from a towel or wrap into a tote through an innovative rope mechanism",
        reward:"All pledges over $50 will receive a Bahari Sarong and Scarf.",
        goal:"40,000",
        category:"Design",
        progressBar:'26',
        pledged:'10,544',
        days:'19'},

        {
        image:"/img/projects/computer.jpg",
        imageURL:"/#/explore/project",
        featuredIcon: "visible",
        projectTitle:"Creating A Modular Computer App for All of Your Organizing Needs",
        projectDescription:"We bring a way to organize your day and connect all of your devices through one app.",
        reward:"All Krowdspace members will receive a free year subscription to our organizing app.",
        goal:"100,000",
        category:"Tech",
        progressBar:'46',
        pledged:'45,798',
        days:'14'},

        {
        image:"/img/projects/pizza.jpg",
        imageURL:"/#/explore/project" ,
        featuredIcon: "visible",
        projectTitle:"The Only Restaurant to use Recipes From our Guests",
        projectDescription:"Dining guests can submit their own recipes and our community will vote and if selected will be featured at our restaurant.",
        reward:"All Krowdspace members will receive our Cookbook.",
        goal:"50,000",
        category:"Food",
        progressBar:'83',
        pledged:'41,765',
        days:'2'},

        {
        image:"/img/projects/bahari-bag.jpg",
        imageURL:"/#/explore/project",
        featuredIcon: "visible",
        projectTitle:"Lala Bahari: The First Convertible Tote Bag of its Kind",
        projectDescription:"Made in Africa to support the local communities. Our bag converts from a towel or wrap into a tote through an innovative rope mechanism",
        reward:"All pledges over $50 will receive a Bahari Sarong and Scarf.",
        goal:"40,000",
        category:"Design",
        progressBar:'26',
        pledged:'10,544',
        days:'19'},

        {
        image:"/img/projects/computer.jpg",
        imageURL:"/#/explore/project",
        featuredIcon: "none",
        projectTitle:"Creating A Modular Computer App for All of Your Organizing Needs",
        projectDescription:"We bring a way to organize your day and connect all of your devices through one app.",
        reward:"All Krowdspace members will receive a free year subscription to our organizing app.",
        goal:"100,000",
        category:"Tech",
        progressBar:'46',
        pledged:'45,798',
        days:'14'},

        {
        image:"/img/projects/pizza.jpg",
        imageURL:"/#/explore/project" ,
        featuredIcon: "none",
        projectTitle:"The Only Restaurant to use Recipes From our Guests",
        projectDescription:"Dining guests can submit their own recipes and our community will vote and if selected will be featured at our restaurant.",
        reward:"All Krowdspace members will receive our Cookbook.",
        goal:"50,000",
        category:"Food",
        progressBar:'83',
        pledged:'41,765',
        days:'2'},
        ]
});
riot.tag2('explore-content-filter', '<div class="row"> <div class="col-sm-3"> <select class="form-control"> <option value="">Popular</option> <option value="">Featured Projects</option> <option value="">Just Launched</option> <option value="">Closing Soon</option> </select> </div> <div class="col-sm-3"> <select class="form-control"> <option value="">All Categories</option> <option value="">Art</option> <option value="">Design</option> <option value="">Film</option> <option value="">Food</option> <option value="">Music</option> <option value="">Photography</option> <option value="">Technology</option> <option value="">Video Games</option> <option value="">Writing</option> </select> </div> <div class="col-sm-2"> </div> <div class="col-sm-4"> <form role="search"> <div class="input-group"> <input type="text" class="form-control" placeholder="Search Projects"> <div class="input-group-btn"> <button class="btn btn-default" type="submit"><i class="fa fa-search fa-lg"></i></button> </div> </div> </form> </div> </div>', '', '', function(opts) {
});
riot.tag2('krowdspace-navigation', '<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-alt explore-fixed-top"> <div class="container"> <div class="navbar-header page-scroll"> <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#explore-nav-collapse"> <span class="sr-only">Toggle navigation</span><i class="fa fa-bars hamburger"></i> </button> <a class="navbar-logo-alt page-scroll" href="#page-top"><img src="/../img/krowdspace-explore.png" style="width:55px;"></a> </div> <div class="collapse navbar-collapse text-center" id="explore-nav-collapse"> <ul class="nav navbar-nav navbar-left"> <li class="hidden"> <a href="#page-top"></a> </li> <li> <a class="explore-scroll" href="/#/explore">Explore</a> </li> <li> <a class="explore-scroll" href="/#/account/register">Submit Project</a> </li> </ul> <img class="logo-float" src="img/krowdspace-explore.png" style="width:55px;"> <ul class="nav navbar-nav navbar-right"> <li class="hidden"> <a href="#page-top"></a> </li> <li> <a show="{logged_in}" class="explore-scroll" href="/#/account/dashboard">Dashboard</a> </li> <li> <a show="{!logged_in}" href="#modal-explore-login" class="modal-link" data-toggle="modal">Login</a> </li> <li> <a show="{!logged_in}" href="#modal-explore-register" class="modal-link" data-toggle="modal">Sign Up</a> </li> <li> <a show="{logged_in}" href="/#/account/profile">Profile</a> </li> </ul> </div> </div> </nav>', '', '', function(opts) {

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
riot.tag2('explore-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> <explore-slider-hero></explore-slider-hero> </div> <div class="container" style="margin-bottom: 50px;"> <explore-content-filter></explore-content-filter> <explore-content-card></explore-content-card> </div> <div class="row"> <global-footer></global-footer> </div> <explore-modal-login></explore-modal-login> <explore-modal-register></explore-modal-register>', 'explore-page .slider,[data-is="explore-page"] .slider{ width: 100%; position: relative; margin: 0px auto; } explore-page .slick-slide,[data-is="explore-page"] .slick-slide{ margin: 0px; } explore-page .slick-slide p,[data-is="explore-page"] .slick-slide p,explore-page .slick-slide .learn-more,[data-is="explore-page"] .slick-slide .learn-more{ display: none; } explore-page .slick-current p,[data-is="explore-page"] .slick-current p,explore-page .slick-current .learn-more,[data-is="explore-page"] .slick-current .learn-more{ display: block; } explore-page .slick-slide img,[data-is="explore-page"] .slick-slide img{ border-top: 1px solid #dcdedd; border-bottom: 1px solid #dcdedd; width: 750px; } explore-page .slick-prev:before,[data-is="explore-page"] .slick-prev:before,explore-page .slick-next:before,[data-is="explore-page"] .slick-next:before{ color: black; }', '', function(opts) {
});
riot.tag2('explore-slider-hero', '<div class="autoplay slider explore-header" style="padding-top: 57px; margin-bottom: 40px;"> <div each="{indexProject}" class="slick-image" style="position:relative"> <img riot-src="{image}" alt="{imageAlt}"> <div style="position:absolute;top: 0;left: 0; right: 0; bottom: 0; background-color: rgba(0, 0, 0, .3)"> <div class="col-sm-9 explore-feature-left"> <p class="explore-title">{projectTitle}</p> <p class="explore-description">{projectDescription}</p> </div> <div class="col-sm-3 explore-feature-right text-center"> <a href="{imageURL}"><span class="learn-more">Learn More</span></a> </div> </div> </div> </div>', '', '', function(opts) {
        this.indexProject = [
        { image:"/img/projects/bahari-bag.jpg",
        imageURL:"/#/explore/project",
        imageAlt:"Bahari Beach bag on the beach",
        projectTitle:"Lala Bahari: The First Convertible Tote Bag of its Kind",
        projectDescription:"Made in Africa to support the local communities. Our bag converts from a towel or wrap into a tote through an innovative rope mechanism",},

        { image:"/img/projects/computer.jpg",
        imageURL:"/#/explore/project",
        imageAlt:"Computer and accessories sitting on a desk",
        projectTitle:"Creating A Modular Computer App for All of Your Needs",
        projectDescription:"We bring a way to organize your day and connect all of your devices through one app."},

        { image:"/img/projects/computer.jpg",
        imageURL:"/#/explore/project",
        imageAlt:"Computer and accessories sitting on a desk",
        projectTitle:"Creating A Modular Computer App for All of Your Needs",
        projectDescription:"We bring a way to organize your day and connect all of your devices through one app."},

        { image:"/img/projects/pizza.jpg",
        imageURL:"/#/explore/project" ,
        imageAlt:"Pizza slice sitting on a table with condiments",
        projectTitle:"The Only Restaurant to use Recipes From our Guests",
        projectDescription:"Dining guests can submit their own recipes and our community will vote and if selected will be featured at our restaurant.",}
        ]

        this.on('mount', function()
        {
          $('.autoplay').slick({
          arrows: false,
          slidesToShow: 3,
          slidesToScroll: 1,
          autoplay: true,
          autoplaySpeed: 5000,
          centerMode: true,
          variableWidth: true,
            });
        });
});

riot.tag2('explore', '<explore-page show="{remove}"></explore-page> <global-coming-soon show="{logged_in}"></global-coming-soon>', 'explore,[data-is="explore"]{ background-color: #fff } explore .slider,[data-is="explore"] .slider{ width: 100%; position: relative; margin: 0px auto; } explore .slick-slide,[data-is="explore"] .slick-slide{ margin: 0px; } explore .slick-slide p,[data-is="explore"] .slick-slide p,explore .slick-slide .learn-more,[data-is="explore"] .slick-slide .learn-more{ display: none; } explore .slick-current p,[data-is="explore"] .slick-current p,explore .slick-current .learn-more,[data-is="explore"] .slick-current .learn-more{ display: block; } explore .slick-slide img,[data-is="explore"] .slick-slide img{ border-top: 1px solid #dcdedd; border-bottom: 1px solid #dcdedd; width: 750px; } explore .slick-prev:before,[data-is="explore"] .slick-prev:before,explore .slick-next:before,[data-is="explore"] .slick-next:before{ color: black; } explore,[data-is="explore"]{ background-color: #fff }', '', function(opts) {

        krowdspace.v1.check().then((res)=>
            {
                logged_in = true;
                this.update();
                console.log('You are logged in');
            },
            (err)=>
            {
                console.log('You are not logged in');
                window.location.replace("/#/account/login");
            });
});
riot.tag2('explore-modal-login', '<div id="modal-explore-login" class="modal fade"> <div class="krowdspace-modal col-lg-offset-1 col-md-5 col-md-offset-0 col-sm-7 col-sm-offset-2"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Krowdspace Login</p> </div> <div class="modal-body"> <div id="errorLog" class="alert alert-danger alert-dismissable fade in" style="display:none;"> <a class="close" onclick="$(\'.alert\').hide()"><i class="fa fa-close"></i></a> <strong>Error:</strong> Invalid username or password. </div> <form id="CustomerLoginForm" class="form-vertical no-gutter" onsubmit="{loginSubmit2}"> <div> <input type="text" class="form-control placeholder-color" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off"> </div> <div class="col-xs-8 form-group"> <input type="password" class="form-control placeholder-color" placeholder="Password" value="" ref="passwordlogin"> </div> <div class="col-xs-4 form-group" style="padding-left:10px;"> <button class="button-login" type="submit">Login</button> </div> <div class="col-xs-6 check-terms checkbox text-left" style="margin:10px 0px 0px 0px;"> <label> <input type="checkbox" id="checkbox">Remember Me </label> </div> <div class="col-xs-6 check-terms checkbox text-right" style="font-size: 14px; margin:10px 0px 0px 0px;"> <span>Forgot Password?</span> </div> </form> <div class="clearfix"></div> </div> </div> </div> <div class="krowdspace-modal col-lg-5 col-md-6 hidden-sm hidden-xs"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Krowdspace Register</p> </div> <div class="modal-body" style="padding-top: 0px;"> <p class="register-text text-left">If you have not signed up with Krowdspace please fill out the below form. You will need to sign up with Krowdspace before you can submit or view any projects.</p> <form class="form-vertical" id="commentForm" onsubmit="{submit3}"> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control placeholder-color" placeholder="First Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control placeholder-color" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input ref="email" class="form-control placeholder-color" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true" type="email"> </div> <div class="form-group"> <input type="username" ref="username" class="form-control placeholder-color" placeholder="Username" required="required" aria-required="true" aria-invalid="true"> </div> <div class="input-group"> <input id="PASSWORD2" type="password" ref="password" placeholder="New Password" class="masked form-control placeholder-color" required="required"> <div class="input-group-btn"> <button type="button" id="eye2" class="btn btn-default"> <i class="glyphicon glyphicon-eye-open"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter_user" class="form-control placeholder-color" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo_user" class="form-control placeholder-color" placeholder="Indiegogo Username (Optional)"> </div> <div class="check-terms checkbox text-left"> <label> <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link">Krowdspace terms</a> </label> </div> <div class="register-button-box"> <input type="submit" class="button-login" name="submit" value="Register"> </div> </form> <div class="clearfix"></div> </div> </div> </div> </div>', '', '', function(opts) {


        this.on('mount', function()
                {
                        function show()
                        {
                                var pass = document.getElementById('PASSWORD2');
                                pass.setAttribute('type', 'text');
                        }
                        function hide()
                        {
                                var pass = document.getElementById('PASSWORD2');
                                pass.setAttribute('type', 'password');
                        }

                        var pwShown = 0;

                        document.getElementById("eye2").addEventListener("click", function ()
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

        this.loginSubmit2 = function(e)
        {
                e.preventDefault();

                var USERNAME = this.refs.usernamelogin.value;
                var PASSWORD = this.refs.passwordlogin.value;

                STAYLOGGED = true;

                console.log(USERNAME);
                console.log(PASSWORD);
	krowdspace.v1.login(USERNAME, PASSWORD, STAYLOGGED).then
	((res) =>
	{
		this.logged_in = true;
		this.update();
        console.log(res);
        $('#modal-explore-login').modal('hide');
	},
	(err) =>
	{
		console.log(err);
        $("#errorLog").show();
	});
}.bind(this)

this.submit3 = function(e)
{
	e.preventDefault();

	var FNAME = this.refs.firstname.value;
            LNAME = this.refs.lastname.value;
	    EMAIL = this.refs.email.value;
	    USERNAME = this.refs.username.value;
	    PASSWORD = this.refs.password.value;
	    KSUSER = this.refs.kickstarter_user.value;
	    IGUSER = this.refs.indiegogo_user.value;

	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
	((res) =>
	{
        $('#modal-explore-login').modal('hide');
        $('#modal-submission').modal('show');
	},
	(err) =>
	{
		console.log(err);
	});
}.bind(this)

});
riot.tag2('explore-modal-register', '<div id="modal-explore-register" class="modal fade"> <div class="krowdspace-modal col-lg-offset-3 col-lg-6 col-md-6 hidden-sm hidden-xs"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Krowdspace Register</p> </div> <div class="modal-body" style="padding-top: 0px;"> <p class="register-text text-left">If you have not signed up with Krowdspace please fill out the below form. You will need to sign up with Krowdspace before you can submit or view any projects.</p> <form class="form-vertical" id="commentForm" onsubmit="{submit}"> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control placeholder-color" placeholder="First Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control placeholder-color" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input ref="email" class="form-control placeholder-color" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true" type="email"> </div> <div class="form-group"> <input type="username" ref="username" class="form-control placeholder-color" placeholder="Username" required="required" aria-required="true" aria-invalid="true"> </div> <div class="input-group"> <input id="PASSWORD2" type="password" ref="password" placeholder="New Password" class="masked form-control placeholder-color" required="required"> <div class="input-group-btn"> <button type="button" id="eye2" class="btn btn-default"> <i class="glyphicon glyphicon-eye-open"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter_user" class="form-control placeholder-color" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo_user" class="form-control placeholder-color" placeholder="Indiegogo Username (Optional)"> </div> <div class="check-terms checkbox text-left"> <label> <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link">Krowdspace terms</a> </label> </div> <div class="register-button-box"> <input type="submit" class="button-login" name="submit" value="Register"> </div> </form> <div class="clearfix"></div> </div> </div> </div> </div>', '', '', function(opts) {


this.on('mount', function()
{
	function show()
	{
		var pass = document.getElementById('PASSWORD2');
		pass.setAttribute('type', 'text');
	}
	function hide()
	{
		var pass = document.getElementById('PASSWORD2');
		pass.setAttribute('type', 'password');
	}

	var pwShown = 0;

	document.getElementById("eye2").addEventListener("click", function ()
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

this.submit = function(e)
{
	e.preventDefault();

	var FNAME = this.refs.firstname.value,
            LNAME = this.refs.lastname.value,
            EMAIL = this.refs.email.value,
            USERNAME = this.refs.username.value,
            PASSWORD = this.refs.password.value,
            KSUSER = this.refs.kickstarter_user.value,
            IGUSER = this.refs.indiegogo_user.value;

	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
	((res) =>
	{
                $('#modal-explore-register').modal('hide');
                $('#modal-submission').modal('show');
	},
	(err) =>
	{
		console.log(err);
	});
}.bind(this)
});
riot.tag2('explore-modal-submission', '<div id="modal-submission" class="modal fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Thank You From Krowdspace</p> </div> <div class="modal-body"> <p>Thank you for registering with Krowdspace. If you selected to submit a project we will most likely be contacting you shortly. If you are joining as a member we look forward to launching our unique crowdfunding dashboard with you!</p> <p>We will be sending updates on the latest news, promotions and exclusive giveaways leading up to our official launch. Until then, make sure to stay connected with our social media channels:</p> <div class="text-left boost-warning"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-instagram fa-stack-1x fa-inverse"></i> </span> </a> </div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
});
riot.tag2('project-modal-login', '<div class="container login-check-container"> <div class="krowdspace-modal col-lg-offset-1 col-md-5 col-md-offset-0 col-sm-7 col-sm-offset-2"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Krowdspace Login</p> </div> <div class="modal-body"> <div id="errorLog" class="alert alert-danger alert-dismissable fade in" style="display:none;"> <a class="close" onclick="$(\'.alert\').hide()"><i class="fa fa-close"></i></a> <strong>Error:</strong> Invalid username or password. </div> <form id="CustomerLoginForm" class="form-vertical no-gutter" onsubmit="{loginProjectSubmit}"> <div> <input type="text" class="form-control placeholder-color" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off"> </div> <div class="col-xs-8 form-group"> <input type="password" class="form-control placeholder-color" placeholder="Password" value="" ref="passwordlogin"> </div> <div class="col-xs-4 form-group" style="padding-left:10px;"> <button class="button-login" type="submit">Login</button> </div> <div class="col-xs-6 check-terms checkbox text-left" style="margin:10px 0px 0px 0px;"> <label> <input type="checkbox" id="checkbox">Remember Me </label> </div> <div class="col-xs-6 check-terms checkbox text-right" style="margin:10px 0px 0px 0px;"> <p>Forgot Password?</p> </div> </form> <div class="clearfix"></div> </div> </div> </div> <div class="krowdspace-modal col-lg-5 col-md-6 hidden-sm hidden-xs"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Krowdspace Register</p> </div> <div class="modal-body" style="padding-top: 0px;"> <p class="register-text text-left">If you have not signed up with Krowdspace please fill out the below form. You will need to sign up with Krowdspace before you can submit or view any projects.</p> <form class="form-vertical" id="commentForm" onsubmit="{submit}"> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control placeholder-color" placeholder="First Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control placeholder-color" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input ref="email" class="form-control placeholder-color" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true" type="email"> </div> <div class="form-group"> <input type="username" ref="username" class="form-control placeholder-color" placeholder="Username" required="required" aria-required="true" aria-invalid="true"> </div> <div class="input-group"> <input id="PASSWORD2" type="password" ref="password" placeholder="New Password" class="masked form-control placeholder-color" required="required"> <div class="input-group-btn"> <button type="button" id="eye2" class="btn btn-default"> <i class="glyphicon glyphicon-eye-open"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter_user" class="form-control placeholder-color" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo_user" class="form-control placeholder-color" placeholder="Indiegogo Username (Optional)"> </div> <div class="check-terms checkbox text-left"> <label> <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link">Krowdspace terms</a> </label> </div> <div class="register-button-box"> <input type="submit" class="button-login" name="submit" value="Register"> </div> </form> <div class="clearfix"></div> </div> </div> </div> </div>', '', '', function(opts) {


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

        	document.getElementById("eye2").addEventListener("click", function ()
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

        this.loginProjectSubmit = function(e)
        {
            e.preventDefault();

            var USERNAME = this.refs.usernamelogin.value;
            var PASSWORD = this.refs.passwordlogin.value;
            STAYLOGGED = true;

            krowdspace.v1.login(USERNAME, PASSWORD, STAYLOGGED).then((res) =>
                {
                    this.logged_in = true;
                    this.update();
                    window.location.replace("/#/explore");
                },(err) =>
                {
                    $("#errorLog").show();
                });
        }.bind(this)

        this.submit = function(e)
        {
        	e.preventDefault();

        	var FNAME = this.refs.firstname.value;
        	var	LNAME = this.refs.lastname.value;
        	var	EMAIL = this.refs.email.value;
        	var	USERNAME = this.refs.username.value;
        	var	PASSWORD = this.refs.password.value;
        	var	KSUSER = this.refs.kickstarter_user.value;
        	var	IGUSER = this.refs.indiegogo_user.value;

        	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
        	((res) =>
        	{
                window.location.replace("/#/account/success");
        	},
        	(err) =>
        	{
        		console.log(err);
        	});
        }.bind(this)
});
riot.tag2('project-content-body', '<div class="col-sm-12 no-gutter project-containter"> <p>LALA BAHARI: THE FIRST CONVERTIBLE TOTE OF ITS KIND</p> <p>My name is David Barron. I am originally from Africa and I feel a deep connection to the continent as my home. Every single bag is hand made in Kenya and we focus on providing jobs to the local communities of that area.</p> <p>We started this company as a way to show the world the great artistry and craftsmanship Africans have to offer. Part of my personal commitment to the continent keeps me traveling to Kenya to meet and support Kenyan communities, marine preservation projects, orphanages and schools. Our aspiration here at Lala Bahari are to bring awareness and support to honorable foundations that help good people in the areas where our products are made so that we can assure you that you are buying a very responsibly sourced product from a responsible and compassionate company.</p> <p>5% of our net profits from normal business operations (outside of this Kickstarter campaign) will be split amongst these 3 charities. Please check out the organizations above at LalaBahari.com and see the good work they are doing right now!</p> <p>We hope that you support Lala Bahari so that we can grow the kind of business that brings great products from good people and does good things.</p> <p>The Bahari Bag uses authentic materials to create an original product that helps keep local communities beautiful for you to explore! This bag becomes a charismatic tote in just three easy steps. It can be used as a blanket, shawl, beach wrap or pillow and when you are ready to leave turns into a beautiful bag. The Bahari Bag is perfect for the the beach, concerts, the park, traveling or even exploring your own town! The Bahari Bag measures 3\' x 5\'.</p> <ul> The Bahari Bag features: <li>A soft absorbent towel backing</li> <li>Made from an authentic cotton kikoy</li> <li>100% cotton rope handles</li> <li>A sealable velcro pocket</li> <li>A Button strap to secure the rope handles</li> <li>Handmade in Africa with quality in mind</li> <li>Internal nylon channel for the innovative rope mechanism</li> </ul> <p>To show you our gratitude for your support, we will be introducing another product that will only be available through Kickstarter!</p> <p>The Toto Bahari Bag will be a miniature, water resistant version of our larger Bahari Bag. Instead of the original rectangle shape it will be a circular shape for a finished look when it is pulled into a tote. This bag will be a perfect addition for the everyday outings to the park or concerts. Its compact size makes it ideal for travel as well.</p> <p>The Toto Bahari Bag will be 3\' x 3\'. Choose from 7 amazing color combinations.</p> <p>The Bahari Beach Wrap is the original travel accessory with a story to tell about East Africa and centuries of exploration over the Indian Ocean. Loud, vibrant and natural, they are perfect for whatever adventure you set out on. </p> <p>We are offering our 3 prime colors but you might also get a surprise color with some of our larger rewards! You can choose from Blue, Yellow or Red.</p> <p>INNOVATION: As you\'ve already seen, the Bahari Bag is really the first of its kind. But this is just the start! We will be refining the Bahari Bag by including extra features, developing new designs and incorporating even better quality materials. Help us create the perfect product!</p> <p>PRODUCTION: We will be improving our manufacturing and working closely with local tailors to create developed products. We know that people will love the Bahari Bag as much as we do, and we have a great system in place to accommodate an increase in production.</p> <p>EXPANSION: As we expand our line through collaborations with similar businesses, we will add complementary products like sandals and bikinis along with our original products, like the Bahari Bag. Our expansion will help local businesses and the region. We are a young company and enjoying every moment of creating a website and brand that attract thoughtful and fun people to our objectives. </p> <p>Mason became a part of Lala Bahari as the sole web designer early 2016. This innovative system came to him while driving home from work one afternoon.</p> <p>Even though he is no seamstress, Mason built the first prototype out of a cut up shirt and parts of his memory foam mattress. You can see his first franken-bag above!</p> <p>The first prototype was pretty raw but it worked! Everyone at Lala Bahari was immediately excited. We knew we could refine his design and make a really cool, authentic and original product.</p> <p>Over the next few weeks we made our first full scale prototype and added all kinds of great features. A big shout out to Mason\'s mother Michelle Halstead for sewing the first bag! We were able to donate the very first bag in person to the Kipungani School Trust in Kenya! </p> <p>A special thanks to Ryan Villasanti who was able to hit our deadline and create a beautiful video! Check out more of his work at RyanVillasanti.com. </p> </div>', '', '', function(opts) {
});
riot.tag2('project-content-header', '<div class="row" style="margin-top: 93px;"> <div class="no-gutter" each="{exploreContent}" style="display: flex;"> <div class="col-sm-7 project-content-left"> <div class="project-relative"> <img class="img-responsive" riot-src="{projectImage}"> <p class="metrics-absolute"> <span class="learn-metrics" style="float: left">Pledged $3,243</span> <span class="learn-metrics" style="float: right">Project Goal ${goal}</span> </p> </div> </div> <div class="col-sm-5 project-content-right" style="position:relative;"> <div class="text-center coupon-code-box"> <p class="coupon-code">USE CODE 1XD6D3</p> </div> <p><strong>{projectTitle}</strong></p> </p>{projectDescription}</p> <p><strong>Reward:</strong> {reward}</p> <p><strong>Coupon Code:</strong> Send the following coupon code as a comment after you have backed the project through the crowdfunding portal. The project owner will fulfill your reward upon successful funding.</p> <div class="text-center" style="margin-top: 25px;"> <a href="#" class="back-project">BACK PROJECT</a> </div> </div> </div> </div>', '', '', function(opts) {
        this.exploreContent = [
        { projectURL:"projects.php",
        projectImage:"/img/projects/bahari-bag.jpg",
        projectTitle:"Lala Bahari: The First Convertible Tote Bag of its Kind",
        projectDescription:"Made in Africa to support the local communities. Our bag converts from a towel or wrap into a tote through an innovative rope mechanism.",
        reward:"All pledges over $50 will receive a Bahari Sarong and Scarf.",
        goal:"12,300",
        category:"Design",
        progressBar:'25',
        pledged:'8,000',
        backers: '44',
        days:'16'}
        ]
});
riot.tag2('project-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container"> <project-content-header></project-content-header> <div class="row dash-row-bottom" style="margin-top: 15px"> <project-content-body></project-content-body> </div> </div> <global-footer></global-footer>', '', '', function(opts) {
});
riot.tag2('project', '<project-modal-login show="{!logged_in}"></project-modal-login> <project-page show="{remove}"></project-page> <global-coming-soon show="{logged_in}"></global-coming-soon>', 'project,[data-is="project"]{ background-color: #fff }', '', function(opts) {

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
riot.tag2('global-coming-soon', '<div class="alternate-gradient-background img-responsive text-center" style="position: relative; width: 100%; height: 100vh; "> <img src="/img/content/krowdspace-icon-lg.png" style="width: 125px; margin-top: 75px; margin-bottom: 30px;"> <p style="color:#fff; font-size: 26px; font-weight: 600; padding: 0px 10px;">Our website is currently under construction</p> <p style="color:#fff; font-size: 26px; font-weight: 100; margin-top: 20px; margin:0px;">We\'ll be live in</p> <div class="timer-next-service"> <input type="hidden" id="time_remaining" value="5458087"> <div class="col-sm-6 col-sm-offset-3 no-gutter" style="margin-top: 30px;"> <div class="col-xs-3 text-center days"> <p class="data" style="color:#fff; font-size: 40px; font-weight: 100;">00</p> <p class="label" style="color:#fff; font-size: 20px; font-weight: 100;">Days</p> </div> <div class="col-xs-3 text-center hours"> <p class="data" style="color:#fff; font-size: 40px; font-weight: 100;">00</p> <p class="label" style="color:#fff; font-size: 20px; font-weight: 100;">Minutes</p> </div> <div class="col-xs-3 text-center minutes"> <p class="data" style="color:#fff; font-size: 40px; font-weight: 100;">00</p> <p class="label" style="color:#fff; font-size: 20px; font-weight: 100;">Hours</p> </div> <div class="col-xs-3 text-center seconds"> <p class="data" style="color:#fff; font-size: 40px; font-weight: 100;">00</p> <p class="label" style="color:#fff; font-size: 20px; font-weight: 100;">Seconds</p> </div> </div> </div> </div>', '', '', function(opts) {
        jQuery(document).ready(function($) {

          timer = function() {
            remaining = $('.timer-next-service #time_remaining').val();

            if (remaining > 0) {
              remaining--;
              $('.timer-next-service #time_remaining').val(remaining);
              days = Math.floor(remaining / 86400);
              hours = Math.floor((remaining % 86400) / 3600);
              minutes = Math.floor(((remaining % 86400) % 3600) / 60);
              seconds = Math.floor(((remaining % 86400) % 3600) % 60);
              $('.timer-next-service .seconds .data').text(fill(seconds));
              $('.timer-next-service .minutes .data').html(fill(minutes));
              $('.timer-next-service .hours .data').html(fill(hours));
              $('.timer-next-service .days .data').html(fill(days));
              setTimeout("timer();", 1000);
            }
          }

          fill = function(value) {
            if(value < 10){
              return '0' + value;
            }else{
              return value;
            }
          }

          setTimeout("timer()", 1000);

        }(jQuery));
});
riot.tag2('global-footer', '<footer class="alternate-background"> <div class="custom-footer"> <div class="container"> <div class="row"> <div class="col-md-3 hidden-sm hidden-xs"> <p class="footer-text"> <strong>Quick Links</strong> </p> <ul class="text-left quicklinks"> <li><a href="#modal-about" data-toggle="modal" class="modal-link neutral-footer-link">About Krowdspace</a></li> <li><a class="page-scroll neutral-footer-link" href="#project">Submit A Project</a></li> <li><a class="page-scroll neutral-footer-link" href="#benefits">Our Benefits</a></li> <li><a class="page-scroll neutral-footer-link" href="#boost">View Boosts</a></li> <li><a href="#modal-privacy-policy" data-toggle="modal" class="modal-link neutral-footer-link">Privacy Policy</a></li> <li><a href="#modal-service-terms" data-toggle="modal" class="modal-link neutral-footer-link">Terms of Service</a></li> <li><a href="#modal-giveaway" data-toggle="modal" class="modal-link neutral-footer-link">Giveaways</a></li> <li><a href="#modal-press-kit" data-toggle="modal" class="modal-link neutral-footer-link">Press Kit</a></li> </ul> </div> <div class="col-md-4 col-sm-offset-0 col-sm-6 col-xs-offset-1 col-xs-10"> <p class="footer-text"> <strong>Follow Us On Social Media</strong> </p> <p class="text-left" style="color: #fff; ">We are constantly building our social media community. Connect with us for updates on the latest news, promotion and exclusive giveaways. </p> <div class="text-left social-icons"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-instagram fa-stack-1x fa-inverse"></i> </span> </a> </div> </div> <div class="col-sm-1 hidden-xs"></div> <div id="contact" class="col-md-4 col-sm-offset-0 col-sm-5 col-xs-offset-1 col-xs-10 shadow contact-area"> <form class="form-vertical no-gutter form-style" id="messageForm" onsubmit="{footerMessage}"> <div class="form-group"> <input type="text" ref="firstnameform" class="form-control placeholder-color" placeholder="First Name" required="" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input type="text" ref="lastnameform" class="form-control placeholder-color" placeholder="Last Name" required="" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input ref="emailform" class="form-control placeholder-color" placeholder="Email Address" required="" aria-required="true" aria-invalid="true" type="email"> </div> <div class="form-group"> <textarea class="form-control placeholder-color" ref="commentform" type="text" placeholder="Your Message" rows="3" required=""></textarea> </div> <div> <input type="submit" class="contact-btn" name="submit" value="Send Message"> </div> </form> </div> </div> <div class="text-left"> <p class="copyright">&#169; Krowdspace 2017</p> </div> </div> </div> </footer>', '', '', function(opts) {
    var self = this;
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
      this.footerMessage = function(e)
        {
            e.preventDefault();

            var FNAME = this.refs.firstnameform.value,
                LNAME = this.refs.lastnameform.value,
                EMAIL = this.refs.emailform.value,
                COMMENT = this.refs.commentform.value;

            krowdspace.register.contact_us(FNAME,LNAME,EMAIL,COMMENT).then
            ((res) =>
            {
                $('#modal-comment').modal('show');
            },
            (err) =>
            {
                console.log(err);
            });
        }.bind(this)
});

riot.tag2('global-krowdspace-navigation', '<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-alt explore-fixed-top"> <div class="container"> <div class="navbar-header page-scroll"> <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#explore-nav-collapse"> <span class="sr-only">Toggle navigation</span><i class="fa fa-bars hamburger"></i> </button> <a class="navbar-logo-alt page-scroll" href="#page-top"><img src="/../img/krowdspace-explore.png" style="width:55px;"></a> </div> <div class="collapse navbar-collapse text-center" id="explore-nav-collapse"> <ul class="nav navbar-nav navbar-left"> <li class="hidden"> <a href="#page-top"></a> </li> <li> <a class="explore-scroll" href="/#/explore">Explore</a> </li> <li> <a class="explore-scroll" href="/#/account/register">Submit Project</a> </li> </ul> <img class="logo-float" src="img/krowdspace-explore.png" style="width:55px;"> <ul class="nav navbar-nav navbar-right"> <li class="hidden"> <a href="#page-top"></a> </li> <li> <a show="{logged_in}" class="explore-scroll" href="/#/account/dashboard">Dashboard</a> </li> <li> <a show="{!logged_in}" href="#modal-explore-login" class="modal-link" data-toggle="modal">Login</a> </li> <li> <a show="{!logged_in}" href="#modal-explore-register" class="modal-link" data-toggle="modal">Sign Up</a> </li> <li> <a show="{logged_in}" href="/#/account/profile">Profile</a> </li> </ul> </div> </div> </nav>', '', '', function(opts) {

krowdspace.v1.check().then((res)=>
	{
		logged_in = true;
		this.update();
	},
	(err)=>
	{
		console.log(err);
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
riot.tag2('global-modal-about', '<div id="modal-about" class="modal fade"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button> <p class="modal-heading">About Krowdspace</p> </div> <div class="modal-body"> <ul class="timeline"> <li> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/1.jpg" alt=""> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading"><strong>October 2016</strong></p> <p class="about-heading"><strong>The Crowdfunding Experiment</strong></p> <div class="text-left"> <p>We had our first encounter with crowdfunding while attempting to launch our original product "The Bahari Bag" on Kickstarter. We had the great product, a full functioning website, personal story and a well crafted project page. It became very clear that we were missing one thing. Our community wasnt large enough and it was very difficulty to gain any traction. We searched high and low for a free or affordable website to show off our hard work and build our community but there was none.</p> </div> </div> </div> </li> <li class="timeline-inverted"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/2.jpg" alt=""> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading"><strong>November 2016</strong></p> <p class="about-heading"><strong>The Seed is Planted</strong></p> <div class="text-left"> <p>As we came to terms with the results of our Kickstarter our team decided to analyze and learn from our mistakes. We had invested a lot of money into companies who promised promotions and news coverage or articles but never delivered. Our hard work and dreams had been taken advantage of by people looking to make a quick profit. The idea of a new and innovative company started to take shape to help others navigate the extreme world of crowdfunding.</p> </div> </div> </div> </li> <li> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/3.jpg" alt=""> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading"><strong>December 2016</strong></p> <p class="about-heading"><strong>Krowdspace is Born</strong></p> <div class="text-left"> <p>Krowdspace begins development to create a unified platform for people who need help launching their own crowdfunding projects. We wanted to offer a service that is appreciated and transparent. As our development continued new features were added regularly. Our social media channels go live and we start building our own brand.</p> </div> </div> </div> </li> <li class="timeline-inverted"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/4.jpg" alt=""> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading"><strong>January 2017</strong></p> <p class="about-heading"><strong>Building our Platform</strong></p> <div class="text-left"> <p>Along with social media boosts and featured banners for our users, we have also collected news media contacts for Press Kits to help gain traction. We are also providing targeted ad campaigns that will be fully transparent. By investing in our advertisements plans we will put 100% of the money you provide towards your campaigns. Krowdspace will not take a cut.</p> </div> </div> </div> </li> <li class="timeline"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/5.jpg" alt=""> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading"><strong>March 2017</strong></p> <p class="about-heading"><strong>Krowdspace Launch</strong></p> <div class="text-left"> <p>The Krowdspace Landing page is launched! With the hard work and dedication of our team we were able to launch a month ahead of schedule. Next step is bringing to life the unified dashboard to pull in crowdfunding projects from the top sites. We have also launched limited crowdfunding tools to help your project be successful.</p> </div> </div> </div> </li> <li class="timeline-inverted"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/7.jpg" alt=""> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading"><strong>June 2017</strong></p> <p class="about-heading"><strong>Finish Strong</strong></p> <div class="text-left"> <p>Krowdspace is nearing completion and we are getting closer to the final launch! A date has been set and we should be launching August 22, 2017. Krowdspace has made a slight pivot to stay within the bounds of the internet and are excited to bring you the first ever crowdfunding discount site.</p> </div> </div> </div> </li> <li class="timeline" style="padding-bottom:50px;"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/6.jpg" alt=""> </div> <div class="timeline-panel"> <div class="text-left"> <p class="about-heading"><strong>Krowdspace</strong></p> <div class="text-left"> <p>Krowdspace consists of a small team from the Seattle Washington area. Each one of us brings a special skill set to create something special. Support us on this journey and see how Krowdspace takes shape.</p> </div> </div> </div> </li> </ul> <div class="text-center"> <button type="button" class="text-center modal-close" data-dismiss="modal" style="margin-top: 0px;">Close</button> </div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
        this.on('mount', function()
        {
            var url = window.location.href;
            if (url.indexOf('?about=1') != -1)
            {
                $("#modal-about").modal('show');
                $('#modal-about').fadeIn(100);
            };
        });
});
riot.tag2('global-modal-comment', '<div id="modal-comment" class="modal fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Thank You From Krowdspace</p> </div> <div class="modal-body"> <p>Thank you for submitting your comment to Krowdspace. We will respond as quickly as possible. Please register with Krowdspace as we get ready to launch the new site!</p> <p>We will be sending updates on the latest news, promotions and exclusive giveaways leading up to our official launch. Until then, make sure to stay connected with our social media channels:</p> <div class="text-left boost-warning"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-instagram fa-stack-1x fa-inverse"></i> </span> </a> </div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
});
riot.tag2('global-modal-giveaway', '<div id="modal-giveaway" class="modal fade"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1" style="margin-bottom: 0px;"> <div id="modal" class="modal-content text-center"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button> <p class="modal-heading">KROWDSPACE GIVEAWAY - PARTY PACK</p> <iframe style="width: 100%; height: 1100px; overflow: hidden;" src="https://gleam.io/XsDXo/krowdspace-party-pack-giveaway" frameborder="0" allowfullscreen></iframe> <p class="modal-heading text-left">Previous Giveaway Winners</p> <p class="giveaway-winner text-left"><strong>$50 Amazon Card - 04/01/17</strong></p> <p class="giveaway-winner text-right"><strong>$75 K POP Prize Package - 05/25/17</strong></p> <p class="giveaway-winner text-left"><strong>$60 Krowdspace Party Pack - 07/25/17</strong></p> </div> </div> </div> <div class="krowdspace-modal col-sm-10 col-sm-offset-1 text-left"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Giveaway Rules</p> <div class="text-left user-title"> <p class="modal-heading">NO PURCHASE IS NECESSARY TO ENTER OR WIN. A PURCHASE DOES NOT INCREASE THE CHANCES OF WINNING.</p> </div> <p><span class="modal-text"><strong>Eligibility:</strong></span> This Campaign is open only to those who sign up at the www.Krowdspace.com/?giveaway=1 and who are 18 years of age or older as of the date of entry. The Campaign is open to legal residents of the United States of America, and is void where prohibited by law. Employees of Krowdspace, its affiliates, subsidiaries, advertising and promotion agencies, and suppliers, (collectively the “Employees”), and immediate family members and/or those living in the same household of Employees are not eligible to participate in the Campaign. The Campaign is subject to all applicable federal, state, and local laws and regulations. Void where prohibited.</p> <br> <p><span class="modal-text"><strong>Agreement to Rules:</strong></span> By participating, the Contestant (“You”) agree to be fully unconditionally bound by these Rules, and You represent and warrant that You meet the eligibility requirements. In addition, You agree to accept the decisions of Krowdspace as final and binding as it relates to the content of this Campaign.</p> <br> <p><span class="modal-text"><strong>Campaign Period:</strong></span> Entries will be accepted online starting on 06/13/17 18:00PM PST and ending on 07/25/17 11:59PM PST. All online entries must be received by 07/25/17 11:59PM PST.</p> <br> <p><span class="modal-text"><strong>How to Enter:</strong></span> The Campaign must be entered by submitting an entry using the online form provided at www.Krowdspace.com/?giveaway=1. The entry must fulfill all Campaign requirements, as specified, to be eligible to win a prize. Entries that are incomplete or do not adhere to the rules or specifications may be disqualified at the sole discretion of Krowdspace. You may not enter more times than indicated by using multiple email addresses, identities, or devices in an attempt to circumvent the rules. If You use fraudulent methods or otherwise attempt to circumvent the rules, your submission may be removed from eligibility at the sole discretion of Krowdspace.</p> <br> <p><span class="modal-text"><strong>Prizes:</strong></span> The Winner(s) of the Campaign (the “Winner”) will receive 1 Exploding Kittens Card Game, 1 Fidget Spinner and 1 Fidget Cube worth an estimated value of $60. Actual/appraised value may differ at time of prize award. The specifics of the prize shall be solely determined by Krowdspace. No cash or other prize substitution shall be permitted except at Krowdspace\'s discretion. The prize is nontransferable. Any and all prize-related expenses, including without limitation any and all federal, state, and/or local taxes, shall be the sole responsibility of Winner. No substitution of prize or transfer/assignment of prize to others or request for the cash equivalent by Winner is permitted. Acceptance of prize constitutes permission for Krowdspace to use Winner’s name, likeness, and entry for purposes of advertising and trade without further compensation, unless prohibited by law.</p> <br> <p><span class="modal-text"><strong>Odds:</strong></span> The odds of winning depend on the number of eligible entries received.</p> <br> <p><span class="modal-text"><strong>Winner Selection and Notification:</strong></span> Winner will be selected by a random drawing under the supervision of Krowdspace. Winner will be notified by email within five (5) days following selection of Winner. Krowdspace shall have no liability for Winner’s failure to receive notices due to spam, junk e-mail or other security settings or for Winner’s provision of incorrect or otherwise non-functioning contact information. If Winner cannot be contacted, is ineligible, fails to claim the prize within 10 days from the time award notification was sent, or fails to timely return a completed and executed declaration and release as required, the prize may be forfeited and an alternate Winner selected. Receipt by Winner of the prize offered in this Campaign is conditioned upon compliance with any and all federal, state, and local laws and regulations. ANY VIOLATION OF THESE OFFICIAL RULES BY WINNER (AT KROWDSPACE‘S SOLE DISCRETION) WILL RESULT IN WINNER’S DISQUALIFICATION AS WINNER OF THE CAMPAIGN, AND ALL PRIVILEGES AS WINNER WILL BE IMMEDIATELY TERMINATED.</p> <br> <p><span class="modal-text"><strong>Rights Granted by You:</strong></span> By entering this content (e.g., photo, video, text, etc.), You understand and agree that Krowdspace, anyone acting on behalf of Krowdspace, and Krowdspace’s licensees, successors, and assigns, shall have the right, where permitted by law, to print, publish, broadcast, distribute, and use in any media now known or hereafter developed, in perpetuity and throughout the World, without limitation, your entry, name, portrait, picture, voice, likeness, image, statements about the Campaign, and biographical information for news, publicity, information, trade, advertising, public relations, and promotional purposes. without any further compensation, notice, review, or consent. Optional verbiage for Contests: By entering this content, You represent and warrant that your entry is an original work of authorship, and does not violate any third party’s proprietary or intellectual property rights. If your entry infringes upon the intellectual property right of another, You will be disqualified at the sole discretion of Krowdspace. If the content of your entry is claimed to constitute infringement of any proprietary or intellectual proprietary rights of any third party, You shall, at your sole expense, defend or settle against such claims. You shall indemnify, defend, and hold harmless Krowdspace from and against any suit, proceeding, claims, liability, loss, damage, costs or expense, which Krowdspace may incur, suffer, or be required to pay arising out of such infringement or suspected infringement of any third party’s right.</p> <br> <p><span class="modal-text"><strong>Terms &amp; Conditions:</strong></span> Krowdspace reserves the right, in its sole discretion, to cancel, terminate, modify or suspend the Campaign should virus, bug, non-authorized human intervention, fraud, or other cause beyond Krowdspace’s control corrupt or affect the administration, security, fairness, or proper conduct of the Campaign. In such case, Krowdspace may select the Winner from all eligible entries received prior to and/or after (if appropriate) the action taken by Krowdspace. Krowdspace reserves the right, in its sole discretion, to disqualify any individual who tampers or attempts to tamper with the entry process or the operation of the Campaign or website or violates these Terms &amp; Conditions. Krowdspace has the right, in its sole discretion, to maintain the integrity of the Campaign, to void votes for any reason, including, but not limited to: multiple entries from the same user from different IP addresses; multiple entries from the same computer in excess of that allowed by Campaign rules; or the use of bots, macros, scripts, or other technical means for entering. Any attempt by an entrant to deliberately damage any website or undermine the legitimate operation of the Campaign may be a violation of criminal and civil laws. Should such attempt be made, Krowdspace reserves the right to seek damages to the fullest extent permitted by law.</p> <br> <p><span class="modal-text"><strong>Limitation of Liability:</strong></span> By entering, You agree to release and hold Krowdspace and its subsidiaries, affiliates, advertising and promotion agencies, partners, representatives, agents, successors, assigns, employees, officers, and directors from any liability, illness, injury, death, loss, litigation, claim, or damage that may occur, directly or indirectly, whether caused by negligence or not, from: (i) such entrant’s participation in the Campaign and/or his/her acceptance, possession, use, or misuse of any prize or any portion thereof; (ii) technical failures of any kind, including but not limited to the malfunction of any computer, cable, network, hardware, or software, or other mechanical equipment; (iii) the unavailability or inaccessibility of any transmissions, telephone, or Internet service; (iv) unauthorized human intervention in any part of the entry process or the Promotion; (v) electronic or human error in the administration of the Promotion or the processing of entries.</p> <br> <p><span class="modal-text"><strong>Disputes:</strong></span> THIS Campaign IS GOVERNED BY THE LAWS OF THE UNITED STATES OF AMERICA AND WASHINGTON STATE, WITHOUT RESPECT TO CONFLICT OF LAW DOCTRINES. As a condition of participating in this Campaign, participant agrees that any and all disputes that cannot be resolved between the parties, and causes of action arising out of or connected with this Campaign, shall be resolved individually, without resort to any form of class action, exclusively before a court located in Washington State having jurisdiction. Further, in any such dispute, under no circumstances shall participant be permitted to obtain awards for, and hereby waives all rights to, punitive, incidental, or consequential damages, including reasonable attorney’s fees, other than participant’s actual out-of-pocket expenses (i.e. costs associated with entering this Campaign). Participant further waives all rights to have damages multiplied or increased.</p> <br> <p><span class="modal-text"><strong>Privacy Policy:</strong></span> Information submitted with an entry is subject to the Privacy Policy stated on the Krowdspace website. To read the Privacy Policy please reference our "Privacy Policy" link on our footer section. Note: a privacy policy is optional, but may be required when running a promotion on the web when using third party platforms or when using features from social channels. Including this information makes it clear to your users how you are going to use their information.</p> <br> <p><span class="modal-text"><strong>Winners List:</strong></span> To obtain a copy of the Winner’s name or a copy of these Official Rules, mail your request along with a stamped, self-addressed envelope to: Krowdspace 10333 Main Street Apt 342, Bellevue, WA 98004. Requests must be received no later than 06/25/17.</p> <br> <p><span class="modal-text"><strong>Sponsor:</strong></span> The Sponsor of the Campaign is Krowdspace 10333 Main Street Apt 342, Bellevue, WA 98004.</p> <br> <p><span class="modal-text"><strong>Facebook:</strong></span> The Campaign hosted by Krowdspace is in no way sponsored, endorsed, administered by, or associated with Facebook.</p> <div class="row text-center"> <button type="button" class="text-center modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
        this.on('mount', function()
        {
            var url = window.location.href;
            if (url.indexOf('?giveaway=1') != -1)
            {
                $("#modal-giveaway").modal('show');
                $('#modal-giveaway').fadeIn(100);
            };
        });
});
riot.tag2('global-modal-press', '<div id="modal-press-kit" class="modal fade"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button> <p class="modal-heading">Press Kit</p> </div> <div class="modal-body"> <p>If you would like to use one of our branded logo images and have not submitted a project to Krowdspace please contact us. If you have a project submitted on Krowdspace we ask that you put the "Featured on Krowdspace" banner with a link to our website somewhere on your crowdfunding project content page. If you need help adding the image and the hyperlink please follow the instructions below.</p> <p>To put our "Featured on Krowdspace" banner into your project save the image to your desktop and then import it onto your project page. Click on the image and you can then add the hyperlink "www.krowdspace.com".</p> <div class="row text-center" style="margin-top: 30px;"> <img src="img/press/featured-krowdspace-v1.png" style="width: 450px;"> </div> <div class="row text-center" style="margin-top: 25px; margin-bottom: 30px;"> <img src="img/press/featured-krowdspace-v2.png" style="width: 75px;"> <img src="img/press/featured-krowdspace-v3.png" style="width: 100px; margin: 0px 50px;"> <img src="img/press/featured-krowdspace-v4.png" style="width: 75px;"> </div> <p class="text-center">If you have any questions please feel free to to reach out to us directly!</p> <div class="text-center"> <button type="button" class="text-center modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
        this.on('mount', function()
        {
			var url = window.location.href;
			if (url.indexOf('?press-kit=1') != -1)
            {
				$("#modal-press-kit").modal('show');
				$('#modal-press-kit').fadeIn(100);
			};
        });
});
riot.tag2('global-modal-privacy', '<div id="modal-privacy-policy" class="modal fade"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button> <p class="modal-heading">Privacy Policy - May 20, 2017</p> </div> <div class="modal-body"> <p class="privacy-title">SECTION 1 - WHAT DO WE DO WITH YOUR INFORMATION?</p> <p>When you purchase a service from our store, as part of the buying and selling process, we collect the personal information you give us such as your name, address and email address. When you browse our store, we also automatically receive your computer’s internet protocol (IP) address in order to provide us with information that helps us learn about your browser and operating system. Email marketing: With your permission, we may send you emails about our store, new products and other updates. </p> <p class="privacy-title">SECTION 2 - CONSENT</p> <p><span class="modal-text"><strong>How do you get my consent?</strong></span><br>When you provide us with personal information to complete a transaction, verify your credit card, place an order, arrange for a delivery or return a purchase, we imply that you consent to our collecting it and using it for that specific reason only. If we ask for your personal information for a secondary reason, like marketing, we will either ask you directly for your expressed consent, or provide you with an opportunity to say no. </p> <br> <p><span class="modal-text"><strong>How do I withdraw my consent?</strong></span><br>If after you opt-in, you change your mind, you may withdraw your consent for us to contact you, for the continued collection, use or disclosure of your information, at anytime, by contacting us at mason@krowdspace.com or mailing us at: </p> <br> <p>Krowdspace LLC<br> P.O. Box 1225 <br> Snohomish, WA 98291-1225 </p> <p class="privacy-title">SECTION 3 - DISCLOSURE</p> <p>We may disclose your personal information if we are required by law to do so or if you violate our Terms of Service.</p> <p class="privacy-title">SECTION 4 - SHOPIFY</p> <p>Our stores payment processing is hosted on Shopify Inc. They provide us with the online e-commerce platform that allows us to sell our products and services to you. Your data is stored through Shopify’s data storage, databases and the general Shopify application. They store your data on a secure server behind a firewall. </p> <br> <p><span class="modal-text"><strong>Payment:</strong></span> If you choose a direct payment gateway to complete your purchase, then Shopify stores your credit card data. It is encrypted through the Payment Card Industry Data Security Standard (PCI-DSS). Your purchase transaction data is stored only as long as is necessary to complete your purchase transaction. After that is complete, your purchase transaction information is deleted. All direct payment gateways adhere to the standards set by PCI-DSS as managed by the PCI Security Standards Council, which is a joint effort of brands like Visa, MasterCard, American Express and Discover. PCI-DSS requirements help ensure the secure handling of credit card information by our store and its service providers. For more insight, you may also want to read Shopify’s Terms of Service (https://www.shopify.com/legal/terms) or Privacy Statement (https://www.shopify.com/legal/privacy). </p> <p class="privacy-title">SECTION 5 - THIRD-PARTY SERVICES</p> <p>In general, the third-party providers used by us will only collect, use and disclose your information to the extent necessary to allow them to perform the services they provide to us. However, certain third-party service providers, such as payment gateways and other payment transaction processors, have their own privacy policies in respect to the information we are required to provide to them for your purchase-related transactions. For these providers, we recommend that you read their privacy policies so you can understand the manner in which your personal information will be handled by these providers. In particular, remember that certain providers may be located in or have facilities that are located a different jurisdiction than either you or us. So if you elect to proceed with a transaction that involves the services of a third-party service provider, then your information may become subject to the laws of the jurisdiction(s) in which that service provider or its facilities are located. As an example, if you are located in Canada and your transaction is processed by a payment gateway located in the United States, then your personal information used in completing that transaction may be subject to disclosure under United States legislation, including the Patriot Act. Once you leave our store’s website or are redirected to a third-party website or application, you are no longer governed by this Privacy Policy or our website’s Terms of Service. </p> <br> <p><span class="modal-text"><strong>Links:</strong></span> When you click on links on our store, they may direct you away from our site. We are not responsible for the privacy practices of other sites and encourage you to read their privacy statements. </p> <p class="privacy-title">SECTION 6 - SECURITY</p> <p>To protect your personal information, we take reasonable precautions and follow industry best practices to make sure it is not inappropriately lost, misused, accessed, disclosed, altered or destroyed. If you provide us with your credit card information, the information is encrypted using secure socket layer technology (SSL) and stored with a AES-256 encryption. Although no method of transmission over the Internet or electronic storage is 100% secure, we follow all PCI-DSS requirements and implement additional generally accepted industry standards. </p> <p class="privacy-title">SECTION 7 - COOKIES</p> <p>Here is a list of cookies that we use. We’ve listed them here so you that you can choose if you want to opt-out of cookies or not.<br> <ul class="text-left privacy-list"> <li>_session_id, unique token, sessional, Allows Shopify to store information about your session (referrer, landing page, etc).</li> <li>_shopify_visit, no data held, Persistent for 30 minutes from the last visit, Used by our website provider’s internal stats tracker to record the number of visits.</li> <li>_shopify_uniq, no data held, expires midnight (relative to the visitor) of the next day, Counts the number of visits to a store by a single customer.</li> <li>cart, unique token, persistent for 2 weeks, Stores information about the contents of your cart. <li>_secure_session_id, unique token, sessional.</li> <li>storefront_digest, unique token, indefinite If the shop has a password, this is used to determine if the current visitor has access.</li> </ul> <p class="privacy-title">SECTION 8 - AGE OF CONSENT</p> <p>By using this site, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site.</p> <p class="privacy-title">SECTION 9 - CHANGES TO THIS PRIVACY POLICY</p> <p>We reserve the right to modify this privacy policy at any time, so please review it frequently. Changes and clarifications will take effect immediately upon their posting on the website. If we make material changes to this policy, we will notify you here that it has been updated, so that you are aware of what information we collect, how we use it, and under what circumstances, if any, we use and/or disclose it. If our store is acquired or merged with another company, your information may be transferred to the new owners so that we may continue to sell products to you. </p> <p class="privacy-title">QUESTIONS AND CONTACT INFORMATION</p> <p>If you would like to: access, correct, amend or delete any personal information we have about you, register a complaint, or simply want more information contact our Privacy Compliance Officer by email at mason@krowdspace.com or by mail at</p> <br> <p>Krowdspace LLC<br> Re: Privacy Compliance Officer <br> P.O. Box 1225<br> Snohomish, WA 98291-1225 </p> <div class="text-center"> <button type="button" class="modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
        this.on('mount', function()
        {
			var url = window.location.href;
			if (url.indexOf('?privacy-policy=1') != -1)
            {
			    $("#modal-privacy-policy").modal('show');
				$('#modal-privacy-policy').fadeIn(100);
			};
        });
});
riot.tag2('global-modal-service', '<div id="modal-service-terms" class="modal fade"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button> <p class="modal-heading">Terms of Service - May 20, 2017</p> </div> <div class="modal-body"> <p class="privacy-title">OVERVIEW</p> <p>This website is operated by Krowdspace LLC, a limited liability company incorporated in the state of Washington, United States. Throughout the site, the terms “we”, “us” and “our” refer to Krowdspace. Krowdspace offers this website, including all information, tools and services available from this site to you, the user, conditioned upon your acceptance of all terms, conditions, policies and notices stated here.</p> <p>By visiting our site and/ or purchasing something from us, you engage in our “Service” and agree to be bound by the following terms and conditions (“Terms of Service”, “Terms”), including those additional terms and conditions and policies referenced herein. These Terms of Service apply to all users of the site, including without limitation users who are browsers, vendors, customers, merchants, and/ or contributors of content.</p> <p>Please read these Terms of Service carefully before accessing or using our website. By accessing or using any part of the site, you agree to be bound by these Terms of Service. If you do not agree to all the terms and conditions of this agreement, then you may not access the website or use any services. If these Terms of Service are considered an offer, acceptance is expressly limited to these Terms of Service.</p> <p>Any new features or tools which are added to the current store shall also be subject to the Terms of Service. You can review the most current version of the Terms of Service at any time on this page. We reserve the right to update, change or replace any part of these Terms of Service by posting updates and/or changes to our website. It is your responsibility to check this page periodically for changes. Your continued use of or access to the website following the posting of any changes constitutes acceptance of those changes.</p> <p>Our stores payment gateway is hosted on Shopify Inc. They provide us with the online e-commerce platform that allows us to sell our products and services to you.</p> <p class="privacy-title">SECTION 1 - ONLINE STORE TERMS</p> <p>By agreeing to these Terms of Service, you represent that you are at least the age of majority in your state or province of residence, or that you are the age of majority in your state or province of residence and you have given us your consent to allow any of your minor dependents to use this site. You may not use our products for any illegal or unauthorized purpose nor may you, in the use of the Service, violate any laws in your jurisdiction (including but not limited to copyright laws). You must not transmit any worms or viruses or any code of a destructive nature. A breach or violation of any of the Terms will result in an immediate termination of your Services. </p> <p class="privacy-title">SECTION 2 - GENERAL CONDITIONS</p> <p>We reserve the right to refuse service to anyone for any reason at any time. You understand that your content (not including credit card information), may be transferred unencrypted and involve (a) transmissions over various networks; and (b) changes to conform and adapt to technical requirements of connecting networks or devices. Credit card information is always encrypted during transfer over networks. <p>You agree not to reproduce, duplicate, copy, sell, resell or exploit any portion of the Service, use of the Service, or access to the Service or any contact on the website through which the service is provided, without express written permission by us. The headings used in this agreement are included for convenience only and will not limit or otherwise affect these Terms. </p> <p class="privacy-title">SECTION 3 - ACCURACY, COMPLETENESS AND TIMELINESS OF INFORMATION</p> <p>We are not responsible if information made available on this site is not accurate, complete or current. The material on this site is provided for general information only and should not be relied upon or used as the sole basis for making decisions without consulting primary, more accurate, more complete or more timely sources of information. Any reliance on the material on this site is at your own risk. This site may contain certain historical information. Historical information, necessarily, is not current and is provided for your reference only. We reserve the right to modify the contents of this site at any time, but we have no obligation to update any information on our site. You agree that it is your responsibility to monitor changes to our site. </p> <p class="privacy-title">SECTION 4 - MODIFICATIONS TO THE SERVICE AND PRICES</p> <p>Prices for our products are subject to change without notice. We reserve the right at any time to modify or discontinue the Service (or any part or content thereof) without notice at any time. We shall not be liable to you or to any third-party for any modification, price change, suspension or discontinuance of the Service. </p> <p class="privacy-title">SECTION 5 - PRODUCTS OR SERVICES (if applicable)</p> <p>Certain products or services may be available exclusively online through the website. These products or services may have limited quantities and are subject to return or exchange only according to our Return Policy. We have made every effort to display as accurately as possible the colors and images of our products that appear at the store. We cannot guarantee that your computer monitor\'s display of any color will be accurate. We reserve the right, but are not obligated, to limit the sales of our products or Services to any person, geographic region or jurisdiction. We may exercise this right on a case-by-case basis. We reserve the right to limit the quantities of any products or services that we offer. All descriptions of products or product pricing are subject to change at anytime without notice, at the sole discretion of us. We reserve the right to discontinue any product at any time. Any offer for any product or service made on this site is void where prohibited. We do not warrant that the quality of any products, services, information, or other material purchased or obtained by you will meet your expectations, or that any errors in the Service will be corrected. </p> <p class="privacy-title">SECTION 6 - ACCURACY OF BILLING AND ACCOUNT INFORMATION</p> <p>We reserve the right to refuse any order you place with us. We may, in our sole discretion, limit or cancel quantities purchased per person, per household or per order. These restrictions may include orders placed by or under the same customer account, the same credit card, and/or orders that use the same billing and/or shipping address. In the event that we make a change to or cancel an order, we may attempt to notify you by contacting the e-mail and/or billing address/phone number provided at the time the order was made. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers or distributors.</p> <p>You agree to provide current, complete and accurate purchase and account information for all purchases made at our store. You agree to promptly update your account and other information, including your email address and credit card numbers and expiration dates, so that we can complete your transactions and contact you as needed.</p> <p class="privacy-title">SECTION 7 - OPTIONAL TOOLS</p> <p>We may provide you with access to third-party tools over which we neither monitor nor have any control nor input. You acknowledge and agree that we provide access to such tools ”as is” and “as available” without any warranties, representations or conditions of any kind and without any endorsement. We shall have no liability whatsoever arising from or relating to your use of optional third-party tools. Any use by you of optional tools offered through the site is entirely at your own risk and discretion and you should ensure that you are familiar with and approve of the terms on which tools are provided by the relevant third-party provider(s). We may also, in the future, offer new services and/or features through the website (including, the release of new tools and resources). Such new features and/or services shall also be subject to these Terms of Service. </p> <p class="privacy-title">SECTION 8 - THIRD-PARTY LINKS</p> <p>Certain content, products and services available via our Service may include materials from third-parties. Third-party links on this site may direct you to third-party websites that are not affiliated with us. We are not responsible for examining or evaluating the content or accuracy and we do not warrant and will not have any liability or responsibility for any third-party materials or websites, or for any other materials, products, or services of third-parties. We are not liable for any harm or damages related to the purchase or use of goods, services, resources, content, or any other transactions made in connection with any third-party websites. Please review carefully the third-party\'s policies and practices and make sure you understand them before you engage in any transaction. Complaints, claims, concerns, or questions regarding third-party products should be directed to the third-party. </p> <p class="privacy-title">SECTION 9 - USER COMMENTS, FEEDBACK AND OTHER SUBMISSIONS</p> <p>If, at our request, you send certain specific submissions (for example contest entries) or without a request from us you send creative ideas, suggestions, proposals, plans, photographs, or other materials, whether online, by email, by postal mail, or otherwise (collectively, \'comments\'), you agree that we may, at any time, without restriction, edit, copy, publish, distribute, translate and otherwise use in any medium any comments or photographs that you forward to us. We are and shall be under no obligation (1) to maintain any comments or photographs in confidence; (2) to pay compensation for any comments or photographs; or (3) to respond to any comments or photographs. We may, but have no obligation to, monitor, edit or remove content that we determine in our sole discretion are unlawful, offensive, threatening, libelous, defamatory, pornographic, obscene or otherwise objectionable or violates any party’s intellectual property or these Terms of Service. You agree that your comments and photographs will not violate any right of any third-party, including copyright, trademark, privacy, personality or other personal or proprietary right. You further agree that your comments and photographs will not contain libelous or otherwise unlawful, abusive or obscene material, or contain any computer virus or other malware that could in any way affect the operation of the Service or any related website. You may not use a false e-mail address, pretend to be someone other than yourself, or otherwise mislead us or third-parties as to the origin of any comments or photographs. You are solely responsible for any comments and photographs you make and their accuracy. We take no responsibility and assume no liability for any comments or photographs posted by you or any third-party. </p> <p class="privacy-title">SECTION 10 - PERSONAL INFORMATION</p> <p>Your submission of personal information through the store is governed by our Privacy Policy.</p> <p class="privacy-title">SECTION 11 - ERRORS, INACCURACIES AND OMISSIONS</p> <p>Occasionally there may be information on our site or in the Service that contains typographical errors, inaccuracies or omissions that may relate to product descriptions, pricing, promotions, offers, product shipping charges, transit times and availability. We reserve the right to correct any errors, inaccuracies or omissions, and to change or update information or cancel orders if any information in the Service or on any related website is inaccurate at any time without prior notice (including after you have submitted your order). We undertake no obligation to update, amend or clarify information in the Service or on any related website, including without limitation, pricing information, except as required by law. No specified update or refresh date applied in the Service or on any related website, should be taken to indicate that all information in the Service or on any related website has been modified or updated. </p> <p class="privacy-title">SECTION 12 - PROHIBITED USES</p> <p>In addition to other prohibitions as set forth in the Terms of Service, you are prohibited from using the site or its content: (a) for any unlawful purpose; (b) to solicit others to perform or participate in any unlawful acts; (c) to violate any international, federal, provincial or state regulations, rules, laws, or local ordinances; (d) to infringe upon or violate our intellectual property rights or the intellectual property rights of others; (e) to harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability; (f) to submit false or misleading information; (g) to upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service or of any related website, other websites, or the Internet; (h) to collect or track the personal information of others; (i) to spam, phish, pharm, pretext, spider, crawl, or scrape; (j) for any obscene or immoral purpose; or (k) to interfere with or circumvent the security features of the Service or any related website, other websites, or the Internet. We reserve the right to terminate your use of the Service or any related website for violating any of the prohibited uses.</p> <p class="privacy-title">SECTION 13 - DISCLAIMER OF WARRANTIES; LIMITATION OF LIABILITY</p> <p>We do not guarantee, represent or warrant that your use of our service will be uninterrupted, timely, secure or error-free. We do not warrant that the results that may be obtained from the use of the service will be accurate or reliable. You agree that from time to time we may remove the service for indefinite periods of time or cancel the service at any time, without notice to you. You expressly agree that your use of, or inability to use, the service is at your sole risk. The service and all products and services delivered to you through the service are (except as expressly stated by us) provided \'as is\' and \'as available\' for your use, without any representation, warranties or conditions of any kind, either express or implied, including all implied warranties or conditions of merchantability, merchantable quality, fitness for a particular purpose, durability, title, and non-infringement. In no case shall Krowdspace, our directors, officers, employees, affiliates, agents, contractors, interns, suppliers, service providers or licensors be liable for any injury, loss, claim, or any direct, indirect, incidental, punitive, special, or consequential damages of any kind, including, without limitation lost profits, lost revenue, lost savings, loss of data, replacement costs, or any similar damages, whether based in contract, tort (including negligence), strict liability or otherwise, arising from your use of any of the service or any products procured using the service, or for any other claim related in any way to your use of the service or any product, including, but not limited to, any errors or omissions in any content, or any loss or damage of any kind incurred as a result of the use of the service or any content (or product) posted, transmitted, or otherwise made available via the service, even if advised of their possibility. Because some states or jurisdictions do not allow the exclusion or the limitation of liability for consequential or incidental damages, in such states or jurisdictions, our liability shall be limited to the maximum extent permitted by law. </p> <p class="privacy-title">SECTION 14 - INDEMNIFICATION</p> <p>You agree to indemnify, defend and hold harmless Krowdspace and our parent, subsidiaries, affiliates, partners, officers, directors, agents, contractors, licensors, service providers, subcontractors, suppliers, interns and employees, harmless from any claim or demand, including reasonable attorneys’ fees, made by any third-party due to or arising out of your breach of these Terms of Service or the documents they incorporate by reference, or your violation of any law or the rights of a third-party.</p> <p class="privacy-title">SECTION 15 - SEVERABILITY</p> <p>In the event that any provision of these Terms of Service is determined to be unlawful, void or unenforceable, such provision shall nonetheless be enforceable to the fullest extent permitted by applicable law, and the unenforceable portion shall be deemed to be severed from these Terms of Service, such determination shall not affect the validity and enforceability of any other remaining provisions.</p> <p class="privacy-title">SECTION 16 - TERMINATION</p> <p>The obligations and liabilities of the parties incurred prior to the termination date shall survive the termination of this agreement for all purposes. These Terms of Service are effective unless and until terminated by either you or us. You may terminate these Terms of Service at any time by notifying us that you no longer wish to use our Services, or when you cease using our site. If in our sole judgment you fail, or we suspect that you have failed, to comply with any term or provision of these Terms of Service, we also may terminate this agreement at any time without notice and you will remain liable for all amounts due up to and including the date of termination; and/or accordingly may deny you access to our Services (or any part thereof). </p> <p class="privacy-title">SECTION 17 - ENTIRE AGREEMENT</p> <p>The failure of us to exercise or enforce any right or provision of these Terms of Service shall not constitute a waiver of such right or provision. These Terms of Service and any policies or operating rules posted by us on this site or in respect to The Service constitutes the entire agreement and understanding between you and us and govern your use of the Service, superseding any prior or contemporaneous agreements, communications and proposals, whether oral or written, between you and us (including, but not limited to, any prior versions of the Terms of Service). Any ambiguities in the interpretation of these Terms of Service shall not be construed against the drafting party. </p> <p class="privacy-title">SECTION 18 - GOVERNING LAW</p> <p>These Terms of Service and any separate agreements whereby we provide you Services shall be governed by and construed in accordance with the laws of the state of Washington, United States, and disputes shall be resolved in Snohomish County Superior Court in Everett, Washington.</p> <p class="privacy-title">SECTION 19 - CHANGES TO TERMS OF SERVICE</p> <p>You can review the most current version of the Terms of Service at any time at this page. We reserve the right, at our sole discretion, to update, change or replace any part of these Terms of Service by posting updates and changes to our website. It is your responsibility to check our website periodically for changes. Your continued use of or access to our website or the Service following the posting of any changes to these Terms of Service constitutes acceptance of those changes. </p> <p class="privacy-title">SECTION 20 - CONTACT INFORMATION</p> <p>Questions about the Terms of Service should be sent to us at mason@krowdspace.com.</p> <div class="text-center"> <button type="button" class="modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
        this.on('mount', function()
        {
		    var url = window.location.href;
			if (url.indexOf('?service-terms=1') != -1)
            {
			    $("#modal-service-terms").modal('show');
				$('#modal-service-terms').fadeIn(100);
			};
        });
});
riot.tag2('global-modal-submission', '<div id="modal-submission" class="modal fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Thank You From Krowdspace</p> </div> <div class="modal-body"> <p>Thank you for registering with Krowdspace. If you are joining as a member we look forward to launching our unique crowdfunding dashboard with you! We are currently building our site content and should be live in the coming months.</p> <p>We will be sending updates on the latest news, promotions and exclusive giveaways leading up to our official launch. Until then, make sure to stay connected with our social media channels:</p> <div class="text-left boost-warning"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-instagram fa-stack-1x fa-inverse"></i> </span> </a> </div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
});
riot.tag2('home-content-benefits', '<section id="project"> <div class="container"> <div class="row"> <div class="col-sm-12 text-center"> <h2 class="landing-header">How it works</h2> </div> <div class="col-lg-offset-2 col-lg-8 col-md-12 landing-description text-left"> <p>At Krowdspace, we feature projects gathered from the top crowdfunding sites and bring them together into one unified platform. Why is this beneficial? Projects are detached from their original platform branding, which removes backer bias and exposes them to a broader audience. As a project’s audience grows, the probability of reaching funding goals is increased. Pair that with Krowdspace’s effective and measurable <a href="#modal-boost" data-toggle="modal" class="modal-link home-links">project boosts</a> and campaigns gain momentum faster. Join the Krowdspace community today by discovering <a href="#modal-login" data-toggle="modal" class="modal-link home-links">new projects</a> or <a href="#modal-login" data-toggle="modal" class="modal-link home-links">submit your own project</a>.</p> </div> <div class="col-md-4 text-center"> <img src="/img/content/submit-icon.png" class="img-responsive img-icon" alt="Submit a Project Icon"> <p><strong>Submit a Project</strong></p> <br> <p class="text-left text-left">Krowdspace is currently accepting live crowdfunding projects from Kickstarter and Indiegogo. The process to submit a project is simple: once your project is live on either platform, submit your project for approval to Krowdspace by filling out our easy to use submission form. Please <a href="#modal-login" data-toggle="modal" class="home-links">register with Krowdspace</a> before submitting a crowdfunding project. All projects are reviewed by our staff and can take up to 24 hours to post. It’s that easy… and free!</p> </div> <div class="col-md-4 text-center"> <img src="/img/content/reward-icon.png" class="img-responsive img-icon" alt="Rewards Icon"> <p><strong>Offer an Extra Reward</strong></p> <br> <p class="text-left text-left">In order to have your project published on Krowdspace, you must offer an exclusive reward for backers who support you through our community. You can view examples and more information about <a href="#modal-reward" data-toggle="modal" class="home-links">project rewards here</a>. Krowdspace tracks each backer that accesses your project through our platform and notes their Kickstarter or Indiegogo pledge on your Krowdspace dashboard. After your project is funded, you have a convenient list of Krowdspace backers to send your exclusive rewards to.</p> </div> <div class="col-md-4 text-center"> <img src="/img/content/backer-icon.png" class="img-responsive img-icon" alt="Gain Backers Icon"> <p><strong>Gather More Backers</strong></p> <br> <p class="text-left text-left">We have combined projects from the top crowdfunding sites so that you can obtain a larger audience for your campaign. Supporters that might not usually use the funding platform you’ve chosen can now discover your project and get on board. When it comes to fundraising, every advantage counts. <a href="#modal-login" data-toggle="modal" class="home-links">Submit your project</a> today and gain access to our <a href="#modal-boost" data-toggle="modal" class="home-links">project boosts</a> which include detailed metrics and easy to follow tips for running a successful campaign. </p> </div> </div> </div> </section>', '', '', function(opts) {
});
riot.tag2('home-content-boosts', '<img src="img/content/page-break.jpg" class="img-responsive auto-width hidden-sm hidden-xs"> <section id="boost"> <div class="container"> <div class="row"> <div class="col-lg-offset-2 col-lg-8 col-md-12"> <h2 class="landing-header text-center">Project Boosts</h2> <p class="text-left landing-description text-left">Our boost plans offer some much-needed exposure to really get your project going. Don’t want to purchase a full plan? We also offer <a href="#modal-boost" data-toggle="modal" class="modal-link home-links">individual boosts</a>. Each plan will last for 30 days or the duration of your project, whichever is less. </p> </div> </div> <div class="row hidden-sm hidden-xs"> <div class="col-sm-offset-8 col-sm-4 text-center"> <p class="popular-boost">Most Popular</p> </div> </div> <div class="row hidden-sm hidden-xs"> <div class="col-sm-4"> <div class="boost-tier-box shadow"> <div class="text-center price-box"> <p class="price-title"> <strong>&#160;Classic</strong> </p> <p class="price-lg"> <sup class="super-money">$</sup>29 </p> <p class="boost-small hidden-md hidden-sm hidden-xs"> <i>Social Media Posts Are Within 24 Hours</i> </p> </div> <div class="table-responsive"> <table class="table"> <tbody class="boost-table-row"> <tr class="table-bottom"> <td> <i class=" fa fa-check-circle text-primary boost-table"></i> Social Media Posts </td> </tr> <tr class="table-bottom"> <td> <i class=" fa fa-check-circle text-primary boost-table"></i> Weekly Newsletter </td> </tr> <tr class="table-bottom"> <td> <i class=" fa fa-check-circle text-primary boost-table"></i> Featured Project Listing </td> </tr> <tr class="table-bottom"> <td> <i class=" fa fa-check-circle text-primary boost-table"></i> Access to Dashboard Metrics </td> </tr> </tbody> </table> </div> <div class="boost-button boost-left-btn"> <a href="#modal-login" data-toggle="modal" class="btn btn-xl modal-link plan-submit">Purchase Classic</a> </div> </div> </div> <div class="col-sm-4"> <div class="boost-tier-box shadow"> <div class="text-center price-box"> <p class="price-title"> <strong>&#160;Premium</strong> </p> <p class="price-lg"> <sup class="super-money">$</sup>49 </p> <p class="boost-small hidden-md hidden-sm hidden-xs"> <i>Social Media Posts Every 7 Days</i> </p> </div> <div class="table-responsive" style="background-color:white;"> <table class="table"> <tbody class="boost-table-row"> <tr class="table-bottom"> <td class=" "> <i class=" fa fa-check-circle text-primary boost-table"></i> Social Media Posts (x2) </td> </tr> <tr class="table-bottom"> <td class=" "> <i class=" fa fa-check-circle text-primary boost-table"></i> Weekly Newsletter (x2) </td> </tr> <tr class="table-bottom"> <td class=" "> <i class=" fa fa-check-circle text-primary boost-table"></i> Featured Project Listing </td> </tr> <tr class="table-bottom"> <td class=" "> <i class=" fa fa-check-circle text-primary boost-table"></i> Access to Dashboard Metrics </td> </tr> <tr class="table-bottom"> <td> <i class=" fa fa-check-circle text-primary boost-table"></i> Featured Image Banner (7 Days) </td> </tr> </tbody> </table> </div> <div class="boost-button boost-middle-btn"> <a href="#modal-login" data-toggle="modal" class="btn btn-xl modal-link plan-submit">Purchase Premium</a> </div> </div> </div> <div class="col-sm-4"> <div class="boost-tier-box shadow"> <div class="text-center price-box"> <p class="price-title"> <strong>&#160;Elite</strong> </p> <p class="price-lg"> <sup class="super-money">$</sup>69 </p> <p class="boost-small hidden-md hidden-sm hidden-xs"> <i>Social Media Posts Every 7 Days (Custom Available)</i> </p> </div> <div class="table-responsive"> <table class="table"> <tbody class="boost-table-row"> <tr class="table-bottom"> <td class=" "> <i class=" fa fa-check-circle text-primary boost-table"></i> Social Media Posts (x4) </td> </tr> <tr class="table-bottom"> <td class=" "> <i class=" fa fa-check-circle text-primary boost-table"></i> Weekly Newsletter (x4) </td> </tr> <tr class="table-bottom"> <td class=" "> <i class=" fa fa-check-circle text-primary boost-table"></i> Featured Project Listing </td> </tr> <tr class="table-bottom"> <td class=" "> <i class=" fa fa-check-circle text-primary boost-table"></i> Access to Dashboard Metrics </td> </tr> <tr class="table-bottom"> <td class=" "> <i class=" fa fa-check-circle text-primary boost-table"></i> Featured Image Banner </td> </tr> <tr class="table-bottom"> <td class=" "> <i class=" fa fa-check-circle text-primary boost-table"></i> Landing Page Featured Project </td> </tr> <tr class="table-bottom"> <td> <i class=" fa fa-check-circle text-primary boost-table"></i> Media List (500+ Contacts) </td> </tr> </tbody> </table> </div> <div class="boost-button"> <a href="#modal-login" data-toggle="modal" class="btn btn-xl modal-link plan-submit">Purchase Elite</a> </div> </div> </div> </div> <div class="row"> <h2 class="landing-header text-center" style="margin-top:50px;">Social Media Marketing</h2> <div class="col-lg-offset-2 col-lg-8 col-md-12 text-left"> <p class="landing-description">Figuring out how to advertise through social media can be a full-time job. We want to simplify the process and do the work for you. To help you gain exposure for your project we will run your social media advertisement campaign based on a quick survey from you for FREE. We will not take a cut and 100% of your money will go back to your project. We will provide you with detailed metrics on every social media post. Please <a class="page-scroll home-links" href="#contact">contact us</a> with any concerns or questions. We know your money was earned through hard work and we want to make every dollar count. Start with a small amount and let us prove it’s worth. Our minimum Social Media Marketing purchase is $25.</p> </div> </div> <div class="row hidden-md hidden-sm hidden-xs"> <div class="col-sm-3"> <a href="#modal-login" data-toggle="modal" class="modal-link"> <div class="text-center social-marketing"> <p class="social-text"> <strong>&#160;Start Small</strong> </p> <p class="social-price"> <sup class="super-money-social">$</sup>25 </p> <p class="boost-small"> <i>This is Our Minimum Amount</i> </p> </div> </a> </div> <div class="col-sm-3"> <a href="#modal-login" data-toggle="modal" class="modal-link"> <div class="text-center social-marketing"> <p class="social-text"> <strong>&#160;Gain Momentum</strong> </p> <p class="social-price"> <sup class="super-money-social">$</sup>50 </p> <p class="boost-small"> <i>Middle of the Road Price</i> </p> </div> </a> </div> <div class="col-sm-3"> <a href="#modal-login" data-toggle="modal" class="modal-link"> <div class="text-center social-marketing"> <p class="social-text"> <strong>&#160;Social Media Pro</strong> </p> <p class="social-price"> <sup class="super-money-social">$</sup>75 </p> <p class="boost-small"> <i>Most Popular Package</i> </p> </div> </a> </div> <div class="col-sm-3"> <a href="#modal-login" data-toggle="modal" class="modal-link"> <div class="text-center social-marketing"> <p class="social-text"> <strong>&#160;Backing Frenzy</strong> </p> <p class="social-price"> <sup class="super-money-social">$</sup>100 </p> <p class="boost-small"> <i>Custom Amounts Are Avail.</i> </p> </div> </a> </div> </div> <div class="col-sm-12 text-center boost-warning hidden-md hidden-sm hidden-xs"> <p class="boost-small"> <i>*There is a 2.9% + 30&#162; transaction fee applied by our payment gateway that will be taken off your advertising budget.</i> </p> </div> </div> </section>', '', '', function(opts) {
});
riot.tag2('home-content-hero', '<header alt="Back the project, not the platform. Launch your project with Krowdspace today!"> <div class="container-header"> <div class="row"> <div class="col-lg-8 col-md-12 header-left text-left"> <h1 class="header-title hidden-xs">Back the Project, not the Platform</h1> <div class="container-top-header"> <p>At Krowdspace, our goal is to unify the crowdfunding community. Whether you’re a project owner building momentum for your campaign, or a backer looking to support the next big idea, Krowdspace offers a platform to discover the latest projects from top crowdfunding sites all in one place.</p> <p>Krowdspace members will receive exclusive rewards for backing projects and project owners gain access to our easy to use promotional tools to take their campaigns to the next level.</p> <a href="#modal-login" data-toggle="modal" class="btn btn-landing">Submit a Project</a> </div> </div> <div class="col-lg-4 header-right hidden-md hidden-sm hidden-xs" style="padding-left: 0px; padding-right: 0px;"> <div class="col-sm-12 text-left containter-right-box"> <p class="text-left landing-text">Get extra rewards for backing the same crowdfunding projects you already have been or sign up and submit your own!</p> <form class="form-vertical" id="commentForm" ref="registerform" onsubmit="{submit}"> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control placeholder-color" placeholder="First Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control placeholder-color" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input ref="email" class="form-control placeholder-color" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true" type="email"> </div> <div class="form-group"> <input type="username" ref="username" class="form-control placeholder-color" placeholder="Username" required="required" aria-required="true" aria-invalid="true"> </div> <div class="input-group"> <input type="password" ref="password" placeholder="New Password" id="PASSWORD" class="masked form-control placeholder-color" required="required"> <div class="input-group-btn"> <button type="button" id="eye" class="btn btn-default"> <i class="fa fa-eye fa-lg"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter_user" class="form-control placeholder-color" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo_user" class="form-control placeholder-color" placeholder="Indiegogo Username (Optional)"> </div> <div class="check-terms checkbox"> <label> <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link home-links">Krowdspace terms</a> </label> </div> <div> <input type="submit" class="landing-submit" name="submit" value="Join Krowdspace"> </div> </form> </div> </div> </div> </div> </header>', '', '', function(opts) {


this.submit = function(e)
{
	e.preventDefault();

	var FNAME = this.refs.firstname.value,
		LNAME = this.refs.lastname.value,
		EMAIL = this.refs.email.value,
	    USERNAME = this.refs.username.value,
	    PASSWORD = this.refs.password.value,
		KSUSER = this.refs.kickstarter_user.value,
	    IGUSER = this.refs.indiegogo_user.value;

	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
	((res) =>
	{

        $('#modal-submission').modal('show');
        this.refs.registerform.reset();
	},
	(err) =>
	{
		console.log(err);
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
riot.tag2('home-content-influence', '<section id="benefits"> <div class="container"> <div class="row"> <div class="col-md-6 text-left"> <p style="margin-top: 20px"><strong>How is Krowdspace different?</strong></p> <p>Krowdspace was created on the idea of providing open and honest crowdfunding support. While promoting our own projects, we’ve experienced the broken promises of paid content and “guaranteed” success that didn’t show a return on investment. There was no proof that work had been done. Where had our money gone? Was our promotional investment helping our project gain momentum? We felt scammed. At Krowdspace, we provide transparent, detailed metrics on every purchased project boost. We are committed to the success of our community and providing easy to use and affordable tools to take your hard work to the next level. </p> <p style="margin-top: 20px"><strong>What are some benefits of submitting a project to Krowdspace?</strong></p> <p>It is well known that Kickstarter and Indiegogo make up the majority of the crowdfunding marketplace. If you choose to host your project on one of these platforms you potentially miss out on accessing the large number of backers from the other’s site. At Krowdspace we pull projects from both sites into a unified platform. That means backers can make unbiased decisions about what projects they want to support without being swayed by where the project is being hosted. A larger audience will translate into more backers!</p> <p style="margin-top: 20px"><strong>How important is Social Media advertising?</strong></p> <p>As of today, there are over 1.65 billion active social media accounts. 71% of people who have had a good social media experience with a given product are likely to recommend that brand. 20% of people who have recommended a brand are likely to make a product purchase. Navigating through advertising software and providing the right content to a targeted user base can be a challenge. At Krowdspace we do the heavy lifting for you. We can take your marketing budget and create a targeted campaign for you at a cost much lower than that offered by our competitors. 100% of your money will be used to advertise your project and not line our pocketbooks. We offer full transparency and will show you exactly where your money is being spent.</p> </div> <div class="col-md-6 text-left faq-sm"> <p style="margin-top: 20px"><strong>How much does it cost to submit a project on Krowdspace?</strong></p> <p>Submitting a project to Krowdspace is free. As a Krowdspace project owner you receive access to our innovative dashboard which includes detailed metrics on your projects performance. All you need to get started is a live crowdfunding project on either Kickstarter or Indiegogo and a commitment to offer an exclusive reward to backers who fund your project through Krowdspace. Find out more about <a href="#modal-reward" data-toggle="modal" class="home-links">backer rewards</a> or <a href="#modal-login" data-toggle="modal" class="home-links">submit a project here</a>.</p> <p style="margin-top: 20px"><strong>What can I expect as a project backer when becoming a member at Krowdspace?</strong></p> <p>As a project backer on Krowdspace, rewards are instant. All you need to do is sign up and discover projects with our easy to use platform. Keep backing projects as you normally would, but now as a Krowdspace member, you earn exclusive extra rewards! It is as easy as that and there is no extra work on your end.</p> <p style="margin-top: 20px"><strong>How can Krowdspace help my project become successful?</strong></p> <p>In addition to combining the two major crowdfunding communities into one unified platform, we also offer additional <a href="#modal-boost" data-toggle="modal" class="modal-link home-links">project boosts</a> for campaigns. For a small fee, project boosts will provide promotional benefits such as being featured on our social media channels or becoming a highlighted project listing within high traffic areas of our site. Krowdspace will also give you free access to our Press Release template and combined with our detailed media list with over 500 contacts you can get the media exposure that is essential for every crowdfunding campaign.</p> </div> </div> </div> </section>', '', '', function(opts) {
});
riot.tag2('home-navigation', '<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top"> <div class="container"> <div class="navbar-header page-scroll"> <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-collapse"> <span class="sr-only">Toggle navigation</span><i class="fa fa-bars"></i> </button> <a class="page-scroll" href="#page-top"><img class="navbar-logo" src="img/krowdspace-explore.png" style="width:55px;"></a> </div> <div class="collapse navbar-collapse" id="navigation-collapse"> <ul class="nav navbar-nav navbar-right"> <li class="hidden"> <a href="#page-top"></a> </li> <li> <a href="/#/explore">Explore</a> </li> <li> <a show="{!logged_in}" href="#modal-login" class="modal-link" data-toggle="modal">Submit Project</a> </li> <li> <a show="{logged_in}" href="/#/account/boosts" class="modal-link">Boost Project</a> </li> <li> <a show="{logged_in}" href="/#/account/dashboard">Dashboard</a> </li> <li> <a show="{!logged_in}" class="page-scroll" href="#benefits">Benefits</a> </li> <li> <a show="{!logged_in}" class="page-scroll" href="#boost">Boosts</a> </li> <li> <a show="{!logged_in}" href="#modal-login" class="modal-link" data-toggle="modal">Login</a> </li> <li> <a show="{logged_in}" href="/#/account/profile">Profile</a> </li> </ul> </div> </div> </nav>', '', '', function(opts) {
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

riot.tag2('home-slider-clients', '<img src="img/content/page-break.jpg" class="hidden-sm hidden-xs auto-width"> <aside class="hidden-sm hidden-xs"> <div class="container text-center"> <section class="center slider"> <div each="{indexClients}"> <a href="{imageURL}" target="_blank"><img riot-src="{image}" alt="{imageAlt}"></a> </div> </section> </div> </aside>', '', '', function(opts) {
        this.indexClients = [
        { image:"img/clients/digital-ocean-logo.png", imageURL:"https://m.do.co/c/0d0a3c0340d3", imageAlt:"Digital Ocean"},
        { image:"img/clients/ryanv-logo.png", imageURL:"http://ryanvillasanti.com", imageAlt:"Ryan Villasanti"},
        { image:"img/clients/lb-logo.png", imageURL:"https://LalaBahari.com", imageAlt:"Lala Bahari Small"},
        { image:"img/clients/collective-logo.png", imageURL:"/?giveaway=1", imageAlt:"Collective Expression"},
        { image:"img/clients/pepo-logo.png", imageURL:"https://PepoBrand.com", imageAlt:"Pepo Brand"},
        { image:"img/clients/krowdspace-logo.png", imageURL:"/?giveaway=1", imageAlt:"Krowdspace"},
        ]

    this.on('mount', function()
    {
        $('.center').slick({
        centerMode: true,
        arrows: false,
        centerPadding: '60px',
        slidesToShow: 5,
        autoplay: true,
        autoplaySpeed: 3000,
        });
    });
});

riot.tag2('home-slider-projects', '<div class="container hidden-md hidden-sm hidden-xs"> <div class="single-item slider"> <div each="{indexProject}" class="slick-image" style="display:flex;"> <div class="col-sm-7"> <a href="{imageURL}"><img riot-src="{image}" alt="{imageAlt}"></a> </div> <div class="col-sm-5"> <p><strong>{projectTitle}</strong></p> <p>{projectDescription}</p> <br> <p><strong>Reward:</strong> {reward}</p> <div class="no-gutter funding-box"> <div class="col-sm-6"> <p class="card-text">${goal}</p> </div> <div class="col-sm-6 text-right"> <p class="card-text">{category}</p> </div> <div class="col-sm-12"> <div class="progress-index"> <div class="progress-bar" role="progressbar" riot-style="width: {progressBar}%" aria-valuenow="{progressBar}" aria-valuemin="0" aria-valuemax="100"> </div> </div> </div> <div class="col-sm-2"> <p class="card-text">{progressBar}%</p> <p class="card-text">Funded</p> </div> <div class="col-sm-3 text-center"> <p class="card-text">${pledged}</p> <p class="card-text">Pledged</p> </div> <div class="col-sm-3 text-center"> <p class="card-text">{backers}</p> <p class="card-text">Backers</p> </div> <div class="col-sm-4 text-right"> <p class="card-text">{days}</p> <p class="card-text">Days Left</p> </div> </div> </div> </div> </div> </div>', '', '', function(opts) {
        this.indexProject = [
        { image:"/img/projects/bahari-bag.jpg",
        imageURL:"/project.html",
        imageAlt:"Bahari Beach bag on the beach",
        projectTitle:"Lala Bahari: The First Convertible Tote Bag of its Kind",
        projectDescription:"Made in Africa to support the local communities. Our bag converts from a towel or wrap into a tote through an innovative rope mechanism",
        reward:"All pledges over $50 will receive a Bahari Sarong and Scarf.",
        goal:"40,000",
        category:"Design",
        progressBar:'26',
        pledged:'10,544',
        backers:'50',
        days:'19'},

        { image:"/img/projects/computer.jpg",
        imageURL:"/project.html",
        imageAlt:"Computer and accessories sitting on a desk",
        projectTitle:"Creating A Modular Computer App for All of Your Organizing Needs",
        projectDescription:"We bring a way to organize your day and connect all of your devices through one app.",
        reward:"All Krowdspace members will receive a free year subscription to our organizing app.",
        goal:"100,000",
        category:"Tech",
        progressBar:'46',
        pledged:'45,798',
        backers:'132',
        days:'14'},

        { image:"/img/projects/pizza.jpg",
        imageURL:"/project.html" ,
        imageAlt:"Pizza slice sitting on a table with condiments",
        projectTitle:"The Only Restaurant to use Recipes From our Guests",
        projectDescription:"Dining guests can submit their own recipes and our community will vote and if selected will be featured at our restaurant.",
        reward:"All Krowdspace members will receive our Cookbook.",
        goal:"50,000",
        category:"Food",
        progressBar:'83',
        pledged:'41,765',
        backers:'78',
        days:'2'},
        ]

        this.on('mount', function()
        {
          $('.single-item').slick({
            dots: false,
            arrows:false,
            infinite: true,
            autoplay: true,
            autoplaySpeed: 8000,
          });
        });
});

riot.tag2('home', '<home-navigation></home-navigation> <home-content-hero></home-content-hero> <home-content-benefits></home-content-benefits> <home-slider-projects></home-slider-projects> <home-content-influence></home-content-influence> <home-content-boosts></home-content-boosts> <home-slider-clients></home-slider-clients> <global-footer></global-footer> <home-modal-boosts></home-modal-boosts> <home-modal-login></home-modal-login> <home-modal-rewards></home-modal-rewards> <home-modal-verification></home-modal-verification> <home-modal-submission></home-modal-submission> <global-analytics-google id="UA-92584644-1"></global-analytics-google>', 'home,[data-is="home"]{ background-color: #fff }', '', function(opts) {
krowdspace.setDomain("api.krowdspace.com");
});
riot.tag2('home-modal-boosts', '<div id="modal-boost" class="modal fade"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button> <p class="modal-heading">Single Boosts And Descriptions</p> </div> <div class="modal-body"> <p>Welcome to our single boost options for your live crowdfunding project. At Krowdspace we have experienced first-hand how difficult it can be to launch a crowdfunding campaign. We want to make the marketing of your project as easy as possible. If you are still on the fence about making a purchase, we recommend signing up and exploring our member’s area to see the true value of what we are offering. For a limited time, we are offering free social media posts and featured project packages on our landing page! For details and to see if you qualify please <a class="home-links" href="mailto:Mason@Krowdspace.com">contact us</a> directly. If you would like to purchase one of these single boost items please follow the "Make A Purchase" button and choose from the options.</p> <div class="row text-left no-gutter"> <div class="col-md-4"> <div class="boost-pricing"> <p class="text-center"><strong>Social Media Posts</strong></p> <p class="text-center">$10</p> <p class="boost-description">We will post your project on our 4 social media channels. By purchasing this boost, you will see your project on our Facebook, Twitter, Pinterest and Instagram. All you need to provide is an image that represents your project. Our default message will be your project description unless stated otherwise.</p> </div> </div> <div class="col-md-4"> <div class="boost-pricing"> <p class="text-center"><strong>Newsletter Feature</strong></p> <p class="text-center">$10</p> <p class="boost-description">Your project will be sent to our highly targeted Krowdspace audience. It will be featured on our weekly newsletter and we will have a brief description and other URL\'s that will benefit your project. To assure valid emails and reduce our bounce rate, we use a double opt-in process for our newsletter subscribers.</p> </div> </div> <div class="col-md-4"> <div class="boost-pricing"> <p class="text-center"><strong>Featured Project Listing</strong></p> <p class="text-center">$15/30 Days</p> <p class="boost-description">Your crowdfunding project will be listed on the main search page of our explore area for 30 days or the duration of your project, whichever is less. It will have priority filtering and a "Featured" banner in the corner.</p> </div> </div> </div> <div class="row text-left no-gutter"> <div class="col-md-4"> <div class="boost-pricing"> <p class="text-center"><strong>Explore Page Banner</strong></p> <p class="text-center">$15/30 Days</p> <p class="boost-description">Your crowdfunding project will be listed on our explore page rotating banner. This large format will attract new backers to your project. We will rotate the order of banner features randomly so your project will have the opportunity to show up first upon opening the page. We will feature your project for 30 days or the duration of your project, whichever is less.</p> </div> </div> <div class="col-md-4"> <div class="boost-pricing"> <p class="text-center"><strong>Landing Page Banner</strong></p> <p class="text-center">$10/1 Week</p> <p class="boost-description">Your crowdfunding project will be listed on our landing page which receives the most traffic. This large format will attract new backers to your project. We will rotate the order randomly so your project will have the opportunity to show up first upon opening the page. We will feature your project for 1 week.</p> </div> </div> <div class="col-md-4"> <div class="boost-pricing"> <p class="text-center"><strong>Metrics Dashboard</strong></p> <p class="text-center">Free</p> <p class="boost-description">We have created a Metrics Dashboard to edit and view your project on Krowdspace. We provide project metrics such as page views, page clicks and project backers. In addition, you can also unlock social media post metrics and our targeted media contact list.</p> </div> </div> </div> <div class="row text-left no-gutter"> <div class="col-md-4"> <div class="boost-pricing"> <p class="text-center"><strong>Social Media Marketing</strong></p> <p class="text-center">$25+</p> <p class="boost-description">Krowdspace will use your marketing budget and help apply it to a social media marketing campaign. We will make a targeted campaign based on a short form and launch it on our social channels. We will not take any additional fees other than our payment gateway fee.</p> </div> </div> <div class="col-md-4"> <div class="boost-pricing"> <p class="text-center"><strong>Media List (500+ Contacts)</strong></p> <p class="text-center">$20</p> <p class="boost-description">Most companies that provide media lists give you thousands of names and no direction. At Krowdspace our media list consists of verified contacts from the largest companies out there. We provide up to 10 contacts from every company and a list of places to submit your crowdfunding video.</p> </div> </div> <div class="col-md-4"> <div class="boost-pricing"> <p class="text-center"><strong>Press Release Guide</strong></p> <p class="text-center">Free</p> <p class="boost-description">Check out our Press Release Guide and use our format to write a winning Press Release you can send out to our media list. Take our free example and turn it into your own. Get the publicity you need for your project.</p> </div> </div> </div> <div class="row text-center"> <button type="button" class="text-center modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"></div> </div>', '', '', function(opts) {
        this.on('mount', function()
		{
			var url = window.location.href;
			if (url.indexOf('?boost=1') != -1)
			{
				$("#modal-boost").modal('show');
                $('#modal-boost').fadeIn(100);
            };
        });
});
riot.tag2('home-modal-login', '<div id="modal-login" class="modal fade"> <div class="krowdspace-modal col-lg-offset-1 col-md-5 col-md-offset-0 col-sm-7 col-sm-offset-2"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Krowdspace Login</p> </div> <div class="modal-body"> <div id="errorLog" class="alert alert-danger alert-dismissable fade in" style="display:none;"> <a class="close" onclick="$(\'.alert\').hide()"><i class="fa fa-close"></i></a> <strong>Error:</strong> Invalid username or password. </div> <form id="CustomerLoginForm" class="form-vertical no-gutter" onsubmit="{loginSubmit}"> <div> <input type="text" class="form-control placeholder-color" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off"> </div> <div class="col-xs-8 form-group"> <input type="password" class="form-control placeholder-color" placeholder="Password" value="" ref="passwordlogin"> </div> <div class="col-xs-4 form-group" style="padding-left:10px;"> <button class="button-login" type="submit">Login</button> </div> <div class="col-xs-6 check-terms checkbox text-left" style="margin:10px 0px 0px 0px;"> <label> <input type="checkbox" id="checkbox">Remember Me </label> </div> <div class="col-xs-6 check-terms checkbox text-right" style="font-size: 14px; margin:10px 0px 0px 0px;"> <span>Forgot Password?</span> </div> </form> <div class="clearfix"></div> </div> </div> </div> <div class="krowdspace-modal col-lg-5 col-md-6 hidden-sm hidden-xs"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Krowdspace Register</p> </div> <div class="modal-body" style="padding-top: 0px;"> <p class="register-text text-left">If you have not signed up with Krowdspace please fill out the below form. You will need to sign up with Krowdspace before you can submit or view any projects.</p> <form class="form-vertical" id="commentForm" ref="modalform" onsubmit="{submit2}"> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control placeholder-color" placeholder="First Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control placeholder-color" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <input ref="email" class="form-control placeholder-color" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true" type="email"> </div> <div class="form-group"> <input type="username" ref="username" class="form-control placeholder-color" placeholder="Username" required="required" aria-required="true" aria-invalid="true"> </div> <div class="input-group"> <input id="PASSWORD2" type="password" ref="password" placeholder="New Password" class="masked form-control placeholder-color" required="required"> <div class="input-group-btn"> <button type="button" id="eye2" class="btn btn-default"> <i class="glyphicon glyphicon-eye-open"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter_user" class="form-control placeholder-color" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo_user" class="form-control placeholder-color" placeholder="Indiegogo Username (Optional)"> </div> <div class="check-terms checkbox text-left"> <label> <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link home-links">Krowdspace terms</a> </label> </div> <div class="register-button-box"> <input type="submit" class="button-login" name="submit" value="Register"> </div> </form> <div class="clearfix"></div> </div> </div> </div> </div>', '', '', function(opts) {


this.on('mount', function()
{
	function show()
	{
		var pass = document.getElementById('PASSWORD2');
		pass.setAttribute('type', 'text');
	}
	function hide()
	{
		var pass = document.getElementById('PASSWORD2');
		pass.setAttribute('type', 'password');
	}

	var pwShown = 0;

	document.getElementById("eye2").addEventListener("click", function ()
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

this.loginSubmit = function(e)
{

	e.preventDefault();

	var USERNAME = this.refs.usernamelogin.value,
	    PASSWORD = this.refs.passwordlogin.value;

	STAYLOGGED = true;

	console.log(USERNAME);
	console.log(PASSWORD);

	krowdspace.v1.login(USERNAME, PASSWORD, STAYLOGGED).then
	((res) =>
	{
		this.logged_in = true;
		this.update();
        $('#modal-login').modal('hide');
        window.location.replace("/#/account/dashboard");
	},
	(err) =>
	{
		console.log(err);
        $("#errorLog").show();
	});
}.bind(this)

this.submit2 = function(e)
{
	e.preventDefault();

	var FNAME = this.refs.firstname.value,
		LNAME = this.refs.lastname.value,
		EMAIL = this.refs.email.value,
		USERNAME = this.refs.username.value,
		PASSWORD = this.refs.password.value,
		KSUSER = this.refs.kickstarter_user.value,
		IGUSER = this.refs.indiegogo_user.value;
        this.refs.modalform.reset();

	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
	((res) =>
	{
		$('#modal-login').modal('hide');
        this.refs.modalform.reset();
        $('#modal-submission').modal('show');
	},
	(err) =>
	{
		console.log(err);
	});
}.bind(this)
});
riot.tag2('home-modal-rewards', '<div id="modal-reward" class="modal fade"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button> <p class="modal-heading">Reward Examples</p> </div> <div class="modal-body"> <p>For every project that is submitted to Krowdspace an exclusive reward will need to be provided for backers who support you through our platform. Krowdspace will look over each submission and the reward will need to be approved by our staff. This can take up to 24 hours. Make sure you can achieve these extra rewards when your project is successful. You will be obligated to fulfill any extra rewards listed on your Krowdspace project profile.</p> <p>One of the most common rewards is offering an extra 10%-20% off a backer’s tier pledge. You will need to make sure that it is clear for all backers to pledge a custom backing amount in the $1 "Thank You" area. They will need to put in the correct tier amount minus the 10%-20% you have chosen. Make sure to take into account your shipping costs. Another option would be to refund that 10%-20% on the tail end of your project after it has been completed. This is just an example amount and you can decide what reward amount or add-on you would like to offer. Here are some additional examples: </p> <ul class="example-reward"> <li>All Krowdspace members will get a free upgrade to the next tier automatically.</li> <li>Krowdspace members who back this item will get to choose from additional colors that won’t be available to anyone else.</li> <li>If you back our 3-item tier we will send you an extra item.</li> <li>All Krowdspace members will be given protective cases with your pledge item.</li> <li>All Krowdspace members will receive free shipping. Pledge the custom amount for the tier you would like minus the shipping cost.</li> <li>All Krowdspace members who back over $50 will receive another item free.</li> <li>All Krowdspace members will have continued access to Early Bird Pricing. Pledge the Early Bird Price in the custom pledge area.</li> <li>All Krowdspace members will receive 15% off their pledges. Select the custom pledge amount and put in the tier you would like minus 15%.</li> <li>All Krowdspace members will be given a custom engraved frisbee.</li> </ul> <p>Keep it simple and make it creative. People love to see that their pledge is helping your project come to life and personal touches make all the difference. if you have any questions about rewards please <a class="home-links" href="mailto:Mason@Krowdspace.com">contact us</a>.</p> <div class="text-center"> <button type="button" class="text-center modal-close" data-dismiss="modal" data-dismiss="modal">Close</button> </div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
        this.on('mount', function()
        {
            var url = window.location.href;
            if (url.indexOf('?reward=1') != -1)
            {
                $("#modal-reward").modal('show');
                $('#modal-reward').fadeIn(100);
            };
        });
});
riot.tag2('home-modal-verification', '<div id="modal-verification" class="modal fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content text-center"> <div class="modal-header"> </div> <div class="modal-body"> <p class="modal-heading verify-heading">Confirm Your Email Address</p> <p class="verify-message">A confirmation email has been sent to your inbox. Click on the confirmation link to verify your account.</p> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
        this.on('mount', function()
        {
            var url = window.location.href;
            if (url.indexOf('?verify=1') != -1)
            {
                $("#modal-verification").modal('show');
                $('#modal-verification').fadeIn(100);
            };
        });
});