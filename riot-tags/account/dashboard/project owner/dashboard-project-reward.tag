<dashboard-project-reward>
    <div class="col-lg-6 col-md-12 reward-container">
        <div class="shadow dashboard-reward-box">
            <a href="#edit-reward" class="modal-link" data-toggle="modal">
            <span class="fa-stack fa-lg social-btn filterdark float-btn">
            <i class="fa fa-circle fa-stack-2x"></i>
            <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <p class="dashboard-text-alt reward-text">Reward: { projectReward || '' }</p>
            <p class="dashboard-text-alt disclaimer-text">Upon succesful completion of your crowdfunding project you have agreed to send out any additional rewards to the backers who have supported your campaign. Please use the below reward code to validate backers coming from Krowdspace.</p>
            <div class="coupon-code-box text-center">
                <p class="coupon-code">{ couponCode || '' }</p>
            </div>
        </div>
    </div>
    <script>
        this.on('update', ()=>
        {
            if(!opts.project)
                return;
        
            let res = {data: [opts.project]};
            console.log(res);
            this.projectReward = res.data[0].project_data.info_data.reward;
            this.couponCode = res.data[0].coupon_code;
        });
    </script>
</dashboard-project-reward>