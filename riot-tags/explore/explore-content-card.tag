<explore-content-card>
    <div class="row">
        <div each= { exploreCard in displayCards } class="col-sm-4">
            <div ref="exploreCard.ExploreCard.data.category">
            <div class="no-gutter explore-container shadow">
                <a href="/#/explore/project/{ exploreCard.ExploreCard.data.id }">
                <img class="img-responsive" src="{ exploreCard.ExploreCard.data.image }" style="margin-bottom: 10px; border-bottom: 1px solid #3f434f;"></a>
                <span show={ exploreCard.ExploreCard.data.featured } class="fa-stack fa-lg explore-feature-icon">
                <i class="fa fa-circle fa-stack-xx text-primary"></i>
                <i class="fa fa-heart fa-stack-1x fa-inverse"></i>
                </span>
                <div style="height: 70px; ">
                    <p class="card-text-alt">{ exploreCard.ExploreCard.data.title }</p>
                <p class="card-text-alt explore-"reward"" style="padding-top: 5px;">Reward: { exploreCard.ExploreCard.data.reward }</p>
                </div>
                <div class="col-sm-5 text-left">
                    <p class="card-text-alt" style="margin-right: 0px;">${ exploreCard.ExploreCard.data.backed } Raised</p>
                </div>
                <div class="col-sm-2 text-center">
                    <p class="card-text-alt" style="margin-left: 0px; margin-right: 0px;">{ exploreCard.ExploreCard.data.days } Days</p>
                </div>
                <div class="col-sm-5 text-right">
                    <p class="card-text-alt"style="margin-left: 0px;">${ exploreCard.ExploreCard.data.goal } Goal</p>
                </div>
                <div class="col-sm-12">
                    <div class="progress">
                        <div class="progress-bar" role="progressBar" style=" width: { exploreCard.ExploreCard.data.percent }%;" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            </div>
        </div>
    </div>
    <img show= { Cards } class="img-responsive" src="/img/content/krowdspace-coming-soon.png">
    <script type="text/javascript">
        this.displayCards = [];
        this.exploreCards = [];
        krowdspace.projects.explore().then((res) =>
        {
            
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
                    remaining = new Date( end.getTime() - ( new Date().getTime() ) ).getTime() / 86400000;
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
            this.exploreCards = res.data;
            this.setExploreCards(res.data);
        },
        (err)=>
        {
            this.Cards = true;
            this.update();
        });

        this.setExploreCards = function setExploreCards(neA)
        {
            this.displayCards = neA;
            this.update();
        };

        this.setExploreCards(this.exploreCards);
       
    </script>
</explore-content-card>
