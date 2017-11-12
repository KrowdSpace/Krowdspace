<project-header>
    <div class="row project-flex">
        <div id="project-image" class="project-data">
            <div class="image-inner">
                <div class="item">
                    <img class="img-slider { imageClass }" src="{ imageSource }">
                </div>
            </div>
            <div class="progress progress-project">
                <div class="progress-bar" role="progressBar" style="width: { percentWhole + '%' };" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
            </div>
        </div>
        <div class="project-share-absolute">
            <div class="project-share-flex">
                <a href="{ facebookShare }" target="_blank">
            <button class="btn btn-primary dash-buttons"><i class="fa fa-lg fa-facebook dash-icon icon-sm" aria-hidden="true"></i><span class="dash-buttons-text"> Share Facebook</span>
           </button>
          </a>
                <a href="{ twitterShare }" target="_blank">
            <button class="btn btn-primary dash-buttons"><i class="fa fa-lg fa-twitter dash-icon" aria-hidden="true"></i><span class="dash-buttons-text"> Share Twitter</span>
            </button>
          </a>
                <a href="{ linkedinShare }" target="_blank">
            <button class="btn btn-primary dash-buttons"><i class="fa fa-lg fa-linkedin dash-icon" aria-hidden="true"></i><span class="dash-buttons-text"> Share LinkedIn</span>
            </button>
          </a>
                <a href="{ redditShare }" target="_blank">
            <button class="btn btn-primary dash-buttons"><i class="fa fa-lg fa-reddit-alien dash-icon" aria-hidden="true"></i><span class="dash-buttons-text"> Share Reddit</span>
            </button>
          </a>
                <a href="{ diggShare }" target="_blank">
            <button class="btn btn-primary dash-buttons"><i class="fa fa-lg fa-digg dash-icon" aria-hidden="true"></i><span class="dash-buttons-text"> Share Digg</span>
            </button>
          </a>
                <a href="{ stumbleuponShare }" target="_blank">
            <button class="btn btn-primary dash-buttons"><i class="fa fa-lg fa-stumbleupon dash-icon" aria-hidden="true"></i><span class="dash-buttons-text"> Share StumbleUpon</span>
            </button>
          </a>
            </div>
        </div>
        <div id="project-stats" class="project-data">
            <div class="project-stats-flex">
                <div class="project-child-flex-top">
                    <p class="project-page-title">{ projectTitle }</p>
                    <p>{ projectDescription }</p>
                    <p>Reward: { projectReward }</p>
                </div>
                <div>
                    <a href="#" data-toggle="modal" data-target="#Coupon">
                  <button class="btn btn-primary" show={ supportbtn }>Receive Coupon Code</button>
                </a>
                    <a href="{ indiegogoLink }" target="_blank">
                  <button class="btn btn-primary" show={ !supportbtn }>Receive Coupon Code</button>
                </a>
                </div>
                <div class="project-child-flex-bottom">
                    <p class="project-title">Project Statistics</p>
                    <div class="statistics-flex">
                        <div class="statistics-flex-child">
                            <p class="statistic">{ percentWhole }%</p>
                            <p class="statistics-title">Raised Percent</p>
                        </div>
                        <div class="statistics-flex-child">
                            <p class="statistic">{ Days }</p>
                            <p class="statistics-title">{ Hours }</p>
                        </div>
                        <div class="statistics-flex-child">
                            <p class="statistic">${ projectValue }</p>
                            <p class="statistics-title">Reward Value</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        this.on('update', () => {
          if(!opts.campaign)
          return;

            let platform = opts.campaign.platform;
            if (platform == 'kickstarter') {
                this.supportbtn = true;
            } else {
                this.supportbtn = false;
                this.indiegogoLink = opts.campaign.project_data.info_data.ig_reward;
            };

            this.projectReward = opts.campaign.project_data.info_data.reward;
            this.projectTitle = opts.campaign.project_data.meta_data.title;
            this.projectDescription = opts.campaign.project_data.meta_data.description;
            this.imageClass = opts.campaign.project_data.meta_data.mainImg || 'image-slider-square';
            this.imageSource = opts.campaign.project_data.meta_data.mainImg || opts.campaign.project_data.meta_data.altImg;
            this.projectValue = Math.round(opts.campaign.project_data.info_data.reward_ammount);
            this.percentWhole = Math.round(opts.campaign.project_data.meta_data.raisedPercent * 100);
            let endDate = new Date(opts.campaign.project_data.meta_data.endTime),
                remainingTime = new Date(endDate.getTime() - (new Date().getTime())).getTime() / 86400000 * 24;

            this.Days = Math.max(0, Math.floor(remainingTime));
            this.Hours = "Hours Left";

            if (this.Days + " " + platform  == "0 kickstarter") {
                this.Days = "Finished";
                this.Hours = "Campaign";
            }else if(this.Days + " " + platform == "0 indiegogo"){
              this.Days = "InDemand";
                this.Hours = "Campaign";
            }else{
              this.Days = Math.max(0, Math.floor(remainingTime));
              this.Hours = "Hours";
            }

            this.facebookShare = 'https://www.facebook.com/sharer.php?u=' + opts.campaign.project_data.info_data.url;

            this.twitterShare = 'https://twitter.com/intent/tweet?text=Check out ' + opts.campaign.project_data.meta_data.title + ' at Krowdspace.com!&hashtags=krowdspace, kickstarter, indiegogo';

            this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=' + opts.campaign.project_data.info_data.url + '&title=' + opts.campaign.project_data.meta_data.title;

            this.redditShare = 'https://reddit.com/submit?url=' + opts.campaign.project_data.info_data.url + '&title=' + opts.campaign.project_data.meta_data.title;

            this.diggShare = 'http://digg.com/submit?url=' + opts.campaign.project_data.info_data.url + '&title=' + opts.campaign.project_data.meta_data.title;

            this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=' + opts.campaign.project_data.info_data.url + '&title=' + opts.campaign.project_data.meta_data.title;
        });
    </script>
</project-header>
<!-- Validated Content October 26th, 2017 -->
