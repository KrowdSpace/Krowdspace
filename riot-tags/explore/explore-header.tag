<explore-header>
			<div class="autoplay slider explore-header" style="padding-top: 57px; margin-bottom: 40px;">
				<div each= { indexProject } class="slick-image" style="position:relative">
				    <img src="{ image }" alt="{ imageAlt }">
                    <div style="position:absolute;top: 0;left: 0; right: 0; bottom: 0; background-color: rgba(0, 0, 0, .3)">
                        <div class="col-sm-9 explore-feature-left">
                            <p class="explore-title">{ projectTitle }</p>
                            <p class="explore-description">{ projectDescription }</p>
                        </div>
                        <div class="col-sm-3 explore-feature-right text-center">
                            <a href="{ imageURL }"><span class="learn-more">Learn More</span></a>
                        </div>
                    </div>
                </div>
            </div>
    <script type="text/javascript">
        this.indexProject = [
        { image:"/img/projects/bahari-bag.jpg",
        imageURL:"/project.html",
        imageAlt:"Bahari Beach bag on the beach",
        projectTitle:"Lala Bahari: The First Convertible Tote Bag of its Kind",
        projectDescription:"Made in Africa to support the local communities. Our bag converts from a towel or wrap into a tote through an innovative rope mechanism",},

        { image:"/img/projects/computer.jpg",
        imageURL:"/project.html",
        imageAlt:"Computer and accessories sitting on a desk",
        projectTitle:"Creating A Modular Computer App for All of Your Needs",
        projectDescription:"We bring a way to organize your day and connect all of your devices through one app."},
        
        { image:"/img/projects/computer.jpg",
        imageURL:"/project.html",
        imageAlt:"Computer and accessories sitting on a desk",
        projectTitle:"Creating A Modular Computer App for All of Your Needs",
        projectDescription:"We bring a way to organize your day and connect all of your devices through one app."},

        { image:"/img/projects/pizza.jpg",
        imageURL:"/project.html" ,
        imageAlt:"Pizza slice sitting on a table with condiments",
        projectTitle:"The Only Restaurant to use Recipes From our Guests",
        projectDescription:"Dining guests can submit their own recipes and our community will vote and if selected will be featured at our restaurant.",}
        ]
    </script>
    <script type="text/javascript">
        this.on('mount', function() {
          $('.autoplay').slick({
          arrows: false,
          slidesToShow: 3,
          slidesToScroll: 1,
          autoplay: true,
          autoplaySpeed: 5000,
          centerMode: true,
          variableWidth: true,
            });
        });
    </script>
</explore-header>
