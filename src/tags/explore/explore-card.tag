<explore-card class="explore-card-flex">
    <div class="explore-box" each={ exploreCard in displayCards }>
        <div class="explore-card">
            <div class="item">
                <a href="/#/project/{ exploreCard.ExploreCard.data.id }"><img class="img-slider { exploreCard.ExploreCard.data.imageClass }" src="{ exploreCard.ExploreCard.data.image }" alt="{ exploreCard.ExploreCard.data.title }"></a>
                <div class="btn-explore-box">
                    <a href="/#/project/{ exploreCard.ExploreCard.data.id }" autoscroll="true"><button class="btn btn-primary btn-explore">Details</button></a>
                </div>
                <i show={ exploreCard.ExploreCard.data.featured } class="fa fa-lg fa-heart featured-icon" aria-hidden="true"></i>
            </div>
        </div>
        <div class="progress explore-progress">
            <div class="progress-bar" role="progressBar" style="width: { exploreCard.ExploreCard.data.percent + '%' };" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
        <div class="explore-card-text-box">
            <p class="explore-text">{ exploreCard.ExploreCard.data.title }</p>
            <p class="explore-text">Reward: { exploreCard.ExploreCard.data.reward }</p>
        </div>
        <div class="explore-goal-flex">
            <p class="explore-text text-left goal-info">${ exploreCard.ExploreCard.data.backed || 0 } Raised</p>
            <p class="explore-text text-center goal-info">{ exploreCard.ExploreCard.data.days || 0 }</p>
            <p class="explore-text text-right goal-info">${ exploreCard.ExploreCard.data.goal || 0 } Goal</p>
        </div>
    </div>
    <script>
        this.displayCards = [];

        this.fixMetaCrap = function fixMetaCrap(pa) {
            let res = {
                data: pa
            };

            let projectArray = res.data;
            projectArray.forEach((element) => {
                let Goal = Math.round(parseFloat(element.project_data.meta_data.funding.toLocaleString('en-US').replace(/,/g, ''))).toLocaleString('en-US') || 0,
                    Raised = Math.round(parseFloat(element.project_data.meta_data.funding.toLocaleString('en-US').replace(/,/g, '')) * element.project_data.meta_data.raisedPercent).toLocaleString('en-US') || 0,
                    percentWhole = element.project_data.meta_data.raisedPercent * 100,
                    endDate = new Date(element.project_data.meta_data.endTime),
                    remainingTime = new Date(endDate.getTime() - (new Date().getTime())).getTime() / 86400000,
                    Days = Math.max(0, Math.floor(remainingTime)) + " Days";

                if (element.platform + " " + Days == "indiegogo 0 Days") {
                  Days = "InDemand";
                }else if(element.platform + " " + Days == "kickstarter 0 Days"){
                  Days = "Finished";
                }else{
                  Days = Math.max(0, Math.floor(remainingTime)) + " Days";
                }

                element.ExploreCard = ({
                    data: {
                        'id': element.unique_id,
                        'featured': element.project_data.info_data.featured,
                        'imageClass': element.project_data.meta_data.mainImg || 'image-slider-square',
                        'image': element.project_data.meta_data.mainImg || element.project_data.meta_data.altImg,
                        'percent': percentWhole,
                        'backed': Raised,
                        'goal': Goal,
                        'days': Days,
                        'title': element.project_data.meta_data.title,
                        'reward': element.project_data.info_data.reward,
                    }
                });
            });
            return projectArray;
        }

        this.setExploreCards = function setExploreCards(neA) {
            this.displayCards = neA;
            this.fixMetaCrap(this.displayCards);

            this.update();
        };

    </script>
</explore-card>
<!-- Validated Content October 26th, 2017 -->
