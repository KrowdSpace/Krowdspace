<explore-content-card>
    <div class="row">
        <div each= { exploreCard in displayCards } class="col-sm-4">
            <div ref="exploreCard.category">
            <div class="no-gutter explore-container">
                <a href="{ exploreCard.imageURL }"><img class="img-responsive" src="{ exploreCard.image }" style="margin-bottom: 10px; border-bottom: 1px solid #3f434f;"></a>
                <span class="fa-stack fa-lg explore-feature-icon" style="display:{ exploreCard.featuredIcon }">
                <i class="fa fa-circle fa-stack-xx text-primary"></i>
                <i class="fa fa-heart fa-stack-1x fa-inverse"></i>
                </span>
                <div style="height: 90px; ">
                    <p class="card-text-alt"><strong>{ exploreCard.projectTitle }</strong></p>
                <p class="card-text-alt explore-"reward"" style="padding-top: 5px;"><strong>reward:</strong> { exploreCard.reward }</p>
                </div>
                <div class="col-sm-4 text-left">
                    <p class="card-text-alt">${ exploreCard.pledged } Raised</p>
                </div>
                <div class="col-sm-4 text-center">
                    <p class="card-text-alt">{ exploreCard.days } days</p>
                </div>
                <div class="col-sm-4 text-right">
                    <p class="card-text-alt">${ exploreCard.goal } goal</p>
                </div>
                <div class="col-sm-12">
                    <div class="progress">
                        <div class="progress-bar" role="progressBar" style="width:{ exploreCard.progressBar }%" aria-valuenow="{ exploreCard.progressBar }" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        this.displayCards = [];
        this.exploreCards = [
        {
        "image":"/img/projects/bahari-bag.jpg",
        "imageURL":"/#/explore/project",
        "featuredIcon": "visible",
        "projectTitle":"Lala Bahari: The First Convertible Tote Bag of its Kind",
        "projectDescription":"Made in Africa to support the local communities. Our bag converts from a towel or wrap into a tote through an innovative rope mechanism",
        "reward":"All pledges over $50 will receive a Bahari Sarong and Scarf.",
        "goal":"40,000",
        "category":"Design",
        "progressBar":'26',
        "pledged":'10,544',
        "days":'19'},

        {
        "image":"/img/projects/computer.jpg",
        "imageURL":"/#/explore/project",
        "featuredIcon": "visible",
        "projectTitle":"Creating A Modular Computer App for All of Your Organizing Needs",
        "projectDescription":"We bring a way to organize your day and connect all of your devices through one app.",
        "reward":"All Krowdspace members will receive a free year subscription to our organizing app.",
        "goal":"100,000",
        "category":"Tech",
        "progressBar":'46',
        "pledged":'45,798',
        "days":'14'},

        {
        "image":"/img/projects/pizza.jpg",
        "imageURL":"/#/explore/project" ,
        "featuredIcon": "visible",
        "projectTitle":"The Only Restaurant to use Recipes From our Guests",
        "projectDescription":"Dining guests can submit their own recipes and our community will vote and if selected will be featured at our restaurant.",
        "reward":"All Krowdspace members will receive our Cookbook.",
        "goal":"50,000",
        "category":"Food",
        "progressBar":'83',
        "pledged":'41,765',
        "days":'2'},

        {
        "image":"/img/projects/bahari-bag.jpg",
        "imageURL":"/#/explore/project",
        "featuredIcon": "visible",
        "projectTitle":"Lala Bahari: The First Convertible Tote Bag of its Kind",
        "projectDescription":"Made in Africa to support the local communities. Our bag converts from a towel or wrap into a tote through an innovative rope mechanism",
        "reward":"All pledges over $50 will receive a Bahari Sarong and Scarf.",
        "goal":"40,000",
        "category":"Design",
        "progressBar":'26',
        "pledged":'10,544',
        "days":'19'},

        {
        "image":"/img/projects/computer.jpg",
        "imageURL":"/#/explore/project",
        "featuredIcon": "none",
        "projectTitle":"Creating A Modular Computer App for All of Your Organizing Needs",
        "projectDescription":"We bring a way to organize your day and connect all of your devices through one app.",
        "reward":"All Krowdspace members will receive a free year subscription to our organizing app.",
        "goal":"100,000",
        "category":"Tech",
        "progressBar":'46',
        "pledged":'45,798',
        "days":'14'},

        {
        "image":"/img/projects/pizza.jpg",
        "imageURL":"/#/explore/project" ,
        "featuredIcon": "none",
        "projectTitle":"The Only Restaurant to use Recipes From our Guests",
        "projectDescription":"Dining guests can submit their own recipes and our community will vote and if selected will be featured at our restaurant.",
        "reward":"All Krowdspace members will receive our Cookbook.",
        "goal":"50,000",
        "category":"Food",
        "progressBar":'83',
        "pledged":'41,765',
        "days":'2'},
        ];

        this.setExploreCards = function setExploreCards(neA)
        {
            this.displayCards = neA;
            this.update();
        };

        this.setExploreCards(this.exploreCards);
    </script>

</explore-content-card>
