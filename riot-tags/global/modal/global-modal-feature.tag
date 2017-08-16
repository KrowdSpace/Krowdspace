<global-modal-feature>
    <div id="modal-feature-info" class="modal container padding-reset fade">
        <div class="krowdspace-modal col-sm-10 col-sm-offset-1">
            <div id="modal" class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                    <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                    </button>
                    <p class="modal-heading">FEATURED PROJECTS AND BOOSTS</p>
                    <p class="legal-text">Welcome to our featured project options for your live crowdfunding project. For a limited time, we are offering free featured project packages and social media posts! If you would like to take advantage of this special offer please <a onclick={ registerFeatured } href="/#/account/register" class="home-links">submit your project</a> to Krowdspace and activate these packages on your <a onclick={ dashboardFeatured } href="/#/account/dashboard" class="home-links">Krowdspace Dashboard</a>.</p>
                </div>
                <div class="modal-body">
                    <div>
                        <div class="col-md-8 featured-text-box">
                            <p class="featured-title">FEATURED PROJECT LISTING</p>
                            <p class="legal-text">Every featured project will have a yellow heart icon located in the corner of your project image. These icons will be displayed on the Explore Page filtering system. Having the icon will allow your project to have priority filtering and will always show ahead of other projects without the icon. The featured project listing will last the entire length of your campaign.</p>
                        </div>
                        <div class="col-md-4 hidden-sm hidden-xs featured-image-box">
                            <img class="img-responsive featured-img" src="/img/content/featured-purchase.jpg"/>
                        </div>
                    </div>
                    <div>
                        <div class="col-md-8 featured-text-box">
                            <p class="featured-title">EXPLORE PAGE BANNER</p>
                            <p class="legal-text">Every project that is featured on the Explore Page Rotating Banner will have increased viewership and a higher click through rate compared to only having the featured icon. Your project will be displayed on our rotating banner located on the Explore Page as a hero image. This explore featured banner will last 7 days and then expire. </p>
                        </div>
                        <div class="col-md-4 hidden-sm hidden-xs featured-image-box">
                            <img class="img-responsive featured-img" src="/img/content/explore-purchase.jpg"/>
                        </div>
                    </div>
                    <div>
                        <div class="col-md-8 featured-text-box">
                            <p class="featured-title">LANDING PAGE BANNER</p>
                            <p class="legal-text">The Landing Page package will bring the most traffic to your campaign. Every project owner that purchases this package will be featured on the Krowdspace Landing Page rotating banner as well as every Krowdspace users dashboard rotating banner. Your campaign will be seen by everyone! The landing page package will last for 10 days and then expire.</p>
                        </div>
                        <div class="col-sm-4 hidden-sm hidden-xs featured-image-box">
                            <img class="img-responsive featured-img" src="/img/content/landing-purchase.jpg"/>
                        </div>
                    </div>
                    <div>
                        <div class="col-md-8 featured-text-box">
                            <p class="featured-title">SOCIAL MEDIA POSTS</p>
                            <p class="legal-text">We will post your project on our 4 social media channels. By purchasing this package, you will see your project on our Facebook, Twitter, Pinterest and Instagram accounts with a link to your crowdfunding site when applicable. We currently have over 6,000 combined followers!</p>
                        </div> 
                        <div class="col-sm-4 hidden-sm hidden-xs featured-image-box">
                            <img class="img-responsive featured-img" src="/img/content/social-purchase.jpg"/>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="modal-close-box text-right">
                    <button type="button" class="modal-close" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <script>
    dashboardFeatured() 
    {
        $('#modal-feature-info').modal('hide');
    }
    registerFeatured()
    {
        $('#modal-feature-info').modal('hide');
    }
    </script>
</global-modal-feature>