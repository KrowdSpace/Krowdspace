<explore-slider-hero>
    <style type="text/css">
    .slick-slide img {
      border-top: 1px solid #dcdedd;
      border-bottom: 1px solid #dcdedd;
      width: 550px;
    }
    </style>
    <div class="autoplay slider explore-header">
        <div class="explore-banner-box" each= { ExploreBannerFilter }>
            <img src="{ project_data.web_data.mainImg.content }" alt="{ project_data.web_data.description.content }">
            <div class="explore-box">
                <div class="col-sm-9">
                    <div class="slider-left-box">
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
    <script type="text/javascript">
        krowdspace.projects.explore().then((res) =>
        {
            let ExploreBannerData = res.data,
                FilterExplore = ExploreBannerData.filter((element) => {
                return (element.project_data.meta_data.explore === true);
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

            FilterExplore.unshift(newObject, newObject2);
            FilterExplore.reverse(); 
            this.ExploreBannerFilter = FilterExplore;
            this.update();

            $('.autoplay').slick
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
</explore-slider-hero>
