<explore-content-card>
    <div class="row">
        <div each= { exploreCard in displayCards } class="col-sm-4">
            <div ref="exploreCard.ExploreCard.data.category">
                <div class="no-gutter explore-container shadow">
                    <a href="/#/explore/project/{ exploreCard.ExploreCard.data.id }">
                    <img class="img-responsive image-card" src="{ exploreCard.ExploreCard.data.image }"></a>
                    <span show={ exploreCard.ExploreCard.data.featured } class="fa-stack fa-lg explore-feature-icon">
                    <i class="fa fa-circle fa-stack-xx text-primary"></i>
                    <i class="fa fa-heart fa-stack-1x fa-inverse"></i>
                    </span>
                    <div class="card-title-height">
                        <p class="card-text-alt">{ exploreCard.ExploreCard.data.title }</p>
                        <p class="card-text-alt">Reward: { exploreCard.ExploreCard.data.reward }</p>
                    </div>
                    <div class="col-sm-5 text-left">
                        <p class="card-text-alt">${ exploreCard.ExploreCard.data.backed } Raised</p>
                    </div>
                    <div class="col-sm-2 text-center">
                        <p class="card-text-alt days-center">{ exploreCard.ExploreCard.data.days } Days</p>
                    </div>
                    <div class="col-sm-5 text-right">
                        <p class="card-text-alt">${ exploreCard.ExploreCard.data.goal } Goal</p>
                    </div>
                    <div class="col-sm-12">
                        <div class="progress">
                            <div class="progress-bar" role="progressBar" style="width: { exploreCard.ExploreCard.data.percent + '%' };" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <img show= { Cards } class="img-responsive" src="/img/content/krowdspace-coming-soon.png">
    <script>
        this.displayCards = [];
        
        this.fixMetaCrap = function fixMetaCrap(pa)
        {
            let res = {data: pa};
        
            let projectArray = res.data;
        
            projectArray.forEach((element) =>
            {
                let platform = element.platform,
                    goalValue = element.project_data.meta_data.funding,
                    goalNumber = parseFloat(goalValue.replace(/,/g, '')),
                    percentRaised = element.project_data.meta_data.raisedPercent,
                    percentMax = Math.min(Math.max(percentRaised, 0), 1),
                    percentWhole = percentMax * 100;
                    raisedRawNumber = goalNumber * percentRaised,
                    raisedNumber = Math.round(raisedRawNumber),
                    raisedValue = raisedNumber.toLocaleString(),
                    endTime = element.project_data.web_data.hours['data-end_time'],
                    end = new Date(endTime),
                    remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 86400000,
                    countdown = Math.floor(remaining),
                    daysMax = Math.max(0, countdown);
        
                element.ExploreCard = (
                    {
                        data: 
                        {
                            'platform': platform,
                            'id': element.unique_id,
                            'category': element.project_data.info_data.category,
                            'featured': element.project_data.meta_data.featured,
                            'image': element.project_data.web_data.mainImg.content,
                            'backed': raisedValue,
                            'goal': goalValue,
                            'percent': percentWhole,
                            'days': daysMax, 
                            'title': element.project_data.web_data.title.content,
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