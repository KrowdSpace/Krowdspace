<social-header>
    <div class="container-fluid page">
        <div class="row resource-flex">
            <div id="resource-menu" class="resource-data">
                <resource-quicklinks></resource-quicklinks>
            </div>
            <div id="resource-center" class="resource-data-flex">
                <div class="resource-relative resource-padding">
                    <p class="resource-page-title">Krowdspace Social Media</p>
                    <p>Download one of our social media image templates for the correct profile and banner dimensions for Facebook, Instagram, Pinterest and Twitter. Also read through our social media tips on best practices when making posts.</p>
                    <p class="resource-block">Social media has influenced the success for many crowdfunding campaigns. Krowdspace can post your campaign on our 4 social media channels that reach over 8,500 user. Find out how by submitting your campaign to Krowdspace!</p>
                    <a href="{ socialCheck }"><img src="/images/krowdspace-social.png" class="krowdspace-social img-responsive"></a>
                </div>
            </div>
            <div id="resource-right" class="resource-data resource-data-flex">
                <div class="resource-relative">
                    <p class="resource-page-title">Krowdspace Social Media Affiliates</p>
                    <div class="affiliate-flex">
                        <div class="affiliate-flex-content affiliate-left">
                            <p>If you would like to become a Krowdspace affiliate or can bring reliable crowdfunding resources to our project creators please reach out to us!</p>
                            <button class="btn btn-primary" data-toggle="modal" data-target="#Contact">Contact Krowdspace</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <social-body></social-body>
    </div>
    <script>
       krowdspace.v1.check().then((res) => {
        this.socialCheck = '/#/account/dashboard';
        this.update();
      },
      (err) => {
        this.socialCheck = '/#/info/login';
        this.update();
      });
        $(document).ready(function () {
          $('html, body').animate({scrollTop: $("#myNavbar").offset().top}, 500);
          });
          </script>
</social-header>
