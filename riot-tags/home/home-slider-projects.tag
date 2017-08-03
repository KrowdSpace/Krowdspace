<home-slider-projects>
    <style type="text/css">
    @media screen and (max-width: 550px) {
        .col-xs-9 {
            width: 90%;
        }
        .col-xs-3 {
            width: 10%;
        }
    }
    </style>
     <div class="row home-slider-box">
        <div class="autoplay slider">
            <div class="explore-banner-box" each= { ExploreBannerFilter }>
                <img class="explore-{ platform }" src="{ project_data.meta_data.mainImg || project_data.meta_data.jsonReply.response.video_overlay_url }" alt="{ project_data.web_data.description.content }">
                <div class="explore-box">
                    <div class="col-xs-9">
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
                    <div class="col-xs-3 explore-feature-right text-center">
                        <a class="plus-switch-one" href="{ unique_url || '/#/explore/project/' + unique_id }" data-toggle="modal"><p class="learn-more">Learn More</p></a>
                        <a class="plus-switch" href="{ unique_url || '/#/explore/project/' + unique_id }" data-toggle="modal"><i class="fa fa-plus learn-more-plus"></i></a>
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
        
        let newObject= {
                    unique_id: '#modal-feature-info',
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
                            reward: ''
                        },
                        meta_data: 
                        {
                            mainImg: '/img/projects/krowdspace-banner-1.jpg',
                        },
                    },
                };

        let newObject2= {
                    unique_url: '#modal-global-register',
                    name: 'Join Krowdspace Today!',
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
                            reward: 'Discover Extra Rewards For Projects You Love!'
                        },
                        meta_data: 
                        {
                            mainImg: '/img/content/krowdspace-join.jpg',
                        },
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

        });
    </script>
</home-slider-projects>