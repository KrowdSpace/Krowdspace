<dashboard-user-image>
    <style type="text/css">
        .landing-banner {
            width: 500px;
            height: 282px; 
            background-color: #000; 
            position: relative;
        }
        .landing-slider {
            border: 1px solid #000;
            width: 100%;
        }
        .indiegogo-image-small {
            height: 282px;
            width: auto;
            margin-left: auto;
            margin-right: auto;
        }
    @media screen and (max-width: 1200px) {
        .landing-banner {
            height: 225px;
            width: 396px;
        }
        .indiegogo-image-small {
            height: 225px;
        }
    }
    @media screen and (max-width: 991px) {
        .landing-banner {
            height: 350px;
            width: 616.66px;
        }
        .indiegogo-image-small {
            height: 351px;
        }
    }
    @media screen and (max-width: 767px) {
        .project-image-responsive {
            width: 400px;
            margin-left: auto;
            margin-right: auto;
        }
        .landing-banner {
            height: 227px;
            width: 400px;
        }
        .indiegogo-image-small {
            height: 228px;
        }
    }
</style>
<div class="col-md-6 project-image-responsive padding-reset">
    <div class="single-item slider"> 
        <div class="landing-banner" each= { ExploreBannerFilter }>
            <img class="img-responsive landing-slider { project_data.meta_data.mainImg || 'indiegogo-image-small' }" src="{ project_data.meta_data.mainImg || project_data.meta_data.altImg }">
            <div class="landing-banner-box">
                <div class="col-xs-10 padding-reset">
                    <span class="explore-title">{ name }</span>
                    <div class="explore-box-text">
                        <span class="explore-title">{ project_data.info_data.reward }</span>
                    </div>
                </div>
                <div class="col-xs-2 learn-more-box text-right">
                    <a href="{ unique_url || '/#/explore/project/' + unique_id }" data-toggle="modal"><i class="fa fa-plus learn-more-plus"></i></a>
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
            return (element.project_data.info_data.landing);
        });

            let newObject={
                        unique_url: '#modal-feature-info',
                        name: '',
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
                                mainImg: '/img/content/krowdspace-banner-1.jpg',
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
        let KrowdspaceAd = [{
                        unique_url: '#modal-feature-info',
                        project_data: 
                        {
                            meta_data:
                            {
                                mainImg: '/img/content/krowdspace-banner-1.jpg',
                            },
                        },
                    }];
            this.ExploreBannerFilter = KrowdspaceAd;
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
    });
</script>
</dashboard-user-image>	
	