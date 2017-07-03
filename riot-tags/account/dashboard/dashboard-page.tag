<dashboard-page>
	<div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
    </div>
        <div class="container dashboard">
			<global-logout show={ logged_in } uri={ uri }></global-logout>
			<div class="col-sm-10 col-sm-offset-1" style="padding: 0px;">

				<div class="row dash-row no-gutter shadow">

					<div each = { p in projects }>
						<project-button onclick={ makeButtF(p) } project = { p }></project-button>
					</div>

					<dashboard-project-image project = { project }></dashboard-project-image>	

					<dashboard-project-user user={ user } project = { project }></dashboard-project-user>
				</div>

				<div class="row dash-row no-gutter">

					<dashboard-project-hours project = { project }></dashboard-project-hours>

					<dashboard-project-reward project = { project }></dashboard-project-reward>

				</div>	

				<div class="row dash-row no-gutter shadow">

					<dashboard-project-title project={ project }> </dashboard-project-title>

				</div>

				<div class="row dash-row no-gutter shadow">

					<dashboard-project-bar project = { project }></dashboard-project-bar>

				</div>
			</div>
        </div>

	<dashboard-featured-purchase project = { project }></dashboard-featured-purchase>
	<dashboard-explore-purchase project = { project }></dashboard-explore-purchase>
	<dashboard-landing-purchase project = { project }></dashboard-landing-purchase>
	<dashboard-edit-profile project = { project }></dashboard-edit-profile>
	<dashboard-edit-reward project = { project }></dashboard-edit-reward>

    <global-footer></global-footer> 
<script>
	this.projectNum = 0;
	this.projects = [];

	this.project = null;
	this.user = null;

	this.userKey = "";

	this.on('mount', ()=>
	{
		krowdspace.users.user()
		.catch(err=>err)
		.then((res)=>
		{	
			this.user = res.data;
			this.userkey = res.data.username;

			console.log(res.data);

			return krowdspace.projects.project(this.userkey);
		})
		.then((res)=>
		{
			this.projects = res.data;
			this.setProject(res.data[0]);
		});
	});

	setProject(proj)
	{
		this.project = proj;
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

<project-button>

	<button>{ project.name }</button>
	
	<script>
		this.project = opts.project;
	</script>

</project-button>