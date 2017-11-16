<dash-header>
    <div class="row dash-flex-row">
        <div class="dash-header-left">
            <div class="image-inner">
                <div class="item">
                    <a href="#" data-toggle="modal" data-target="#Reward">
                    <img class="img-slider { ownerClass }" src="{ ownerSource }" />
                    </a>
                    <div class="btn-explore-box">
                      <a href="#" data-toggle="modal" data-target="#Reward">
                        <button class="btn btn-primary btn-explore">Edit Reward</button>
                      </a>
                    </div>
                </div>
            </div>
            <div class="progress">
                <div class="progress-bar" role="progressBar" style="width: { ownerWhole + '%' };" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
              </div>
        </div>
        <div class="text-left dash-header-right">
          <a href="#" data-toggle="modal" data-target="#Verify">
            <img alt="Project Status" id="project-status" class="project-status" />
          </a>
            <div class="project-dash-flex">
                <div class="project-child-flex-top">
                    <p class="project-title">{ ownerTitle }</p>
                    <p>{ ownerDescription }</p>
                    <p>Reward: { ownerReward }</p>
                </div>
                <div class="project-child-flex-bottom">
                    <p class="project-title">Project Statistics</p>
                    <div class="statistics-flex">
                        <div class="statistics-flex-child">
                            <p class="statistic">{ ownerWhole }%</p>
                            <p class="statistics-title">Raised Percent</p>
                        </div>
                        <div class="statistics-flex-child">
                            <p class="statistic">{ ownerDays }</p>
                            <p class="statistics-title">{ ownerHours }</p>
                        </div>
                        <div class="statistics-flex-child">
                            <p class="statistic">${ ownerValue }</p>
                            <p class="statistics-title">Reward Value</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
    this.on('update', ()=>
    {
        if(!opts.project)
        return;
        this.ownerTitle = opts.project.project_data.meta_data.title;
        this.ownerDescription = opts.project.project_data.meta_data.description;
        this.ownerReward = opts.project.project_data.info_data.reward;
        this.ownerClass = opts.project.project_data.meta_data.mainImg || 'image-slider-square';
        this.ownerSource = opts.project.project_data.meta_data.mainImg || opts.project.project_data.meta_data.altImg;
        this.ownerValue = Math.round(opts.project.project_data.info_data.reward_ammount);
            this.ownerWhole = Math.round(opts.project.project_data.meta_data.raisedPercent * 100);
            let ownerDate = new Date(opts.project.project_data.meta_data.endTime),
                ownerTime = new Date(ownerDate.getTime() - (new Date().getTime())).getTime() / 86400000 * 24;
            this.ownerDays = Math.max(0, Math.floor(ownerTime));
            this.ownerHours = "Hours Left"; //use switch statement for these
            if (this.ownerDays + " " + opts.project.platform  == "0 kickstarter") {
              this.ownerDays = "Finished";
              this.ownerHours = "Campaign";
            }else if(this.ownerDays + " " + opts.project.platform == "0 indiegogo"){
              this.ownerDays = "InDemand";
              this.ownerHours = "Campaign";
            }else{
              this.ownerDays = Math.max(0, Math.floor(ownerTime));
              this.ownerHours = "Hours";
            }
            let projectStatus = opts.project.project_data.info_data.rewardValid;

            if( projectStatus == 0){
              $( "#project-status" ).removeClass().addClass( "project-pending" );
            }else if(projectStatus == 1){
              $( "#project-status" ).removeClass().addClass( "project-approved" );
            }else if(projectStatus == 2){
              $( "#project-status" ).removeClass().addClass( "project-expired" );
            }else {
              $( "#project-status" ).removeClass().addClass( "project-expired" );
            };
    });
</script>
</dash-header>
<!-- Validated Content October 27th, 2017 -->
