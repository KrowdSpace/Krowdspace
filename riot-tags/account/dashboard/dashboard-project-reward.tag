<dashboard-project-reward>
<style>
@media screen and (max-width: 1200px) {
        .dashboard-reward-box {
            margin-left: 0px;
        }
    }
@media screen and (max-width: 767px) {
        .dashboard-reward-box {
            height: auto;
            margin-left: auto;
            margin-right: auto;
            width: 400px;
        }
    }
</style>
    <div class="col-lg-9 col-md-12 dashboard-reward-container">
		<div class="dashboard-reward-box shadow">
			<a href="#edit-reward" class="modal-link" data-toggle="modal">
            <span class="fa-stack fa-lg social-btn float-btn">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
            </span>
        </a>
			<p class="dashboard-text-alt reward-text">Reward: { projectReward }</p>
			<p class="dashboard-text-alt disclaimer-text">Upon succesful completion of your crowdfunding project you have agreed to send out any additional rewards to the backers who have supported your campaign.</p>
			<div class="couponcode-box text-center" style="width: 300px;">
			<p class="couponcode">{ couponCode }</p>
			</div>
			<p class="dashboard-text-alt">This is your project reward code. Backers from Krowdspace will send you this code through your crowdfunding platform website so that you can verify their discount.</p>
		</div>
	</div>
<script>
    this.on('update', ()=>
    {
        if(!opts.project)
            return;

        let res = {data: [opts.project]};

        this.projectReward = res.data[0].project_data.info_data.reward;
        this.couponCode = res.data[0].coupon_code;
    });
</script>
</dashboard-project-reward>	
	