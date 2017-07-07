<home-content-users>
    <div id="project" style="padding-top: 75px;">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <h2 class="landing-header">Become a Krowdspace User</h2>
                </div>
                <div class="col-lg-offset-2 col-lg-8 col-md-12 text-left" style="padding-bottom: 75px;">
                    <p style="margin: 0px 0px 50px 0px;">Krowdspace is currently accepting live crowdfunding projects from Kickstarter and Indiegogo. The process to submit a project is simple: once your project is live on either platform, submit your project for approval to Krowdspace by filling out our easy to use submission form. In order to have your project published on Krowdspace, you must offer an exclusive reward for backers who support you through our community. Supporters that might not usually use the funding platform you’ve chosen can now discover your project and get on board. When it comes to fundraising, every advantage counts.</p>
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