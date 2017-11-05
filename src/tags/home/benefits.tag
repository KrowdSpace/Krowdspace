<benefits>
    <div class="row benefits-row-flex">
        <div class="col-xs-12 col-sm-6 landing-banner-box">
            <div class="landing slider">
                <div class="home-carousel" each={ LandingData }>
                    <div class="item">
                      <a href="/#/project/{ unique_id }">
                        <img class="img-slider { project_data.meta_data.mainImg || 'image-slider-square' }" src="{ project_data.meta_data.mainImg || project_data.meta_data.altImg }"></a>
                        <p class="text-slider">{ project_data.meta_data.title }<br>{ project_data.info_data.reward }</p>
                        <div class="btn-explore-box">
                            <a href="/#/project/{ unique_id }">
                            <button class="btn btn-primary btn-explore">Details</button>
                          </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 toggle-full-width">
            <h2 id="benefits">How does Krowdspace work?</h2>
            <h3 class="feature-header">Project Creators</h3>
            <p>As a project creator you can submit your live Kickstarter or Indiegogo campaigns to Krowdspace for an additional audience outside your own crowdfunding platform. In order to have your project published, an exclusive reward must be attached to your campaign for backers who support you through the Krowdspace community. Additionally, you will have access to our <a class="anchor-link" href="/#/resource/main">free crowdfunding guides</a> and <a class="anchor-link" href="/#/account/dashboard">promotional tools</a> built around our own crowdfunding experience. When it comes to crowdfunding, reaching every qualified backer counts.</p>
            <h3 class="feature-header">Krowdspace Members</h3>
            <p>After registering with Krowdspace you will have access to exclusive rewards from awesome crowdfunding projects hosted on Kickstarter or Indiegogo. To receive the campaign rewards you will need to follow the link to their secret perk or back their project with the coupon code provided. All project creators have agreed to fulfill any and all rewards posted on Krowdspace.</p>
            <a href="/#/account/register">
            <button type="button" class="btn btn-primary btn-benefits-left">Submit Campaign</button>
          </a>
            <a href="/#/explore">
            <button type="button" class="btn btn-primary btn-benefits-right">Explore Projects</button>
          </a>
        </div>
    </div>
  <script>
    let data = {
        limit: 100,
    };

    krowdspace.projects.explore(data).then((res) => {

      let KrowdspaceData = res.data;

      KrowdspaceData.sort(function(a,b) {
          return new Date(a.date_added).getTime() - new Date(b.date_added).getTime()
      });
      let FilterData = KrowdspaceData.filter((element) => {
      return (element.project_data.info_data.landing);
      });

      this.LandingData = FilterData.reverse();
      this.update();

      $('.landing').slick({
        dots: false,
        infinite: true,
        arrows: false,
        speed: 1000,
        slidesToShow: 1,
        autoplay: true,
        autoplaySpeed: 5000,
      });

    }, (err) => {

    });
  </script>
</benefits>
<!-- Validated Content October 26th, 2017 -->
