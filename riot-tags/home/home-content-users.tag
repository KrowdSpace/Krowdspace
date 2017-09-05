<home-content-users>
    <div id="benefits">
        <div class="container">
            <div class="col-sm-12 text-center">
                <h2 class="landing-header">Krowdspace Users</h2>
            </div>
            <div class="home-bottom col-lg-offset-2 col-lg-8 col-md-12 text-left">
                <p class="user-home-box">There are a lot of benefits to <a href="#modal-global-login" class="modal-link home-links" data-toggle="modal">becoming a member</a> at Krowdspace. After registering you will have access to exclusive rewards for backing crowdfunding projects hosted on Kickstarter or Indiegogo. We also offer crowdfunding related <a href="/#/account/giveaway" data-toggle="modal" class="home-links">giveaways</a>! They are exclusive to our community and only available to registered members. Project owners will have instant access to our resources page which include example press release's and a list of places to get media exposure. At Krowdspace you will learn quickly that <a href="/#/explore" class="home-links">discovering new projects</a> is easy and its always fun to get free stuff!</p>
                <div class="col-xs-4 text-center divider-inside-right">
                    <p>Campaigns</p>
                    <p class="social-metric">{ projectTotal || 0}</p>
                </div>
                <div class="col-xs-4 text-center divider-inside-right">
                    <p>Rewards</p>
                    <p class="social-metric">${ krowdspaceTotalReward || 0}</p>
                </div>
                <div class="col-xs-4 text-center">
                    <p>Pledges</p>
                    <p class="social-metric">${ krowdspaceTotalRaised || 0}</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <script>
    this.on('mount', () => {
        krowdspace.v1.stats().then((res)=>
        {

           this.projectTotal = res.data.totalProjects;

           let kickstarterTotalReward = res.data.platforms[0].rewardAmmount,
               indiegogoTotalReward = res.data.platforms[1].rewardAmmount,
               rewardValue = kickstarterTotalReward + indiegogoTotalReward;
           this.krowdspaceTotalReward = rewardValue.toLocaleString();

           let kickstarterTotalRaised = res.data.platforms[0].raisedAmount,
               indiegogoTotalRaised = res.data.platforms[1].raisedAmount,
               raisedValue = kickstarterTotalRaised + indiegogoTotalRaised,
               roundedValue = Math.round(raisedValue);
           this.krowdspaceTotalRaised = roundedValue.toLocaleString();
           this.update();

        },
        (err)=> 
        {
            console.log(err);
        })
    });
    </script> 
</home-content-users>