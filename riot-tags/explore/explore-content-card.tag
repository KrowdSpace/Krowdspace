<explore-content-card>
    <div class="row">
        <div each= { exploreCard in displayCards } class="col-sm-4">
            <div ref="exploreCard.project_data.info_data.category">
            <div class="no-gutter explore-container">
                <a href="/#/explore/project"><img class="img-responsive" src="{ exploreCard.project_data.web_data.mainImg.content }" style="margin-bottom: 10px; border-bottom: 1px solid #3f434f;"></a>
                <span class="fa-stack fa-lg explore-feature-icon" style="display:visible">
                <i class="fa fa-circle fa-stack-xx text-primary"></i>
                <i class="fa fa-heart fa-stack-1x fa-inverse"></i>
                </span>
                <div style="height: 90px; ">
                    <p class="card-text-alt"><strong>{ exploreCard.project_data.web_data.title.content }</strong></p>
                <p class="card-text-alt explore-"reward"" style="padding-top: 5px;"><strong>reward:</strong> { exploreCard.project_data.info_data.reward }</p>
                </div>
                <div class="col-sm-4 text-left">
                    <p class="card-text-alt">${ exploreCard.project_data.info_data.raised } Raised</p>
                </div>
                <div class="col-sm-4 text-center">
                    <p class="card-text-alt">{ exploreCard.project_data.info_data.days } days</p>
                </div>
                <div class="col-sm-4 text-right">
                    <p class="card-text-alt">${ exploreCard.project_data.info_data.goal } goal</p>
                </div>
                <div class="col-sm-12">
                    <div class="progress">
                        <div class="progress-bar" role="progressBar" style=" width: 60%;" aria-valuenow="{ exploreCard.project_data.info_data.percent }" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        this.displayCards = [];
        this.exploreCards = []; 
        krowdspace.projects.explore().then((res) =>
        {
            console.log(res);
            this.setExploreCards(res.data);
        },
        (err)=>
        {
            console.log(err)
        });
       

        this.setExploreCards = function setExploreCards(neA)
        {
            this.displayCards = neA;
            this.update();
        };

        this.setExploreCards(this.exploreCards);
    </script>

</explore-content-card>
