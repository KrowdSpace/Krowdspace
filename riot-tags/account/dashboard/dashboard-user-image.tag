<dashboard-user-image>
<style>
    .slick-slide img {
      width: 515px;
      overflow: hidden;
    }
@media screen and (max-width: 1200px) {
        .slick-slide img {
            width: 395px;
            overflow: hidden;
        }
        .dash-banner-box {
            height: 222px;
        }
        .reward-slider-push {
            height: 212px;
        }
        .dash-feature-right {
            margin-top: 187px;
            padding-right: 0px;
        }
    }
</style>
    <div class="col-sm-6 image-container">
        <div class="single-item slider">
            <div class="dash-banner-box" each= { ExploreBannerFilter }>
                <img src="{ project_data.web_data.mainImg.content }" alt="{ project_data.web_data.description.content }">
                <div class="explore-box">
                    <div class="col-sm-8">
                        <div class="reward-slider-push">
                            <div class="explore-feature-left">
                                <div class="dash-box-text">
                                    <span class="dash-user-title">{ project_data.info_data.reward }</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 dash-feature-right text-center">
                        <a href="{ unique_url || '/#/explore/project/' + unique_id }" data-toggle="modal"><p class="learn-more">Learn More</p></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
    krowdspace.projects.explore().then((res) =>
    {
        let ExploreBannerData = res.data,
            FilterExplore = ExploreBannerData.filter((element) => {
            return (element.project_data.meta_data.landing === true);
        });

            let newObject={
                        unique_url: '#modal-feature-info',
                        name: '',
                        project_data: 
                        {
                            web_data:
                            {
                                mainImg: {
                                content: '/img/projects/krowdspace-banner-1.jpg'
                                },
                            description: {
                                content: '',
                                },
                            },
                            info_data: 
                            {
                                reward: '',
                            },
                        },
                    };
            FilterExplore.unshift(newObject);
            FilterExplore.reverse();
            this.ExploreBannerFilter = FilterExplore;
            this.update();

        $('.single-item').slick
        ({
            arrows: false,
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: true,
            autoplaySpeed: 5000,
            centerMode: true,
            variableWidth: true,
        });
    },
    (err)=>
    {
        console.log(err)
    });
</script>
</dashboard-user-image>	
	