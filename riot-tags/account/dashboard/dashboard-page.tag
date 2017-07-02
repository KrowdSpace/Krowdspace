<dashboard-page>
	<div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
    </div>
        <div class="container dashboard">
			<global-logout show={ logged_in } uri={ uri }></global-logout>
			<div class="col-sm-10 col-sm-offset-1" style="padding: 0px;">
				<div class="row dash-row no-gutter shadow">
					<div each = { i in projects }>
						<button onclick={ krowdspaceProject } ref={ 'button' + count } value={ i }>{ name }</button>
					</div>
					<dashboard-project-image userkey = { userkey } project = { project }></dashboard-project-image>	
					<dashboard-project-user userkey = { userkey }></dashboard-project-user>
				</div>
				<div class="row dash-row no-gutter">
					<dashboard-project-hours userkey = { userkey }></dashboard-project-hours>
					<dashboard-project-reward userkey = { userkey }></dashboard-project-reward>
				</div>	
				<div class="row dash-row no-gutter shadow">
					<dashboard-project-title project={ project } userkey={ userkey }> </dashboard-project-title>
				</div>
				<div class="row dash-row no-gutter shadow">
					<dashboard-project-bar userkey = { userkey }></dashboard-project-bar>
				</div>
			</div>
        </div>
	<dashboard-featured-purchase userkey = { userkey }></dashboard-featured-purchase>
	<dashboard-explore-purchase userkey = { userkey }></dashboard-explore-purchase>
	<dashboard-landing-purchase userkey = { userkey }></dashboard-landing-purchase>
	<dashboard-edit-profile userkey = { userkey }></dashboard-edit-profile>
	<dashboard-edit-reward userkey = { userkey }></dashboard-edit-reward>
    <global-footer></global-footer> 
<script>
	this.projectNum = 0;
	this.projects = [];
	this.project = null;

	this.userKey = "";

	this.counterObj = [{}];

	this.on('mount', ()=>
	{
		krowdspace.users.user()
		.catch(err=>err)
		.then((res)=>
		{	
			console.log(res);
			this.userkey = res.data.username;
			return krowdspace.projects.project(this.userkey);
		})
		.then((res)=>
		{
			this.projects = res.data;
			this.setProject(this.projectNum);
		});
	});

	setProject(index)
	{
		this.project = this.projects[index];
		this.update();
	}

	krowdspaceProject(e)
	{
		let projectNum = e.target.value;
		this.setProject(projectNum);
	};

	// krowdspace.projects.project(this.opts.userkey).then((res)=>
	//     {
	// 		var counter=[];

	// 		for( var i=0; i < res.data.length; i++ ) {
	// 			counter.push({ count : i });
	// 		}
	// 		console.log(counter);
	// 		this.counterObj = counter;
	// 		this.update();
	//     },
	//     (err)=> 
	//     {
	//         console.log(err);
	//     }
	// );


</script>
</dashboard-page>