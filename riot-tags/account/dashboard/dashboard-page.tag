<dashboard-page>
<style>
@media screen and (max-width: 767px) {
        .shadow {
            -webkit-box-shadow: none;
    		-moz-box-shadow: none;
		}
		.project-add-container {
			top: 80px;
			left:0;
			right: 0;
			position: absolute;
			display: inline-block;
			font-size: 0px;
			width: 400px;
			margin-left: auto;
			margin-right: auto;
		}
		.project-add-text {
			display: inline-block;
			padding: 7px;
			font-size: 13px;
			margin-top: 1px;
			border: 1px solid #3f434f;
		}
		.project-yield {
			display: inline-block;
			font-size: 14px;
			border: 1px solid #3f434f;
			border-left: none;
			border-right: none;
		}
		.project-add-btn {
			width: 35px;
			padding: 7px 5px 9px 5px;
			display: inline-block;
			font-size: 15px;
			border: 1px solid #3f434f;
		}
		.project-add-btn:hover {
			border: 1px solid #3f434f;
		}
    }
</style>
	<div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
    </div>
        <div class="container dashboard">
			<div class="shadow text-left project-add-container">
				<p class="project-add-text">PROJECTS</p>
				
				<div class="project-yield text-center" each = {p, index in projects }>

					<project-button onclick={ makeButtF(p) } project = { p }>{ project.unique_id }</project-button>
 				</div>
				
				<a href="/#/account/register">
                	<i class="fa fa-plus project-add-btn filterdark"></i>
				</a>
			</div>
			<global-logout class="hidden-xs" show={ logged_in }></global-logout>
			<div class="col-sm-10 col-sm-offset-1 project-container">
				<div class="row dash-row no-gutter shadow">
        
					<dashboard-project-image show={ project } project = { project }></dashboard-project-image>
					<dashboard-user-image show={ !project } ></dashboard-user-image>
					<dashboard-project-user show={ project } index = { projectIndex + 1 } user = { user } project = { project }></dashboard-project-user>
					<dashboard-user-user show={ !project } user = { user }></dashboard-user-user>

				</div>
				<div show={ project } class="row dash-row no-gutter">
					<dashboard-project-hours project = { project }></dashboard-project-hours>
					<dashboard-project-reward  project = { project }></dashboard-project-reward>
				</div>	
				<div show={ project } class="row dash-row no-gutter shadow">
					<dashboard-project-title project={ project }> </dashboard-project-title>
				</div>
				<div class="row dash-row no-gutter shadow">
					<dashboard-project-bar show={ project } project = { project }></dashboard-project-bar>
					<dashboard-user-bar show={ !project }></dashboard-user-bar>
				</div>
			</div>
        </div>
	<dashboard-featured-purchase user = { user } project = { project }></dashboard-featured-purchase>
	<dashboard-explore-purchase user = { user } project = { project }></dashboard-explore-purchase>
	<dashboard-landing-purchase user = { user } project = { project }></dashboard-landing-purchase>
	<dashboard-social-purchase user = { user } project = { project }></dashboard-social-purchase>
	<dashboard-edit-profile user = { user } project = { project }></dashboard-edit-profile>
	<dashboard-edit-reward user = { user } project = { project }></dashboard-edit-reward>
	<dashboard-refresh-content user = { user } project = { project }></dashboard-refresh-content>
    <global-footer></global-footer> 
<script>
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
	setProject(proj)
	{
		this.project = proj;
		this.projectIndex = this.projects.indexOf(proj);
		this.update();
	}

	makeButtF(proj)
	{
		let p = proj;
		return function(e)
		{
			this.setProject(p);
		};
	};
</script>
</dashboard-page>