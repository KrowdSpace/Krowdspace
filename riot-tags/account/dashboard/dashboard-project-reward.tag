<dashboard-project-reward>
    <div class="col-sm-9 dashboard-reward-container">
				<div class="dashboard-reward-box shadow">
					<span class="fa-stack fa-lg social-btn float-btn">
						<i class="fa fa-circle fa-stack-2x"></i>
						<i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
					</span>
					<p class="dashboard-text reward-text">Reward: <span ref="projectReward"></span></p>
					<p class="dashboard-text disclaimer-text">Upon succesful completion of your crowdfunding project you have agreed to send out any additional rewards to the backers who have supported your campaign.</p>
					<div class="couponcode-box text-center">
					<p class="couponcode" ref="couponCode">1XD6D3</p>
					</div>
					<p class="dashboard-text">This is your project reward code. Backers from Krowdspace will send you this code through your crowdfunding platform website so that you can verify their discount.</p>
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
    return krowdspace.projects.project(usrname);
}).then((res)=>
{
    this.refs.projectReward.innerHTML = res.data[0].project_data.info_data.reward;
    this.refs.couponCode.innerHTML = res.data[0].coupon_code;
},
(err)=> 
{
    console.log(err);
}
);
</script>
</dashboard-project-reward>	
	