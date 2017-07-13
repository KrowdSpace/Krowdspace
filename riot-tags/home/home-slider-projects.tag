<home-slider-projects>
<style type="text/css">
    .slider {
        width: 100%;
        position: relative;
        margin: 0px auto;
    }

    .slick-slide {
      margin: 0px;
    }
    .slick-slide span,
    .slick-slide .learn-more {
      display: none;   
    }
    .slick-current span,
    .slick-current .learn-more {
      display: inline;       
    }
    .slick-slide img {
      border-top: 1px solid #3f434f;
      border-bottom: 1px solid #3f434f;
      width: 550px;
    }

    .slick-prev:before,
    .slick-next:before {
        color: black;
    }
    </style>
    <div class="row" style="border-right: 1px solid #3f434f; border-left: 1px solid #3f434f;">
     <div class="autoplay slider">
        <div class="explore-banner-box" each= { ExploreBannerFilter }>
            <img src="{ project_data.web_data.mainImg.content }" alt="{ project_data.web_data.description.content }">
            <div class="explore-box">
                <div class="col-sm-9">
                    <div style="position: relative; height: 301px;">
                        <div class="explore-feature-left">
                            <div>
                            <span class="explore-title">{ name }</span>
                            </div>
                            <div class="explore-box-text">
                                <span class="explore-title">{ project_data.info_data.reward }</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 explore-feature-right text-center">
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
                        unique_id: '#modal-feature-info',
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
                                reward: ''
                            }
                        },
                    };
            let newObject2={
                        unique_url: '#modal-global-register',
                        name: 'Join Krowdspace Today!',
                        project_data: 
                        {
                            web_data: 
                            {
                                mainImg: {
                                    content: '/img/content/krowdspace-join.jpg'
                                },
                                description: {
                                    content: '',
                                },
                            },
                            info_data: 
                            {
                                reward: 'Discover Extra Rewards For Projects You Love!'
                            }
                        },
                    };

            FilterExplore.push(newObject, newObject2);
            this.ExploreBannerFilter = FilterExplore;
            this.update();

            $('.autoplay').slick
            ({
                arrows: false,
                slidesToShow: 1,
                slidesToScroll: 1,
                autoplay: true,
                autoplaySpeed: 7000,
                centerMode: true,
                variableWidth: true,
            });
        },
        (err)=>
        {
            console.log(err)
        });
    </script>
</home-slider-projects>
