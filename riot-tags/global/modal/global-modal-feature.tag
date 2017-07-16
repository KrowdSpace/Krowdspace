<global-modal-feature>
    <div id="modal-feature-info" class="modal container fade">
        <div class="krowdspace-modal col-sm-10 col-sm-offset-1">
            <div id="modal" class="modal-content">
                <div class="modal-header">
                    <p class="modal-heading">FEATURED PROJECTS AND BOOSTS</p>
                    <p class="legal-text">Welcome to our featured project options for your live crowdfunding project. At Krowdspace we have experienced first-hand how difficult it can be to launch a crowdfunding campaign. For a limited time, we are offering free featured project packages and social media posts! If you would like to take advantage of this special offer please <a onclick={ registerFeatured } href="/#/account/register" class="modal-link home-links">submit your project</a> to Krowdspace and activate these packages on your <a onclick={ dashboardFeatured } href="/#/account/dashboard" class="modal-link home-links">Krowdspace Dashboard</a>.</p>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-sm-8 featured-text-box">
                            <p class="featured-title">FEATURED PROJECT LISTING</p>
                            <p class="legal-text">Every featured project will have a yellow heart icon located in the corner of your project image. These icons will be displayed on our Explore Page filtering system. Having the icon will allow your project to have priority filtering and will always show ahead of other projects without the icon. Our featured project listing will last the entire length of your campaign.</p>
                        </div>
                        <div class="col-sm-4 featured-image-box">
                            <img class="img-responsive" src="/img/content/featured-purchase.jpg"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-8 featured-text-box">
                            <p class="featured-title">EXPLORE PAGE BANNER</p>
                            <p class="legal-text">Every project that is featured on our Explore Page Rotating Banner will have increased viewership and a higher click through rate compared to only having the featured icon. Your project will be displayed on our rotating banner located on the Explore Page as a hero image. This explore featured banner will last 7 days and then expire. </p>
                        </div>
                        <div class="col-sm-4 featured-image-box">
                            <img class="img-responsive" src="/img/content/explore-purchase.jpg"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-8 featured-text-box">
                            <p class="featured-title">LANDING PAGE BANNER</p>
                            <p class="legal-text">Our Landing Page package will bring the most traffic to your campaign. Every project owner that purchases this package will be featured on the Krowdspace Landing Page rotating banner as well as every Krowdspace users dashboard rotating banner. Your campaign will be seen by everyone! The landing page package will last for 7 days and then expire.</p>
                        </div>
                        <div class="col-sm-4 featured-image-box">
                            <img class="img-responsive" src="/img/content/landing-purchase.jpg"/>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-8 featured-text-box">
                            <p class="featured-title">SOCIAL MEDIA POSTS</p>
                            <p class="legal-text">We will post your project on our 4 social media channels. By purchasing this package, you will see your project on our Facebook, Twitter, Pinterest and Instagram accounts with a link to your crowdfunding site when applicable. We currently have over 6,000 combined followers!</p>
                        </div>
                        <div class="col-sm-4 featured-image-box">
                            <img class="img-responsive" src="/img/content/social-purchase.jpg"/>
                        </div>
                    </div>
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