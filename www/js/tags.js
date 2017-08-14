riot.tag2('admin-modal-login', '<div class="container dark-modal"> <div class="krowdspace-modal col-lg-offset-3 col-md-6"> <div id="modal"> <div class="modal-body modal-custom"> <form onsubmit="{loginSubmit}"> <div class="col-sm-12 text-left modal-box-alt"> <p class="modal-heading modal-heading-alt">Krowdspace Login</p> <div id="errorLog" class="alert alert-danger alert-dismissable fade in"> <a class="close" onclick="$(\'.alert\').hide()"><i class="fa fa-close"></i></a> <strong>Error:</strong> Invalid username or password. </div> <div class="has-feedback"> <label class="control-label" for="username"></label> <input type="text" class="form-control box-radius" id="username" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off"> <span class="fa fa-user form-control-feedback"></span> </div> <div class="has-feedback"> <label class="control-label" for="password"></label> <input type="password" class="form-control box-radius" id="password" placeholder="Password" ref="passwordlogin" autocorrect="off" autocapitalize="off"> <span class="fa fa-lock form-control-feedback"></span> </div> <div class="col-xs-6 login-box text-left"> <label> <input class="check-box" type="checkbox" ref="checkbox" id="checkbox">Remember Me </label> </div> <div class="col-xs-6 login-box text-right"> <a onclick="{registerPassword}"><p class="forgot-pass">Forgot Password?</p></a> </div> </div> <div class="text-center"> <input type="submit" class="landing-submit" name="submit" value="Login"> </div> </form> <div class="text-center"> <p class="login-float-text">Are you in the right place? <a class="function-link" href="/#/explore">Explore Page!</a></p> </div> </div> </div> </div> </div>', '', '', function(opts) {

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
riot.tag2('admin-page-panel', '<div class="col-sm-12 text-left container-page shadow"> <div class="col-sm-12 no-gutter" style="padding: 10px 0px;"> <div class="col-sm-1"> <p style="font-size: 13px;">NAME</p> </div> <div class="col-sm-6"> <p style="font-size: 13px;">REWARD</p> </div> <div class="col-sm-1 text-center"> <p style="font-size: 13px;">FEATURE</p> </div> <div class="col-sm-1 text-center"> <p style="font-size: 13px;">EXPLORE</p> </div> <div class="col-sm-1 text-center"> <p style="font-size: 13px;">LANDING</p> </div> <div class="col-sm-1 text-center"> <p style="font-size: 13px;">SOCIAL</p> </div> <div class="col-sm-1 text-center"> <p style="font-size: 13px;">REWARD</p> </div> </div> <div class="col-sm-12 no-gutter" style="border-bottom: 1px solid pink; padding: 3px 0px;" each="{adminData}"> <div class="col-sm-1"> <p style="font-size: 13px; margin: 0px;">{unique_id}</p> </div> <div class="col-sm-6"> <p style="font-size: 13px; margin: 0px;">{project_data.info_data.reward}</p> </div> <div class="col-sm-1 text-center"> <input checked="{project_data.info_data.featured}" input type="checkbox"> </div> <div class="col-sm-1 text-center"> <input checked="{project_data.info_data.explore}" input type="checkbox"> </div> <div class="col-sm-1 text-center"> <input checked="{project_data.info_data.landing}" input type="checkbox"> </div> <div class="col-sm-1 text-center"> <input checked="{project_data.info_data.social}" input type="checkbox"> </div> <div class="col-sm-1 text-center"> <input checked="{project_data.info_data.reward}" input type="checkbox"> </div> </div> </div>', '', '', function(opts) {
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


riot.tag2('admin-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container dashboard"> <global-logout show="{logged_in}" uri="{opts.uri}"></global-logout> <div class="col-sm-10 col-sm-offset-1 padding-reset"> <div class="row dash-row no-gutter shadow"> <admin-page-panel></admin-page-panel> </div> </div> </div> <global-footer></global-footer>', '', '', function(opts) {
});     
riot.tag2('admin', '<admin-modal-login show="{!logged_in}"></admin-modal-login> <admin-page show="{logged_in}" uri="{opts.uri}"></admin-page>', '', '', function(opts) {

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


riot.tag2('dashboard-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <dashboard-edit-reward user="{user}" project="{project}"></dashboard-edit-reward> <div class="container dashboard"> <div class="shadow text-left project-add-container"> <p class="project-add-text">PROJECTS</p> <div class="project-yield text-center" each="{p, index in projects}"> <project-button onclick="{makeButtF(p)}" project="{p}">{project.unique_id}</project-button> </div> <a href="/#/account/register"> <i class="fa fa-plus project-add-btn filterdark"></i> </a> </div> <dashboard-project-buttons class="hidden-xs" user="{user}" project="{project}"></dashboard-project-buttons> <div class="col-sm-10 col-sm-offset-1 padding-reset"> <div class="row dash-row no-gutter shadow"> <dashboard-project-image show="{project}" project="{project}"></dashboard-project-image> <dashboard-user-image show="{!project}"></dashboard-user-image> <dashboard-project-user show="{project}" index="{projectIndex + 1}" user="{user}" project="{project}"></dashboard-project-user> <dashboard-user show="{!project}" user="{user}"></dashboard-user> </div> <div show="{project}" class="row dash-row no-gutter"> <dashboard-project-title project="{project}"> </dashboard-project-title> <dashboard-project-reward project="{project}"></dashboard-project-reward> <dashboard-project-hours project="{project}"></dashboard-project-hours> </div> <div show="{project}" class="row dash-row no-gutter"> <dashboard-project-featured project="{project}"> </dashboard-project-featured> </div> <div class="row dash-row no-gutter shadow"> <dashboard-project-wysiwyg show="{project}" project="{project}"></dashboard-project-wysiwyg> </div> <div class="row dash-row no-gutter shadow"> <dashboard-project-bar show="{project}" project="{project}"></dashboard-project-bar> <dashboard-user-bar show="{!project}"></dashboard-user-bar> </div> </div> </div> <dashboard-featured-purchase user="{user}" project="{project}"></dashboard-featured-purchase> <dashboard-explore-purchase user="{user}" project="{project}"></dashboard-explore-purchase> <dashboard-landing-purchase user="{user}" project="{project}"></dashboard-landing-purchase> <dashboard-social-purchase user="{user}" project="{project}"></dashboard-social-purchase> <dashboard-edit-profile user="{user}" project="{project}"></dashboard-edit-profile> <dashboard-edit-reward user="{user}" project="{project}"></dashboard-edit-reward> <dashboard-delete-project user="{user}" project="{project}"></dashboard-delete-project> <dashboard-refresh-content user="{user}" project="{project}"></dashboard-refresh-content> <dashboard-image-project user="{user}" project="{project}"></dashboard-image-project> <dashboard-project-status></dashboard-project-status> <global-footer></global-footer>', '@media screen and (max-width: 767px) { dashboard-page .shadow,[data-is="dashboard-page"] .shadow{ -webkit-box-shadow: none; -moz-box-shadow: none; } dashboard-page .project-add-btn,[data-is="dashboard-page"] .project-add-btn{ width: 35px; padding: 7px 5px 9px 5px; display: inline-block; font-size: 15px; border: 1px solid #3f434f; border-left: none; } dashboard-page .project-add-btn:hover,[data-is="dashboard-page"] .project-add-btn:hover{ border: 1px solid #3f434f; border-left: none; } }', '', function(opts) {
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
riot.tag2('dashboard', '<dashboard-page show="{logged_in}"></dashboard-page>', '', '', function(opts) {

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

riot.tag2('dashboard-project-buttons', '<div class="col-sm-1 text-right no-gutter share-container-right"> <div class="share-box shadow" class="modal-link" data-toggle="modal"> <a onclick="{krowdspaceLogout}" title="Krowdspace Logout"> <span class="fa-stack fa-lg icon-reset krowdspace-back filterdark"> <i class="fa fa-square fa-stack-2x krowdspace"></i> <i class="fa fa-sign-out fa-stack-1x fa-inverse share-icon-push"></i> </span> </a> <a show="{project}" href="#delete-project" title="Krowdspace Remove Project" data-toggle="modal"> <span class="fa-stack fa-lg icon-reset krowdspace-back-alt filterdark"> <i class="fa fa-square fa-stack-2x krowdspace-alt"></i> <i class="fa fa-trash fa-stack-1x fa-inverse share-icon-push"></i> </span> </a> <a show="{indiegogoImage}" href="#indiegogo-image" title="Krowdspace Image Size" data-toggle="modal"> <span class="fa-stack fa-lg icon-reset krowdspace-back-warning filterdark"> <i class="fa fa-square fa-stack-2x krowdspace-warning"></i> <i class="fa fa-exclamation fa-stack-1x fa-inverse share-icon-push"></i> </span> </a> </div> </div>', '', '', function(opts) {
    this.on('update', ()=>
         {
            if(!opts.project)
                 return;

            let res = {data: [opts.project]};

            if(res.data[0].project_data.meta_data.mainImg)
            {
                indiegogoImage = false;
            }else{
                indiegogoImage = true;
            };

         });
    this.krowdspaceLogout = function()
    {
        krowdspace.v1.logout().then((res) =>
        {
            window.location.replace("/");
        },
        (err) =>
        {

        });
    }.bind(this);
});
riot.tag2('project-button', '<div class="project-btn filterdark"> <yield></yield> </div>', '', '', function(opts) {
		this.project = opts.project;
});
riot.tag2('dashboard-delete-project', '<div id="delete-project" class="modal container fade"> <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal" class="no-gutter"> <form role="form" onsubmit="{deleteProject}"> <div class="modal-box modal-max-box-alt"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">Remove Project</p> <p class="text-left edit-text-title">Are you sure that you want to delete your crowdfunding project from Krowdspace? If you delete this project from Krowdspace you will lose all information and features associated with the project <span class="project-id">{projectID}</span>.</p> <p class="text-left edit-text-title">Your project "{projectTitle}: {projectDescription}" will be deleted from Krowdspace.</p> </div> <div class="text-center modal-max-box-alt"> <input class="landing-submit" type="submit" name="submit" value="Delete"> </div> </form> </div> </div> </div>', '', '', function(opts) {
      this.on('update', ()=>
      {
          if(!opts.project)
              return;

          let res = {data: [opts.project]};
          this.projectID = res.data[0].unique_id;
          this.projectTitle = res.data[0].project_data.meta_data.title;
          this.projectDescription = res.data[0].project_data.meta_data.description;

          this.deleteProject = function(e)
            {

                e.preventDefault();

                krowdspace.projects.delete(this.projectID).then
                ((res) =>
                {
                    $('#delete-project').modal('hide');
                    window.location.reload();
                },
                (err) =>
                {
                    console.log(err);
                });
            }.bind(this)

      });

});
riot.tag2('dashboard-edit-profile', '<div id="edit-profile" class="modal container fade"> <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="no-gutter"> <form role="form" onsubmit="{submitUser}"> <div class="modal-box modal-max-box"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">Edit Profile Information</p> <div class="form-group form-split-right edit-margin"> <p class="text-left edit-text-title">First Name</p> <input ref="firstname" riot-value="{firstname}" type="text" class="form-control placeholder-color" required minlength="1"> </div> <div class="form-group form-split-left edit-margin"> <p class="text-left edit-text-title">Last Name</p> <input type="text" ref="lastname" class="form-control placeholder-color" riot-value="{lastname}" required minlength="1"> </div> <div class="clearfix"></div> <div class="form-group"> <p class="text-left edit-text-title">Kickstarter Username</p> <input ref="kickstarterProfile" class="form-control placeholder-color" riot-value="{kickstarterProfile}" aria-required="true" aria-invalid="true"> </div> <div class="form-group"> <p class="text-left edit-text-title">Indiegogo Username</p> <input ref="indiegogoProfile" class="form-control placeholder-color" riot-value="{indiegogoProfile}" aria-required="true" aria-invalid="true"> </div> </div> <div class="text-center modal-max-box"> <input class="landing-submit" type="submit" name="submit" value="Update"> </div> </form> </div> </div> </div> </div> </div>', '', '', function(opts) {
      krowdspace.users.user().then((res)=>
          {
          this.firstname = res.data.user_data.fname;
          this.lastname = res.data.user_data.lname;
          this.kickstarterProfile = res.data.user_data.ksuser;
          this.indiegogoProfile = res.data.user_data.iguser;
          this.update();
          },
          (err)=>
          {

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
                    iguser: this.refs.kickstarterProfile.value,
                    ksuser: this.refs.indiegogoProfile.value,

                };
                krowdspace.users.set_user(projectData).then((res)=>
                {
                    window.location.reload();
                },
                (err)=>
                {

                });
            },
            (err)=>
            {

            }
        );
      }.bind(this);
});
riot.tag2('dashboard-edit-reward', '<div id="edit-reward" class="modal container fade"> <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal" class="no-gutter"> <form id="rewardUpgrade" role="form" onsubmit="{submitReward}"> <div class="modal-box modal-max-box-alt"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">Edit Reward Information</p> <p class="text-left edit-text-title">Updating your project reward information will remove your project from our Explore Page and it can take up to 24 hours to be verified and republished.</p> <div class="form-group"> <p class="text-left edit-text-title">Please provide an exclusive reward for our Krowdspace users.</p> <input ref="rewardtext" class="form-control placeholder-color" riot-value="{rewardtext || \'\'}" name="reward" required maxlength="110"> </div> <div show="{indiegogoReward}" class="form-group"> <p class="text-left edit-text-title">Modify your Indiegogo Secret Perk URL.</p> <input ref="indiegogoPerk" class="form-control placeholder-color" riot-value="{indiegogoPerk || \'\'}" name="perk" required> </div> <div class="form-group"> <p class="text-left edit-text-title">Does your reward have a value or is it a discount?</p> <select ref="rewardoption" class="form-control" name="rewardOption"> <option disabled selected value>Choose an Option</option> <option value="Yes">Reward has a Value</option> <option value="No">Reward is a Discount</option> </select> </div> <div class="form-group"> <p class="text-left edit-text-title">Please estimate the value of your reward.</p> <input ref="rewardvalue" class="form-control placeholder-color" name="rewardAmount" riot-value="{rewardvalue || \'\'}" required type="{\'number\'}"> </div> </div> <div class="text-center modal-max-box-alt"> <input class="landing-submit" type="submit" name="submit" value="Update"> </div> </form> </div> </div> </div>', '', '', function(opts) {
      this.on('update', ()=>
      {
          if(!opts.project)
              return;

          let res = {data: [opts.project]};

          this.rewardtext = res.data[0].project_data.info_data.reward;
          this.rewardvalue = res.data[0].project_data.info_data['reward_ammount'];

          if(res.data[0].project_data.info_data.ig_reward == 'Not Valid'){
            indiegogoReward = false;
            this.indiegogoPerk = 'Not Valid';
          }else{
            indiegogoReward = true;
            this.indiegogoPerk = res.data[0].project_data.info_data.ig_reward;
          }
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
          let project = pRes.data[0].unique_id,
              projectData =
              {
                  project_data:
                  {
                     info_data:
                      {
                          reward: this.refs.rewardtext.value,
                          reward_ammount: this.refs.rewardvalue.value,
                          reward_value: this.refs.rewardoption.value,
                          ig_reward: this.refs.indiegogoPerk.value,
                          rewardValid : 0,
                      },
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
riot.tag2('dashboard-explore-purchase', '<div id="purchase-explore" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-2 col-lg-8 col-md-offset-0 col-md-12"> <div id="modal"> <div class="modal-purchase-max no-gutter"> <div class="col-sm-7 no-gutter purchase-container-left"> <button type="button" class="close btn-modal hidden-lg hidden-md hidden-sm" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">EXPLORE PAGE BANNER</p> <p class="modal-purchase-text text-left">Every project that is featured on our Explore Page Rotating Banner will have increased viewership and a higher click through rate compared to only having the featured icon. Your project will be displayed on our rotating banner located on the Explore Page as a hero image. This explore featured banner will last 7 days and then expire.</p> <div show="{activated}" class="active-box hidden-xs"> <i class="fa fa-check check-mark"></i> <span class="active-text">This upgrade is active on your project.</span> </div> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center divider-inside-right"> <p class="purchase-text">EXPLORE BANNER</p> </div> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center"> <p class="purchase-text-right">FREE</p> </div> </div> <div class="col-sm-5 hidden-xs purchase-container-right"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <img class="img-responsive" src="/img/content/explore-purchase.jpg"> <div class="purchase-price-box no-gutter"> <div class="col-sm-6 text-center divider-inside-right"> <p class="purchase-text">EXPLORE BANNER</p> </div> <div class="col-sm-6 text-center"> <p class="purchase-text-right">FREE</p> </div> <div class="clearfix"></div> </div> <div> <form id="purchaseExplore" role="form" onsubmit="{submitExplore}"> <div class="text-center"> <input class="landing-submit" type="submit" name="submit" value="Upgrade"> </div> </form> </div> </div> </div> <div class="hidden-lg hidden-md hidden-sm"> <form id="purchaseExplore" role="form" onsubmit="{submitExplore}"> <div class="text-center"> <input class="landing-submit modal-purchase-max" type="submit" name="submit" value="Upgrade"> </div> </form> </div> </div> </div> </div>', '', '', function(opts) {
        this.on('update', ()=>
         {
             if(!opts.project)
                 return;

             let res = {data: [opts.project]};

             if (res.data[0].project_data.info_data.explore)
            {
                activated = true;
            }else{
                activated = false;
            };
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
             let project = pRes.data[0].unique_id,
                 projectData =
                 {
                     project_data:
                     {
                         info_data:
                         {
                             explore : true,
                             explore_date: Date(),
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
riot.tag2('dashboard-featured-purchase', '<div id="purchase-featured" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-2 col-lg-8 col-md-offset-0 col-md-12"> <div id="modal"> <div class="modal-purchase-max no-gutter"> <div class="col-sm-7 purchase-container-left"> <button type="button" class="close btn-modal hidden-lg hidden-md hidden-sm" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">FEATURED PROJECT LISTING</p> <p class="modal-purchase-text text-left">Every featured project will have a yellow heart icon located in the corner of your project image. These icons will be displayed on our Explore Page filtering system. Having the icon will allow your project to have priority filtering and will always show ahead of other projects without the icon. Our featured project listing will last the entire length of your campaign.</p> <div show="{activated}" class="active-box hidden-xs"> <i class="fa fa-check check-mark"></i> <span class="active-text">This upgrade is active on your project.</span> </div> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center divider-inside-right"> <p class="purchase-text">FEATURED ICON</p> </div> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center"> <p class="purchase-text-right">FREE</p> </div> </div> <div class="col-sm-5 hidden-xs purchase-container-right"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <img class="img-responsive" src="/img/content/featured-purchase.jpg"> <div class="purchase-price-box no-gutter"> <div class="col-sm-6 text-center divider-inside-right"> <p class="purchase-text">FEATURED ICON</p> </div> <div class="col-sm-6 text-center"> <p class="purchase-text-right">FREE</p> </div> <div class="clearfix"></div> </div> <div> <form id="purchaseFeature" role="form" onsubmit="{submitFeatured}"> <div class="text-center"> <input class="landing-submit" type="submit" name="submit" value="Upgrade"> </div> </form> </div> </div> </div> <div class="hidden-lg hidden-md hidden-sm"> <form id="purchaseFeature" role="form" onsubmit="{submitFeatured}"> <div class="text-center"> <input class="landing-submit modal-purchase-max" type="submit" name="submit" value="Upgrade"> </div> </form> </div> </div> </div> </div>', '', '', function(opts) {
        this.on('update', ()=>
         {
             if(!opts.project)
                 return;

             let res = {data: [opts.project]};

              if (res.data[0].project_data.info_data.featured)
            {
                activated = true;
            }else{
                activated = false;
            };
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
             let project = pRes.data[0].unique_id,
                 projectData =
                 {
                     project_data:
                     {
                         info_data:
                         {
                             featured : true,
                             featured_date: Date(),
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
riot.tag2('dashboard-image-project', '<div id="indiegogo-image" class="modal container fade"> <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal" class="no-gutter"> <form role="form" onsubmit="{imageRefresh}"> <div class="modal-box modal-max-box"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">Indiegogo Image</p> <p class="text-left edit-text-title">Krowdspace is using your main project image from Indiegogo. To have the best user experience at Krowdspace please upload a video image overlay to your Indiegogo project page. This will fix the black padding you see on either side of the current image.</p> <p class="text-left edit-text-title">After the image has been uploaded to Indiegogo please press the refresh image button. This is an optional feature but we recommend adding an overlay image if you decide to purchase any of our featured areas.</p> </div> <div class="text-center modal-max-box"> <input class="landing-submit" type="submit" name="submit" value="Refresh Image"> </div> </form> </div> </div> </div>', '', '', function(opts) {
      this.on('update', ()=>
       {
           if(!opts.project)
               return;

           let res = {data: [opts.project]};

       });

       this.imageRefresh = function(e)
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
           let project = pRes.data[0].unique_id,
               projectData =
               {
                   project_data:
                   {
                       info_data:
                       {
                           refresh : true,
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
riot.tag2('dashboard-landing-purchase', '<div id="purchase-landing" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-2 col-lg-8 col-md-offset-0 col-md-12"> <div id="modal"> <div class="modal-purchase-max no-gutter"> <div class="col-sm-7 purchase-container-left"> <button type="button" class="close btn-modal hidden-lg hidden-md hidden-sm" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">LANDING PAGE BANNER</p> <p class="modal-purchase-text text-left">Our Landing Page package will bring the most traffic to your campaign. Every project owner that purchases this package will be featured on the Krowdspace Landing Page rotating banner as well as every Krowdspace users dashboard via a rotating banner. Your campaign will be seen by everyone! The landing page package will last for 10 days and then expire.</p> <div show="{activated}" class="active-box hidden-xs"> <i class="fa fa-check check-mark"></i> <span class="active-text">This upgrade is active on your project.</span> </div> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center divider-inside-right"> <p class="purchase-text">LANDING BANNER</p> </div> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center"> <p class="purchase-text-right">FREE</p> </div> </div> <div class="col-sm-5 hidden-xs purchase-container-right"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <img class="img-responsive" src="/img/content/landing-purchase.jpg"> <div class="purchase-price-box no-gutter"> <div class="col-sm-6 text-center divider-inside-right"> <p class="purchase-text">LANDING BANNER</p> </div> <div class="col-sm-6 text-center"> <p class="purchase-text-right">FREE</p> </div> <div class="clearfix"></div> </div> <div> <form id="purchaseLanding" role="form" onsubmit="{submitLanding}"> <div class="text-center"> <input class="landing-submit" type="submit" name="submit" value="Upgrade"> </div> </form> </div> </div> </div> <div class="hidden-lg hidden-md hidden-sm"> <form id="purchaseFeature" role="form" onsubmit="{submitLanding}"> <div class="text-center"> <input class="landing-submit modal-purchase-max" type="submit" name="submit" value="Upgrade"> </div> </form> </div> </div> </div> </div>', '', '', function(opts) {
        this.on('update', ()=>
         {
             if(!opts.project)
                 return;

             let res = {data: [opts.project]};
              if (res.data[0].project_data.info_data.landing)
            {
                activated = true;
            }else{
                activated = false;
            };
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
             let project = pRes.data[0].unique_id,
                 projectData =
                 {
                     project_data:
                     {
                         info_data:
                         {
                             landing : true,
                             landing_date: Date(),
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
riot.tag2('dashboard-project-status', '<div id="project-status" class="modal container fade"> <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-box modal-max-box text-left "> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <img class="project-approval-modal" src="/img/content/project-status-vertical.svg"> <p class="modal-heading">Project Status</p> <p class="edit-text-title">After submitting your project to Krowdspace you will have one of three status icons displaying on you dashboard.</p> <p class="project-status-text">Your project reward needs to be modified.</p> <p class="project-status-text">Your project is pending reward approval. </p> <p class="project-status-text">Your project has been approved. </p> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('dashboard-refresh-content', '<div id="refresh-content" class="modal container fade"> <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <form id="submitRefresh" role="form" onsubmit="{submitRefresh}"> <div class="modal-box modal-max-box"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">Refresh Project Content</p> <p class="text-left edit-text-title">To refresh your project content please click the update button below. This will refresh any content changes as well as your project metric data.</p> <p class="edit-text-title">Warning: Updating your project after it has completed on Kickstarter or Indiegogo will reset some of our Krowdspace metrics. </p> </div> <div class="text-center modal-max-box"> <input class="landing-submit" type="submit" name="submit" value="Update"> </div> </form> </div> </div> </div>', '', '', function(opts) {
      this.on('update', ()=>
       {
           if(!opts.project)
               return;

           let res = {data: [opts.project]};
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
           let project = pRes.data[0].unique_id,
               projectData =
               {
                   project_data:
                   {
                       info_data:
                       {
                           refresh : true,
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
riot.tag2('dashboard-social-purchase', '<div id="purchase-social" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-2 col-lg-8 col-md-offset-0 col-md-12"> <div id="modal"> <div class="modal-purchase-max no-gutter"> <div class="col-sm-7 purchase-container-left"> <button type="button" class="close btn-modal hidden-lg hidden-md hidden-sm" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">SOCIAL MEDIA POSTS</p> <p class="modal-purchase-text text-left">We will post your project on our 4 social media channels. By purchasing this package, you will see your project on our Facebook, Twitter, Pinterest and Instagram accounts with a link to your crowdfunding site when applicable. We currently have over 6,000 combined followers!</p> <div show="{activated}" class="active-box hidden-xs"> <i class="fa fa-check check-mark"></i> <span class="active-text">This upgrade is active on your project.</span> </div> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center divider-inside-right"> <p class="purchase-text">SOCIAL POSTS</p> </div> <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center"> <p class="purchase-text-right">FREE</p> </div> </div> <div class="col-sm-5 hidden-xs purchase-container-right"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <img class="img-responsive" src="/img/content/social-purchase.jpg"> <div class="purchase-price-box no-gutter"> <div class="col-sm-6 text-center divider-inside-right"> <p class="purchase-text">SOCIAL POSTS</p> </div> <div class="col-sm-6 text-center"> <p class="purchase-text-right">FREE</p> </div> <div class="clearfix"></div> </div> <div> <form id="purchaseFeature" role="form" onsubmit="{submitSocial}"> <div class="text-center"> <input class="landing-submit" type="submit" name="submit" value="Upgrade"> </div> </form> </div> </div> </div> <div class="hidden-lg hidden-md hidden-sm"> <form id="purchaseFeature" role="form" onsubmit="{submitSocial}"> <div class="text-center"> <input class="landing-submit modal-purchase-max" type="submit" name="submit" value="Upgrade"> </div> </form> </div> </div> </div> </div>', '', '', function(opts) {
        this.on('update', ()=>
         {
             if(!opts.project)
                 return;

             let res = {data: [opts.project]};

              if (res.data[0].project_data.info_data.social)
            {
                activated = true;
            }else{
                activated = false;
            };
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
             let project = pRes.data[0].unique_id,
                 projectData =
                 {
                     project_data:
                     {
                         info_data:
                         {
                             social : true,
                             social_date: Date(),
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
riot.tag2('dashboard-project-bar', '<div class="dash-bar col-sm-12 no-gutter"> <div class="col-xs-3 text-center divider-inside-right"> <a show="{platformSwitch}" class="hidden-xs" href="{kickstarterShare}" title="Kickstarter Project Page" target="_blank"> <img class="icon-share-bar filterdark" src="img/fav/kickstarter-icon.svg"> </a> <a show="{!platformSwitch}" class="hidden-xs" href="{indiegogoShare}" title="Indiegogo Project Page" target="_blank"> <img class="icon-share-bar filterdark" src="img/fav/indiegogo-icon.svg"> </a> <a href="/#/explore/project/{krowdspacePage}"> <img class="icon-share-bar filterdark" title="Krowdspace Project Page" src="img/fav/krowdspace-icon.svg"> </a> <p class="dashboard-text-bar dash-divider hidden-xs">Live Project Links</p> <p class="dashboard-text-bar dash-divider hidden-lg hidden-md hidden-sm">Project Link</p> </div> <div class="col-xs-7 text-center divider-inside-right"> <a href="{facebookShare}" title="Share on Facebook" target="_blank"> <span class="fa-stack fa-lg facebook filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="{twitterShare}" title="Share on Twitter" target="_blank"> <span class="fa-stack fa-lg twitter filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a class="hidden-sm hidden-xs" title="Share on Google Plus" href="{googleShare}" target="_blank"> <span class="fa-stack fa-lg google filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-google-plus fa-stack-1x fa-inverse"></i> </span> </a> <a href="{linkedinShare}" title="Share on Linkedin" target="_blank"> <span class="fa-stack fa-lg linkedin filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i> </span> </a> <a href="{redditShare}" title="Share on Reddit" target="_blank"> <span class="fa-stack fa-lg reddit filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-reddit-alien fa-stack-1x fa-inverse"></i> </span> </a> <a class="hidden-xs" href="{diggShare}" title="Share on Digg" target="_blank"> <span class="fa-stack fa-lg digg filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-digg fa-stack-1x fa-inverse"></i> </span> </a> <a class="hidden-xs" href="{stumbleuponShare}" title="Share on StumbleUpon" target="_blank"> <span class="fa-stack fa-lg stumbleupon filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-stumbleupon fa-stack-1x fa-inverse"></i> </span> </a> <a class="hidden-sm hidden-xs" href="{tumblrShare}" title="Share on Tumblr" target="_blank"> <span class="fa-stack fa-lg tumblr filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-tumblr fa-stack-1x fa-inverse"></i> </span> </a> <p class="dashboard-text-bar dash-divider">Share Your Project on Social Media</p> </div> <div class="col-sm-2 text-center"> <a href="#purchase-social" class="modal-link" title="Social Media Purchase" data-toggle="modal"> <span class="fa-stack fa-lg social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-wifi fa-stack-1x fa-inverse" style="padding-top: 2px;"></i> </span> </a> <p class="dashboard-text-bar dash-divider">Social Media Boost</p> </div> </div>', '', '', function(opts) {
    this.on('update', ()=>
    {
        if(!opts.project)
            return;

        let res = { data: [opts.project] };
        let platform = opts.project.platform;

        if(platform == 'kickstarter')
        {
            this.platformSwitch = true;
            this.kickstarterShare = res.data[0].project_data.info_data.url;

        }else{

            this.platformSwitch = false;
            this.indiegogoShare = res.data[0].project_data.info_data.url;

        }

            this.krowdspacePage = res.data[0].unique_id;

            this.facebookShare = 'https://www.facebook.com/sharer.php?u=' + res.data[0].project_data.info_data.url;

            this.twitterShare = 'https://twitter.com/intent/tweet?text=Get extra rewards and support my crowdfunding project at Krowdspace.com &via=krowdspaced&hashtags=krowdspace, crowdfunding, rewards';

            this.googleShare = 'https://plus.google.com/share?url=' + res.data[0].project_data.info_data.url;

            this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title;

            this.redditShare = 'https://reddit.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title;

            this.diggShare = 'http://digg.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title;

            this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title;

            this.tumblrShare = 'https://www.tumblr.com/widgets/share/tool?canonicalUrl=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title + '&caption=' + res.data[0].project_data.meta_data.description;
    });
});	
	
riot.tag2('dashboard-project-featured', '<div class="col-md-4 feature-container-left"> <div class="shadow text-left dashboard-purchase-box"> <a href="#purchase-featured" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn filterdark float-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-heart fa-stack-1x fa-inverse" style="padding-top: 1px;"></i> </span> </a> <p class="dashboard-text-alt">Featured Icon</p> <p class="dashboard-text-alt feature-space">Have your campaign displayed with priority filtering on our Explore Page.</p> <div class="no-gutter feature-space"> <div class="col-xs-6 text-center divider-inside-right"> <p class="dashboard-text-alt">Days Active</p> <p class="social-metric">{projectDays || 0}</p> </div> <div class="col-xs-6 chart-data text-center"> <p class="dashboard-text-alt">Entry Price</p> <p class="social-metric">$10</p> </div> </div> <a href="#purchase-featured" class="modal-link" data-toggle="modal"> <p show="{!activeFeature}" class="purchase-more filterdark">See Details</p> <p show="{activeFeature}" class="purchase-more filterdark">Active</p> </a> </div> </div> <div class="col-md-4 feature-container"> <div class="shadow dashboard-purchase-box"> <a href="#purchase-explore" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn filterdark float-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-compass fa-stack-1x fa-inverse"></i> </span> </a> <p class="dashboard-text-alt">Explore Feature</p> <p class="dashboard-text-alt feature-space">Have your campaign featured on our Explore Page rotating banner.</p> <div class="no-gutter feature-space"> <div class="col-xs-6 text-center divider-inside-right"> <p class="dashboard-text-alt">Days Active</p> <p class="social-metric">7</p> </div> <div class="col-xs-6 chart-data text-center"> <p class="dashboard-text-alt">Entry Price</p> <p class="social-metric">$15</p> </div> </div> <a href="#purchase-explore" class="modal-link" data-toggle="modal"> <p show="{!activeExplore}" class="purchase-more filterdark">See Details</p> <p show="{activeExplore}" class="purchase-more filterdark">Active</p> </a> </div> </div> <div class="col-md-4 feature-container-right"> <div class="shadow dashboard-purchase-box"> <a href="#purchase-landing" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn filterdark float-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-home fa-stack-1x fa-inverse"></i> </span> </a> <p class="dashboard-text-alt">Landing Feature</p> <p class="dashboard-text-alt feature-space">Featured on the Krowdspace landing page as well as every users dashboard.</p> <div class="no-gutter feature-space"> <div class="col-xs-6 text-center divider-inside-right"> <p class="dashboard-text-alt">Days Active</p> <p class="social-metric">10</p> </div> <div class="col-xs-6 chart-data text-center"> <p class="dashboard-text-alt">Entry Price</p> <p class="social-metric">$20</p> </div> </div> <a href="#purchase-landing" class="modal-link" data-toggle="modal"> <p show="{!activeLanding}" class="purchase-more filterdark">See Details</p> <p show="{activeLanding}" class="purchase-more filterdark">Active</p> </a> </div> </div>', '', '', function(opts) {
        this.on('update', ()=>
        {
            if(!opts.project)
                return;

            let res = {data: [opts.project]};

            this.projectDays = res.data[0].project_data.meta_data.duration;

            if(res.data[0].project_data.info_data.featured)
            {
                activeFeature = true;
            }else{
                activeFeature = false;
            };

            if(res.data[0].project_data.info_data.explore)
            {
                activeExplore = true;
            }else{
                activeExplore = false;
            };

            if(res.data[0].project_data.info_data.landing)
            {
                activeLanding = true;
            }else{
                activeLanding = false;
            };

            if(res.data[0].project_data.info_data.social)
            {
                activeSocial = true;
            }else{
                activeSocial = false;
            };
        });
});
riot.tag2('dashboard-project-hours', '<div class="col-lg-3 hidden-md hidden-sm hidden-xs dashboard-hours-container no-gutter shadow"> <div id="circleChart"></div> <div class="col-sm-6 text-center"> <div class="divider-inside-right"> <p class="dashboard-text-alt">Days Left</p> <p class="social-metric">{countdownTimer || 0}</p> </div> </div> <div class="col-sm-6 text-center"> <div> <p class="dashboard-text-alt">Total Days</p> <p class="social-metric">{projectLength || 0}</p> </div> </div> </div>', '', '', function(opts) {

    this.progBar = null;

    this.on('update', ()=>
        {
            if(!opts.project)
                return;

            let res = {data: [opts.project]}

            let endTime = res.data[0].project_data.meta_data.endTime,
                projectTime = res.data[0].project_data.meta_data.duration,
                end = new Date(endTime),
                remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 86400000,
                daysMax = Math.max(0, remaining);

            let bar = null;

            if(!this.progBar)this.progBar = bar = new ProgressBar.Circle(circleChart,
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
                    }else {
                        circle.setText(value + '%');
                    }
                }
            });

            bar = this.progBar;

            let projectDays = daysMax,
                negativeCircleProgress = projectDays/projectTime - 1,
                circleProgress = Math.abs(negativeCircleProgress);
                bar.text.style.fontFamily = '"Montserrat-Bold"';
                bar.text.style.fontSize = '30px';
                bar.text.style.fontWeight = '600';
                bar.animate(circleProgress || 1);

            this.countdownTimer = Math.floor(daysMax) ;
            this.projectLength = res.data[0].project_data.meta_data.duration;
        });
});	
	
riot.tag2('dashboard-project-image', '<div class="col-md-6 project-image-box padding-reset"> <img class="img-responsive project-image {indiegogoSmall}" ref="krowdspaceImage" src=""> <p class="funding-text funded-left">$ {raisedLocale || 0} RAISED</p> <p class="funding-text funded-right">$ {goalLocale || 0} GOAL</p> <div id="progressBar"></div> </div>', '', '', function(opts) {
    this.progBar = null;

    this.on('update', ()=>
    {
        if(!opts.project)
            return;

        this.refs.krowdspaceImage.src = opts.project.project_data.meta_data.mainImg || opts.project.project_data.meta_data.altImg;
        this.indiegogoSmall = opts.project.project_data.meta_data.mainImg || 'project-image-indiegogo';

        let raisedValue = opts.project.project_data.meta_data.raised,
            raisedRounded = Math.round(raisedValue);
        this.raisedLocale = raisedRounded.toLocaleString();

        let goalValue = opts.project.project_data.meta_data.funding;
        this.goalLocale = goalValue.toLocaleString();

        let percentValue = opts.project.project_data.meta_data.raisedPercent,
        numberMax = Math.min(Math.max(percentValue, 0), 1);

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

        bar.animate(numberMax || 1);
    });
});	
	
riot.tag2('dashboard-project-reward', '<div class="col-lg-6 col-md-12 reward-container"> <div class="shadow dashboard-reward-box"> <a href="#edit-reward" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn filterdark float-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pencil fa-stack-1x fa-inverse"></i> </span> </a> <p class="dashboard-text-alt reward-text">Reward: {projectReward || \'\'}</p> <p class="dashboard-text-alt disclaimer-text">Upon succesful completion of your crowdfunding project you have agreed to send out any additional rewards to the backers who have supported your campaign. Please use the below reward code to validate backers coming from Krowdspace.</p> <div class="coupon-code-box text-center"> <p class="coupon-code">{couponCode || \'\'}</p> </div> </div> </div>', '', '', function(opts) {
        this.on('update', ()=>
        {
            if(!opts.project)
                return;

            let res = {data: [opts.project]};

            this.projectReward = res.data[0].project_data.info_data.reward;
            this.couponCode = res.data[0].coupon_code;
        });
});
riot.tag2('dashboard-project-title', '<div class="col-lg-3 col-md-12 dashboard-title-box shadow"> <a href="#refresh-content" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn filterdark float-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-refresh fa-stack-1x fa-inverse"></i> </span> </a> <p class="dashboard-text-alt dashboard-project-title">{projectTitle || \'\'}</p> <p class="dashboard-text-alt dashboard-project-description">{projectDescription || \'\'}</p> <p class="dashboard-text-alt featured-text-box">Please click on the refresh icon to update project.</p> </div>', '', '', function(opts) {
    this.on('update', ()=>
    {
        if(!opts.project)
        return;

        this.projectTitle = opts.project.project_data.meta_data.title;
        this.projectDescription = opts.project.project_data.meta_data.description;
    });
});

riot.tag2('dashboard-project-user', '<div class="col-md-6 text-left no-gutter project-page-container" style="padding-left: 0px; padding-right: 0px;"> <a href="#edit-profile" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn filterdark float-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pencil fa-stack-1x fa-inverse"></i> </span> </a> <p class="profile-name capital">{firstname || \'Firstname\'} {lastname || \'Lastname\'}</p> <div class="col-sm-4 col-xs-5 user-profile-push"> <p class="dashboard-user user-break">Username:</p> </div> <div class="col-sm-8 col-xs-7"> <p class="dashboard-user user-break capital">{username || \'Username\'}</p> </div> <div class="col-sm-4 col-xs-5 user-profile-push"> <p class="dashboard-user">Email:</p> </div> <div class="col-sm-8 col-xs-7"> <p class="dashboard-user capital">{email || \'Email Address\'}</p> </div> <div class="col-sm-4 col-xs-5 user-profile-push"> <p class="dashboard-user user-break hidden-md">Kickstarter Name:</p> </div> <div class="col-sm-8 col-xs-7"> <p class="dashboard-user user-break hidden-md capital">{kickstarter || \'N/A\'}</p> </div> <div class="col-sm-4 col-xs-5 user-profile-push"> <p class="dashboard-user hidden-md">Indiegogo Name:</p> </div> <div class="col-sm-8 col-xs-7"> <p class="dashboard-user hidden-md capital">{indiegogo || \'N/A\'}</p> </div> <div class="user-position-box"> <p class="dashboard-text profile-name">Project Status</p> <div class="col-xs-4 no-gutters text-center user-stat-box"> <p class="dashboard-user user-text-alt">Raised Percent</p> <p class="social-metric">{percentRaised || 0}</p> </div> <div class="col-xs-3 no-gutters text-center user-stat-box"> <p class="dashboard-user user-text-alt">Hours Left</p> <p class="social-metric">{countdowntimer || 0}</p> </div> <div class="col-xs-4 no-gutters text-center user-stat-box"> <p class="dashboard-user user-text-alt">Reward Value</p> <p class="social-metric">{rewardAmount || 0}</p> </div> </div> <div class="col-lg-12 approval-container"> <a href="#project-status" class="modal-link" data-toggle="modal"> <img show="{warning}" class="project-approval" src="/img/content/returned-icon-vertical.svg" title="Project is pending approval and should be reviewed shortly."> <img show="{pending}" class="project-approval" src="/img/content/warning-icon-vertical.svg" title="Project has been approved and is live on the Explore page."> <img show="{approved}" class="project-approval" src="/img/content/approved-icon-vertical.svg" title="Project has been approved and is live on the Explore page."> </a> </div> </div>', '', '', function(opts) {
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
        }.bind(this)

        this.setProjectDeets = function(res)
        {

            let percentRaised = res.data[0].project_data.meta_data.raisedPercent,
                endTime = res.data[0].project_data.meta_data.endTime,
                end = new Date(endTime),
                remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 3600000,
                daysMax = Math.max(0, remaining);
            this.countdowntimer = Math.floor(daysMax);

            this.rewardAmount = '$' + res.data[0].project_data.info_data.reward_ammount;

            let percent = res.data[0].project_data.meta_data.raisedPercent,
                whole = percent * 100,
                wholeRound = Math.round(whole);
            this.percentRaised = wholeRound + '%';

            if (res.data[0].project_data.info_data.rewardValid == 0)
            {
                approved = false;
                pending = true;
                warning = false;

            }else if(res.data[0].project_data.info_data.rewardValid == 1)
            {
                approved = true;
                pending = false;
                warning = false;

            }else if(res.data[0].project_data.info_data.rewardValid == 2)
            {
                approved = false;
                pending = false;
                warning = true;
            };
        }.bind(this)
});
riot.tag2('dashboard-project-wysiwyg', '<div class="col-sm-12 no-gutter wysiwyg-editor"> <form role="form" onsubmit="{submitContent}"> <button class="wysiwyg-save filterdark" type="submit" name="submit">SAVE</button> <textarea class="wysiwyg" ref="crowdContent"></textarea> </form> </div>', '', '', function(opts) {
    this.on('update', ()=>
    {
        if(!opts.project)
        return;

        let res = {data: [opts.project]};
        let projectContent = res.data[0].project_data.meta_data.content;

        $(function()
        {
            $('.wysiwyg').froalaEditor()
            $('.wysiwyg').froalaEditor('html.set', projectContent);
        });
    });

    this.submitContent = function(e)
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
        let project = pRes.data[0].unique_id,
            projectData =
            {
                project_data:
                {
                    meta_data:
                    {
                        content: this.refs.crowdContent.value,
                    },
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
riot.tag2('dashboard-user-bar', '<div class="dash-bar col-sm-12 no-gutter"> <div class="col-sm-3 hidden-xs text-center divider-inside-right"> <a href="{kickstarterPage}" title="Go to Kickstarter" target="_blank"> <img class="icon-share-bar filterdark" src="img/fav/kickstarter-icon.svg"> </a> <a href="{indiegogoPage}" title="Go To Indiegogo" target="_blank"> <img class="icon-share-bar filterdark" src="img/fav/indiegogo-icon.svg"> </a> <p class="dashboard-text-bar dash-divider">Crowdfunding Links</p> </div> <div class="col-sm-7 col-xs-10 text-center divider-inside-right no-gutter"> <a href="{facebookShare}" title="Share Krowdspace on Facebook" target="_blank"> <span class="fa-stack fa-lg facebook filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="{twitterShare}" title="Share Krowdspace on Twitter" target="_blank"> <span class="fa-stack fa-lg twitter filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="{googleShare}" title="Share Krowdspace on Google Plus" target="_blank"> <span class="fa-stack fa-lg google filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-google-plus fa-stack-1x fa-inverse"></i> </span> </a> <a href="{linkedinShare}" title="Share Krowdspace on Linkedin" target="_blank"> <span class="fa-stack fa-lg linkedin filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i> </span> </a> <a href="{redditShare}" title="Share Krowdspace on Reddit" target="_blank"> <span class="fa-stack fa-lg reddit filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-reddit-alien fa-stack-1x fa-inverse"></i> </span> </a> <a class="hidden-xs" href="{diggShare}" title="Share Krowdspace on Digg" target="_blank"> <span class="fa-stack fa-lg digg filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-digg fa-stack-1x fa-inverse"></i> </span> </a> <a class="hidden-sm hidden-xs" href="{stumbleuponShare}" title="Share Krowdspace on StumbleUpon" target="_blank"> <span class="fa-stack fa-lg stumbleupon filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-stumbleupon fa-stack-1x fa-inverse"></i> </span> </a> <a class="hidden-sm hidden-xs" href="{tumblrShare}" title="Share Krowdspace on Tumblr" target="_blank"> <span class="fa-stack fa-lg tumblr filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-tumblr fa-stack-1x fa-inverse"></i> </span> </a> <p class="dashboard-text-bar dash-divider">Share Krowdspace on Social Media</p> </div> <div class="col-xs-2 text-center"> <a href="/#/account/giveaway" title="Krowdspace Giveaways" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-money fa-stack-1x fa-inverse"></i> </span> </a> <p class="dashboard-text-bar dash-divider hidden-xs">Giveaways</p> </div> </div>', '', '', function(opts) {
    this.kickstarterPage = 'https://www.kickstarter.com';

    this.indiegogoPage = 'https://www.indiegogo.com';

    this.facebookShare = 'https://www.facebook.com/sharer.php?u=https://www.krowdspace.com';

    this.googleShare = 'https://plus.google.com/share?url=https://www.krowdspace.com';

    this.twitterShare = 'https://twitter.com/intent/tweet?text=Get extra rewards and support awesome crowdfunding project at Krowdspace.com &via=krowdspaced&hashtags=krowdspace, crowdfunding, rewards';

    this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com';

    this.redditShare = 'https://reddit.com/submit?url=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com';

    this.diggShare = 'http://digg.com/submit?url=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com';

    this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com';

    this.tumblrShare = 'https://www.tumblr.com/widgets/share/tool?canonicalUrl=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com&caption=Submit a project today!';
});	
	
riot.tag2('dashboard-user-image', '<div class="col-md-6 project-image-responsive padding-reset"> <div class="single-item slider"> <div class="landing-banner" each="{ExploreBannerFilter}"> <img class="img-responsive landing-slider {project_data.meta_data.mainImg || \'indiegogo-image-small\'}" riot-src="{project_data.meta_data.mainImg || project_data.meta_data.altImg}"> <div class="landing-banner-box"> <div class="col-xs-10 padding-reset"> <span class="explore-title">{name}</span> <div class="explore-box-text"> <span class="explore-title">{project_data.info_data.reward}</span> </div> </div> <div class="col-xs-2 learn-more-box text-right"> <a href="{unique_url || \'/#/explore/project/\' + unique_id}" data-toggle="modal"><i class="fa fa-plus learn-more-plus"></i></a> </div> </div> </div> </div> </div>', 'dashboard-user-image .landing-banner,[data-is="dashboard-user-image"] .landing-banner{ width: 500px; height: 282px; background-color: #000; position: relative; } dashboard-user-image .landing-slider,[data-is="dashboard-user-image"] .landing-slider{ border: 1px solid #000; width: 100%; } dashboard-user-image .indiegogo-image-small,[data-is="dashboard-user-image"] .indiegogo-image-small{ height: 282px; width: auto; margin-left: auto; margin-right: auto; } @media screen and (max-width: 1200px) { dashboard-user-image .landing-banner,[data-is="dashboard-user-image"] .landing-banner{ height: 225px; width: 396px; } dashboard-user-image .indiegogo-image-small,[data-is="dashboard-user-image"] .indiegogo-image-small{ height: 225px; } } @media screen and (max-width: 991px) { dashboard-user-image .landing-banner,[data-is="dashboard-user-image"] .landing-banner{ height: 350px; width: 616.66px; } dashboard-user-image .indiegogo-image-small,[data-is="dashboard-user-image"] .indiegogo-image-small{ height: 351px; } } @media screen and (max-width: 767px) { dashboard-user-image .project-image-responsive,[data-is="dashboard-user-image"] .project-image-responsive{ width: 400px; margin-left: auto; margin-right: auto; } dashboard-user-image .landing-banner,[data-is="dashboard-user-image"] .landing-banner{ height: 227px; width: 400px; } dashboard-user-image .indiegogo-image-small,[data-is="dashboard-user-image"] .indiegogo-image-small{ height: 228px; } }', '', function(opts) {
    krowdspace.projects.explore().then((res) =>
    {
        let ExploreBannerData = res.data,
            FilterExplore = ExploreBannerData.filter((element) => {
            return (element.project_data.info_data.landing);
        });

            let newObject={
                        unique_url: '#modal-feature-info',
                        name: '',
                        project_data:
                        {
                            web_data:
                            {
                            description:
                                {
                                    content: '',
                                },
                            },
                            info_data:
                            {
                                reward: '',
                            },
                            meta_data:
                            {
                                mainImg: '/img/content/krowdspace-banner-1.jpg',
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
            autoplaySpeed: 6000,
            centerMode: true,
            variableWidth: true,
        });
    },
    (err)=>
    {
        let KrowdspaceAd = [{
                        unique_url: '#modal-feature-info',
                        project_data:
                        {
                            meta_data:
                            {
                                mainImg: '/img/content/krowdspace-banner-1.jpg',
                            },
                        },
                    }];
            this.ExploreBannerFilter = KrowdspaceAd;
            this.update();

        $('.single-item').slick
        ({
            arrows: false,
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 6000,
            centerMode: true,
            variableWidth: true,
        });
    });
});	
	
riot.tag2('dashboard-user', '<div class="col-md-6 text-left no-gutter project-user-container"> <a href="#edit-profile" class="modal-link" data-toggle="modal"> <span class="fa-stack fa-lg social-btn filterdark float-btn"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pencil fa-stack-1x fa-inverse"></i> </span> </a> <p class="profile-name capital">{firstname || \'Firstname\'} {lastname || \'Lastname\'}</p> <div class="col-sm-4 col-xs-5 user-profile-push"> <p class="dashboard-user user-break">Username:</p> </div> <div class="col-sm-8 col-xs-7"> <p class="dashboard-user user-break capital">{username || \'Username\'}</p> </div> <div class="col-sm-4 col-xs-5 user-profile-push"> <p class="dashboard-user">Email:</p> </div> <div class="col-sm-8 col-xs-7"> <p class="dashboard-user capital">{email || \'Email Address\'}</p> </div> <div class="col-sm-4 col-xs-5 user-profile-push"> <p class="dashboard-user user-break hidden-md">Kickstarter Name:</p> </div> <div class="col-sm-8 col-xs-7"> <p class="dashboard-user user-break hidden-md capital">{kickstarter || \'N/A\'}</p> </div> <div class="col-sm-4 col-xs-5 user-profile-push"> <p class="dashboard-user hidden-md">Indiegogo Name:</p> </div> <div class="col-sm-8 col-xs-7"> <p class="dashboard-user hidden-md capital">{indiegogo || \'N/A\'}</p> </div> <div class="user-position-box"> <p class="dashboard-text profile-name">Krowdspace Campaigns</p> <div class="col-xs-4 no-gutters text-center user-stat-box"> <p class="dashboard-user user-text-alt">Kickstarter</p> <p class="social-metric">{projectTotal}</p> </div> <div class="col-xs-4 no-gutters text-center user-stat-box"> <p class="dashboard-user user-text-alt">Indiegogo</p> <p class="social-metric">{projectTotal}</p> </div> <div class="col-xs-4 no-gutters text-center user-stat-box"> <p class="dashboard-user user-text-alt">Rewards</p> <p class="social-metric">${krowdspaceTotalReward}</p> </div> </div> <div class="clearfix"></div> </div>', '@media screen and (max-width: 1200px) { dashboard-user .project-user-container,[data-is="dashboard-user"] .project-user-container{ height: 225px; } } @media screen and (max-width: 991px) { dashboard-user .project-user-container,[data-is="dashboard-user"] .project-user-container{ height: 300px; border-left:1px solid #000; } } @media screen and (max-width: 767px) { dashboard-user .project-user-container,[data-is="dashboard-user"] .project-user-container{ width: 400px; margin-left: auto; margin-right: auto; } }', '', function(opts) {
this.on('mount', () => {
    krowdspace.v1.stats().then((res)=>
    {

        this.projectTotal = res.data.totalProjects;

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
    }.bind(this)

    this.setProjectDeets = function(res)
    {
        let endTime = res.data[0].project_data.meta_data.endTime,
            projectTime = res.data[0].project_data.meta_data.duration,
            end = new Date(endTime),
            remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 3600000,
            daysMax = Math.max(0, remaining);

        this.countdowntimer = Math.floor(daysMax);
        this.rewardAmount = '$' + res.data[0].project_data.info_data.reward_ammount;
    }.bind(this)
});
riot.tag2('giveaway-content', '<div class="col-sm-12 text-left container-page shadow"> <p class="modal-heading">Krowdspace Giveaways</p> <p class="legal-text">Periodically we will have giveaways for live crowdfunding projects and/or awesome prizes sponsored by Krowdspace. These giveaways are exclusive to our Krowdspace members! If you would like to submit your own project for our giveaway program please <a href="#modal-global-contact" data-toggle="modal" class="home-links">contact us</a> directly. If your project is selected, Krowdspace will set aside a small marketing budget and provide paid advertisement free to you. All you will need to provide is the prize which must be $50 or more for elegibility.</p> <iframe style="width: 100%; height: 1150px; overflow: hidden;" src="https://gleam.io/XsDXo/krowdspace-party-pack-giveaway" frameborder="0" allowfullscreen></iframe> <div class="row"> <div class="col-sm-12"> <p class="privacy-title">Previous Giveaways</p> <div class="giveaway-box text-left"> <p class="privacy-title">$50 Amazon Card - 04/01/17</p> <p class="privacy-title">$75 K POP Prize Package - 05/25/17</p> <p class="privacy-title">$60 Krowdspace Party Pack - 07/22/17</p> <p class="privacy-title">$75 Krowdspace Launch Giveaway - 10/30/17</p> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('giveaway-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container dashboard"> <global-logout class="hidden-xs" show="{logged_in}" uri="{opts.uri}"></global-logout> <div class="col-sm-10 col-sm-offset-1 padding-reset"> <div class="row dash-row no-gutter"> <giveaway-content></giveaway-content> </div> </div> </div> <global-footer></global-footer>', '', '', function(opts) {
});
riot.tag2('giveaway', '<giveaway-page show="{logged_in}"></giveaway-page>', '', '', function(opts) {

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
riot.tag2('login-account', '<div class="row row-verify"> <div class="col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <form ref="accountlogin" onsubmit="{loginSubmit}"> <div class="text-left modal-box-alt modal-max-box"> <p class="modal-heading modal-heading-alt">Krowdspace Login</p> <div id="errorLog" class="alert alert-danger alert-dismissable fade in"> <a class="close" onclick="$(\'.alert\').hide()"><i class="fa fa-close"></i></a> <strong>Error:</strong> Invalid username or password. </div> <div class="has-feedback"> <label class="control-label" for="username"></label> <input type="text" class="box-radius form-control" id="username" name="username" placeholder="Username or Email Address" ref="usernamelogin"> <span class="fa fa-user form-control-feedback"></span> </div> <div class="has-feedback"> <label class="control-label" for="password"></label> <input type="password" class="box-radius form-control" id="password" name="password" placeholder="Password" ref="passwordlogin"> <span class="fa fa-lock form-control-feedback"></span> </div> <div class="col-xs-6 login-box text-left"> <label> <input class="check-box" class="check-box" type="checkbox" ref="checkbox" id="checkbox">Remember Me </label> </div> <div class="col-xs-6 login-box text-right"> <a onclick="{registerPassword}"><p class="forgot-pass">Forgot Password?</p></a> </div> <div class="clearfix"></div> </div> <div class="text-center modal-max-box"> <input type="submit" class="landing-submit" name="submit" value="Login"> </div> </form> <div class="text-center"> <p class="login-float-text">Dont have an account? <a class="function-link" onclick="{registerModal}">Register today!</a></p> </div> </div> </div>', '', '', function(opts) {
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
        this.refs.accountlogin.reset();
        window.location.replace("/#/account/dashboard");
	},
	(err) =>
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
riot.tag2('login-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container container-stand-alone"> <div class="col-sm-10 col-sm-offset-1 padding-reset"> <div class="row dash-row no-gutter"> <login-account></login-account> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('login', '<login-page></login-page>', 'login,[data-is="login"]{ background-color: rgba(50, 48, 49, 1) }', '', function(opts) {
});
riot.tag2('register-project-error', '<div id="modal-project-error" class="modal container fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Project Submission Error</p> </div> <div class="modal-body"> <p>It looks like something went wrong! Please make sure that you have one of our <a onclick="{pressKit}" class="home-links">Press Kit</a> images with the correct hyperlink located on your project page. If the problem persists please reach out to us on social media or through our <a href="#modal-global-contact" data-toggle="modal" class="home-links">contact form</a>.</p> <div class="col-sm-9 text-left social-icons"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-instagram fa-stack-1x fa-inverse"></i> </span> </a> </div> <div class="clearfix"></div> </div> </div> </div> </div>', '', '', function(opts) {
this.pressKit = function()
{
	$('#modal-project-error').modal('hide');
    $('#modal-press-kit').modal('show');
}.bind(this)
});
riot.tag2('register-project-id', '<div id="modal-register-id" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8" style="padding: 0px;"> <div id="modal"> <div class="modal-box"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">Indiegogo Project ID</p> <p class="modal-purchase-text text-left">We will need your project ID which consists of a 7 digit number located on the project url. Please refer to this <a class="home-links" href="https://support.indiegogo.com/hc/en-us/articles/207276657-How-to-Find-Customize-your-Indiegogo-URL" target="_blank">Indiegogo Help Page</a> for exact locations within your account.</p> <p class="modal-purchase-text text-left">Another easy way to retrieve your project ID is to go to your live crowdfunding page and click on the "Share Twitter" button located next to the "Back It" button.</p> <img class="img-responsive register-img" src="/img/content/indiegogo-help-1.jpg"> <p class="modal-purchase-text text-left">Inside the share message there is a project url with the project ID. Take the project ID number and put it into the Krowdspace register form. An example of the project ID number location is below.</p> <img class="img-responsive register-img" src="/img/content/indiegogo-help-2.jpg"> <p class="modal-purchase-text text-left">If you have any questions please contact Krowdspace on social media or through our <a href="#modal-global-contact" data-toggle="modal" class="home-links">contact form</a>.</p> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('register-project-perk', '<div id="modal-register-perk" class="modal container fade"> <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-box"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">Indiegogo Secret Perk</p> <p class="modal-purchase-text text-left">You must have a secret perk URL attached to your Indiegogo campaign to submit a project on Krowdspace. Once the secret perk has been made please copy that URL and paste it into the form. If you need more help setting up the secret perk please refer to this <a class="home-links" href="https://support.indiegogo.com/hc/en-us/articles/209674868-Perks-How-to-Create-Edit-and-Remove-Perks" target="_blank">Indiegogo Help Page.</a></p> <p class="modal-purchase-text text-left">An example Indiegogo Perk URL will look like:</p> <p class="modal-purchase-text text-left">Indiegogo.com:443/projects/7193341/x/4337182?secret_perk_token=dc7f6b6e</p> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('register-content-signup', '<div class="no-gutter register-background shadow"> <div class="col-lg-5 hidden-md hidden-sm hidden-xs register"> <img class="img-responsive" src="/img/content/krowdspace-register.png"> <p class="text-center register-cta">Register your crowdfunding campaign and accelerate your growth today!</p> </div> <div class="col-lg-7 col-md-12"> <div class="registration-box shadow"> <div class="project-select-page"> <p class="register-title">Start by choosing your platform</p> <div class="col-xs-push-1 col-xs-6 indiegogo-register text-center"> <a class="indiegogo-register" type="button" onclick="{indiegogoForm}"><img class="img-responsive register-icons" src="img/fav/indiegogo-icon.svg"></a> <p class="landing-text">Indiegogo</p> </div> <div class="col-xs-pull-1 col-xs-6 kickstarter-register text-center"> <a class="kickstarter-register" type="button" onclick="{kickstarterForm}"><img class="img-responsive register-icons" src="img/fav/kickstarter-icon.svg"></a> <p class="landing-text">Kickstarter</p> </div> </div> <register-kickstarter-form></register-kickstarter-form> <register-indiegogo-form></register-indiegogo-form> </div> </div> <div class="clearfix"></div> </div> <div class="col-sm-12 text-center"> <p class="register-rewards">For more information about Krowdspace Rewards please view our <a href="#modal-global-rewards" data-toggle="modal" class="home-links">Reward Page</a>.</p> </div>', '@media screen and (max-width: 560px) { register-content-signup .shadow,[data-is="register-content-signup"] .shadow{ -webkit-box-shadow: none; -moz-box-shadow: none; } register-content-signup .link-left,[data-is="register-content-signup"] .link-left{ padding-right: 0px !important; } register-content-signup .register-background,[data-is="register-content-signup"] .register-background{ border: none; } }', '', function(opts) {
    this.indiegogoForm = function()
        {
            $( ".indiegogo-registration" ).show();
            $( ".project-select-page" ).hide();
        }.bind(this);
        this.kickstarterForm = function()
        {
            $( ".kickstarter-registration" ).show();
            $( ".project-select-page" ).hide();
        }.bind(this);
});
riot.tag2('register-indiegogo-form', '<form class="indiegogo-registration registerIndiegogo" id="registerIndiegogo" onsubmit="{indiegogo}" style="display:none;"> <fieldset id="project_information" class="project_information2"> <div class="form-group col-sm-12"> <p class="text-left">Do you own this crowdfunding project?</p> <select ref="indiegogoValid" type="text" class="form-control" name="indiegogoOwner"> <option disabled selected value>Select Yes or No</option> <option value="Yes">Yes</option> <option value="No">No</option> </select> </div> <div class="form-group col-sm-12"> <p class="text-left">What category best fits your project?</p> <select ref="indiegogoCategory" type="text" class="form-control" name="indiegogoCategory"> <option disabled selected value>Choose a Category</option> <option value="Art">Art</option> <option value="Design">Design</option> <option value="Film">Film</option> <option value="Food">Food</option> <option value="Health">Health</option> <option value="Music">Music</option> <option value="Photography">Photography</option> <option value="Technology">Technology</option> <option value="Videogames">Videogames</option> <option value="Publishing">Publishing</option> </select> </div> <div class="form-group col-sm-12 indiegogo-registration" style="display: none;"> <p class="text-left">What is your Indiegogo secret perk URL? <a href="#modal-register-perk" data-toggle="modal" class="home-links">Need Help?</a></p> <input ref="indiegogoPerk" type="text" class="form-control" name="indiegogoPerk" placeholder="www.indiegogo.com/secret-perk-url"> </div> <div class="form-group col-sm-12 no-gutter indiegogo-registration" style="display: none;"> <p class="text-left">Please provide your project ID. <a href="#modal-register-id" data-toggle="modal" class="home-links">Need Help?</a></p> <div class="col-sm-6 form-group link-left"> <input type="text" class="form-control" value="Indiegogo.com/projects/" readonly> </div> <div class="form-group col-sm-6 link-right"> <input ref="indiegogoID" name="indiegogoProject" class="form-control" placeholder="2152186" minlength="7" maxlength="7" type="number"> </div> </div> <div class="register-controls"> <div class="col-xs-offset-3 col-xs-6"> <p onclick="{projectPrevious}" class="pull-left"><a id="project-previous" class="back-project">PREVIOUS</a></p> <p class="pull-right"><a class="back-project next-ig next-step">NEXT</a></p> </div> </div> </fieldset> <fieldset id="reward_information" class="reward_information2"> <div class="form-group col-sm-12"> <p class="text-left">Please provide an exclusive reward for our Krowdspace users.</p> <input ref="indiegogoReward" class="form-control" name="indiegogoReward" maxlength="110" placeholder="See Sample Rewards Below ( Max Character 110 )"> </div> <div class="form-group col-sm-12"> <p class="text-left">Does your reward have a value or is it a discount?</p> <select ref="indiegogoOption" class="form-control" name="indiegogoValue"> <option disabled selected value>Choose an Option</option> <option value="Yes">Reward has a Value</option> <option value="No">Reward is a Discount</option> </select> </div> <div class="form-group col-sm-12"> <p class="text-left">Please estimate the value of your reward.</p> <input ref="indiegogoValue" class="form-control" name="indiegogoAmount" maxlength="6"> </div> <div class="register-controls"> <div class="col-xs-offset-3 col-xs-6"> <p class="pull-left"><a class="back-project previous-ig">PREVIOUS</a></p> <p class="pull-right"><a class="back-project next-ig next-step">NEXT</a></p> </div> </div> </fieldset> <fieldset id="project_verify" class="project_verify2"> <div class="col-sm-12"> <p class="text-left landing-text">PROJECT VERIFICATION</p> <p class="text-left">To verify that you are the project owner please upload one of the images from our <a href="#modal-press-kit" data-toggle="modal" class="home-links">Press Kit</a> area onto your crowdfunding project. This will prevent any false submissions and let us know you are indeed the owner.</p> <p class="text-left">The image that you select will need to be hyperlinked back to Krowdspace. We are verifying the actual hyperlink and not just the image being present. Please use the link below:</p> <p class="text-left">https://www.Krowdspace.com</p> <p class="text-left">If you have any questions or concerns please contact us and thank you for your understanding!</p> </div> <div class="register-controls"> <div class="col-xs-offset-3 col-xs-6"> <p class="pull-left"><a class="back-project previous-ig">PREVIOUS</a></p> <p class="pull-right"><a class="back-project next-ig next-step">NEXT</a></p> </div> <div class="clearfix"></div> </div> </fieldset> <fieldset id="service_terms" class="service_terms2"> <div class="col-sm-12"> <p class="text-left landing-text">TERMS AND CONDITIONS</p> <p class="text-left">Krowdspace is not liable for any damages or losses related to using our services.</p> <p class="text-left">Project owners are legally bound to fullfill any rewards promised to the Krowdspace users.</p> <p class="text-left">Krowdspace is not responsible for the puncuality and delivery of the rewards and will not become involved between user disputes.</p> <p class="text-left">You agree to be in compliance with Indiegogo\'s Terms of Use and are using Krowdspace at your own risk.</p> <p class="text-left">I have read through and understand the Terms of Service in relation to Krowdspace.</p> <div class="login-box"> <label> <input class="check-box" ref="indiegogoCheck" type="checkbox" value="checked" name="terms[]" required minlength="1" aria-required="true"><span>I agree to <a href="#modal-service-terms" data-toggle="modal" class="home-links">Krowdspace terms</a></span> </label> </div> </div> <div class="register-controls"> <div class="col-xs-offset-3 col-xs-6"> <p class="pull-left"><a class="back-project previous-ig">PREVIOUS</a></p> <p class="pull-right"><input class="back-project" type="submit" value="SUBMIT" name="submit"></p> </div> </div> </fieldset> </form>', '', '', function(opts) {
        this.projectPrevious = function()
        {
            $( ".kickstarter-registration" ).hide();
            $( ".indiegogo-registration" ).hide();
            $( ".project-select-page" ).show();
        }.bind(this);

        this.indiegogo = function(e)
        {
            e.preventDefault();

            let PVALID = this.refs.indiegogoValid.value,
                CATEGORY = this.refs.indiegogoCategory.value,
                DOMAINURL = 'https://www.indiegogo.com/projects/',
                URL =  this.refs.indiegogoID.value,
                REWARD = this.refs.indiegogoReward.value,
                REWARDVALUE = this.refs.indiegogoOption.value,
                IGREWARD = this.refs.indiegogoPerk.value,
                REWARDAMOUNT = this.refs.indiegogoValue.value;

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

            if(!this.refs.indiegogoCheck.checked)
            return;

            krowdspace.register.project(DATA).then((res) =>
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
            	$(".next-ig").click(function(){
            		var form = $("#registerIndiegogo");
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
                                indiegogoOwner: {
                                    required: true,
                                },
                                indiegogoCategory : {
                                    required: true,
                                },
                                indiegogoPerk: {
                                    required: true,
                                },
                                indiegogoProject:{
                                    required: true,
                                },
                                indiegogoReward:{
                                    required: true,
                                },
                                indiegogoValue: {
                                    required: true,

                                },
                                indiegogoAmount: {
                                    required: true,
                                number: true,
                                },
                            },
                            messages: {
                                indiegogoOwner: {
                                    required: "",
                                },
                                indiegogoCategory: {
                                    required: "",
                                },
                                indiegogoPerk: {
                                    required: "",
                                },
                                indiegogoProject: {
                                    required: "",
                                },
                                indiegogoReward: {
                                    required: "",
                                },
                                indiegogoValue: {
                                    required: "",
                                },
                                indiegogoAmount: {
                                    required: "",
                                },
                            }
                        });
            		if (form.valid() === true){
            			if ($('.project_information2').is(":visible")){
            				current_fs = $('.project_information2');
            				next_fs = $('.reward_information2');
            			}else if($('.reward_information2').is(":visible")){
            				current_fs = $('.reward_information2');
            				next_fs = $('.project_verify2');
            			}else if($('.project_verify2').is(":visible")){
            				current_fs = $('.project_verify2');
            				next_fs = $('.service_terms2');
            			}

            			next_fs.show();
            			current_fs.hide();
            		}
            	});

            	$('.previous-ig').click(function(){
            		if($('.reward_information2').is(":visible")){
            			current_fs = $('.reward_information2');
            			next_fs = $('.project_information2');
            		}else if ($('.project_verify2').is(":visible")){
            			current_fs = $('.project_verify2');
            			next_fs = $('.reward_information2');
            		}else if ($('.service_terms2').is(":visible")){
            			current_fs = $('.service_terms2');
            			next_fs = $('.project_verify2');
            		}
            		next_fs.show();
            		current_fs.hide();
            	});
            });
});
riot.tag2('register-kickstarter-form', '<form class="kickstarter-registration" id="registerKickstarter" onsubmit="{kickstarter}" style="display:none;"> <fieldset id="project_information" class="project_information"> <div class="form-group col-sm-12"> <p class="text-left">Do you own this crowdfunding project?</p> <select ref="kickstarterValid" type="text" class="form-control" name="kickstarterOwner"> <option disabled selected value>Select Yes or No</option> <option value="Yes">Yes</option> <option value="No">No</option> </select> </div> <div class="form-group col-sm-12"> <p class="text-left">What category best fits your project?</p> <select ref="kickstarterCategory" type="text" class="form-control" name="kickstarterCategory"> <option disabled selected value>Choose a Category</option> <option value="Art">Art</option> <option value="Design">Design</option> <option value="Film">Film</option> <option value="Food">Food</option> <option value="Health">Health</option> <option value="Music">Music</option> <option value="Photography">Photography</option> <option value="Technology">Technology</option> <option value="Videogames">Videogames</option> <option value="Publishing">Publishing</option> </select> </div> <div class="form-group col-sm-12 no-gutter"> <p class="text-left">Please provide your live crowdfunding project url.</p> <div class="col-xs-4 form-group link-left"> <input type="text" class="form-control" value="Kickstarter.com" readonly> </div> <div class="form-group col-xs-8 link-right"> <input ref="kickstarterLink" type="text" class="form-control" name="kickstarterProject" placeholder="/project/project-url"> </div> </div> <div class="register-controls"> <div class="col-xs-offset-3 col-xs-6"> <p onclick="{projectPrevious2}" class="pull-left"><a id="project-previous" class="back-project">PREVIOUS</a></p> <p class="pull-right"><a class="back-project next-ks next-step">NEXT</a></p> </div> </div> </fieldset> <fieldset id="reward_information" class="reward_information"> <div class="form-group col-sm-12"> <p class="text-left">Please provide an exclusive reward for our Krowdspace users.</p> <input ref="kickstarterReward" class="form-control" name="kickstarterReward" maxlength="110" placeholder="See Sample Rewards Below ( Max Character 110 )"> </div> <div class="form-group col-sm-12"> <p class="text-left">Does your reward have a value or is it a discount?</p> <select ref="kickstarterOption" class="form-control" name="kickstarterValue"> <option disabled selected value>Choose an Option</option> <option value="Yes">Reward has a Value</option> <option value="No">Reward is a Discount</option> </select> </div> <div class="form-group col-sm-12"> <p class="text-left">Please estimate the value of your reward.</p> <input ref="kickstarterValue" class="form-control" name="kickstarterAmount" maxlength="6"> </div> <div class="register-controls"> <div class="col-xs-offset-3 col-xs-6"> <p class="pull-left"><a class="back-project previous-ks">PREVIOUS</a></p> <p class="pull-right"><a class="back-project next-ks next-step">NEXT</a></p> </div> </div> </fieldset> <fieldset id="project_verify" class="project_verify"> <div class="col-sm-12"> <p class="text-left landing-text">PROJECT VERIFICATION</p> <p class="text-left">To verify that you are the project owner please upload one of the images from our <a href="#modal-press-kit" data-toggle="modal" class="home-links">Press Kit</a> area onto your crowdfunding project. This will prevent any false submissions and let us know you are indeed the owner.</p> <p class="text-left">The image that you select will need to be hyperlinked back to Krowdspace. We are verifying the actual hyperlink and not just the image being present. Please use the link below:</p> <p class="text-left">https://www.Krowdspace.com</p> <p class="text-left">If you have any questions or concerns please contact us and thank you for your understanding!</p> </div> <div class="register-controls"> <div class="col-xs-offset-3 col-xs-6"> <p class="pull-left"><a class="back-project previous-ks">PREVIOUS</a></p> <p class="pull-right"><a class="back-project next-ks next-step">NEXT</a></p> </div> </div> </fieldset> <fieldset id="service_terms" class="service_terms"> <div class="col-sm-12"> <p class="text-left landing-text">TERMS AND CONDITIONS</p> <p class="text-left">Krowdspace is not liable for any damages or losses related to using our services.</p> <p class="text-left">Project owners are legally bound to fullfill any rewards promised to the Krowdspace users.</p> <p class="text-left">Krowdspace is not responsible for the puncuality and delivery of the rewards and will not become involved between user disputes.</p> <p class="text-left">You agree to be in compliance with Kickstarter\'s Terms of Use and are using Krowdspace at your own risk.</p> <p class="text-left">I have read through and understand the Terms of Service in relation to Krowdspace.</p> <div class="login-box"> <label> <input class="check-box" ref="kickstarterCheck" type="checkbox" value="checked" name="terms[]" required minlength="1" aria-required="true"><span>I agree to <a href="#modal-service-terms" data-toggle="modal" class="home-links">Krowdspace terms</a></span> </label> </div> </div> <div class="register-controls"> <div class="col-xs-offset-3 col-xs-6"> <p class="pull-left"><a class="back-project previous-ks">PREVIOUS</a></p> <p class="pull-right"><input class="back-project" type="submit" value="SUBMIT" name="submit"></p> </div> </div> </fieldset> </form>', '', '', function(opts) {
        this.projectPrevious2 = function()
        {
            $( ".kickstarter-registration" ).hide();
            $( ".indiegogo-registration" ).hide();
            $( ".project-select-page" ).show();
        }.bind(this);

        this.kickstarter = function(e)
        {
            e.preventDefault();

            let PVALID = this.refs.kickstarterValid.value,
                CATEGORY = this.refs.kickstarterCategory.value,
                DOMAINURL = 'https://www.kickstarter.com/',
                URL =  this.refs.kickstarterLink.value,
                REWARD = this.refs.kickstarterReward.value,
                REWARDVALUE = this.refs.kickstarterOption.value,
                IGREWARD = 'Not Valid',
                REWARDAMOUNT = this.refs.kickstarterValue.value;

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

            if(!this.refs.kickstarterCheck.checked)
            return;

            krowdspace.register.project(DATA).then((res) =>
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
            $(".next-ks").click(function(){
                var form = $("#registerKickstarter");
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
                        kickstarterOwner: {
                            required: true,
                        },
                        kickstarterCategory: {
                            required: true,
                        },
                        kickstarterProject:{
                            required: true,
                        },
                        kickstarterReward:{
                            required: true,
                        },
                        kickstarterValue: {
                            required: true,

                        },
                        kickstarterAmount: {
                            required: true,
                            number: true,
                        },
                        krowdspaceTerms1: {
                            required: true,
                        },

                    },
                    messages: {
                        kickstarterOwner: {
                            required: "",
                        },
                        kickstarterCategory : {
                            required: "",
                        },
                        kickstarterProject: {
                            required: "",
                        },
                        kickstarterReward: {
                            required: "",
                        },
                        kickstarterValue: {
                            required: "",
                        },
                        kickstarterAmount: {
                            required: "",
                        },
                        krowdspaceTerms1: {
                            required: "",
                        },
                    }
                });
                if (form.valid() === true){
                    if ($('.project_information').is(":visible")){
                        current_fs = $('.project_information');
                        next_fs = $('.reward_information');
                    }else if($('.reward_information').is(":visible")){
                        current_fs = $('.reward_information');
                        next_fs = $('.project_verify');
                    }else if($('.project_verify').is(":visible")){
                        current_fs = $('.project_verify');
                        next_fs = $('.service_terms');
                    }

                    next_fs.show();
                    current_fs.hide();
                }
            });

            $('.previous-ks').click(function(){
                if($('.reward_information').is(":visible")){
                    current_fs = $('.reward_information');
                    next_fs = $('.project_information');
                }else if ($('.project_verify').is(":visible")){
                    current_fs = $('.project_verify');
                    next_fs = $('.reward_information');
                }else if ($('.service_terms').is(":visible")){
                    current_fs = $('.service_terms');
                    next_fs = $('.project_verify');
                }
                next_fs.show();
                current_fs.hide();
            });
        });
});
riot.tag2('register-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container dashboard"> <global-logout show="{logged_in}" uri="{opts.uri}"></global-logout> <div class="col-sm-10 col-sm-offset-1 padding-reset"> <div class="row dash-row no-gutter"> <register-content-signup></register-content-signup> </div> </div> </div> <register-project-perk></register-project-perk> <register-project-id></register-project-id> <register-project-error></register-project-error> <global-footer></global-footer>', '', '', function(opts) {
});
riot.tag2('register', '<register-page show="{logged_in}"></register-page>', '', '', function(opts) {

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
riot.tag2('reset-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container container-stand-alone"> <div class="col-sm-10 col-sm-offset-1 padding-reset"> <div class="row dash-row no-gutter"> <reset-password></reset-password> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('reset-password', '<div class="row row-verify"> <div class=" col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <form ref="passwordreset" onsubmit="{resetPassword}"> <div class="shadow modal-max-box"> <div class="text-left modal-box-alt"> <p class="modal-heading modal-heading-alt">Reset Password</p> <p class="text-left landing-text">Please enter the reset code that was sent to your email address and then type in a new password.</p> <div class="has-feedback"> <label class="control-label" for="code"></label> <input type="text" class="form-control box-radius" id="code" name="code" placeholder="Reset Password Code" ref="krowdspaceCode"> <span class="fa fa-user form-control-feedback"></span> </div> <div class="has-feedback password-padding"> <label class="control-label" for="password1"></label> <input class="form-control box-radius" id="password1" name="password1" placeholder="New Password" ref="krowdspacePassword"> <span class="fa fa-lock form-control-feedback"></span> </div> </div> <div class="text-center"> <input type="submit" class="landing-submit" name="submit" value="Password Reset"> </div> </div> </form> </div> </div>', '', '', function(opts) {
        this.resetPassword = function(e)
            {

            	e.preventDefault();

                let RESET_CODE = this.refs.krowdspaceCode.value;
                let NEW_PASSWORD = this.refs.krowdspacePassword.value;

            	krowdspace.register.reset_password(RESET_CODE, NEW_PASSWORD).then
            	((res) =>
            	{
                    window.location.replace("/");
                    this.refs.passwordreset.reset();
            	},
            	(err) =>
            	{
                    console.log(err);
            	});
            }.bind(this)
});
riot.tag2('reset', '<reset-page></reset-page>', 'reset,[data-is="reset"]{ background-color: rgba(50, 48, 49, 1) }', '', function(opts) {
});
riot.tag2('resource-content', '<div class="col-sm-12 text-left container-page shadow"> <p class="modal-heading">Crowdfunding Resources</p> <p class="legal-text">Submitting a project to Krowdspace is just the first step to having a successful campaign. We have provided some extra tools that are completely free for all Krowdspace members including example press release\'s and format guides as well as major media outlet contacts.</p> <div class="row"> <div class="col-sm-12"> <p class="privacy-title">Example Press Release</p> <p class="legal-text">Creating a Press Release is imperative to running a successful crowdfunding campaign. Make sure to have a compelling email subject, header and headline. Editors and Publishers receive 100\'s of emails per day and decide wether or not to open an email based on the subject alone. Please take a look at our format and built off of it with your own content.</p> <div class="col-sm-6 text-center media-padding"> <p><a class="mediaLink" href="pdf/Lala-Bahari-PR.pdf"><i class="fa fa-file-pdf-o fa-2x" download></i> Krowdspace Press Release</a></p> <p><a class="mediaLink" href="http://www.prnewswire.com/news-releases/first-truly-consumer-3d-printer-the-micro-launches-on-kickstarter-254179611.html" target="_blank">Micro 3D Printer Press Release</a></p> </div> <div class="col-sm-6 text-center media-padding"> <p><a class="mediaLink" href="pdf/Pebble-Time-PR.pdf"><i class="fa fa-file-pdf-o fa-2x" download></i> Pebble Time Press Release</a></p> <p><a class="mediaLink" href="http://www.prnewswire.com/news-releases/travel-light-announces-breakthrough-g-ro-luggage-system-300161006.html" target="_blank">G-RO Luggage System</a></p> </div> <p class="privacy-title">Format Press Release</p> <p class="legal-text">There are a few key elements that every press release should have so that media outlets can quickly identify the story. Here are a few links we found that can help you structure a Press Release in an appealing way.</p> <div class="col-sm-6 text-center media-padding"> <p><a class="mediaLink" href="http://fundbeam.com/kickstarter-press-release/" target="_blank">Fundbeam Press Release Guide</a></p> </div> <div class="col-sm-6 text-center media-padding"> <p><a class="mediaLink" href="https://crowdfundingheadlines.com/press-release-tips/" target="_blank">Crowdfunding Headlines Press Release Guide</a></p> </div> </div> </div> <p class="privacy-title">Submit Your Press Release for Media Coverage</p> <p class="legal-text">We have compiled a media contact list with some of the biggest names in the industry. Click on a company and you will be directed to their submission form or email contact. We will be adding and updating this list on a regular basis to keep our contacts up to date.</p> <div class="row media-box"> <div class="col-lg-12 col-lg-offset-0 col-md-8 col-md-offset-2"> <div class="col-lg-3 col-md-6 col-sm-6"> <p each="{media1}"> <a class="mediaLink" onclick="$(\':first-child\', this).css(\'color\', \'#5cb85c\');" href="{mediaLink}" target="{target}"> <i class="fa fa-check media-icons"></i> {mediaTitle} </a> </p> </div> <div class="col-lg-3 hidden-md hidden-sm"> <p each="{media2}"> <a class="mediaLink" onclick="$(\':first-child\', this).css(\'color\', \'#5cb85c\');" href="{mediaLink}" href="{mediaLink}" target="{target}"> <i class="fa fa-check media-icons"></i> {mediaTitle} </a> </p> </div> <div class="col-lg-3 col-md-6 col-sm-6"> <p each="{media3}"> <a class="mediaLink" onclick="$(\':first-child\', this).css(\'color\', \'#5cb85c\');" href="{mediaLink}" href="{mediaLink}" target="{target}"> <i class="fa fa-check media-icons"></i> {mediaTitle} </a> </p> </div> <div class="hidden-lg col-md-6 col-sm-6"> <p each="{media2}"> <a class="mediaLink" onclick="$(\':first-child\', this).css(\'color\', \'#5cb85c\');" href="{mediaLink}" href="{mediaLink}" target="{target}"> <i class="fa fa-check media-icons"></i> {mediaTitle} </a> </p> </div> <div class="col-lg-3 col-md-6 col-sm-6"> <p each="{media4}"> <a class="mediaLink" onclick="$(\':first-child\', this).css(\'color\', \'#5cb85c\');" href="{mediaLink}" href="{mediaLink}" target="{target}"> <i class="fa fa-check media-icons"></i> {mediaTitle} </a> </p> </div> </div> <div class="col-sm-12 text-center"> <p class="media-refresh">*Refresh Browser to Reset Checkmarks</p> </div> </div> </div>', '', '', function(opts) {
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
riot.tag2('resource-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container dashboard"> <global-logout class="hidden-xs" show="{logged_in}" uri="{opts.uri}"></global-logout> <div class="col-sm-10 col-sm-offset-1 padding-reset"> <div class="row dash-row no-gutter"> <resource-content></resource-content> </div> </div> </div> <global-footer></global-footer>', '', '', function(opts) {
});
riot.tag2('resource', '<resource-page show="{logged_in}"></resource-page>', '', '', function(opts) {

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
riot.tag2('verify-content-confirm', '<div class="row row-verify"> <p class="text-center verify-confirmation">Thank you for registering with Krowdspace!</p> <div class="col-sm-12"> <p class="verify-tag">Enjoy our...</p> </div> <div class="col-sm-4 text-left verify-col-block"> <p> <i class="fa fa-check fa-2x krowdspace"></i><strong> Extra Rewards</strong></p> <p class="verify-block"> Being a member allows you to support projects and get extra rewards from projects on major platforms such as Kickstarter and Indiegogo.</p> </div> <div class="col-sm-4 text-left verify-col-block"> <p> <i class="fa fa-check fa-2x krowdspace"></i><strong> Exclusive Giveaways</strong></p> <p class="verify-block"> Enter for a chance to win amazing prizes from successful crowdfunding campaigns sponsored by Krowdspace.</p> </div> <div class="col-sm-4 text-left verify-col-block"> <p><i class="fa fa-check fa-2x krowdspace"></i><strong> Project Dashboard</strong></p> <p class="verify-block"> If you have a crowdfunding campaign that is currently live you can submit it to Krowdspace and gain access to our free project dashboard.</p> </div> </div> <div class="row"> <div class="col-sm-7"> <p>Would you like to submit your own crowdfunding project to Krowdspace?</p> </div> <div class="col-sm-4 text-center"> <a href="/#/account/register"><span class="verify-submit"><strong>YES</strong> </span></a> <a href="/#/explore"><span class="verify-submit"><strong>NO</strong> </span></a> </div> </div>', '', '', function(opts) {
});
riot.tag2('verify-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container dashboard"> <global-logout show="{logged_in}" uri="{opts.uri}"></global-logout> <div class="col-sm-10 col-sm-offset-1 padding-reset"> <div class="row dash-row no-gutter"> <verify-content-confirm></verify-content-confirm> </div> </div> </div> <global-footer></global-footer>', '', '', function(opts) {
});
riot.tag2('verify', '<verify-page></verify-page>', '', '', function(opts) {
});
riot.tag2('explore-content-card', '<div class="row"> <div each="{exploreCard in displayCards}" class="col-lg-4 col-md-6 col-sm-6 padding-reset"> <div ref="exploreCard.ExploreCard.data.category"> <div class="no-gutter explore-container shadow"> <div class="platform-card-box"> <a href="/#/explore/project/{exploreCard.ExploreCard.data.id}"> <img class="img-responsive image-card {exploreCard.ExploreCard.data.imageSize}" riot-src="{exploreCard.ExploreCard.data.image}"></a> </div> <a href="/#/explore/project/{exploreCard.ExploreCard.data.id}"> <span show="{exploreCard.ExploreCard.data.featured}" class="fa-stack fa-lg explore-feature-icon"> <i class="fa fa-circle fa-stack-xx krowdspace"></i> <i class="fa fa-heart fa-stack-1x fa-inverse"></i> </span> </a> <div class="card-title-height"> <p class="card-text-alt">{exploreCard.ExploreCard.data.title}</p> <p class="card-text-alt">Reward: {exploreCard.ExploreCard.data.reward}</p> </div> <div class="col-xs-5 text-left card-return"> <p class="card-text-alt">${exploreCard.ExploreCard.data.backed || 0} Raised</p> </div> <div class="col-xs-2 text-center card-return"> <p class="card-text-alt days-center">{exploreCard.ExploreCard.data.days || 0} Days</p> </div> <div class="col-xs-5 text-right card-return"> <p class="card-text-alt">${exploreCard.ExploreCard.data.goal || 0} Goal</p> </div> <div class="col-xs-12"> <div class="progress"> <div class="progress-bar" role="progressBar" riot-style="width: {exploreCard.ExploreCard.data.percent + \'%\'};" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div> </div> </div> <div class="clearfix"></div> </div> </div> </div> </div>', '', '', function(opts) {
        this.displayCards = [];

        this.fixMetaCrap = function fixMetaCrap(pa)
        {
            let res = {data: pa};

            let projectArray = res.data;

            projectArray.forEach((element) =>
            {
                let goalValue = element.project_data.meta_data.funding,
                    goalLocale = goalValue.toLocaleString(),

                    raisedValue = element.project_data.meta_data.raised,
                    raisedLocale = raisedValue.toLocaleString(),

                    percentWhole = element.project_data.meta_data.raisedPercent * 100,

                    endTime = element.project_data.meta_data.endTime,
                    end = new Date(endTime),
                    remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 86400000,
                    countdown = Math.floor(remaining),
                    daysMax = Math.max(0, countdown);

                element.ExploreCard = (
                    {
                        data:
                        {
                            'platform': element.platform,
                            'id': element.unique_id,
                            'category': element.project_data.info_data.category,
                            'featured': element.project_data.info_data.featured,
                            'image': element.project_data.meta_data.mainImg || element.project_data.meta_data.altImg,
                            'imageSize': element.project_data.meta_data.mainImg || "indiegogo-small-image",
                            'backed': raisedLocale,
                            'goal': goalLocale,
                            'percent': percentWhole,
                            'days': daysMax,
                            'title': element.project_data.meta_data.title,
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
riot.tag2('explore-content-filter', '<div class="row"> <div class="col-sm-5 filter-rows"> <select class="form-control" ref="options" onchange="{onCatChange}"> <option value="*">Featured Projects</option> <option each="{cat in catArr}" riot-value="{cat}">{cat}</option> </select> </div> <div class="col-sm-1"></div> <div class="col-sm-6 filter-rows"> <form role="search"> <div class="input-group"> <input type="text" ref="searchBox" class="form-control" placeholder="Search Projects" onkeyup="{onSearch}"> <div class="input-group-btn"> <div class="btn btn-void"> <i class="fa fa-search fa-lg"></i> </div> </div> </div> </form> </div> </div>', '', '', function(opts) {

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
                return (element.project_data.info_data.rewardValid == 0);
            });

            let catSet = new Set();

            res.data.forEach((el)=>
            {
                catSet.add(el.project_data.info_data.category);
            });

            catSet.forEach((el)=>
            {
                this.catArr.push(el);
                this.catArr = this.catArr.sort();
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
            return el.project_data.info_data.featured;
        });

        let spA = pa.filter((el, i, arr)=>
        {
            return !el.project_data.info_data.featured;
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
riot.tag2('explore-slider-hero', '<div class="row"> <div class="autoplay slider explore-header"> <div class="landing-banner" each="{ExploreBannerFilter}"> <img class="landing-slider {project_data.meta_data.mainImg || \'indiegogo-image-small\'}" riot-src="{project_data.meta_data.mainImg || project_data.meta_data.altImg}"> <div class="landing-banner-box"> <div class="col-xs-9 padding-reset"> <span class="explore-title">{name}</span> <div class="explore-box-text"> <span class="explore-title">{project_data.info_data.reward}</span> </div> </div> <div class="col-xs-3 learn-more-box text-right"> <a class="plus-switch-one" href="{unique_url || \'/#/explore/project/\' + unique_id}" data-toggle="modal"><p class="learn-more">Learn More</p></a> <a class="plus-switch" href="{unique_url || \'/#/explore/project/\' + unique_id}" data-toggle="modal"><i class="fa fa-plus learn-more-plus"></i></a> </div> </div> </div> </div> </div>', 'explore-slider-hero .landing-banner,[data-is="explore-slider-hero"] .landing-banner{ height:310px; overflow: hidden; width: 550px; background-color: #000; position: relative; border-top:1px solid #000; border-bottom:1px solid #000; } explore-slider-hero .landing-slider,[data-is="explore-slider-hero"] .landing-slider{ height: auto; margin-left: auto; margin-right: auto; } explore-slider-hero .indiegogo-image-small,[data-is="explore-slider-hero"] .indiegogo-image-small{ height:310px; width: auto; } @media screen and (max-width: 550px) { explore-slider-hero .col-xs-9,[data-is="explore-slider-hero"] .col-xs-9{ width: 90%; } explore-slider-hero .col-xs-3,[data-is="explore-slider-hero"] .col-xs-3{ width: 10%; } explore-slider-hero .landing-banner,[data-is="explore-slider-hero"] .landing-banner{ height:225px; } explore-slider-hero .indiegogo-image-small,[data-is="explore-slider-hero"] .indiegogo-image-small{ height:225px; width: auto; } explore-slider-hero .landing-banner,[data-is="explore-slider-hero"] .landing-banner{ width: 400px; background-color: #000; position: relative; } }', '', function(opts) {
        krowdspace.projects.explore().then((res) =>
        {
            let ExploreBannerData = res.data;

                FilterExplore = ExploreBannerData.filter((element) => {
                return (element.project_data.info_data.explore);
            });

            let newObject={
                        unique_url: '#modal-feature-info',
                        name: '',
                        project_data:
                        {
                            info_data:
                            {
                                reward: ''
                            },
                            meta_data:
                            {
                                mainImg: '/img/content/krowdspace-banner-1.jpg',
                            },
                        },
                    };
            let newObject2={
                        unique_url: '#modal-global-register',
                        name: 'Join Krowdspace Today!',
                        project_data:
                        {
                            info_data:
                            {
                                reward: 'Discover Extra Rewards For Projects You Love!'
                            },
                            meta_data:
                            {
                                mainImg: '/img/content/krowdspace-join.jpg',
                            },
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
            let FilterExplore = [];
            let newObject={
                        unique_url: '#modal-feature-info',
                        name: '',
                        project_data:
                        {
                            info_data:
                            {
                                reward: ''
                            },
                            meta_data:
                            {
                                mainImg: '/img/content/krowdspace-banner-1.jpg',
                            },
                        },
                    };
            let newObject2={
                        unique_url: '#modal-global-register',
                        name: 'Join Krowdspace Today!',
                        project_data:
                        {
                            info_data:
                            {
                                reward: 'Discover Extra Rewards For Projects You Love!'
                            },
                            meta_data:
                            {
                                mainImg: '/img/content/krowdspace-join.jpg',
                            },
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
        });
});

riot.tag2('explore', '<explore-page></explore-page>', '', '', function(opts) {
});
riot.tag2('project-modal-login', '<div class="container dark-modal"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <form ref="projectlogin" onsubmit="{loginSubmit}"> <div class="text-left modal-box-alt modal-max-box"> <p class="modal-heading-alt">Krowdspace Login</p> <div id="errorLog" class="alert alert-danger alert-dismissable fade in"> <a class="close" onclick="$(\'.alert\').hide()"><i class="fa fa-close"></i></a> <strong>Error:</strong> Invalid username or password. </div> <div class="has-feedback"> <label class="control-label" for="username"></label> <input type="text" class="form-control box-radius" id="username" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off"> <span class="fa fa-user form-control-feedback"></span> </div> <div class="has-feedback"> <label class="control-label" for="password"></label> <input type="password" class="form-control box-radius" id="password" placeholder="Password" ref="passwordlogin" autocorrect="off"> <span class="fa fa-lock form-control-feedback"></span> </div> <div class="col-xs-6 login-box text-left"> <label> <input class="check-box" type="checkbox" ref="checkbox">Remember Me </label> </div> <div class="col-xs-6 login-box text-right"> <a onclick="{registerPassword}"> <p class="forgot-pass">Forgot Password?</p> </a> </div> <div class="clearfix"></div> </div> <div class="text-center modal-max-box"> <input type="submit" class="landing-submit" name="submit" value="Login"> </div> </form> <div class="text-center"> <p class="login-float-text">Dont have an account? <a class="function-link" onclick="{registerModal}">Register today!</a></p> </div> </div> </div>', '', '', function(opts) {

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
            this.refs.projectlogin.reset();
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
riot.tag2('project-modal-reward', '<div id="kickstarter-reward" class="modal container fade padding-reset"> <div class="krowdspace-modal col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-box modal-max-box"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">Support Project</p> <p class="text-left legal-text">To support this project and receive the posted reward make sure to send the below COUPON CODE after completing your pledge. All project owners have agreed to fulfill any and all rewards posted on their project page.</p> <div class="coupon-code-box text-center"> <p class="coupon-code">{couponCode}</p> </div> </div> <div class="text-center modal-max-box"> <a href="{projectLink}" target="_blank"> <p class="landing-submit">SUPPORT PROJECT</p> </a> </div> </div> </div> </div>', '', '', function(opts) {
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
riot.tag2('project-page-content', '<div show="{contentDisplay}" class="col-sm-12 explore-project" ref="projectcontent"></div>', '', '', function(opts) {
        krowdspace.projects.project(this.opts.uri).then((res)=>
        {
            if(res.data[0].project_data.meta_data.content)
            {
                this.refs.projectcontent.innerHTML = res.data[0].project_data.meta_data.content;
                this.contentDisplay = true;
            }else{
                this.contentDisplay= false;
            }

            this.update();
        },
        (err)=>
        {

        });
});
riot.tag2('project-page-image', '<div class="col-md-6 project-image-box padding-reset"> <img class="img-responsive project-image {indiegogoSmall || \'project-image-indiegogo\'}" ref="krowdspaceImage" src=""> <p class="funding-text funded-left">$ {raisedLocale || 0} RAISED</p> <p class="funding-text funded-right">$ {goalLocale || 0} GOAL</p> <div id="progressBar"></div> </div>', '', '', function(opts) {
    krowdspace.projects.project(this.opts.uri).then((res)=>
    {
        this.refs.krowdspaceImage.src = res.data[0].project_data.meta_data.mainImg || res.data[0].project_data.meta_data.altImg;
        this.indiegogoSmall = res.data[0].project_data.meta_data.mainImg;

        let raisedValue = res.data[0].project_data.meta_data.raised,
            raisedRounded = Math.round(raisedValue);
        this.raisedLocale = raisedRounded.toLocaleString();

        let goalValue = res.data[0].project_data.meta_data.funding;
        this.goalLocale = goalValue.toLocaleString();

        let percentValue = res.data[0].project_data.meta_data.raisedPercent,
            numberMax = Math.min(Math.max(percentValue, 0), 1);

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
	
riot.tag2('project-page-share', '<div class="col-sm-1 no-gutter share-container"> <div class="text-left shadow share-box"> <a href="{facebookShare}" target="_blank"> <span class="fa-stack fa-lg facebook icon-reset facebook-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="{twitterShare}" target="_blank"> <span class="fa-stack fa-lg twitter icon-reset twitter-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="{googleShare}" target="_blank"> <span class="fa-stack fa-lg google icon-reset google-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-google-plus fa-stack-1x fa-inverse"></i> </span> </a> <a href="{linkedinShare}" target="_blank"> <span class="fa-stack fa-lg linkedin icon-reset linked-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i> </span> </a> <a href="{redditShare}" target="_blank"> <span class="fa-stack fa-lg reddit icon-reset reddit-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-reddit-alien fa-stack-1x fa-inverse"></i> </span> </a> <a href="{diggShare}" target="_blank"> <span class="fa-stack fa-lg digg icon-reset digg-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-digg fa-stack-1x fa-inverse"></i> </span> </a> <a href="{stumbleuponShare}" target="_blank"> <span class="fa-stack fa-lg stumbleupon icon-reset stumble-back filterdark"> <i class="fa fa-square fa-stack-2x"></i> <i class="fa fa-stumbleupon fa-stack-1x fa-inverse"></i> </span> </a> <a class="hidden-xs" href="https://www.facebook.com/Krowdspaced" target="_blank"> <img class="icon-share icon-reset krowdspace-back filterdark" src="img/fav/krowdspace-share-icon.png"> </a> </div> </div>', '@media screen and (max-width: 767px) { project-page-share .shadow,[data-is="project-page-share"] .shadow{ -webkit-box-shadow: none; -moz-box-shadow: none; } project-page-share .share-container,[data-is="project-page-share"] .share-container{ top: 79px; left:0; right: 0; position: absolute; display: inline-block; font-size: 0px; width: 400px; margin-left: auto; margin-right: auto; } project-page-share .share-box,[data-is="project-page-share"] .share-box{ width: 400px; border-right: 1px solid #eb4924;; } project-page-share .icon-reset,[data-is="project-page-share"] .icon-reset{ font-size: 19px; width: 57px; } project-page-share .icon-reset:hover,[data-is="project-page-share"] .icon-reset:hover{ font-size: 19px; width: 57px; } }', '', function(opts) {
        krowdspace.projects.project(this.opts.uri).then((res)=>
        {

            this.facebookShare = 'https://www.facebook.com/sharer.php?u=' + res.data[0].project_data.info_data.url;

            this.twitterShare = 'https://twitter.com/intent/tweet?text=Check out ' + res.data[0].project_data.meta_data.title + ' at Krowdspace.com!&hashtags=krowdspace, kickstarter, indiegogo';

            this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title;

            this.redditShare = 'https://reddit.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title;

            this.diggShare = 'http://digg.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title;

            this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title;

            this.googleShare = 'https://plus.google.com/share?url=' + res.data[0].project_data.info_data.url;

            this.update();

        },
        (err)=>
        {

        });
});
riot.tag2('project-page-title', '<div class="col-md-6 text-left no-gutter project-page-container"> <p class="project-text">{projectTitle}</p> <p class="project-text">{projectDescription}</p> <p class="project-text">Reward: {projectReward}</p> <p class="project-text hidden-md">To view the coupon code or directly link to the rewards page please click on the "Back Project" button below.</p> <div class="reward-position-box"> <div class="col-xs-6 text-center divider-inside-right backed-box"> <a show="{projectbtn}" href="#kickstarter-reward" class="modal-link" data-toggle="modal"> <p class="back-project">BACK PROJECT</p> </a> <a show="{!projectbtn}" href="{projectLink}" target="_blank"> <p class="back-project">BACK PROJECT</p> </a> </div> <div class="col-xs-6 text-center backed-box-right"> <p class="social-metric">{counterProject || 0} DAYS LEFT</p> </div> </div> </div>', '', '', function(opts) {
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

            this.counterProject = Math.floor(daysMax);
            this.update();
        },
        (err)=>
        {

        });

});
riot.tag2('project-page', '<div class="row"> <global-krowdspace-navigation></global-krowdspace-navigation> </div> <div class="container dashboard"> <project-page-share uri="{opts.uri}"></project-page-share> <global-logout class="hidden-xs" show="{logged_in}" uri="{opts.uri}"></global-logout> <div class="col-sm-10 col-sm-offset-1 padding-reset"> <div class="row dash-row no-gutter shadow"> <project-page-image uri="{opts.uri}"></project-page-image> <project-page-title uri="{opts.uri}"></project-page-title> </div> </div> <div class="col-sm-10 col-sm-offset-1 padding-reset"> <div class="row project-row no-gutter"> <project-page-content uri="{opts.uri}"></project-page-content> </div> </div> </div> <project-modal-reward uri="{opts.uri}"></project-modal-reward> <global-footer></global-footer>', '@media screen and (max-width: 767px) { project-page .shadow,[data-is="project-page"] .shadow{ -webkit-box-shadow: none; -moz-box-shadow: none; } }', '', function(opts) {
});
riot.tag2('project', '<project-modal-login show="{!logged_in}"></project-modal-login> <project-page show="{logged_in}" uri="{opts.uri}"></project-page>', '', '', function(opts) {
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
riot.tag2('global-footer', '<footer id="contacts" class="alternate-background"> <div class="footer-custom"> <div class="container"> <div class="row"> <div class="col-md-3 hidden-sm hidden-xs static"> <p class="footer-title"> <strong>Quick Links</strong> </p> <ul class="text-left quicklinks"> <li><a class="page-scroll home-text" href="/#/account/dashboard">View Dashboard</a></li> <li><a class="page-scroll home-text" href="/#/account/register">Submit A Project</a></li> <li><a href="#modal-about" data-toggle="modal" class="modal-link home-text">About Krowdspace</a></li> <li><a href="/#/account/giveaway" data-toggle="modal" class="modal-link home-text">Giveaways</a></li> <li><a href="#modal-press-kit" data-toggle="modal" class="modal-link home-text">Press Kit</a></li> <li><a href="#modal-privacy-policy" data-toggle="modal" class="modal-link home-text">Privacy Policy</a></li> <li><a href="#modal-service-terms" data-toggle="modal" class="modal-link home-text">Terms of Service</a></li> <li><a href="#modal-disclaimer" data-toggle="modal" class="modal-link home-text">Disclaimer</a></li> </ul> </div> <div class="col-md-4 col-sm-offset-0 col-sm-6 col-xs-offset-0 col-xs-12 footer-social"> <p class="footer-title"> <strong>Follow Us On Social Media</strong> </p> <p class="text-left social-footer">We are constantly building our social media community. Connect with us for updates on the latest news, promotions and exclusive giveaways. </p> <div class="text-left social-icons"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <i class="fa fa-facebook footer-social-icon filterprimary"></i> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <i class="fa fa-pinterest footer-social-icon filterprimary"></i> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <i class="fa fa-twitter footer-social-icon filterprimary"></i> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <i class="fa fa-instagram footer-social-icon filterprimary"></i> </a> </div> </div> <div class="col-lg-push-1 col-lg-4 col-md-5 col-sm-offset-0 col-sm-6 col-xs-offset-0 col-xs-12 text-center contact-container"> <p class="footer-title contact-box"><strong>Contact Krowdspace</strong></p> <form onsubmit="{contactMessage}" ref="commentForm"> <div class="form-group"> <input type="text" ref="fullname" class="form-control" placeholder="Full Name" required> </div> <div class="form-group"> <input ref="email" class="form-control" placeholder="Email Address" required type="email"> </div> <div class="form-group"> <textarea class="form-control" ref="comment" type="text" placeholder="Your Message" rows="3" required></textarea> </div> <div> <input type="submit" class="contact-btn" name="submit" value="Send Message"> </div> </form> </div> </div> <div class="text-left"> <p class="copyright">&copy; Krowdspace {year}</p> </div> </div> </div> </footer>', '', '', function(opts) {
      this.contactMessage = function(e)
        {
            e.preventDefault();

            let FULLNAME = this.refs.fullname.value,
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

            });
        }.bind(this)
        this.year = new Date().getFullYear();
        this.update();
});

riot.tag2('global-krowdspace-navigation', '<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-alt explore-fixed-top"> <div class="container"> <div class="navbar-header page-scroll"> <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#explore-nav-collapse"> <span class="sr-only">Toggle navigation</span><i class="fa fa-bars hamburger"></i> </button> <a class="navbar-logo-alt" href="/"><img class="nav-logo-size" src="/../img/press/krowdspace-icon-v1.png" alt="Krowdspace Logo Small"></a> </div> <div class="collapse navbar-collapse text-center" id="explore-nav-collapse"> <ul class="nav navbar-nav navbar-left"> <li class="hidden"> <a href="#page-top"></a> </li> <li> <a class="explore-scroll" href="/#/explore">Explore</a> </li> <li> <a class="explore-scroll" href="/#/account/register">Submit Project</a> </li> </ul> <a href="/"> <img class="nav-logo-float nav-logo-size hidden-sm hidden-xs" src="img/press/krowdspace-icon-v1.png" alt="Krowdspace Logo Small"> </a> <ul class="nav navbar-nav navbar-right"> <li class="hidden"> <a href="#page-top"></a> </li> <li> <a show="{logged_in}" class="explore-scroll" href="/#/account/dashboard">Dashboard</a> </li> <li> <a show="{!logged_in}" href="#modal-global-login" class="modal-link" data-toggle="modal">Login</a> </li> <li> <a show="{!logged_in}" href="#modal-global-register" class="modal-link" data-toggle="modal">Register</a> </li> <li> <a show="{logged_in}" href="/#/account/resource">Resource</a> </li> <li> <a class="hidden-lg hidden-md" show="{logged_in}" onclick="{krowdspaceLogout}">Logout</a> </li> </ul> </div> </div> </nav>', '', '', function(opts) {

    krowdspace.v1.check().then((res)=>
	{
		logged_in = true;
		this.update();
	},
	(err)=>
	{

    });

    this.krowdspaceLogout = function()
    {
        krowdspace.v1.logout().then((res) =>
        {
            window.location.replace("/");
        },
        (err) =>
        {

        });
    }.bind(this);

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
riot.tag2('global-logout', '<div class="col-sm-1 text-right no-gutter share-container-right"> <div class="shadow share-box"> <a onclick="{krowdspaceLogout}" title="Krowdspace Logout"> <span class="fa-stack fa-lg icon-reset krowdspace-back filterdark"> <i class="fa fa-square fa-stack-2x krowdspace"></i> <i class="fa fa-sign-out fa-stack-1x fa-inverse share-icon-push"></i> </span> </a> </div> </div>', '', '', function(opts) {
    this.krowdspaceLogout = function()
    {
        krowdspace.v1.logout().then((res) =>
        {
            window.location.replace("/");
        },
        (err) =>
        {

        });
    }.bind(this);
});
riot.tag2('global-modal-about', '<div id="modal-about" class="modal container padding-reset fade"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">About Krowdspace</p> </div> <div class="modal-body"> <ul class="timeline"> <li> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/home-header.jpg" alt="Creating a crowdfunding project on a computer."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="timeline-heading">October 2016</p> <p class="timeline-heading">The Crowdfunding Experiment</p> <div class="text-left"> <p>We had our first encounter with crowdfunding while attempting to launch our original product "The Bahari Bag" on Kickstarter. We had the great product, a full functioning website, personal story and a well crafted project page. It became very clear that we were missing one thing. Our community wasnt large enough and it was very difficulty to gain any traction. We searched high and low for a free or affordable website to show off our hard work and build our community but there was none.</p> </div> </div> </div> </li> <li class="timeline-inverted"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/mountain.jpg" alt="Open nature themed background."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="timeline-heading">November 2016</p> <p class="timeline-heading">The Seed is Planted</p> <div class="text-left"> <p>As we came to terms with the results of our Kickstarter our team decided to analyze and learn from our mistakes. We had invested a lot of money into companies who promised promotions and news coverage or articles but never delivered. Our hard work and dreams had been taken advantage of by people looking to make a quick profit. The idea of a new and innovative company started to take shape to help others navigate the extreme world of crowdfunding.</p> </div> </div> </div> </li> <li> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/social.jpg" alt="Social media on ipad."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="timeline-heading">December 2016</p> <p class="timeline-heading">Krowdspace is Born</p> <div class="text-left"> <p>Krowdspace begins development to create a unified platform for people who need help launching their own crowdfunding projects. We wanted to offer a service that is appreciated and transparent. As our development continued new features were added regularly. Our social media channels go live and we start building our own brand.</p> </div> </div> </div> </li> <li class="timeline-inverted"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/conference-desk.jpg" alt="Business meeting at a desk."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="timeline-heading">January 2017</p> <p class="timeline-heading">Building our Platform</p> <div class="text-left"> <p>Along with social media boosts and featured banners for our users, we have also collected news media contacts for Press Kits to help gain traction. We are also providing targeted ad campaigns that will be fully transparent. By investing in our advertisements plans we will put 100% of the money you provide towards your campaigns. Krowdspace will not take a cut.</p> </div> </div> </div> </li> <li class="timeline"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/krowdspace-old.jpg" alt="old Krowdspace Logo with background."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="timeline-heading">March 2017</p> <p class="timeline-heading">Krowdspace Launch</p> <div class="text-left"> <p>The Krowdspace Landing page is launched! With the hard work and dedication of our team we were able to launch a month ahead of schedule. Next step is bringing to life the unified dashboard to pull in crowdfunding projects from the top sites. We have also launched limited crowdfunding tools to help your project be successful.</p> </div> </div> </div> </li> <li class="timeline-inverted"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/krowdspace-new.jpg" alt="Updated Krowdspace Logo."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="timeline-heading">June 2017</p> <p class="timeline-heading">Finish Strong</p> <div class="text-left"> <p>Krowdspace is nearing completion and we are getting closer to the final launch! A date has been set and we should be launching August 22, 2017. Krowdspace has made a slight pivot to stay within the bounds of the internet and are excited to bring you the first ever crowdfunding discount site.</p> </div> </div> </div> </li> <li class="timeline time-bottom"> <div class="timeline-image"> <img class="img-circle img-responsive" src="img/about/seattle-skyline.jpg" alt="Background image of Seattle."> </div> <div class="timeline-panel"> <div class="text-left"> <p class="timeline-heading">Krowdspace</p> <div class="text-left"> <p>Krowdspace consists of a small team from the Seattle Washington area. Each one of us brings a special skill set to create something special. Support us on this journey and see how Krowdspace takes shape.</p> </div> </div> </div> </li> </ul> </div> <div class="modal-close-box text-right"> <button type="button" class="modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('global-modal-comment', '<div id="modal-comment" class="modal container fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Thank You From Krowdspace</p> </div> <div class="modal-body"> <p>Thank you for submitting your comment to Krowdspace. We will respond as quickly as possible. Please register with Krowdspace and get to know our new site!</p> <p>We will be sending updates on the latest news, promotions and exclusive giveaways to all of our Krowdspace members. Until then, make sure to stay connected on our social media channels:</p> <div class="col-sm-9 text-left social-icons"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-instagram fa-stack-1x fa-inverse"></i> </span> </a> </div> <div class="col-sm-3 text-right social-icons padding-reset"> <a onclick="{comment}"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-sign-out fa-stack-1x fa-inverse center-icon"></i> </span> </a> </div> <div class="clearfix"></div> </div> </div> </div> </div>', '', '', function(opts) {
this.comment = function()
{
	$('#modal-comment').modal('hide');
    window.location.replace("/#/explore");
}.bind(this)
});
riot.tag2('global-modal-contact', '<div id="modal-global-contact" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-body modal-custom"> <form onsubmit="{contactMessageModal}"> <div class="text-left modal-box-alt modal-max-box-alt"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading modal-heading-alt">Contact Krowdspace</p> <p class="text-left cta-header">If you have any questions or concerns please contact us using the below form.</p> <div class="form-group"> <input type="text" ref="contactName" class="form-control" placeholder="Full Name" required> </div> <div class="form-group"> <input ref="contactEmail" class="form-control" placeholder="Email Address" required type="email"> </div> <div class="form-group"> <textarea class="form-control" ref="contactMessage" type="text" placeholder="Your Message" rows="3" required></textarea> </div> </div> <div class="text-center modal-max-box-alt"> <input type="submit" class="landing-submit" name="submit" value="Contact Krowdspace"> </div> </form> </div> </div> </div>', '', '', function(opts) {

this.contactMessageModal = function(e)
    {
        e.preventDefault();

        let FULLNAME = this.refs.contactName.value,
            EMAIL = this.refs.contactEmail.value,
            COMMENT = this.refs.contactMessage.value;

        krowdspace.register.contact_us(FULLNAME,EMAIL,COMMENT).then
        ((res) =>
        {
            $('#modal-global-contact').modal('hide');
            $('#modal-comment').modal('show');
            this.refs.commentForm.reset();
        },
        (err) =>
        {

        });
    }.bind(this)
});
riot.tag2('global-modal-disclaimer', '<div id="modal-disclaimer" class="modal container padding-reset fade"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">Krowdspace Disclaimer</p> </div> <div class="modal-body"> <p class="legal-text">Last Updated July 25, 2017</p> <p class="legal-text">The information provided by Krowdspace LLC (“we,” “us” or “our”) on https://www.krowdspace.com (the “Site”) is for general informational purposes only. All information on the Site is provided in good faith, however we make no representation or warranty of any kind, express or implied, regarding the accuracy, adequacy, validity, reliability, availability or completeness of any information on the Site. UNDER NO CIRCUMSTANCE SHALL WE HAVE ANY LIABILITY TO YOU FOR ANY LOSS OR DAMAGE OF ANY KIND INCURRED AS A RESULT OF THE USE OF THE SITE OR RELIANCE ON ANY INFORMATION PROVIDED ON THE SITE. YOUR USE OF THE SITE AND YOUR RELIANCE ON ANY INFORMATION ON THE SITE IS SOLELY AT YOUR OWN RISK.</p> <p class="privacy-title"><strong>EXTERNAL LINKS DISCLAIMER</strong></p> <p class="legal-text">The Site may contain (or you may be sent through the Site links to other websites or content belonging to or originating from third parties or links to websites and features in banners or other advertising. Such external links are not investigated, monitored, or checked for accuracy, adequacy, validity, reliability, availability or completeness by us. WE DO NOT WARRANT, ENDORSE, GUARANTEE, OR ASSUME RESPONSIBILITY FOR THE ACCURACY OR RELIABILITY OF ANY INFORMATION OFFERED BY THIRD PARTY WEBSITES LINKED THROUGH THE SITE OR ANY WEBSITE OR FEATURE LINKED IN ANY BANNER OR OTHER ADVERTISING. WE WILL NOT BE A PARTY TO OR IN ANY WAY BE RESPONSIBLE FOR MONITORING ANY TRANSACTION BETWEEN YOU AND THIRD PARTY PROVIDERS OF PRODUCTS OR SERVICES.</p> <p class="privacy-title"><strong>PROFESSIONAL DISCLAIMER</strong></p> <p class="legal-text">The Site cannot and does not contain financial advice. The financial information is provided for general informational and educational purposes only and is not a substitute for professional advice. Accordingly, before taking any actions based upon such information, we encourage you to consult with the appropriate professionals. We do not provide any kind of financial advice. THE USE OR RELIANCE OF ANY INFORMATION CONTAINED ON THIS SITE IS SOLELY AT YOUR OWN RISK.</p> <p class="privacy-title"><strong>TESTIMONIALS DISCLAIMER</strong></p> <p class="legal-text">The Site may contain testimonials by users of our products and/or services. These testimonials reflect the real-life experiences and opinions of such users. However, the experiences are personal to those particular users, and may not necessarily be representative of all users of our products and/or services. We do not claim, and you should not assume, that all users will have the same experiences. YOUR INDIVIDUAL RESULTS MAY VARY.</p> <p class="legal-text">The testimonials on the Site are submitted in various forms such as text, audio and/or video, and are reviewed by us before being posted. They appear on the Site verbatim as given by the users, except for the correction of grammar or typing errors. Some testimonials may have been shortened for the sake of brevity where the full testimonial contained extraneous information not relevant to the general public.</p> <p class="legal-text">The views and opinions contained in the testimonials belong solely to the individual user and do not reflect our views and opinions. We are not affiliated with users who provide testimonials, and users are not paid or otherwise compensated for their testimonials.</p> </div> <div class="modal-close-box text-right"> <button type="button" class="modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div>', '', '', function(opts) {
        this.on('mount', function() {
            var url = window.location.href;
            if (url.indexOf('?disclaimer=1') != -1) {
                $("#modal-disclaimer").modal('show');
            }
        });
});
riot.tag2('global-modal-feature', '<div id="modal-feature-info" class="modal container padding-reset fade"> <div class="krowdspace-modal col-lg-10 col-lg-offset-1 col-md-12 col-md-offset-0"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">FEATURED PROJECTS AND BOOSTS</p> <p class="legal-text">Welcome to our featured project options for your live crowdfunding project. For a limited time, we are offering free featured project packages and social media posts! If you would like to take advantage of this special offer please <a onclick="{registerFeatured}" href="/#/account/register" class="home-links">submit your project</a> to Krowdspace and activate these packages on your <a onclick="{dashboardFeatured}" href="/#/account/dashboard" class="home-links">Krowdspace Dashboard</a>.</p> </div> <div class="modal-body"> <div class="row"> <div class="col-md-8 featured-text-box"> <p class="featured-title">FEATURED PROJECT LISTING</p> <p class="legal-text">Every featured project will have a yellow heart icon located in the corner of your project image. These icons will be displayed on our Explore Page filtering system. Having the icon will allow your project to have priority filtering and will always show ahead of other projects without the icon. Our featured project listing will last the entire length of your campaign.</p> </div> <div class="col-md-4 hidden-sm hidden-xs featured-image-box"> <img class="img-responsive featured-img" src="/img/content/featured-purchase.jpg"> </div> </div> <div class="row"> <div class="col-md-8 featured-text-box"> <p class="featured-title">EXPLORE PAGE BANNER</p> <p class="legal-text">Every project that is featured on our Explore Page Rotating Banner will have increased viewership and a higher click through rate compared to only having the featured icon. Your project will be displayed on our rotating banner located on the Explore Page as a hero image. This explore featured banner will last 7 days and then expire. </p> </div> <div class="col-md-4 hidden-sm hidden-xs featured-image-box"> <img class="img-responsive featured-img" src="/img/content/explore-purchase.jpg"> </div> </div> <div class="row"> <div class="col-md-8 featured-text-box"> <p class="featured-title">LANDING PAGE BANNER</p> <p class="legal-text">Our Landing Page package will bring the most traffic to your campaign. Every project owner that purchases this package will be featured on the Krowdspace Landing Page rotating banner as well as every Krowdspace users dashboard rotating banner. Your campaign will be seen by everyone! The landing page package will last for 10 days and then expire.</p> </div> <div class="col-sm-4 hidden-sm hidden-xs featured-image-box"> <img class="img-responsive featured-img" src="/img/content/landing-purchase.jpg"> </div> </div> <div class="row"> <div class="col-md-8 featured-text-box"> <p class="featured-title">SOCIAL MEDIA POSTS</p> <p class="legal-text">We will post your project on our 4 social media channels. By purchasing this package, you will see your project on our Facebook, Twitter, Pinterest and Instagram accounts with a link to your crowdfunding site when applicable. We currently have over 6,000 combined followers!</p> </div> <div class="col-sm-4 hidden-sm hidden-xs featured-image-box"> <img class="img-responsive featured-img" src="/img/content/social-purchase.jpg"> </div> </div> </div> <div class="modal-close-box text-right"> <button type="button" class="modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div>', '', '', function(opts) {
    this.dashboardFeatured = function()
    {
        $('#modal-feature-info').modal('hide');
    }.bind(this)
    this.registerFeatured = function()
    {
        $('#modal-feature-info').modal('hide');
    }.bind(this)
});
riot.tag2('global-modal-login', '<div id="modal-global-login" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-body modal-custom"> <form ref="loginform" onsubmit="{loginSubmit}"> <div class="text-left modal-box-alt modal-max-box"> <p class="modal-heading modal-heading-alt">Krowdspace Login</p> <div id="errorLog" class="alert alert-danger alert-dismissable fade in"> <a class="close" onclick="$(\'.alert\').hide()"><i class="fa fa-close"></i></a> <strong>Error:</strong> Invalid username or password. </div> <div class="has-feedback"> <label class="control-label" for="username"></label> <input type="text" class="form-control box-radius" id="username" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off"> <span class="fa fa-user form-control-feedback"></span> </div> <div class="has-feedback"> <label class="control-label" for="password"></label> <input type="password" class="form-control box-radius" id="password" placeholder="Password" ref="passwordlogin" autocorrect="off" autocapitalize="off"> <span class="fa fa-lock form-control-feedback"></span> </div> <div class="col-xs-6 login-box text-left"> <label> <input class="check-box" type="checkbox" ref="checkbox" id="checkbox" name="remember">Remember Me </label> </div> <div class="col-xs-6 login-box text-right"> <a onclick="{registerPassword}"> <p class="forgot-pass">Forgot Password?</p> </a> </div> <div class="clearfix"></div> </div> <div class="text-center modal-max-box"> <input type="submit" class="landing-submit" name="submit" value="Login"> </div> </form> <div class="text-center"> <p class="login-float-text">Dont have an account? <a class="function-link" onclick="{registerModal}">Register today!</a></p> </div> </div> </div> </div> </div>', '', '', function(opts) {
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
                this.refs.loginform.reset();
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
riot.tag2('global-modal-marketing', '<div id="modal-global-marketing" class="modal padding-reset container"> <div class="krowdspace-modal col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="marketing-modal"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <img class="img-responsive" src="img/social-content/krowdspace-marketing.jpg"> <div class="col-sm-12 text-left market-container-modal"> <p class="cta-header">If you have ever backed a crowdfunding project on Kickstarter or Indiegogo then you have to check out Krowdspace.com! If you dont, you will be missing out on free secret perks and extra rewards associated with every campaign.</p> <p class="cta-header">Project owners from Indeigogo and Kickstarter submit their projects to Krowdspace with exclusive rewards to gain a larger community. Members on Krowdspace will then have access to these secret rewards and perks and receive them upon backing the campaign. Check to see if the project you want to support has already submitted to Krowdspace. It is that simple and 100% free.</p> <p class="cta-header">You can register by using the form below!</p> </div> <form onsubmit="{submitRegister}"> <div class="col-sm-12 text-left market-container-modal"> <p class="modal-heading modal-heading-alt">Krowdspace Register</p> <p class="text-left cta-header">Discover extra rewards for projects you love or submit your own crowdfunding project!</p> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control" placeholder="First Name" required="required"> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control" placeholder="Last Name" required="required"> </div> <div class="form-group"> <input ref="email" class="form-control" placeholder="Email Address" required="required" type="email"> </div> <div class="form-group"> <input type="text" ref="usernameform" class="form-control" placeholder="Username" required="required" minlength="5"> </div> <div class="input-group"> <input type="password" ref="passwordform" placeholder="New Password" id="PASSWORD2" class="masked form-control" required="required" minlength="5"> <div class="input-group-btn"> <button type="button" id="eyeRegister" class="btn btn-eye"> <i class="fa fa-eye fa-lg"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter" class="form-control" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo" class="form-control" placeholder="Indiegogo Username (Optional)"> </div> <div class="login-box"> <label> <input class="check-box" type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a onclick="{krowdspaceTerms}" class="modal-link home-links"><span>Krowdspace terms</span></a> </label> </div> </div> <div class="text-center"> <input type="submit" class="landing-submit" name="submit" value="Join Krowdspace"> </div> </form> </div> </div> </div>', '', '', function(opts) {

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
this.krowdspaceTerms = function()
{
    $("#modal-global-marketing").modal('hide');
    $("#modal-service-terms").modal('show');
}.bind(this)

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
riot.tag2('global-modal-password', '<div id="modal-password" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-body modal-custom"> <form ref="passwordform" onsubmit="{forgotPassword}"> <div class="text-left modal-box-alt modal-max-box"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading modal-heading-alt">Forgot your Password?</p> <p class="text-left landing-text">Please enter your email address and we will send you instructions on how to reset your password.</p> <div class="has-feedback email-box"> <label class="control-label" for="username"></label> <input type="text" ref="krowdspaceEmail" class="form-control box-radius" id="email" placeholder="Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off"> <span class="fa fa-envelope form-control-feedback"></span> </div> </div> <div class="text-center modal-max-box"> <input type="submit" class="landing-submit" name="submit" value="Send Email"> </div> </form> </div> </div> </div> </div>', '', '', function(opts) {
    this.forgotPassword = function(e)
        {

        	e.preventDefault();

        	let EMAIL = this.refs.krowdspaceEmail.value;

        	krowdspace.register.request_reset_password(EMAIL).then
        	((res) =>
        	{
                $('#modal-password').modal('hide');
                this.refs.passwordform.reset();
                console.log(res);
        	},
        	(err) =>
        	{
        		console.log(err);
        	});
        }.bind(this)
});
riot.tag2('global-modal-press', '<div id="modal-press-kit" class="modal container padding-reset fade "> <div class="krowdspace-modal col-lg-offset-1 col-lg-10"> <div id="modal"> <div class="modal-purchase no-gutter"> <div class="col-lg-6 hidden-md hidden-sm hidden-xs press-left"> <p class="modal-heading">KROWDSPACE PRESS KIT</p> <p class="legal-text">Our logo is our identity so please treat it with respect. Please do not alter the Krowdspace logo in any form unless given permission by our staff.</p> <p class="legal-text">If you are a project owner please download one of our logos, icons or banners and place it on your crowdfunding project. We verify every project that is submitted to Krowdspace by checking for a hyperlink back to our site. Make sure the image is visible and uses the below url. </p> <p class="legal-text">https://www.Krowdspace.com</p> <p class="legal-text">We appreciate your understanding and look forward to seeing your project on Krowdspace.</p> </div> <div class="col-lg-6 press-right"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading logo-push">KROWDSPACE LOGO</p> <div class="col-sm-3 col-xs-6 text-center no-gutter press-box"> <img class="img-responsive press-img" src="img/press/krowdspace-icon-v1.png"> <div class="col-xs-6 press-download-left"> <a href="img/press/krowdspace-icon-v1.png" download> <p class="download-font">PNG</p> </a> </div> <div class="col-xs-6"> <a href="img/press/krowdspace-icon-v1.svg" download> <p class="download-font">SVG</p> </a> </div> </div> <div class="col-sm-3 col-xs-6 text-center no-gutter press-box"> <div class="press-img"> <div class="checker no-gutter"> <img class="img-responsive" src="img/press/krowdspace-icon-v2.png"> </div> </div> <div class="col-xs-6 press-download-left"> <a href="img/press/krowdspace-icon-v2.png" download> <p class="download-font">PNG</p> </a> </div> <div class="col-xs-6"> <a href="img/press/krowdspace-icon-v2.svg" download> <p class="download-font">SVG</p> </a> </div> </div> <div class="col-sm-3 col-xs-6 text-center no-gutter press-box"> <img class="img-responsive press-img" src="img/press/krowdspace-icon-v3.png"> <div class="col-xs-6 press-download-left"> <a href="img/press/krowdspace-icon-v3.png" download> <p class="download-font">PNG</p> </a> </div> <div class="col-xs-6"> <a href="img/press/krowdspace-icon-v3.svg" download> <p class="download-font">SVG</p> </a> </div> </div> <div class="col-sm-3 col-xs-6 text-center no-gutter press-box"> <img class="img-responsive press-img" src="img/press/krowdspace-icon-v4.png"> <div class="col-xs-6 press-download-left"> <a href="img/press/krowdspace-icon-v4.png" download> <p class="download-font">PNG</p> </a> </div> <div class="col-xs-6"> <a href="img/press/krowdspace-icon-v4.svg" download> <p class="download-font">SVG</p> </a> </div> </div> <div class="col-xs-12 no-gutter press-box"> <img class="img-responsive press-img-alt" src="img/press/krowdspace-icon-v6.png"> <div class="col-xs-6 text-right press-download-left"> <a href="img/press/krowdspace-icon-v6.png" download> <p class="download-font png-left">PNG</p> </a> </div> <div class="col-xs-6 text-left"> <a href="img/press/krowdspace-icon-v6.svg" download> <p class="download-font svg-right">SVG</p> </a> </div> </div> <div class="col-xs-12 no-gutter press-box"> <img class="img-responsive press-img-alt" src="img/press/krowdspace-icon-v7.png"> <div class="col-xs-6 text-right press-download-left"> <a href="img/press/krowdspace-icon-v7.png" download> <p class="download-font png-left">PNG</p> </a> </div> <div class="col-xs-6 text-left"> <a href="img/press/krowdspace-icon-v7.svg" download> <p class="download-font svg-right">SVG</p> </a> </div> </div> <div class="col-xs-12 no-gutter press-box"> <img class="img-responsive press-img-alt" src="img/press/krowdspace-icon-v5.png"> <div class="col-xs-6 text-right press-download-left"> <a href="img/press/krowdspace-icon-v5.png" download> <p class="download-font png-left">PNG</p> </a> </div> <div class="col-xs-6 text-left"> <a href="img/press/krowdspace-icon-v5.svg" download> <p class="download-font svg-right">SVG</p> </a> </div> </div> </div> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('global-modal-privacy', '<div id="modal-privacy-policy" class="modal container padding-reset fade"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">Privacy Policy</p> </div> <div class="modal-body"> <p class="legal-text">Last Updated July 25, 2017</p> <p class="legal-text">Krowdspace LLC (“we” or “us” or “our”) respects the privacy of our users (“user” or “you”). This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website https://www.krowdspace.com, including any other media form, media channel,mobile website, or mobile application related or connected thereto (collectively, the “Site”). Please read this Privacy Policy carefully. IF YOU DO NOT AGREE WITH THE TERMS OF THIS PRIVACY POLICY, PLEASE DO NOT ACCESS THE SITE.</p> <p class="legal-text">We reserve the right to make changes to this Privacy Policy at any time and for any reason. We will alert you about any changes by updating the “Revised” date of this Privacy Policy. Any changes or modifications will be effective immediately upon posting the updated Privacy Policy on the Site, and you waive the right to receive specific notice of each such change or modification. You are encouraged to periodically review this Privacy Policy to stay informed of updates. You will be deemed to have been made aware of, will be subject to, and will be deemed to have accepted the changes in any revised Privacy Policy by your continued use of the Site after the date such revised Privacy Policy is posted.</p> <p class="privacy-title"><strong>COLLECTION OF YOUR INFORMATION</strong></p> <p>We may collect information about you in a variety of ways. The information we may collect on the Site includes:</p> <p class="legal-text"><strong>Personal Data</strong></p> <p class="legal-text">Personally identifiable information, such as your name, shipping address, email address, and telephone number, and demographic information, such as your age, gender, hometown, and interests, that you voluntarily give to us when you register with the Site or when you choose to participate in various activities related to the Site, such as online chat and message boards. You are under no obligation to provide us with personal information of any kind, however your refusal to do so may prevent you from using certain features of the Site.</p> <p class="legal-text"><strong>Financial Data</strong></p> <p class="legal-text">Financial information, such as data related to your payment method (e.g. valid credit card number, card brand, expiration date) that we may collect when you purchase, order, return, exchange, or request information about our services from the Site. We store only very limited, if any, financial information that we collect. Otherwise, all financial information is stored by our payment processor, Stripe, and you are encouraged to review their privacy policy and contact them directly for responses to your questions.</p> <p class="legal-text"><strong>Data From Contests, Giveaways, and Surveys</strong></p> <p class="legal-text">Personal and other information you may provide when entering contests or giveaways and/or responding to surveys.</p> <p class="privacy-title"><strong>USE OF YOUR INFORMATION</strong></p> <p class="legal-text">Having accurate information about you permits us to provide you with a smooth, efficient, and customized experience. Specifically, we may use information collected about you via the Site to:</p> <div class="reward-examples"> <p class="text-reset">- Administer sweepstakes, promotions, and contests.</p> <p class="text-reset">- Compile anonymous statistical data and analysis for use internally or with third parties.</p> <p class="text-reset">- Fulfill and manage purchases, orders, payments, and other transactions related to the Site.</p> <p class="text-reset">- Increase the efficiency and operation of the Site.</p> <p class="text-reset">- Monitor and analyze usage and trends to improve your experience with the Site.</p> <p class="text-reset">- Notify you of updates to the Site.</p> <p class="text-reset">- Process payments and refunds.</p> <p class="text-reset">- Resolve disputes and troubleshoot problems.</p> <p class="text-reset">- Respond to product and customer service requests.</p> </div> <p class="privacy-title"><strong>DISCLOSURE OF YOUR INFORMATION</strong></p> <p class="legal-text">We may share information we have collected about you in certain situations. Your information may be disclosed as follows:</p> <p class="legal-text"><strong>By Law or to Protect Rights</strong></p> <p class="legal-text">If we believe the release of information about you is necessary to respond to legal process, to investigate or remedy potential violations of our policies, or to protect the rights, property, and safety of others, we may share your information as permitted or required by any applicable law, rule, or regulation. This includes exchanging information with other entities for fraud protection and credit risk reduction.</p> <p class="legal-text"><strong>Online Postings</strong></p> <p class="legal-text">When you post comments, contributions or other content to the Site, your posts may be viewed by all users and may be publicly distributed outside the Site in perpetuity.</p> <p class="legal-text"><strong>Third-Party Advertisers</strong></p> <p class="legal-text">We may use third-party advertising companies to serve ads when you visit the Site. These companies may use information about your visits to the Site and other websites that are contained in web cookies in order to provide advertisements about goods and services of interest to you.</p> <p class="legal-text"><strong>Sale or Bankruptcy</strong></p> <p class="legal-text">If we reorganize or sell all or a portion of our assets, undergo a merger, or are acquired by another entity, we may transfer your information to the successor entity. If we go out of business or enter bankruptcy, your information would be an asset transferred or acquired by a third party. You acknowledge that such transfers may occur and that the transferee may decline honor commitments we made in this Privacy Policy.</p> <p class="legal-text">We are not responsible for the actions of third parties with whom you share personal or sensitive data, and we have no authority to manage or control third-party solicitations. If you no longer wish to receive correspondence, emails or other communications from third parties, you are responsible for contacting the third party directly.</p> <p class="privacy-title"><strong>TRACKING TECHNOLOGIES</strong></p> <p class="legal-text"><strong>Cookies and Web Beacons</strong></p> <p class="legal-text">We may use cookies, web beacons, tracking pixels, and other tracking technologies on the Site to help customize the Site and improve your experience. When you access the Site, your personal information is not collected through the use of tracking technology. Most browsers are set to accept cookies by default. You can remove or reject cookies, but be aware that such action could affect the availability and functionality of the Site. You may not decline web beacons. However, they can be rendered ineffective by declining all cookies or by modifying your web browser’s settings to notify you each time a cookie is tendered, permitting you to accept or decline cookies on an individual basis.</p> <p class="legal-text"><strong>Internet-Based Advertising</strong></p> <p class="legal-text">Additionally, we may use third-party software to serve ads on the Site, implement email marketing campaigns, and manage other interactive marketing initiatives. This third-party software may use cookies or similar tracking technology to help manage and optimize your online experience with us. For more information about opting-out of interest-based ads, visit the Network Advertising Initiative Opt-Out Tool or Digital Advertising Alliance Opt-Out Tool.</p> <p class="legal-text"><strong>Website Analytics</strong></p> <p class="legal-text">We may also partner with selected third-party vendors, such as Google Analytics, to allow tracking technologies and remarketing services on the Site through the use of first party cookies and third-party cookies, to, among other things, analyze and track users’ use of the Site, determine the popularity of certain content and better understand online activity. By accessing the Site, you consent to the collection and use of your information by these third-party vendors. You are encouraged to review their privacy policy and contact them directly for responses to your questions. We do not transfer personal information to these third-party vendors. However, If you do not want any information to be collected and used by tracking technologies, you can visit the Network Advertising Initiative Opt-Out Tool or Digital Advertising Alliance Opt-Out Tool.</p> <p class="legal-text">You should be aware that getting a new computer, installing a new browser, upgrading an existing browser, or erasing or otherwise altering your browser’s cookies files may also clear certain opt-out cookies, plug-ins, or settings.</p> <p class="privacy-title"><strong>THIRD-PARTY WEBSITES</strong></p> <p class="legal-text">The Site may contain links to third-party websites and applications of interest, including advertisements and external services, that are not affiliated with us. Once you have used these links to leave the Site, any information you provide to these third parties is not covered by this Privacy Policy, and we cannot guarantee the safety and privacy of your information. Before visiting and providing any information to any third-party websites, you should inform yourself of the privacy policies and practices (if any) of the third party responsible for that website, and should take those steps necessary to, in your discretion, protect the privacy of your information. We are not responsible for the content or privacy and security practices and policies of any third parties, including other sites, services or applications that may be linked to or from the Site.</p> <p class="privacy-title"><strong>SECURITY OF YOUR INFORMATION</strong></p> <p class="legal-text">We use administrative, technical, and physical security measures to help protect your personal information. While we have taken reasonable steps to secure the personal information you provide to us, please be aware that despite our efforts, no security measures are perfect or impenetrable, and no method of data transmission can be guaranteed against any interception or other type of misuse. Any information disclosed online is vulnerable to interception and misuse by unauthorized parties. Therefore, we cannot guarantee complete security if you provide personal information.</p> <p class="privacy-title"><strong>POLICY FOR CHILDREN</strong></p> <p class="legal-text">We do not knowingly solicit information from or market to children under the age of 13. If you become aware of any data we have collected from children under age 13, please contact us using the contact information provided below.</p> <p class="privacy-title"><strong>CONTROLS FOR DO-NOT-TRACK FEATURES</strong></p> <p class="legal-text">Most web browsers and some mobile operating systems include a Do-Not-Track (“DNT”) feature or setting you can activate to signal your privacy preference not to have data about your online browsing activities monitored and collected. No uniform technology standard for recognizing and implementing DNT signals has been finalized. As such, we do not currently respond to DNT browser signals or any other mechanism that automatically communicates your choice not to be tracked online. If a standard for online tracking is adopted that we must follow in the future, we will inform you about that practice in a revised version of this privacy policy. </p> <p class="privacy-title"><strong>OPTIONS REGARDING YOUR INFORMATION</strong></p> <p class="legal-text"><strong>Account Information</strong></p> <p class="legal-text">You may at any time review or change the information in your account or terminate your account by:</p> <p class="legal-text">Contacting us using the contact information provided.</p> <p class="legal-text">Upon your request to terminate your account, we will deactivate or delete your account and information from our active databases. However, some information may be retained in our files to prevent fraud, troubleshoot problems, assist with any investigations, enforce our Terms of Use and/or comply with legal requirements.</p> <p class="legal-text"><strong>Emails and Communications</strong></p> <p class="legal-text">If you no longer wish to receive correspondence, emails, or other communications from us, you may opt-out by:</p> <p class="legal-text">Contacting us using the contact information provided.</p> <p class="legal-text">If you no longer wish to receive correspondence, emails, or other communications from third parties, you are responsible for contacting the third party directly.</p> <p class="privacy-title"><strong>CALIFORNIA PRIVACY RIGHTS</strong></p> <p class="legal-text">California Civil Code Section 1798.83, also known as the “Shine The Light” law, permits our users who are California residents to request and obtain from us, once a year and free of charge, information about categories of personal information (if any) we disclosed to third parties for direct marketing purposes and the names and addresses of all third parties with which we shared personal information in the immediately preceding calendar year. If you are a California resident and would like to make such a request, please submit your request in writing to us using the contact information provided below.</p> <p class="legal-text">If you are under 18 years of age, reside in California, and have a registered account with the Site, you have the right to request removal of unwanted data that you publicly post on the Site. To request removal of such data, please contact us using the contact information provided below, and include the email address associated with your account and a statement that you reside in California. We will make sure the data is not publicly displayed on the Site, but please be aware that the data may not be completely or comprehensively removed from our systems.</p> <p class="privacy-title"><strong>CONTACT US</strong></p> <p class="legal-text">If you have questions or comments about this Privacy Policy, please contact us at:</p> <p class="text-reset">Krowdspace LLC</p> <p class="text-reset">8397 158th Ave NE #406</p> <p class="text-reset">Redmond, WA 98052</p> <p class="text-reset">Email @ Footer Contact Form</p> </div> <div class="modal-close-box text-right"> <button type="button" class="modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div>', '', '', function(opts) {
        this.on('mount', function() {
            var url = window.location.href;
            if (url.indexOf('?privacy=1') != -1) {
                $("#modal-privacy-policy").modal('show');
            }
        });
});
riot.tag2('global-modal-register', '<div id="modal-global-register" class="modal container fade"> <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8"> <div id="modal"> <div class="modal-body modal-custom"> <form ref="registerform2" onsubmit="{submitRegister}"> <div class="text-left modal-box-alt modal-max-box-alt"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading modal-heading-alt">Krowdspace Register</p> <p class="text-left cta-header">Discover extra rewards for projects you love or submit your own crowdfunding project!</p> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control" placeholder="First Name" required="required"> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control" placeholder="Last Name" required="required"> </div> <div class="form-group"> <input ref="email" class="form-control" placeholder="Email Address" required="required" type="email"> </div> <div class="form-group"> <input type="text" ref="usernameform" class="form-control" placeholder="Username" required="required" minlength="5"> </div> <div class="input-group"> <input type="password" ref="passwordform" placeholder="New Password" id="PASSWORD2" class="masked form-control" required="required" minlength="5"> <div class="input-group-btn"> <button type="button" id="eyeRegister" class="btn btn-eye"> <i class="fa fa-eye fa-lg"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter" class="form-control" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo" class="form-control" placeholder="Indiegogo Username (Optional)"> </div> <div class="login-box"> <label> <input class="check-box" type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="home-links">Krowdspace terms</a> </label> </div> </div> <div class="text-center modal-max-box-alt"> <input type="submit" class="landing-submit" name="submit" value="Join Krowdspace"> </div> </form> </div> </div> </div>', '', '', function(opts) {

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
                this.refs.registerform2.reset();
	},
	(err) =>
	{

	});
}.bind(this)
});
riot.tag2('global-modal-rewards', '<div id="modal-global-rewards" class="modal container padding-reset fade"> <div class="krowdspace-modal col-sm-8 col-sm-offset-2"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">KROWDSPACE REWARDS</p> </div> <div class="modal-body"> <p>For your project to be eligible on Krowdspace you must provide an exclusive reward for Krowdspace members. Krowdspace will look over each reward submission before approving it for the site. This process can take up to 24 hours. You will be obligated to fulfill any extra rewards listed on your Krowdspace project profile.</p> <p class="privacy-title">KICKSTARTER CAMPAIGNS</p> <p class="legal-text">Currently Kickstarter does not have a "Loyalty Program" to reward loyal customers and provide discount to friends and family. This is one of the many benefits of using Krowdspace. Once you decide on a reward or discount we will generate a coupon code so that your loyal customers can visit Krowdspace, retrieve that coupon code, and provide it back to you upon supporting your campaign on Kickstarter.</p> <p class="privacy-title">INDIEGOGO CAMPAIGNS</p> <p class="legal-text">To submit a project from Indiegogo you will need to provide your "Secret Perks" link and a description of one of your Secret Perks. Using Krowdspace will open up new opportunities and get your project viewed by not only an Indiegogo audience but a Kickstarter audience as well. </p> <p class="privacy-title">REWARD EXAMPLES</p> <div class="reward-examples"> <p class="text-reset">- All Krowdspace members will have continued access to Early Bird Pricing.</p> <p class="text-reset">- All Krowdspace members will get a free upgrade to the next tier automatically.</p> <p class="text-reset">- Krowdspace members will get to choose from additional colors that won’t be available to anyone else.</p> <p class="text-reset">- If you back our 3 bundle tier we will send you an extra bundle free.</p> <p class="text-reset">- All Krowdspace members will be given protective cases with your pledge item.</p> <p class="text-reset">- All Krowdspace members who back over $50 will receive another item free.</p> <p class="text-reset">- All Krowdspace members will receive 15% off their pledges.</p> <p class="text-reset">- All Krowdspace members will be given a custom engraved wallet with their watch.</p> </div> <p class="legal-text">Keep it simple and make it creative. People love to see that their pledge is helping your project come to life and personal touches make all the difference. if you have any questions about rewards please contact us using our <a onclick="{rewardContact}" class="home-links">contact form</a>.</p> </div> <div class="modal-close-box text-right"> <button type="button" class="modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div>', '', '', function(opts) {
    this.rewardContact = function()
    {
        $('#modal-global-rewards').modal('hide');
        $('#modal-global-contact').modal('show');
    }.bind(this)
});
riot.tag2('global-modal-service', '<div id="modal-service-terms" class="modal container padding-reset fade"> <div class="krowdspace-modal col-sm-10 col-sm-offset-1"> <div id="modal" class="modal-content"> <div class="modal-header"> <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"> <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i> </button> <p class="modal-heading">Terms of Service</p> </div> <div class="modal-body"> <p class="legal-text">Last Updated July 25, 2017</p> <p class="legal-text">These Terms of Use constitute a legally binding agreement made between you, whether personally or on behalf of an entity (“you”) and Krowdspace LLC (“we,” “us” or “our”), concerning your access to and use of the https://www.krowdspace.com website as well as any other media form, media channel, mobile website or mobile application related, linked, or otherwise connected thereto (collectively, the “Site”). You agree that by accessing the Site, you have read, understood, and agreed to be bound by all of these Terms of Use. IF YOU DO NOT AGREE WITH ALL OF THESE TERMS OF USE, THEN YOU ARE EXPRESSLY PROHIBITED FROM USING THE SITE AND YOU MUST DISCONTINUE USE IMMEDIATELY. </p> <p class="legal-text">Supplemental terms and conditions or documents that may be posted on the Site from time to time are hereby expressly incorporated herein by reference. We reserve the right, in our sole discretion, to make changes or modifications to these Terms of Use at any time and for any reason. We will alert you about any changes by updating the “Last updated” date of these Terms of Use, and you waive any right to receive specific notice of each such change. It is your responsibility to periodically review these Terms of Use to stay informed of updates. You will be subject to, and will be deemed to have been made aware of and to have accepted, the changes in any revised Terms of Use by your continued use of the Site after the date such revised Terms of Use are posted.</p> <p class="legal-text">The information provided on the Site is not intended for distribution to or use by any person or entity in any jurisdiction or country where such distribution or use would be contrary to law or regulation or which would subject us to any registration requirement within such jurisdiction or country. Accordingly, those persons who choose to access the Site from other locations do so on their own initiative and are solely responsible for compliance with local laws, if and to the extent local laws are applicable.</p> <p class="legal-text">The Site is intended for users who are at least 18 years old. Persons under the age of 18 are not permitted to use or register for the Site.</p> <p class="privacy-title"><strong>INTELLECTUAL PROPERTY RIGHTS</strong></p> <p class="legal-text">Unless otherwise indicated, the Site is our proprietary property and all source code, databases, functionality, software, website designs, audio, video, text, photographs, and graphics on the Site (collectively, the “Content”) and the trademarks, service marks, and logos contained therein (the “Marks”) are owned or controlled by us or licensed to us, and are protected by copyright and trademark laws and various other intellectual property rights and unfair competition laws of the United States, foreign jurisdictions, and international conventions. The Content and the Marks are provided on the Site “AS IS” for your information and personal use only. Except as expressly provided in these Terms of Use, no part of the Site and no Content or Marks may be copied, reproduced, aggregated, republished, uploaded, posted, publicly displayed, encoded, translated, transmitted, distributed, sold, licensed, or otherwise exploited for any commercial purpose whatsoever, without our express prior written permission.</p> <p class="legal-text">Provided that you are eligible to use the Site, you are granted a limited license to access and use the Site and to download or print a copy of any portion of the Content to which you have properly gained access solely for your personal, non-commercial use. We reserve all rights not expressly granted to you in and to the Site, the Content and the Marks.</p> <p class="privacy-title"><strong>USER REPRESENTATIONS</strong></p> <p class="legal-text">By using the Site, you represent and warrant that: (1) all registration information you submit will be true, accurate, current, and complete; (2) you will maintain the accuracy of such information and promptly update such registration information as necessary; (3) you have the legal capacity and you agree to comply with these Terms of Use; (4) you are not a minor in the jurisdiction in which you reside; (5) you will not access the Site through automated or non-human means, whether through a bot, script or otherwise; (6) you will not use the Site for any illegal or unauthorized purpose; and (7) your use of the Site will not violate any applicable law or regulation.</p> <p class="legal-text">If you provide any information that is untrue, inaccurate, not current, or incomplete, we have the right to suspend or terminate your account and refuse any and all current or future use of the Site (or any portion thereof). </p> <p class="privacy-title"><strong>USER REGISTRATION</strong></p> <p class="legal-text">You may be required to register with the Site. You agree to keep your password confidential and will be responsible for all use of your account and password. We reserve the right to remove, reclaim, or change a username you select if we determine, in our sole discretion, that such username is inappropriate, obscene, or otherwise objectionable.</p> <p class="privacy-title"><strong>PRODUCTS</strong></p> <p class="legal-text">All products are subject to availability. We reserve the right to discontinue any products at any time for any reason. Prices for all products are subject to change.</p> <p class="privacy-title"><strong>PURCHASES AND PAYMENT</strong></p> <p class="legal-text">We accept the following forms of payment: </p> <div class="reward-examples"> <p class="text-reset">- Visa</p> <p class="text-reset">- Mastercard</p> <p class="text-reset">- American Express</p> <p class="text-reset">- Discover</p> <p class="text-reset">- PayPal</p> </div> <p class="legal-text">You agree to provide current, complete, and accurate purchase and account information for all purchases made via the Site. You further agree to promptly update account and payment information, including email address, payment method, and payment card expiration date, so that we can complete your transactions and contact you as needed. Sales tax will be added to the price of purchases as deemed required by us. We may change prices at any time. All payments shall be in U.S. dollars.</p> <p class="legal-text">You agree to pay all charges at the prices then in effect for your purchases and any applicable shipping fees, and you authorize us to charge your chosen payment provider for any such amounts upon placing your order. We reserve the right to correct any errors or mistakes in pricing, even if we have already requested or received payment.</p> <p class="legal-text">We reserve the right to refuse any order placed through the Site. We may, in our sole discretion, limit or cancel quantities purchased per person, per household, or per order. These restrictions may include orders placed by or under the same customer account, the same payment method, and/or orders that use the same billing or shipping address. We reserve the right to limit or prohibit orders that, in our sole judgment, appear to be placed by dealers, resellers, or distributors.</p> <p class="privacy-title"><strong>REFUNDS POLICY</strong></p> <p class="legal-text">All sales are final and no refund will be issued.</p> <p class="privacy-title"><strong>PROHIBITED ACTIVITIES</strong></p> <p class="legal-text">You may not access or use the Site for any purpose other than that for which we make the Site available. The Site may not be used in connection with any commercial endeavors except those that are specifically endorsed or approved by us.</p> <p class="legal-text"><strong>As a project owner of the Site, you agree to:</strong></p> <ol class="terms-list legal-text"> <li>Owning all content that is being posted on Krowdspace and you have followed all copyright regulations.</li> <li>Use Krowdspace at your own risk. <li> Not hold Krowdspace liable for any damages related to our site.</li> <li>Choose a feasible reward or discount that is within your means to fulfill upon successful funding of your campaign.</li> <li>Fullfill any rewards or discounts promised to Krowdspace users who have backed your crowdfunding campaign.</li> <li>Deliver all promised rewards and discounts in a punctual manner.</li> </ol> <p class="legal-text"><strong>As a user and project owner of the Site, you agree not to:</strong></p> <ol class="terms-list legal-text"> <li>Systematically retrieve data or other content from the Site to create or compile, directly or indirectly, a collection, compilation, database, or directory without written permission from us.</li> <li>Make any unauthorized use of the Site, including collecting usernames and/or email addresses of users by electronic or other means for the purpose of sending unsolicited email, or creating user accounts by automated means or under false pretenses.</li> <li>Use a buying agent or purchasing agent to make purchases on the Site.</li> <li>Circumvent, disable, or otherwise interfere with security-related features of the Site, including features that prevent or restrict the use or copying of any Content or enforce limitations on the use of the Site and/or the Content contained therein.</li> <li>Engage in unauthorized framing of or linking to the Site.</li> <li>Trick, defraud, or mislead us and other users, especially in any attempt to learn sensitive account information such as user passwords.</li> <li>Make improper use of our support services or submit false reports of abuse or misconduct.</li> <li>Engage in any automated use of the system, such as using scripts to send comments or messages, or using any data mining, robots, or similar data gathering and extraction tools.</li> <li>Interfere with, disrupt, or create an undue burden on the Site or the networks or services connected to the Site.</li> <li>Attempt to impersonate another user or person or use the username of another user.</li> <li>Sell or otherwise transfer your profile.</li> <li>Use any information obtained from the Site in order to harass, abuse, or harm another person.</li> <li>Use the Site as part of any effort to compete with us or otherwise use the Site and/or the Content for any revenue-generating endeavor or commercial enterprise.</li> <li>Decipher, decompile, disassemble, or reverse engineer any of the software comprising or in any way making up a part of the Site.</li> <li>Attempt to bypass any measures of the Site designed to prevent or restrict access to the Site, or any portion of the Site.</li> <li>Harass, annoy, intimidate, or threaten any of our employees or agents engaged in providing any portion of the Site to you.</li> <li>Delete the copyright or other proprietary rights notice from any Content.</li> <li>Copy or adapt the Site’s software, including but not limited to Flash, PHP, HTML, JavaScript, or other code.</li> <li>Upload or transmit (or attempt to upload or to transmit) viruses, Trojan horses, or other material, including excessive use of capital letters and spamming (continuous posting of repetitive text), that interferes with any party’s uninterrupted use and enjoyment of the Site or modifies, impairs, disrupts, alters, or interferes with the use, features, functions, operation, or maintenance of the Site.</li> <li>Upload or transmit (or attempt to upload or to transmit) any material that acts as a passive or active information collection or transmission mechanism, including without limitation, clear graphics interchange formats (“gifs”), 1×1 pixels, web bugs, cookies, or other similar devices (sometimes referred to as “spyware” or “passive collection mechanisms” or “pcms”).</li> <li>Except as may be the result of standard search engine or Internet browser usage, use, launch, develop, or distribute any automated system, including without limitation, any spider, robot, cheat utility, scraper, or offline reader that accesses the Site, or using or launching any unauthorized script or other software.</li> <li>Disparage, tarnish, or otherwise harm, in our opinion, us and/or the Site.</li> <li>Use the Site in a manner inconsistent with any applicable laws or regulations.</li> </ol> <p class="privacy-title"><strong>USER GENERATED CONTRIBUTIONS</strong></p> <p class="legal-text">The Site may invite you to chat, contribute to, or participate in blogs, message boards, online forums, and other functionality, and may provide you with the opportunity to create, submit, post, display, transmit, perform, publish, distribute, or broadcast content and materials to us or on the Site, including but not limited to text, writings, video, audio, photographs, graphics, comments, suggestions, or personal information or other material (collectively, "Contributions"). Contributions may be viewable by other users of the Site and the Marketplace Offerings and through third-party websites. As such, any Contributions you transmit may be treated as non-confidential and non-proprietary. When you create or make available any Contributions, you thereby represent and warrant that:</p> <ol class="terms-list legal-text"> <li>The creation, distribution, transmission, public display, or performance, and the accessing, downloading, or copying of your Contributions do not and will not infringe the proprietary rights, including but not limited to the copyright, patent, trademark, trade secret, or moral rights of any third party.</li> <li>You are the creator and owner of or have the necessary licenses, rights, consents, releases, and permissions to use and to authorize us, the Site, and other users of the Site to use your Contributions in any manner contemplated by the Site and these Terms of Use.</li> <li>You have the written consent, release, and/or permission of each and every identifiable individual person in your Contributions to use the name or likeness of each and every such identifiable individual person to enable inclusion and use of your Contributions in any manner contemplated by the Site and these Terms of Use.</li> <li>Your Contributions are not false, inaccurate, or misleading.</li> <li>Your Contributions are not unsolicited or unauthorized advertising, promotional materials, pyramid schemes, chain letters, spam, mass mailings, or other forms of solicitation.</li> <li>Your Contributions are not obscene, lewd, lascivious, filthy, violent, harassing, libelous, slanderous, or otherwise objectionable (as determined by us).</li> <li>Your Contributions do not ridicule, mock, disparage, intimidate, or abuse anyone.</li> <li>Your Contributions do not advocate the violent overthrow of any government or incite, encourage, or threaten physical harm against another.</li> <li>Your Contributions do not violate any applicable law, regulation, or rule.</li> <li>Your Contributions do not violate the privacy or publicity rights of any third party.</li> <li>Your Contributions do not contain any material that solicits personal information from anyone under the age of 18 or exploits people under the age of 18 in a sexual or violent manner.</li> <li>Your Contributions do not violate any federal or state law concerning child pornography, or otherwise intended to protect the health or well-being of minors;</li> <li>Your Contributions do not include any offensive comments that are connected to race, national origin, gender, sexual preference, or physical handicap.</li> <li>Your Contributions do not otherwise violate, or link to material that violates, any provision of these Terms of Use, or any applicable law or regulation.</li> </ol> <p class="legal-text">Any use of the Site or the Marketplace Offerings in violation of the foregoing violates these Terms of Use and may result in, among other things, termination or suspension of your rights to use the Site and the Marketplace Offerings.</p> <p class="privacy-title"><strong>CONTRIBUTION LICENSE</strong></p> <p class="legal-text">By posting your Contributions to any part of the Site, you automatically grant, and you represent and warrant that you have the right to grant, to us an unrestricted, unlimited, irrevocable, perpetual, non-exclusive, transferable, royalty-free, fully-paid, worldwide right, and license to host, use, copy, reproduce, disclose, sell, resell, publish, broadcast, retitle, archive, store, cache, publicly perform, publicly display, reformat, translate, transmit, excerpt (in whole or in part), and distribute such Contributions (including, without limitation, your image and voice) for any purpose, commercial, advertising, or otherwise, and to prepare derivative works of, or incorporate into other works, such Contributions, and grant and authorize sublicenses of the foregoing. The use and distribution may occur in any media formats and through any media channels.</p> <p class="legal-text">This license will apply to any form, media, or technology now known or hereafter developed, and includes our use of your name, company name, and franchise name, as applicable, and any of the trademarks, service marks, trade names, logos, and personal and commercial images you provide. You waive all moral rights in your Contributions, and you warrant that moral rights have not otherwise been asserted in your Contributions.</p> <p class="legal-text">We do not assert any ownership over your Contributions. You retain full ownership of all of your Contributions and any intellectual property rights or other proprietary rights associated with your Contributions. We are not liable for any statements or representations in your Contributions provided by you in any area on the Site. You are solely responsible for your Contributions to the Site and you expressly agree to exonerate us from any and all responsibility and to refrain from any legal action against us regarding your Contributions. </p> <p class="legal-text">We have the right, in our sole and absolute discretion, (1) to edit, redact, or otherwise change any Contributions; (2) to re-categorize any Contributions to place them in more appropriate locations on the Site; and (3) to pre-screen or delete any Contributions at any time and for any reason, without notice. We have no obligation to monitor your Contributions. </p> <p class="privacy-title"><strong>SUBMISSIONS</strong></p> <p class="legal-text">You acknowledge and agree that any questions, comments, suggestions, ideas, feedback, or other information regarding the Site or the Marketplace Offerings ("Submissions") provided by you to us are non-confidential and shall become our sole property. We shall own exclusive rights, including all intellectual property rights, and shall be entitled to the unrestricted use and dissemination of these Submissions for any lawful purpose, commercial or otherwise, without acknowledgment or compensation to you. You hereby waive all moral rights to any such Submissions, and you hereby warrant that any such Submissions are original with you or that you have the right to submit such Submissions. You agree there shall be no recourse against us for any alleged or actual infringement or misappropriation of any proprietary right in your Submissions.</p> <p class="privacy-title"><strong>THIRD-PARTY WEBSITES AND CONTENT</strong></p> <p class="legal-text">The Site may contain (or you may be sent via the Site or the Marketplace Offerings) links to other websites ("Third-Party Websites") as well as articles, photographs, text, graphics, pictures, designs, music, sound, video, information, applications, software, and other content or items belonging to or originating from third parties ("Third-Party Content"). Such Third-Party Websites and Third-Party Content are not investigated, monitored, or checked for accuracy, appropriateness, or completeness by us, and we are not responsible for any Third Party Websites accessed through the Site or any Third-Party Content posted on, available through, or installed from the Site, including the content, accuracy, offensiveness, opinions, reliability, privacy practices, or other policies of or contained in the Third-Party Websites or the Third-Party Content. Inclusion of, linking to, or permitting the use or installation of any Third-Party Websites or any Third-PartyContent does not imply approval or endorsement thereof by us. If you decide to leave the Site and access the Third-Party Websites or to use or install any Third-Party Content, you do so at your own risk, and you should be aware these Terms of Use no longer govern. You should review the applicable terms and policies, including privacy and data gathering practices, of any website to which you navigate from the Site or relating to any applications you use or install from the Site. Any purchases you make through Third-Party Websites will be through other websites and from other companies, and we take no responsibility whatsoever in relation to such purchases which are exclusively between you and the applicable third party. You agree and acknowledge that we do not endorse the products or services offered on Third-Party Websites and you shall hold us harmless from any harm caused by your purchase of such products or services. Additionally, you shall hold us harmless from any losses sustained by you or harm caused to you relating to or resulting in any way from any Third-Party Content or any contact with Third-Party Websites.</p> <p class="privacy-title"><strong>ADVERTISERS</strong></p> <p class="legal-text">We allow advertisers to display their advertisements and other information in certain areas of the Site, such as sidebar advertisements or banner advertisements. If you are an advertiser, you shall take full responsibility for any advertisements you place on the Site and any services provided on the Site or products sold through those advertisements. Further, as an advertiser, you warrant and represent that you possess all rights and authority to place advertisements on the Site, including, but not limited to, intellectual property rights, publicity rights, and contractual rights. We simply provide the space to place such advertisements, and we have no other relationship with advertisers.</p> <p class="privacy-title"><strong>SITE MANAGEMENT</strong></p> <p class="legal-text">We reserve the right, but not the obligation, to: (1) monitor the Site for violations of these Terms of Use; (2) take appropriate legal action against anyone who, in our sole discretion, violates the law or these Terms of Use, including without limitation, reporting such user to law enforcement authorities; (3) in our sole discretion and without limitation, refuse, restrict access to, limit the availability of, or disable (to the extent technologically feasible) any of your Contributions or any portion thereof; (4) in our sole discretion and without limitation, notice, or liability, to remove from the Site or otherwise disable all files and content that are excessive in size or are in any way burdensome to our systems; and (5) otherwise manage the Site in a manner designed to protect our rights and property and to facilitate the proper functioning of the Site and the Marketplace Offerings.</p> <p class="privacy-title"><strong>PRIVACY POLICY</strong></p> <p class="legal-text">We care about data privacy and security. Please review our Privacy Policy: https://www.krowdspace.com/?privacy=1. By using the Site or the Marketplace Offerings, you agree to be bound by our Privacy Policy, which is incorporated into these Terms of Use. Please be advised the Site and the Marketplace Offerings are hosted in the United States. If you access the Site or the Marketplace Offerings from the European Union, Asia, or any other region of the world with laws or other requirements governing personal data collection, use, or disclosure that differ from applicable laws in the United States, then through your continued use of the Site, you are transferring your data to the United States, and you expressly consent to have your data transferred to and processed in the United States. Further, we do not knowingly accept, request, or solicit information from children or knowingly market to children. Therefore, in accordance with the U.S. Children’s Online Privacy Protection Act, if we receive actual knowledge that anyone under the age of 13 has provided personal information to us without the requisite and verifiable parental consent, we will delete that information from the Site as quickly as is reasonably practical.</p> <p class="privacy-title"><strong>COPYRIGHT INFRINGEMENTS</strong></p> <p class="legal-text">We respect the intellectual property rights of others. If you believe that any material available on or through the Site infringes upon any copyright you own or control, please immediately notify us using the contact information provided below (a “Notification”). A copy of your Notification will be sent to the person who posted or stored the material addressed in the Notification. Please be advised that pursuant to federal law you may be held liable for damages if you make material misrepresentations in a Notification. Thus, if you are not sure that material located on or linked to by the Site infringes your copyright, you should consider first contacting an attorney.</p> <p class="privacy-title"><strong>TERM AND TERMINATION</strong></p> <p class="legal-text">These Terms of Use shall remain in full force and effect while you use the Site. WITHOUT LIMITING ANY OTHER PROVISION OF THESE TERMS OF USE, WE RESERVE THE RIGHT TO, IN OUR SOLE DISCRETION AND WITHOUT NOTICE OR LIABILITY, DENY ACCESS TO AND USE OF THE SITE AND THE MARKETPLACE OFFERINGS (INCLUDING BLOCKING CERTAIN IP ADDRESSES), TO ANY PERSON FOR ANY REASON OR FOR NO REASON, INCLUDING WITHOUT LIMITATION FOR BREACH OF ANY REPRESENTATION, WARRANTY, OR COVENANT CONTAINED IN THESE TERMS OF USE OR OF ANY APPLICABLE LAW OR REGULATION. WE MAY TERMINATE YOUR USE OR PARTICIPATION IN THE SITE AND THE MARKETPLACE OFFERINGS OR DELETE YOUR ACCOUNT AND ANY CONTENT OR INFORMATION THAT YOU POSTED AT ANY TIME, WITHOUT WARNING, IN OUR SOLE DISCRETION. </p> <p class="legal-text">If we terminate or suspend your account for any reason, you are prohibited from registering and creating a new account under your name, a fake or borrowed name, or the name of any third party, even if you may be acting on behalf of the third party. In addition to terminating or suspending your account, we reserve the right to take appropriate legal action, including without limitation pursuing civil, criminal, and injunctive redress.</p> <p class="privacy-title"><strong>MODIFICATIONS AND INTERRUPTIONS</strong></p> <p class="legal-text">We reserve the right to change, modify, or remove the contents of the Site at any time or for any reason at our sole discretion without notice. However, we have no obligation to update any information on our Site. We also reserve the right to modify or discontinue all or part of the Marketplace Offerings without notice at any time. We will not be liable to you or any third party for any modification, price change, suspension, or discontinuance of the Site or the Marketplace Offerings. </p> <p class="legal-text">We cannot guarantee the Site and the Marketplace Offerings will be available at all times. We may experience hardware, software, or other problems or need to perform maintenance related to the Site, resulting in interruptions, delays, or errors. We reserve the right to change, revise, update, suspend, discontinue, or otherwise modify the Site or the Marketplace Offerings at any time or for any reason without notice to you. You agree that we have no liability whatsoever for any loss, damage, or inconvenience caused by your inability to access or use the Site or the Marketplace Offerings during any downtime or discontinuance of the Site or the Marketplace Offerings. Nothing in these Terms of Use will be construed to obligate us to maintain and support the Site or the Marketplace Offerings or to supply any corrections, updates, or releases in connection therewith.</p> <p class="privacy-title"><strong>GOVERNING LAW</strong></p> <p class="legal-text">These Terms of Use and your use of the Site and the Marketplace Offerings are governed by and construed in accordance with the laws of the State of Washington applicable to agreements made and to be entirely performed within the State of Washington, without regard to its conflict of law principles. </p> <p class="privacy-title"><strong>DISPUTE RESOLUTION</strong></p> <p class="legal-text"><strong>Informal Negotiations</strong></p> <p class="legal-text">To expedite resolution and control the cost of any dispute, controversy, or claim related to these Terms of Use (each a "Dispute" and collectively, the “Disputes”) brought by either you or us (individually, a “Party” and collectively, the “Parties”), the Parties agree to first attempt to negotiate any Dispute (except those Disputes expressly provided below) informally for at least thirty (30) days before initiating arbitration. Such informal negotiations commence upon written notice from one Party to the other Party.</p> <p class="legal-text"><strong>Binding Arbitration</strong></p> <p class="legal-text">If the Parties are unable to resolve a Dispute through informal negotiations, the Dispute (except those Disputes expressly excluded below) will be finally and exclusively resolved by binding arbitration. YOU UNDERSTAND THAT WITHOUT THIS PROVISION, YOU WOULD HAVE THE RIGHT TO SUE IN COURT AND HAVE A JURY TRIAL. The arbitration shall be commenced and conducted under the Commercial Arbitration Rules of the American Arbitration Association ("AAA") and, where appropriate, the AAA’s Supplementary Procedures for Consumer Related Disputes ("AAA Consumer Rules"), both of which are available at the AAA website www.adr.org. Your arbitration fees and your share of arbitrator compensation shall be governed by the AAA Consumer Rules and, where appropriate, limited by the AAA Consumer Rules. The arbitration may be conducted in person, through the submission of documents, by phone, or online. The arbitrator will make a decision in writing, but need not provide a statement of reasons unless requested by either Party. The arbitrator must follow applicable law, and any award may be challenged if the arbitrator fails to do so. Except where otherwise required by the applicable AAA rules or applicable law, the arbitration will take place in King County, WA. Except as otherwise provided herein, the Parties may litigate in court to compel arbitration, stay proceedings pending arbitration, or to confirm, modify, vacate, or enter judgment on the award entered by the arbitrator.</p> <p class="legal-text">If for any reason, a Dispute proceeds in court rather than arbitration, the Dispute shall be commenced or prosecuted in the state and federal courts located in King County, WA, and the Parties hereby consent to, and waive all defenses of lack of personal jurisdiction, and forum non conveniens with respect to venue and jurisdiction in such state and federal courts. Application of the United Nations Convention on Contracts for the International Sale of Goods and the the Uniform Computer Information Transaction Act (UCITA) are excluded from these Terms of Use. </p> <p class="legal-text">In no event shall any Dispute brought by either Party related in any way to the Site be commenced more than one (1) years after the cause of action arose. If this provision is found to be illegal or unenforceable, then neither Party will elect to arbitrate any Dispute falling within that portion of this provision found to be illegal or unenforceable and such Dispute shall be decided by a court of competent jurisdiction within the courts listed for jurisdiction above, and the Parties agree to submit to the personal jurisdiction of that court.</p> <p class="legal-text"><strong>Restrictions</strong></p> <p class="legal-text">The Parties agree that any arbitration shall be limited to the Dispute between the Parties individually. To the full extent permitted by law, (a) no arbitration shall be joined with any other proceeding; (b) there is no right or authority for any Dispute to be arbitrated on a class-action basis or to utilize class action procedures; and (c) there is no right or authority for any Dispute to be brought in a purported representative capacity on behalf of the general public or any other persons.</p> <p class="legal-text"><strong>Exceptions to Informal Negotiations and Arbitration</strong></p> <p class="legal-text">The Parties agree that the following Disputes are not subject to the above provisions concerning informal negotiations and binding arbitration: (a) any Disputes seeking to enforce or protect, or concerning the validity of, any of the intellectual property rights of a Party; (b) any Dispute related to, or arising from, allegations of theft, piracy, invasion of privacy, or unauthorized use; and (c) any claim for injunctive relief. If this provision is found to be illegal or unenforceable, then neither Party will elect to arbitrate any Dispute falling within that portion of this provision found to be illegal or unenforceable and such Dispute shall be decided by a court of competent jurisdiction within the courts listed for jurisdiction above, and the Parties agree to submit to the personal jurisdiction of that court.</p> <p class="privacy-title"><strong>CORRECTIONS</strong></p> <p class="legal-text">There may be information on the Site that contains typographical errors, inaccuracies, or omissions that may relate to the Marketplace Offerings, including descriptions, pricing, availability, and various other information. We reserve the right to correct any errors, inaccuracies, or omissions and to change or update the information on the Site at any time, without prior notice.</p> <p class="privacy-title"><strong>DISCLAIMER</strong></p> <p class="legal-text">THE SITE IS PROVIDED ON AN AS-IS AND AS-AVAILABLE BASIS. YOU AGREE THAT YOUR USE OF THE SITE SERVICES WILL BE AT YOUR SOLE RISK. TO THE FULLEST EXTENT PERMITTED BY LAW, WE DISCLAIM ALL WARRANTIES, EXPRESS OR IMPLIED, IN CONNECTION WITH THE SITE AND YOUR USE THEREOF, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND NON-INFRINGEMENT. WE MAKE NO WARRANTIES OR REPRESENTATIONS ABOUT THE ACCURACY OR COMPLETENESS OF THE SITE’S CONTENT OR THE CONTENT OF ANY WEBSITES LINKED TO THIS SITE AND WE WILL ASSUME NO LIABILITY OR RESPONSIBILITY FOR ANY (1) ERRORS, MISTAKES, OR INACCURACIES OF CONTENT AND MATERIALS, (2) PERSONAL INJURY OR PROPERTY DAMAGE, OF ANY NATURE WHATSOEVER, RESULTING FROM YOUR ACCESS TO AND USE OF THE SITE, (3) ANY UNAUTHORIZED ACCESS TO OR USE OF OUR SECURE SERVERS AND/OR ANY AND ALL PERSONAL INFORMATION AND/OR FINANCIAL INFORMATION STORED THEREIN, (4) ANY INTERRUPTION OR CESSATION OF TRANSMISSION TO OR FROM THE SITE, (5) ANY BUGS, VIRUSES, TROJAN HORSES, OR THE LIKE WHICH MAY BE TRANSMITTED TO OR THROUGH THE SITE BY ANY THIRD PARTY, AND/OR (6) ANY ERRORS OR OMISSIONS IN ANY CONTENT AND MATERIALS OR FOR ANY LOSS OR DAMAGE OF ANY KIND INCURRED AS A RESULT OF THE USE OF ANY CONTENT POSTED, TRANSMITTED, OR OTHERWISE MADE AVAILABLE VIA THE SITE. WE DO NOT WARRANT, ENDORSE, GUARANTEE, OR ASSUME RESPONSIBILITY FOR ANY PRODUCT OR SERVICE ADVERTISED OR OFFERED BY A THIRD PARTY THROUGH THE SITE, ANY HYPERLINKED WEBSITE, OR ANY WEBSITE OR MOBILE APPLICATION FEATURED IN ANY BANNER OR OTHER ADVERTISING, AND WE WILL NOT BE A PARTY TO OR IN ANY WAY BE RESPONSIBLE FOR MONITORING ANY TRANSACTION BETWEEN YOU AND ANY THIRD-PARTY PROVIDERS OF PRODUCTS OR SERVICES. AS WITH THE PURCHASE OF A PRODUCT OR SERVICE THROUGH ANY MEDIUM OR IN ANY ENVIRONMENT, YOU SHOULD USE YOUR BEST JUDGMENT AND EXERCISE CAUTION WHERE APPROPRIATE.</p> <p class="privacy-title"><strong>LIMITATIONS OF LIABILITY</strong></p> <p class="legal-text">IN NO EVENT WILL WE OR OUR DIRECTORS, EMPLOYEES, OR AGENTS BE LIABLE TO YOU OR ANY THIRD PARTY FOR ANY DIRECT, INDIRECT, CONSEQUENTIAL, EXEMPLARY, INCIDENTAL, SPECIAL, OR PUNITIVE DAMAGES, INCLUDING LOST PROFIT, LOST REVENUE, LOSS OF DATA, OR OTHER DAMAGES ARISING FROM YOUR USE OF THE SITE, EVEN IF WE HAVE BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGES. NOTWITHSTANDING ANYTHING TO THE CONTRARY CONTAINED HEREIN, OUR LIABILITY TO YOU FOR ANY CAUSE WHATSOEVER AND REGARDLESS OF THE FORM OF THE ACTION, WILL AT ALL TIMES BE LIMITED TO THE AMOUNT PAID, IF ANY, BY YOU TO US DURING THE THREE (3) MONTH PERIOD PRIOR TO ANY CAUSE OF ACTION ARISING. CERTAIN STATE LAWS DO NOT ALLOW LIMITATIONS ON IMPLIED WARRANTIES OR THE EXCLUSION OR LIMITATION OF CERTAIN DAMAGES. IF THESE LAWS APPLY TO YOU, SOME OR ALL OF THE ABOVE DISCLAIMERS OR LIMITATIONS MAY NOT APPLY TO YOU, AND YOU MAY HAVE ADDITIONAL RIGHTS.</p> <p class="privacy-title"><strong>INDEMNIFICATION</strong></p> <p class="legal-text">You agree to defend, indemnify, and hold us harmless, including our subsidiaries, affiliates, and all of our respective officers, agents, partners, and employees, from and against any loss, damage, liability, claim, or demand, including reasonable attorneys’ fees and expenses, made by any third party due to or arising out of: (1) your Contributions; (2) use of the Site; (3) breach of these Terms of Use; (4) any breach of your representations and warranties set forth in these Terms of Use; (5) your violation of the rights of a third party, including but not limited to intellectual property rights; or (6) any overt harmful act toward any other user of the Site with whom you connected via the Site. Notwithstanding the foregoing, we reserve the right, at your expense, to assume the exclusive defense and control of any matter for which you are required to indemnify us, and you agree to cooperate, at your expense, with our defense of such claims. We will use reasonable efforts to notify you of any such claim, action, or proceeding which is subject to this indemnification upon becoming aware of it.</p> <p class="privacy-title"><strong>USER DATA</strong></p> <p class="legal-text">We will maintain certain data that you transmit to the Site for the purpose of managing the performance of the Site, as well as data relating to your use of the Site. Although we perform regular routine backups of data, you are solely responsible for all data that you transmit or that relates to any activity you have undertaken using the Site. You agree that we shall have no liability to you for any loss or corruption of any such data, and you hereby waive any right of action against us arising from any such loss or corruption of such data.</p> <p class="privacy-title"><strong>ELECTRONIC COMMUNICATIONS, TRANSACTIONS, AND SIGNATURES</strong></p> <p class="legal-text">Visiting the Site, sending us emails, and completing online forms constitute electronic communications. You consent to receive electronic communications, and you agree that all agreements, notices, disclosures, and other communications we provide to you electronically, via email and on the Site, satisfy any legal requirement that such communication be in writing. YOU HEREBY AGREE TO THE USE OF ELECTRONIC SIGNATURES, CONTRACTS, ORDERS, AND OTHER RECORDS, AND TO ELECTRONIC DELIVERY OF NOTICES, POLICIES, AND RECORDS OF TRANSACTIONS INITIATED OR COMPLETED BY US OR VIA THE SITE. You hereby waive any rights or requirements under any statutes, regulations, rules, ordinances, or other laws in any jurisdiction which require an original signature or delivery or retention of non-electronic records, or to payments or the granting of credits by any means other than electronic means.</p> <p class="privacy-title"><strong>CALIFORNIA USERS AND RESIDENTS</strong></p> <p class="legal-text">If any complaint with us is not satisfactorily resolved, you can contact the Complaint Assistance Unit of the Division of Consumer Services of the California Department of Consumer Affairs in writing at 1625 North Market Blvd., Suite N 112, Sacramento, California 95834 or by telephone at (800) 952-5210 or (916) 445-1254.</p> <p class="privacy-title"><strong>MISCELLANEOUS</strong></p> <p class="legal-text">These Terms of Use and any policies or operating rules posted by us on the Site or in respect to the Site constitute the entire agreement and understanding between you and us. Our failure to exercise or enforce any right or provision of these Terms of Use shall not operate as a waiver of such right or provision. These Terms of Use operate to the fullest extent permissible by law. We may assign any or all of our rights and obligations to others at any time. We shall not be responsible or liable for any loss, damage, delay, or failure to act caused by any cause beyond our reasonable control. If any provision or part of a provision of these Terms of Use is determined to be unlawful, void, or unenforceable, that provision or part of the provision is deemed severable from these Terms of Use and does not affect the validity and enforceability of any remaining provisions. There is no joint venture, partnership, employment or agency relationship created between you and us as a result of these Terms of Use or use of the Site. You agree that these Terms of Use will not be construed against us by virtue of having drafted them. You hereby waive any and all defenses you may have based on the electronic form of these Terms of Use and the lack of signing by the parties hereto to execute these Terms of Use.</p> <p class="privacy-title"><strong>CONTACT US</strong> </p> <p class="legal-text">In order to resolve a complaint regarding the Site or to receive further information regarding use of the Site, please contact us at:</p> <p class="text-reset">Krowdspace LLC</p> <p class="text-reset">8397 158th Ave NE #406</p> <p class="text-reset">Redmond, WA 98052</p> <p class="text-reset">Email @ Footer Contact Form</p> </div> <div class="modal-close-box text-right"> <button type="button" class="modal-close" data-dismiss="modal">Close</button> </div> </div> </div> </div>', '', '', function(opts) {
        this.on('mount', function() {
            var url = window.location.href;
            if (url.indexOf('?terms=1') != -1) {
                $("#modal-service-terms").modal('show');
            }
        });
});
riot.tag2('global-modal-submission', '<div id="modal-submission" class="modal container fade"> <div class="krowdspace-modal col-sm-6 col-sm-offset-3"> <div id="modal" class="modal-content"> <div class="modal-header"> <p class="modal-heading">Thank You From Krowdspace</p> </div> <div class="modal-body"> <p>Thank you for registering with Krowdspace. To activate your account please check your email and click on the verification link provided. We hope you enjoy our services and happy crowdfunding!</p> <p>Being a Krowdspace member will give you access to the latest news, promotions and exclusive giveaways! Until then, make sure to stay connected with our social media channels:</p> <div class="col-sm-9 text-left social-icons"> <a href="https://www.facebook.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-facebook fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.pinterest.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.twitter.com/Krowdspaced" target="_blank"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-twitter fa-stack-1x fa-inverse"></i> </span> </a> <a href="https://www.instagram.com/Krowdspace" target="_blank"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-instagram fa-stack-1x fa-inverse"></i> </span> </a> </div> <div class="col-sm-3 text-right social-icons"> <a onclick="{submission}"> <span class="fa-stack fa fa-2x social-btn filterdark"> <i class="fa fa-circle fa-stack-2x"></i> <i class="fa fa-sign-out fa-stack-1x fa-inverse center-icon"></i> </span> </a> </div> <div class="clearfix"></div> </div> </div> </div> <div class="background-modal-close" data-dismiss="modal"> </div> </div>', '', '', function(opts) {
this.submission = function()
{
	$('#modal-submission').modal('hide');
    window.location.replace("/#/explore");
}.bind(this)
});
riot.tag2('home-content-benefits', '<div id="project" class="home-section"> <div class="container"> <div class="row"> <div class="col-sm-12 text-center"> <h2 class="landing-header">How it works</h2> </div> <div class="col-lg-offset-2 col-lg-8 col-md-12 text-left"> <p class="text-reset">Krowdspace features projects gathered from the top crowdfunding sites and brings them together into one unified platform. How does this help you? Projects that utilize Krowdspace add unique and powerful branding above and beyond the original fundraising platform. This removes backer bias and expands the visibility of your project to a larger more diverse audience. As your addressable audience grows, the probability of reaching funding goals is increased. Pair this increased reach with Krowdspace’s effective <a href="#modal-feature-info" data-toggle="modal" class="home-links">project boosts</a> and campaigns gain momentum faster. Join the Krowdspace community today by <a href="/#/explore" class="modal-link home-links">discovering new projects</a> or <a href="/#/account/register" class="home-links">submit your own project</a>.</p> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('home-content-directions', '<div id="project" class="home-top"> <div class="container"> <div class="row"> <div class="col-sm-12 text-center"> <h2 class="landing-header">How to submit a project</h2> </div> <div class="home-bottom col-lg-offset-2 col-lg-8 col-md-12 text-left"> <p class="text-reset">Krowdspace is currently accepting active crowdfunding projects from Kickstarter and Indiegogo. The process to submit a project is easy: once your project is live on either platform, submit your project for approval to Krowdspace by filling out our <a href="/#/account/register" class="modal-link home-links">project submission form</a>. In order to have your project published, you must offer an exclusive reward to backers who support your project through the Krowdspace community. Backers that use the opposite platform you’ve chosen can now discover your campaign and get on board. When it comes to fundraising, reaching every qualified backer counts.</p> </div> <div class="col-md-4 home-bottom hidden-sm hidden-xs"> <div class="text-center price-box shadow"> <img src="/img/content/submit-icon.png" class="img-responsive" alt="Submit a Project Icon"> <p class="home-text"> <i>Register Project</i> </p> </div> </div> <div class="col-md-4 home-bottom hidden-sm hidden-xs"> <div class="text-center price-box shadow"> <img src="/img/content/reward-icon.png" class="img-responsive" alt="Rewards Icon"> <p class="home-text"> <i>Offer an Extra Reward</i> </p> </div> </div> <div class="col-md-4 home-bottom hidden-sm hidden-xs"> <div class="text-center price-box shadow"> <img src="/img/content/backer-icon.png" class="img-responsive" alt="Gain Backers Icon"> <p class="home-text"> <i>Gather More Backers</i> </p> </div> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('home-content-hero', '<header alt="Back the project, not the platform. Launch your project with Krowdspace today!"> <div class="container-header"> <div class="row"> <div class="col-lg-8 col-md-12 header-left text-left"> <h1 class="home-padding home-text hidden-xs">Back the Project, not the Platform</h1> <div class="container-top-header"> <p class="home-text">At Krowdspace, our goal is to unify the crowdfunding community by expanding exposure for your project. Whether you’re a project owner building momentum for your campaign, or a backer looking to support the next big idea, Krowdspace connects the latest projects from the top crowdfunding sites in a single location.</p> <p class="home-padding home-text">Krowdspace members receive exclusive rewards for backing projects and project owners gain access to our promotional platform to accelerate their potential for a successful campaign.</p> <a href="/#/account/register" data-toggle="modal"> <p class="btn-landing shadow">Submit a Project</p> </a> </div> </div> <div class="col-lg-4 header-right hidden-md hidden-sm hidden-xs"> <div class="shadow"> <form ref="registerform" onsubmit="{submit}"> <div class="col-sm-12 register-container text-left"> <p class="text-left cta-header">Discover extra rewards for projects you love or submit your own crowdfunding project!</p> <div class="form-group form-split-right"> <input type="text" ref="firstname" class="form-control" placeholder="First Name" required> </div> <div class="form-group form-split-left"> <input type="text" ref="lastname" class="form-control" placeholder="Last Name" required> </div> <div class="form-group"> <input name="email" ref="email" class="form-control" placeholder="Email Address" required type="email"> </div> <div class="form-group"> <input type="text" ref="username" class="form-control" placeholder="Username" required="required" minlength="5"> </div> <div class="input-group"> <input type="password" ref="password" placeholder="New Password" id="PASSWORD" class="masked form-control" required="required" minlength="5"> <div class="input-group-btn"> <button type="button" id="eye" class="btn btn-eye"> <i class="fa fa-eye fa-lg"></i> </button> </div> </div> <div class="form-group"> <input type="text" ref="kickstarter" class="form-control" placeholder="Kickstarter Username (Optional)"> </div> <div class="form-group"> <input type="text" ref="indiegogo" class="form-control" placeholder="Indiegogo Username (Optional)"> </div> <div class="login-box"> <label> <input class="check-box" type="checkbox" required minlength="1">I agree to <a href="#modal-service-terms" data-toggle="modal" class="home-links">Krowdspace terms</a> </label> </div> </div> <div class="text-center"> <input type="submit" class="landing-submit" name="submit" value="Join Krowdspace"> </div> </form> </div> </div> </div> </div> </header>', '', '', function(opts) {
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
riot.tag2('home-content-influence', '<div> <div class="container"> <div class="row"> <div class="col-sm-12 text-center"> <h2 class="landing-header">General Questions</h2> </div> <div class="home-bottom col-lg-offset-2 col-lg-8 col-md-12 text-left"> <p class="text-reset">If you have any doubts about how Krowdspace can help your project, please read through these general questions. Check out our <a class="home-links" href="/#/explore">Explore Page</a> and see firsthand what a submitted project look like to our users. Feel free to <a href="#modal-global-contact" data-toggle="modal" class="home-links">contact us</a> if you want to know more about our services.</p> </div> <div class="col-lg-offset-0 col-lg-6 col-md-offset-2 col-md-8 text-left faq-box-left"> <div class="faq-container"> <p class="question-text">How is Krowdspace different?</p> <i data-toggle="collapse" data-target="#question1" class="fa fa-plus plus-icon"></i> <div id="question1" class="collapse answer-container"> <p class="answer-text"> Krowdspace was built on the idea of providing open and honest crowdfunding support and we speak from experience. In 2016 we attempted to crowdfund a separate business venture (Lala Bahari) using Kickstarter. Immediately, we were flooded with marketing spam from companies who promised to help us broaden our campaign. Eventually, we invested but it produced zero impact. Having gone through that experience, we believed there was a better way. Krowdspace provides a low-cost alternative to marketing by combining multiple crowdfunding communities and increasing viewsership to a targeted audience. Using a single outlet to expand your addressable market of backers allows you to expand the visibility and increase the probability of running a successful campaign.</p> </div> </div> <div class="faq-container hidden-xs"> <p class="question-text">What are some benefits to submitting a project on Krowdspace?</p> <i data-toggle="collapse" data-target="#question6" class="fa fa-plus plus-icon"></i> <div id="question6" class="collapse answer-container"> <p class="answer-text"> Kickstarter and Indiegogo are the big players in the crowdfunding marketplace. If you choose to host your project on one of these platforms exclusively, you could potentially miss out on accessing additional backers from other sources. At Krowdspace, we receive projects from both sites and display them unbiasedly. This means backers can make decisions about what projects they want to support without being influenced by where the project is being hosted. A larger audience translates into additional backing opportunities!</p> </div> </div> <div class="faq-container hidden-xs"> <p class="question-text">How can Krowdspace help my project become successful?</p> <i data-toggle="collapse" data-target="#question10" class="fa fa-plus plus-icon"></i> <div id="question10" class="collapse answer-container"> <p class="answer-text"> In addition to combining the two major crowdfunding communities into one unified platform, Krowdspace also offers additional <a href="#modal-feature-info" data-toggle="modal" class="home-links">Featured Project Listings</a> for campaigns. For a small fee, project boosts will provide promotional benefits such as being featured on Krowdspace’s social media channels or becoming a highlighted campaign on high traffic areas of our site.</p> </div> </div> <div class="faq-container"> <p class="question-text">How do I submit a project on Krowdspace?</p> <i data-toggle="collapse" data-target="#question2" class="fa fa-plus plus-icon"></i> <div id="question2" class="collapse answer-container"> <p class="answer-text"> You must have a live crowdfunding project on Indiegogo or Kickstarter and offer registered Krowdspace users a unique and exclusive reward. You can <a class="home-links" href="/#/account/register">submit your project</a> after signing up as a member to Krowdspace.</p> </div> </div> <div class="faq-container"> <p class="question-text">What kind of a reward should I offer?</p> <i data-toggle="collapse" data-target="#question3" class="fa fa-plus plus-icon"></i> <div id="question3" class="collapse answer-container"> <p class="answer-text">You can submit any kind of reward ranging from free swag to a discount off a pledged amount. Keep in mind that all rewards need to be approved by our staff before being displayed on our Explore Page. To see more example please check out our <a href="#modal-global-rewards" data-toggle="modal" class="home-links">Rewards Page</a>.</p> </div> </div> <div class="faq-container hidden-xs"> <p class="question-text">What are some reasons my reward would not be approved?</p> <i data-toggle="collapse" data-target="#question4" class="fa fa-plus plus-icon"></i> <div id="question4" class="collapse answer-container"> <p class="answer-text"> Rewards might be sent back because they do not offer Krowdspace community members enough incentive to fund a project. We recommend staying away from very small discounts under 3% and incentives that don’t hold a value. For example, a thank you email or shout out on social media.</p> </div> </div> </div> <div class="faq-box-right col-lg-offset-0 col-lg-6 col-md-offset-2 col-md-8 text-left"> <div class="faq-container hidden-xs"> <p class="question-text">How long does it take before my reward is approved?</p> <i data-toggle="collapse" data-target="#question5" class="fa fa-plus plus-icon"></i> <div id="question5" class="collapse answer-container"> <p class="answer-text">Our goal is to approve rewards within 24 hours.</p> </div> </div> <div class="faq-container hidden-xs"> <p class="question-text">How much does it cost to submit a project on Krowdspace?</p> <i data-toggle="collapse" data-target="#question7" class="fa fa-plus plus-icon"></i> <div id="question7" class="collapse answer-container"> <p class="answer-text">Submitting a project to Krowdspace is free. All you need to get started is a live crowdfunding project on either Kickstarter or Indiegogo and a commitment to offer an exclusive reward to backers on Krowdspace. Find out more on <a href="#modal-global-rewards" data-toggle="modal" class="home-links">Backer Rewards</a> or <a href="/#/account/register" data-toggle="modal" class="home-links">Submit a Project</a> today!</p> </div> </div> <div class="faq-container hidden-xs"> <p class="question-text">What kind of resources do you provide for project owners?</p> <i data-toggle="collapse" data-target="#question11" class="fa fa-plus plus-icon"></i> <div id="question11" class="collapse answer-container"> <p class="answer-text">At Krowdspace we have gathered popular media outlet contacts and put them into an easy to use directory located on our <a href="/#/account/resource" class="home-links">Resource Page</a>. We also have example press release templates from successful campaigns to give you an easy format to follow. All of this information is free and is exclusive to Krowdspace members.</p> </div> </div> <div class="faq-container hidden-xs"> <p class="question-text">How important is Social Media advertising?</p> <i data-toggle="collapse" data-target="#question12" class="fa fa-plus plus-icon"></i> <div id="question12" class="collapse answer-container"> <p class="answer-text">There are over 1.65 billion active social media accounts and 71% of people who have had a good social media experience with a given product are likely to recommend that brand. In addition, 20% of those who have recommended a brand are likely to make a product purchase. Navigating through advertising software and providing the right content to a targeted user base can sometimes be a challenge. At Krowdspace, we do the heavy lifting for you. We have built targeted, organic social media support to expand the visibility of your projects and increase the outreach needed for a successful campaign.</p> </div> </div> <div class="faq-container"> <p class="question-text">How do I contact Krowdspace?</p> <i data-toggle="collapse" data-target="#question13" class="fa fa-plus plus-icon"></i> <div id="question13" class="collapse answer-container"> <p class="answer-text">Please contact us through our <a href="#modal-global-contact" data-toggle="modal" class="home-links">contact form</a>. You can also reach out through our form located in the footer of our website.</p> </div> </div> </div> </div> </div> </div>', '', '', function(opts) {
});
riot.tag2('home-content-users', '<div id="benefits"> <div class="container"> <div class="row"> <div class="col-sm-12 text-center"> <h2 class="landing-header">Krowdspace Users</h2> </div> <div class="home-bottom col-lg-offset-2 col-lg-8 col-md-12 text-left"> <p class="user-home-box">There are a lot of benefits to <a href="#modal-global-login" class="modal-link home-links" data-toggle="modal">becoming a member</a> at Krowdspace. After registering you will have access to exclusive rewards for backing crowdfunding projects hosted on Kickstarter or Indiegogo. We also offer crowdfunding related <a href="/#/account/giveaway" data-toggle="modal" class="home-links">giveaways</a>! They are exclusive to our community and only available to registered members. Project owners will have instant access to our resources page which include example press release\'s and a list of places to get media exposure. At Krowdspace you will learn quickly that <a href="/#/explore" class="home-links">discovering new projects</a> is easy and its always fun to get free stuff!</p> <div class="col-xs-4 text-center divider-inside-right"> <p>Campaigns</p> <p class="social-metric">{projectTotal}</p> </div> <div class="col-xs-4 text-center divider-inside-right"> <p>Rewards</p> <p class="social-metric">${krowdspaceTotalReward}</p> </div> <div class="col-xs-4 text-center"> <p>Pledges</p> <p class="social-metric">${krowdspaceTotalRaised}</p> </div> <div class="clearfix"></div> </div> </div> </div> </div>', '', '', function(opts) {
    this.on('mount', () => {
        krowdspace.v1.stats().then((res)=>
        {

           this.projectTotal = res.data.totalProjects;

           let kickstarterTotalReward = res.data.platforms[0].rewardAmmount,
               indiegogoTotalReward = res.data.platforms[1].rewardAmmount,
               rewardValue = kickstarterTotalReward + indiegogoTotalReward;
           this.krowdspaceTotalReward = rewardValue.toLocaleString();

           let kickstarterTotalRaised = res.data.platforms[0].raisedAmount,
               indiegogoTotalRaised = res.data.platforms[1].raisedAmount,
               raisedValue = kickstarterTotalRaised + indiegogoTotalRaised;
           this.krowdspaceTotalRaised = raisedValue.toLocaleString();
           this.update();

        },
        (err)=>
        {
            console.log(err);
        })
    });
});
riot.tag2('home-navigation', '<nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top"> <div class="container"> <div class="navbar-header page-scroll"> <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-collapse"> <span class="sr-only">Toggle navigation</span><i class="fa fa-bars"></i> </button> <a href="/"><img class="navbar-logo nav-logo-size" src="img/press/krowdspace-icon-v1.png" alt="Krowdspace Logo Small"></a> </div> <div class="collapse navbar-collapse" id="navigation-collapse"> <ul class="nav navbar-nav navbar-right"> <li class="hidden"> <a href="#page-top"></a> </li> <li> <a href="/#/explore">Explore</a> </li> <li> <a show="{!logged_in}" href="#modal-global-register" class="modal-link" data-toggle="modal">Submit Project</a> </li> <li> <a show="{logged_in}" href="/#/account/dashboard">Dashboard</a> </li> <li> <a show="{logged_in}" href="/#/account/register">Submit Project</a> </li> <li> <a show="{!logged_in}" class="page-scroll" href="#benefits">Benefits</a> </li> <li> <a show="{!logged_in}" href="#modal-global-login" class="modal-link" data-toggle="modal">Login</a> </li> <li> <a show="{logged_in}" href="/#/account/resource">Resource</a> </li> <li> <a class="hidden-lg hidden-md" show="{logged_in}" onclick="{krowdspaceLogout}">Logout</a> </li> </ul> </div> </div> </nav>', '', '', function(opts) {
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
this.krowdspaceLogout = function()
    {
        krowdspace.v1.logout().then((res) =>
        {
            window.location.replace("/");
        },
        (err) =>
        {

        });
    }.bind(this);
});

riot.tag2('home-slider-clients', '<aside class="hidden-xs"> <div class="container text-center"> <section class="center slider"> <div each="{indexClients}"> <a href="{imageURL}" target="_blank"><img riot-src="{image}" alt="{imageAlt}"></a> </div> </section> </div> </aside>', 'home-slider-clients .slick-slide img,[data-is="home-slider-clients"] .slick-slide img{ width: 100%; width: 150px; border: none; }', '', function(opts) {
    this.indexClients = [
    { image:"img/clients/digital-ocean-logo.png", imageURL:"https://m.do.co/c/0d0a3c0340d3", imageAlt:"Digital Ocean"},
    { image:"img/clients/ryanv-logo.png", imageURL:"http://ryanvillasanti.com", imageAlt:"Ryan Villasanti"},
    { image:"img/clients/lb-logo.png", imageAlt:"Lala Bahari"},
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

riot.tag2('home-slider-projects', '<div class="row"> <div class="autoplay slider"> <div class="landing-banner" each="{ExploreBannerFilter}"> <img class="landing-slider {project_data.meta_data.mainImg || \'indiegogo-image-small\'}" riot-src="{project_data.meta_data.mainImg || project_data.meta_data.altImg}"> <div class="landing-banner-box"> <div class="col-xs-9 padding-reset"> <span class="explore-title">{name}</span> <div class="explore-box-text"> <span class="explore-title">{project_data.info_data.reward}</span> </div> </div> <div class="col-xs-3 learn-more-box text-right"> <a class="plus-switch-one" href="{unique_url || \'/#/explore/project/\' + unique_id}" data-toggle="modal"><p class="learn-more">Learn More</p></a> <a class="plus-switch" href="{unique_url || \'/#/explore/project/\' + unique_id}" data-toggle="modal"><i class="fa fa-plus learn-more-plus"></i></a> </div> </div> </div> </div> </div>', 'home-slider-projects .landing-banner,[data-is="home-slider-projects"] .landing-banner{ height:310px; overflow: hidden; width: 550px; background-color: #000; position: relative; border-top:1px solid #000; border-bottom:1px solid #000; } home-slider-projects .landing-slider,[data-is="home-slider-projects"] .landing-slider{ height: auto; margin-left: auto; margin-right: auto; } home-slider-projects .indiegogo-image-small,[data-is="home-slider-projects"] .indiegogo-image-small{ height:310px; width: auto; } @media screen and (max-width: 550px) { home-slider-projects .col-xs-9,[data-is="home-slider-projects"] .col-xs-9{ width: 90%; } home-slider-projects .col-xs-3,[data-is="home-slider-projects"] .col-xs-3{ width: 10%; } home-slider-projects .landing-banner,[data-is="home-slider-projects"] .landing-banner{ height:225px; } home-slider-projects .indiegogo-image-small,[data-is="home-slider-projects"] .indiegogo-image-small{ height:225px; width: auto; } home-slider-projects .landing-banner,[data-is="home-slider-projects"] .landing-banner{ width: 400px; background-color: #000; position: relative; } }', '', function(opts) {
        krowdspace.projects.explore().then((res) =>
        {
            let ExploreBannerData = res.data,
                FilterExplore = ExploreBannerData.filter((element) => {
                return (element.project_data.info_data.landing);
        });

        let newObject= {
                    unique_id: '#modal-feature-info',
                    name: '',
                    platform: 'kickstarter',
                    project_data:
                    {
                        web_data:
                        {
                            description:
                            {
                                content: '',
                            },
                        },
                        info_data:
                        {
                            reward: ''
                        },
                        meta_data:
                        {
                            mainImg: '/img/content/krowdspace-banner-1.jpg',
                        },
                    },
                };

        let newObject2= {
                    unique_url: '#modal-global-register',
                    name: 'Join Krowdspace Today!',
                    platform: 'kickstarter',
                    project_data:
                    {
                        web_data:
                        {
                            description:
                            {
                                content: '',
                            },
                        },
                        info_data:
                        {
                            reward: 'Discover Extra Rewards For Projects You Love!'
                        },
                        meta_data:
                        {
                            mainImg: '/img/content/krowdspace-join.jpg',
                        },
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
            let FilterExplore = [];
            let newObject= {
                    unique_id: '#modal-feature-info',
                    name: '',
                    platform: 'kickstarter',
                    project_data:
                    {
                        web_data:
                        {
                            description:
                            {
                                content: '',
                            },
                        },
                        info_data:
                        {
                            reward: ''
                        },
                        meta_data:
                        {
                            mainImg: '/img/content/krowdspace-banner-1.jpg',
                        },
                    },
                };

        let newObject2= {
                    unique_url: '#modal-global-register',
                    name: 'Join Krowdspace Today!',
                    platform: 'kickstarter',
                    project_data:
                    {
                        web_data:
                        {
                            description:
                            {
                                content: '',
                            },
                        },
                        info_data:
                        {
                            reward: 'Discover Extra Rewards For Projects You Love!'
                        },
                        meta_data:
                        {
                            mainImg: '/img/content/krowdspace-join.jpg',
                        },
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
        });
});
riot.tag2('home', '<home-navigation></home-navigation> <home-content-hero></home-content-hero> <home-content-benefits></home-content-benefits> <home-slider-projects></home-slider-projects> <home-content-directions></home-content-directions> <home-content-users></home-content-users> <home-content-influence></home-content-influence> <home-slider-clients></home-slider-clients> <global-footer></global-footer>', '', '', function(opts) {
});