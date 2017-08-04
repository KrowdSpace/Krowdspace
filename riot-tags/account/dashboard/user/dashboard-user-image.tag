<dashboard-user-image>
<style>
    .slick-slide img {
      width: 515px;
      overflow: hidden;
      border: none;
    }
@media screen and (max-width: 1200px) {
        .slick-slide img {
            width: 395px;
            overflow: hidden;
        }
    }
@media screen and (max-width: 991px) {
        .dash-banner-box {
            width: 615px;
            height: 345px;
            overflow: hidden;
        }
        .slick-slide img {
            width: 100%;
        }
    }
@media screen and (max-width: 767px) {
        .dash-banner-box {
            width: 398px;
            height: 223px;
        }
    }
</style>
    <div class="col-md-6 image-container-alt">
        <div class="single-item slider"> 
            <div class="dash-banner-box" each= { ExploreBannerFilter }>
                <img class="explore-{ platform }" src="{ project_data.meta_data.mainImg || project_data.meta_data.jsonReply.response.video_overlay_url }">
                <div class="explore-box">
                    <div class="col-lg-9 col-md-10 col-sm-8 col-xs-11">
                        <div class="reward-slider-push">
                            <div class="explore-feature-left">
                                <div class="dash-box-text">
                                    <span class="dash-user-title">{ name }</span>
                                </div>
                                <div class="dash-box-text">
                                    <span class="dash-user-title">{ project_data.info_data.reward }</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 hidden-md col-sm-4 hidden-xs dash-feature-right text-center">
                        <a href="{ unique_url || '/#/explore/project/' + unique_id }" data-toggle="modal"><p class="learn-more">Learn More</p></a>
                    </div>
                    <div class="hidden-lg col-md-2 hidden-sm col-xs-1 dash-feature-right text-center">
                        <a href="{ unique_url || '/#/explore/project/' + unique_id }" data-toggle="modal"><i class="fa fa-plus learn-more-plus"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
    krowdspace.projects.explore().then((res) =>
    {
        let ExploreBannerData = res.data;

            FilterExplore = ExploreBannerData.filter((element) => {
            return (element.project_data.meta_data.landing);
            
        });

            let newObject={
                        unique_url: '#modal-feature-info',
                        name: 'test',
                        project_data: 
                        {
                            web_data:
                            {
                            description: 
                                {
                                    content: '',
                                },
                            },
                            info_data: 
                            {
                                reward: '',
                            },
                            meta_data:
                            {
                                mainImg: '/img/projects/krowdspace-banner-1.jpg',
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
            autoplaySpeed: 6000,
            centerMode: true,
            variableWidth: true,
        });
    },
    (err)=>
    {
console.log(err);
    });
    
</script>
</dashboard-user-image>	
	