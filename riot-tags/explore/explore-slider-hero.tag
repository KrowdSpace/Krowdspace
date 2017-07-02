<explore-slider-hero>
    <div class="autoplay slider explore-header">
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
                    <a href="{ '/#/explore/project/' + unique_id }"><p class="learn-more">Learn More</p></a>
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
                        unique_id: 'project-feature-popup',
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
                        }
                    };

            FilterExplore.push(newObject);
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
