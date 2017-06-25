<dashboard-project-user>
    <div class="col-sm-6 text-center no-gutter user-container">
        <a href="#edit-reward" class="modal-link" data-toggle="modal">
            <span class="fa-stack fa-lg social-btn float-btn">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
            </span>
        </a>
				<p class="dashboard-text profile-name">{ firstname || FIRSTNAME } { lastname || LASTNAME }</p>
				<div class="col-sm-4 text-center divider-inside-right user-stat-box">
						<p class="dashboard-text">Projects Launched</p>
						<p class="social-metric">1</p>
				</div>
				<div class="col-sm-4 text-center divider-inside-right user-stat-box">
						<p class="dashboard-text">Hours Remaining</p>
						<p class="social-metric">{ countdowntimer }</p>
	
				</div>
				<div class="col-sm-4 text-center user-stat-box">
					<p class="dashboard-text">Reward Value</p>
					<p class="social-metric" ref="rewardAmount"></p>
				</div>
				<div class="col-sm-7 text-left" style="padding-left: 15px">
                    <p class="dashboard-text profile-padding">{ USERNAME }</p>
                    <p class="dashboard-text profile-padding">{ email || EMAIL }</p>
                    <p class="dashboard-text profile-padding">{ city || 'N/A' }</p>
                    
				</div>
				<div class="col-sm-5 text-center">
                    <p class="dashboard-text profile-padding">Kickstarter Username</p>
                    <p class="dashboard-text">{ kickstarter || KICKSTARTER || 'N/A' }</p>
					<p class="dashboard-text profile-padding">Indiegogo Username</p>
					<p class="dashboard-text">{ indiegogo || INDIEGOGO || 'N/A' }</p>
				</div>
			</div>
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
    console.log(res);
    this.FIRSTNAME = res.data.user_data.fname;
    this.LASTNAME = res.data.user_data.lname;
    this.EMAIL = res.data.email;
    this.KICKSTARTER = res.data.user_data.ksuser;
    this.INDIEGOGO = res.data.user_data.iguser;
    this.USERNAME = res.data.username;
    this.update();
},
(err)=> 
{
    console.log(err);
}
);

getUserTest().then((usrname)=>
{
    return krowdspace.projects.project(usrname);
}).then((res)=>
{
    this.kickstarter = res.data[0].project_data.info_data.ksuser;
    this.indiegogo = res.data[0].project_data.info_data.iguser;
    this.firstname = res.data[0].project_data.info_data.fname;
    this.lastname = res.data[0].project_data.info_data.lname;
    this.email = res.data[0].project_data.info_data.email;
    this.city = res.data[0].project_data.info_data.city;
    this.refs.rewardAmount.innerHTML = '$' + res.data[0].project_data.info_data.reward_ammount;

    let endTime = res.data[0].project_data.web_data.hours['data-end_time'],
        end = new Date(endTime),
        _second = 1000,
        _minute = _second * 60,
        _hour = _minute * 60,
        _day = _hour * 24,
        timer;

    function showRemaining() 
    {
        let now = new Date();
            distance = end - now,
            days = Math.floor(distance / _day),
            hours = Math.floor((distance % _day) / _hour),
            minutes = Math.floor((distance % _hour) / _minute),
            seconds = Math.floor((distance % _minute) / _second);
            countdown = (days * 24) + hours;
            return countdown;
    }
    timer = setInterval(showRemaining, 1000);
    this.countdowntimer = showRemaining();
    this.update();
},
(err)=> 
{
    console.log(err);
}
);
</script>

</dashboard-project-user>	
	