<explore-content-card>
    <div class="row">
        <div each= { exploreCard } class="col-sm-4">
            <div class="no-gutter explore-container">
                <a href="{ imageURL }"><img class="img-responsive" src="{ image }"></a>
                <span class="fa-stack fa-lg explore-feature-icon" style="display:{ featuredIcon }">
                <i class="fa fa-circle fa-stack-xx text-primary"></i>
                <i class="fa fa-heart fa-stack-1x fa-inverse"></i>
                </span>
                <div style="height: 85px;">
                    <p class="card-text-alt"><strong>{ projectTitle }</strong></p>
                    <p class="card-text-alt explore-card-description" style="margin-top:10px;">{ projectDescription }</p>
                </div>
                <p class="card-text-alt explore-reward"><strong>Reward:</strong> { reward }</p>
                <div class="col-sm-6">
                    <p class="card-text-alt">${ goal }</p>
                </div>
                <div class="col-sm-6 text-right">
                    <p class="card-text-alt">{ category }</p>
                </div>
                <div class="col-sm-12">
                    <div class="progress">
                        <div class="progress-bar" role="progressbar" style="width:{ progressBar }%" aria-valuenow="{ progressBar }" aria-valuemin="0" aria-valuemax="100"></div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <p class="card-text-alt">{ progressBar }%</p>
                    <p class="card-text-alt">Funded</p>
                </div>
                <div class="col-sm-4 text-left">
                    <p class="card-text-alt">${ pledged }</p>
                    <p class="card-text-alt">Pledged</p>
                </div>
                <div class="col-sm-4 text-right">
                    <p class="card-text-alt">{ days }</p>
                    <p class="card-text-alt">Days Left</p>
                </div>
                <div class="clearfix" style="margin:10px;"></div>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        this.exploreCard = [
        { 
        image:"/img/projects/bahari-bag.jpg",
        imageURL:"/#explore/project",
        featuredIcon: "visible",
        projectTitle:"Lala Bahari: The First Convertible Tote Bag of its Kind",
        projectDescription:"Made in Africa to support the local communities. Our bag converts from a towel or wrap into a tote through an innovative rope mechanism",
        reward:"All pledges over $50 will receive a Bahari Sarong and Scarf.",
        goal:"40,000",
        category:"Design",
        progressBar:'26',
        pledged:'10,544',
        days:'19'},
        
        { 
        image:"/img/projects/computer.jpg",
        imageURL:"//#explore/project",
        featuredIcon: "visible",
        projectTitle:"Creating A Modular Computer App for All of Your Organizing Needs",
        projectDescription:"We bring a way to organize your day and connect all of your devices through one app.",
        reward:"All Krowdspace members will receive a free year subscription to our organizing app.",
        goal:"100,000",
        category:"Tech",
        progressBar:'46',
        pledged:'45,798',
        days:'14'},
        
        { 
        image:"/img/projects/pizza.jpg",
        imageURL:"/#explore/project" ,
        featuredIcon: "visible",
        projectTitle:"The Only Restaurant to use Recipes From our Guests",
        projectDescription:"Dining guests can submit their own recipes and our community will vote and if selected will be featured at our restaurant.",
        reward:"All Krowdspace members will receive our Cookbook.",
        goal:"50,000",
        category:"Food",
        progressBar:'83',
        pledged:'41,765',
        days:'2'},
        
        {
        image:"/img/projects/bahari-bag.jpg",
        imageURL:"/#explore/project",
        featuredIcon: "visible",
        projectTitle:"Lala Bahari: The First Convertible Tote Bag of its Kind",
        projectDescription:"Made in Africa to support the local communities. Our bag converts from a towel or wrap into a tote through an innovative rope mechanism",
        reward:"All pledges over $50 will receive a Bahari Sarong and Scarf.",
        goal:"40,000",
        category:"Design",
        progressBar:'26',
        pledged:'10,544',
        days:'19'},
        
        { 
        image:"/img/projects/computer.jpg",
        imageURL:"/#explore/project",
        featuredIcon: "none",
        projectTitle:"Creating A Modular Computer App for All of Your Organizing Needs",
        projectDescription:"We bring a way to organize your day and connect all of your devices through one app.",
        reward:"All Krowdspace members will receive a free year subscription to our organizing app.",
        goal:"100,000",
        category:"Tech",
        progressBar:'46',
        pledged:'45,798',
        days:'14'},
        
        { 
        image:"/img/projects/pizza.jpg",
        imageURL:"/#explore/project" ,
        featuredIcon: "none",
        projectTitle:"The Only Restaurant to use Recipes From our Guests",
        projectDescription:"Dining guests can submit their own recipes and our community will vote and if selected will be featured at our restaurant.",
        reward:"All Krowdspace members will receive our Cookbook.",
        goal:"50,000",
        category:"Food",
        progressBar:'83',
        pledged:'41,765',
        days:'2'},
        ]
    </script>
</explore-content-card>