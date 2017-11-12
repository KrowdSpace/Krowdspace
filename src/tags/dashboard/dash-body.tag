<dash-body>
    <div class="row dash-body-row">
        <div class="dash-offset-left">
            <p class="dashboard-title">Krowdspace Coupon Code</p>
            <p>Upon successful completion of your crowdfunding campaign you have agreed to send out any additional rewards to the members who have supported you. Please use the below coupon code to validate members coming from Krowdspace. If you have submitted an Indiegogo campaign, then Krowdspace members will go directly to your secret perk link.</p>
            <p class="coupon-code">{ ownerCoupon }</p>
            <div class="dash-bottom-box-bottom">
                <a href="/#/project/{ campaignLink }"><button class="btn btn-primary dash-buttons"><img src="/images/krowdspace-logo-white.svg" class="krowdspace" aria-hidden="true" />
        <span class="dash-buttons-text project-id-btn"> Project Link</span>
        </button></a>
        <a show= { campaignSwitch } href="{ ownerLink }" target="_blank"><button class="btn btn-primary dash-buttons"><img src="/images/kickstarter.svg" class="kickstarter" aria-hidden="true" />
        <span class="dash-buttons-text"> Campaign Link</span>
        </button></a>
        <a show= { !campaignSwitch } href="{ ownerLink }" target="_blank">
                <button class="btn btn-primary dash-buttons"><img src="/images/indiegogo.svg" class="indiegogo" aria-hidden="true" />
          <span class="dash-buttons-text"> Campaign Link</span>
          </button></a>
            </div>
        </div>
        <div class="dash-offset-right">
            <div class="chart-flex">
                <div class="chart-box">
                    <div id="dashChart"></div>
                </div>
                <div class="chart-label-box">
                    <p>Total Raised</p>
                    <p class="chart-statistics">${ ownerRaised }</p>
                    <p>Campaign Goal</p>
                    <p class="chart-statistics">${ ownerGoal }</p>
                </div>
            </div>
            <p show={ !ended } class="refresh-text">Click the refresh icon to update campaign statistics and content</p>
            <button show={ !ended } onclick={ submitRefreshChart } class="btn btn-primary dash-buttons-static refresh-icon"><i class="fa fa-lg fa-refresh dash-icon" aria-hidden="true"></i></button>
        </div>
    </div>
    <purchase owner={ owner } purchase={ purchase }></purchase>
    <div class="row dash-body-row">
        <div class="text-left dash-offset">
            <p class="dashboard-title">Campaign Media Promotion</p>
            <p>Click on each of the below resources to pull up an editorial contact email or link to send your press release to gain exposure. To maximize your success rate send each email individually so that every message can be personalized. It will help to send the message from your own email address. A press release that comes from another agency takes away from the authenticity and creates a sense of being manufactured. To reset the checkmarks please refresh the browser.</p>
            <p>Please take a look at one of our press release guides for best practices on formatting and content.</p>
            <div class="campaign-media-box">
                <a href="/#/resource/press-release">
                <button class="btn btn-primary">Press Release Guide</button>
              </a>
            </div>
        </div>
    </div>
    <div class="row dash-body-row">
        <div class="text-left dash-offset-flex">
            <media-body></media-body>
        </div>
    </div>
    <div class="row dash-body-row-giveaway">
        <div class="text-left dash-offset">
            <p class="dashboard-title">Krowdspace Giveaway</p>
            <p>Periodically we will have giveaways from crowdfunding campaigns and/or awesome prizes sponsored by Krowdspace. If you would like to submit your own project for our giveaway program please contact us directly. If your project is selected, Krowdspace will set aside a small marketing budget and provide paid advertisement free to you. All you will need to provide is the prize which must be $50 or more for elegibility.</p>
            <div class="campaign-media-box">
                <button class="btn btn-primary" data-toggle="modal" data-target="#Contact">Submit New Giveaway</button>
            </div>
        </div>
        <div class="text-left dash-offset">
            <div id="dash-giveaway">
                <giveaway-live></giveaway-live>
            </div>
        </div>
    </div>
    <script>
        this.on('update', () => {
            if (!opts.project)
                return;

            this.purchase = opts.project;
            this.owner = opts.user;
            var ownerPlatform = opts.project.platform;
            var endDisable = new Date(opts.project.project_data.meta_data.endTime);
            var newDate = new Date();

            this.campaignLink = opts.project.unique_id;
            this.ownerLink = opts.project.project_data.info_data.url;
            this.ownerCoupon = opts.project.coupon_code;

            if( ownerPlatform === 'kickstarter'){
              this.campaignSwitch = true;
            }else{
              this.campaignSwitch = false;
            }

            if(endDisable <= newDate){
              this.ended = true;
            }else{
              this.ended = false;
            }

            this.ownerGoal = Math.round(parseFloat(opts.project.project_data.meta_data.funding.toLocaleString('en-US').replace(/,/g, ''))).toLocaleString('en-US') || 0;
            this.ownerRaised = Math.round(parseFloat(opts.project.project_data.meta_data.funding.toLocaleString('en-US').replace(/,/g, '')) * opts.project.project_data.meta_data.raisedPercent).toLocaleString('en-US') || 0;

            let bar = null;

            if(!this.progBar)

            this.progBar = bar = new ProgressBar.Circle(dashChart, {
                color: '#d5d5d5',
                strokeWidth: 18,
                trailWidth: 18,
                easing: 'easeInOut',
                duration: 1400,
                text: {
                    autoStyleContainer: false
                },
                from: {
                    color: '#81e281',
                    width: 18
                },
                to: {
                    color: '#81e281',
                    width: 18
                },

                step: function (state, circle) {
                    circle.path.setAttribute('stroke', state.color);
                    circle.path.setAttribute('stroke-width', state.width);
                    circle.setText(Math.min(Math.max(Math.round(opts.project.project_data.meta_data.raisedPercent * 100), 0), 100) + '%');

                }
            });
            bar = this.progBar;
            bar.text.style.fontFamily = '"Raleway", Helvetica, sans-serif';
            bar.text.style.fontSize = '2rem';
            bar.animate(Math.min(Math.max(opts.project.project_data.meta_data.raisedPercent, 0), 1));

            submitRefreshChart(e)
            {
                e.preventDefault();

                if(!opts.project)
                    return;

                let projectKey = opts.project.unique_id;

                krowdspace.projects.update_project(projectKey).then((res)=>
                {
                    $('#Refresh').modal('show');
                });
            };

        });
    </script>
</dash-body>
<!-- Validated Content October 27th, 2017 -->
