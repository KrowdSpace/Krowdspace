<home-content-users>
    <div id="benefits" style="padding-top: 75px;">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h2 class="landing-header">Become a Krowdspace User</h2>
                </div>
                <div class="col-lg-offset-2 col-lg-8 col-md-12 text-left" style="padding-bottom: 75px;">
                    <p style="margin: 0px 0px 50px 0px;">There are a lot of benefits to becoming a member at Krowdspace. By signing up you will get exclusive rewards and coupon codes for backing your favorite crowdfunding projects that are hosted on Kickstarter or Indiegogo. We always recommend that members login to Krowdspace before backing a project to see if they have submitted to Krowdspace. Another great benefit is our Krowdspace Giveaways. They are exclusive to our community and only members can register. Members will learn quickly that discovering new projects are easy and its always fun to get extra stuff!</p>
                    <div class="col-sm-4 text-center divider-inside-right">
                        <p>Projects Submitted</p>
                        <p class="social-metric">15</p>
                    </div>
                    <div class="col-sm-4 text-center divider-inside-right">
                        <p>Reward Value</p>
                        <p class="social-metric">300</p>
                    </div>
                    <div class="col-sm-4 text-center">
                        <p>Social Following</p>
                        <p class="social-metric">5,400</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script>
krowdspace.projects.explore().then((res) =>
        {
            let UserMetrics = res.data,
                FilterMetrics = UserMetrics.filter((element) => {
                return (typeof element.project_data.info_data.reward_ammount === 'string');
            });
            FilterMetrics.forEach((element) =>
            {
                let rewardValue = Number(element.project_data.info_data.reward_ammount);
            });

           
            this.UserMetrics = FilterMetrics;
            this.update();

        },
        (err)=>
        {
            console.log(err)
        });
</script>
</home-content-users>