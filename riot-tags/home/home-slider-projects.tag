<home-slider-projects>
		<div class="container hidden-md hidden-sm hidden-xs">
			<section class="single-item slider" >
				<div each= { indexProject } class="slick-image" style="display:flex;">
					<div class="col-sm-7">
						<a href="{ imageURL }"><img src="{ image }" alt="{ imageAlt }"></a>
				    </div>
				    <div class="col-sm-5">
				        <p><strong>{ projectTitle}</strong></p>
				        <p>{ projectDescription }</p>
                        <br>
				        <p><strong>Reward:</strong> { reward }</p>
				        <div class="no-gutter funding-box">
				            <div class="col-sm-6">
								<p class="card-text">${ goal }</p>
				            </div>
				            <div class="col-sm-6 text-right">
								<p class="card-text">{ category }</p>
				            </div>
				            <div class="col-sm-12">
								<div class="progress-index">
								    <div class="progress-bar" role="progressbar" style="width: { progressBar }%" aria-valuenow="{ progressBar }" aria-valuemin="0" aria-valuemax="100">
                                    </div>
								</div>
				            </div>
				            <div class="col-sm-2">
								<p class="card-text">{ progressBar }%</p>
								<p class="card-text">Funded</p>
				            </div>
				            <div class="col-sm-3 text-center">
								<p class="card-text">${ pledged }</p>
								<p class="card-text">Pledged</p>
				            </div>
				            <div class="col-sm-3 text-center">
								<p class="card-text">{ backers }</p>
								<p class="card-text">Backers</p>
				            </div>
				            <div class="col-sm-4 text-right">
								<p class="card-text">{ days }</p>
								<p class="card-text">Days Left</p>
				            </div>
				        </div>
				    </div>
                </div>
            </section>
        </div>
    <script type="text/javascript">
        this.indexProject = [
        { image:"/img/projects/bahari-bag.jpg",
        imageURL:"/project.html",
        imageAlt:"Bahari Beach bag on the beach",
        projectTitle:"Lala Bahari: The First Convertible Tote Bag of its Kind",
        projectDescription:"Made in Africa to support the local communities. Our bag converts from a towel or wrap into a tote through an innovative rope mechanism",
        reward:"All pledges over $50 will receive a Bahari Sarong and Scarf.",
        goal:"40,000",
        category:"Design",
        progressBar:'26',
        pledged:'10,544',
        backers:'50',
        days:'19'},

        { image:"/img/projects/computer.jpg",
        imageURL:"/project.html",
        imageAlt:"Computer and accessories sitting on a desk",
        projectTitle:"Creating A Modular Computer App for All of Your Organizing Needs",
        projectDescription:"We bring a way to organize your day and connect all of your devices through one app.",
        reward:"All Krowdspace members will receive a free year subscription to our organizing app.",
        goal:"100,000",
        category:"Tech",
        progressBar:'46',
        pledged:'45,798',
        backers:'132',
        days:'14'},

        { image:"/img/projects/pizza.jpg",
        imageURL:"/project.html" ,
        imageAlt:"Pizza slice sitting on a table with condiments",
        projectTitle:"The Only Restaurant to use Recipes From our Guests",
        projectDescription:"Dining guests can submit their own recipes and our community will vote and if selected will be featured at our restaurant.",
        reward:"All Krowdspace members will receive our Cookbook.",
        goal:"50,000",
        category:"Food",
        progressBar:'83',
        pledged:'41,765',
        backers:'78',
        days:'2'},
        ]
    </script>
    <script type="text/javascript">
        this.on('mount', function() {
          $('.single-item').slick({
            dots: false,
            arrows:false,
            infinite: true,
            autoplay: true,
            autoplaySpeed: 8000,
          });
        });
    </script>
</home-slider-projects>
