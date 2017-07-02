<dashboard-project-reward>
    <div class="col-sm-9 dashboard-reward-container">
		<div class="dashboard-reward-box shadow">
			<a href="#edit-reward" class="modal-link" data-toggle="modal">
            <span class="fa-stack fa-lg social-btn float-btn">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
            </span>
        </a>
			<p class="dashboard-text-alt reward-text">Reward: { projectReward }</p>
			<p class="dashboard-text-alt disclaimer-text">Upon succesful completion of your crowdfunding project you have agreed to send out any additional rewards to the backers who have supported your campaign.</p>
			<div class="couponcode-box text-center">
			<p class="couponcode">{ couponCode }</p>
			</div>
			<p class="dashboard-text-alt">This is your project reward code. Backers from Krowdspace will send you this code through your crowdfunding platform website so that you can verify their discount.</p>
		</div>
	</div>
<script>
krowdspace.projects.project(this.opts.userkey).then((res)=>
    {
        this.projectReward = res.data[0].project_data.info_data.reward;
    	this.couponCode = res.data[0].coupon_code;
        this.update();
    },
    (err)=> 
    {

    }
);
</script>
</dashboard-project-reward>	
	