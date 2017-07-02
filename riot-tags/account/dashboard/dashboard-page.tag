<dashboard-page>
	<div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
    </div>
        <div class="container dashboard">
			<global-logout show={ logged_in } uri={ opts.uri }></global-logout>
			<div class="col-sm-10 col-sm-offset-1" style="padding: 0px;">
				<div class="row dash-row no-gutter shadow">
					<div each={ counterObj }>
					<p onclick={ krowdspaceProject }>{ count }</p>
					</div>
					<dashboard-project-image opts.userkey = { userkey }></dashboard-project-image>	
					<dashboard-project-user opts.userkey = { userkey }></dashboard-project-user>
				</div>
				<div class="row dash-row no-gutter">
					<dashboard-project-hours opts.userkey = { userkey }></dashboard-project-hours>
					<dashboard-project-reward opts.userkey = { userkey }></dashboard-project-reward>
				</div>	
				<div class="row dash-row no-gutter shadow">
					<dashboard-project-title opts.userkey = { userkey }></dashboard-project-title>
				</div>
				<div class="row dash-row no-gutter shadow">
					<dashboard-project-bar opts.userkey = { userkey }></dashboard-project-bar>
				</div>
			</div>
        </div>
	<dashboard-featured-purchase opts.userkey = { userkey }></dashboard-featured-purchase>
	<dashboard-explore-purchase opts.userkey = { userkey }></dashboard-explore-purchase>
	<dashboard-landing-purchase opts.userkey = { userkey }></dashboard-landing-purchase>
	<dashboard-edit-profile opts.userkey = { userkey }></dashboard-edit-profile>
	<dashboard-edit-reward opts.userkey = { userkey }></dashboard-edit-reward>
    <global-footer></global-footer> 
<script>
getUserTest();

function getUserTest(usr)
{
	return krowdspace.users.user(usr).then((res)=>
	{
		
	},
	(err)=>
	{
		console.log('Error: ', err);
	});
};

getUserTest().then((usrname)=>
{
	return krowdspace.users.user(usrname);
}).then((res)=>
	{	
		this.userkey = res.data.username;
		this.update();
	},
	(err)=> 
	{

	}
);
krowdspace.projects.project(this.opts.userkey).then((res)=>
    {
		var counter=[];

		for( var i=0; i < res.data.length; i++ ) {
			counter.push({ count : i + ' number'});
		}
		console.log(counter);
		this.counterObj = counter;
		this.update();
    },
    (err)=> 
    {
        console.log(err);
    }
);

// krowdspaceProject() 
//     {
//         var projectNum = this.refs.count.value,
//     };
	</script>
</dashboard-page>