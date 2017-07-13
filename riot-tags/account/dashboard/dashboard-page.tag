<dashboard-page>
	<div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
    </div>
        <div class="container dashboard">
			<div class="shadow text-center project-add-container">
				<p class="project-add-text">PROJECT</p>
				<div each = {p, index in projects }>
					<project-button onclick={ makeButtF(p) } project = { p }>
					 { project.unique_id }
					</project-button>
				</div>
				<a href="/#/account/register">
                	<i class="fa fa-plus project-add-btn filterdark"></i>
				</a>
			</div>
			<global-logout show={ logged_in }></global-logout>
			<div class="col-sm-10 col-sm-offset-1" style="padding: 0px;">
				<div class="row dash-row no-gutter shadow">
					<dashboard-project-image project = { project }></dashboard-project-image>	
					<dashboard-project-user index = { projectIndex + 1 } user = { user } project = { project }></dashboard-project-user>
					
				</div>
				<div class="row dash-row no-gutter">
					<dashboard-project-hours show={ project } project = { project }></dashboard-project-hours>
					<dashboard-project-reward show={ project } project = { project }></dashboard-project-reward>
				</div>	
				<div class="row dash-row no-gutter shadow">
					<dashboard-project-title show={ project } project={ project }> </dashboard-project-title>
				</div>
				<div class="row dash-row no-gutter shadow">
					<dashboard-project-bar show={ project } project = { project }></dashboard-project-bar>
				</div>
			</div>
        </div>
	<dashboard-featured-purchase user = { user } project = { project }></dashboard-featured-purchase>
	<dashboard-explore-purchase user = { user } project = { project }></dashboard-explore-purchase>
	<dashboard-landing-purchase user = { user } project = { project }></dashboard-landing-purchase>
	<dashboard-edit-profile user = { user } project = { project }></dashboard-edit-profile>
	<dashboard-edit-reward user = { user } project = { project }></dashboard-edit-reward>
    <global-footer></global-footer> 
<script>
	this.projectNum = 0;
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
				console.log(this.projects);
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