<explore-content-card>
    <div>
        <div each= { exploreCard in displayCards } class="col-lg-4 col-md-6 col-sm-6 padding-reset">
            <div ref="exploreCard.ExploreCard.data.category">
                <div class="no-gutter explore-container shadow">
                    <div class="platform-card-box">
                        <a href="/#/explore/project/{ exploreCard.ExploreCard.data.id }">
                        <img class="img-responsive image-card { exploreCard.ExploreCard.data.imageSize }" src="{ exploreCard.ExploreCard.data.image }" alt="{ exploreCard.ExploreCard.data.title }"></a>
                    </div>
                    <a href="/#/explore/project/{ exploreCard.ExploreCard.data.id }">
                        <span show={ exploreCard.ExploreCard.data.featured } class="fa-stack fa-lg explore-feature-icon">
                        <i class="fa fa-circle fa-stack-xx krowdspace"></i>
                        <i class="fa fa-heart fa-stack-1x fa-inverse"></i>
                        </span>
                    </a>
                    <div class="card-title-height">
                        <p class="card-text-alt">{ exploreCard.ExploreCard.data.title }</p>
                        <p class="card-text-alt">Reward: { exploreCard.ExploreCard.data.reward }</p>
                    </div>
                    <div class="col-xs-5 text-left card-return">
                        <p class="card-text-alt">${ exploreCard.ExploreCard.data.backed || 0 } Raised</p>
                    </div>
                    <div class="col-xs-2 text-center card-return">
                        <p class="card-text-alt days-center">{ exploreCard.ExploreCard.data.days || 0 } Days</p>
                    </div>
                    <div class="col-xs-5 text-right card-return">
                        <p class="card-text-alt">${ exploreCard.ExploreCard.data.goal || 0 } Goal</p>
                    </div>
                    <div class="col-xs-12">
                        <div class="progress">
                            <div class="progress-bar" role="progressBar" style="width: { exploreCard.ExploreCard.data.percent + '%' };" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <script>
        this.displayCards = [];
        
        this.fixMetaCrap = function fixMetaCrap(pa)
        {
            let res = {data: pa};
        
            let projectArray = res.data;
        
            projectArray.forEach((element) =>
            {
                let goalValue = element.project_data.meta_data.funding,
                    goalLocale = goalValue.toLocaleString(),

                    raisedValue = element.project_data.meta_data.raised,
                    raisedLocale = raisedValue.toLocaleString(),

                    percentWhole = element.project_data.meta_data.raisedPercent * 100,

                    endTime = element.project_data.meta_data.endTime,
                    end = new Date(endTime),
                    remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 86400000,
                    countdown = Math.floor(remaining),
                    daysMax = Math.max(0, countdown);
                
                element.ExploreCard = (
                    {
                        data: 
                        {
                            'platform': element.platform,
                            'id': element.unique_id,
                            'category': element.project_data.info_data.category,
                            'featured': element.project_data.info_data.featured,
                            'image': element.project_data.meta_data.mainImg || element.project_data.meta_data.altImg,
                            'imageSize': element.project_data.meta_data.mainImg || "indiegogo-small-image",
                            'backed': raisedLocale,
                            'goal': goalLocale,
                            'percent': percentWhole,
                            'days': daysMax, 
                            'title': element.project_data.meta_data.title,
                            'reward': element.project_data.info_data.reward,
                        }
                    }
                );
            });
            return projectArray;
        }
        
        this.setExploreCards = function setExploreCards(neA)
        {
            this.displayCards = neA;
            this.fixMetaCrap(this.displayCards);
        
            this.update();
        };
        
    </script>
</explore-content-card>