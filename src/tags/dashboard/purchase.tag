<purchase>
  <div id="featurePurchase" class="row dash-body-row">
    <div class="text-left dash-offset-flex">
        <div class="col-xs-12 col-sm-6 feature-purchase-left">
            <div class="dash-inner-flex">
                <p class="dashboard-title">Featured Icon</p>
                <p>Featured projects will have a heart icon located in the corner of your project image. Having the icon will allow your project to have priority filtering and will always show ahead of other projects without the icon. This icon will last for the duration of your campaign.</p>
                <div class="purchase-box">
                    <!-- <button show={ !activeFeature } id="featuredButton" class="btn btn-primary">Purchase $10</button> -->
                    <button show={ !activeFeature } onclick={ featuredPurchase } class="btn btn-primary" >Purchase $10</button>
                    <button show={ activeFeature } class="btn btn-primary" disabled>Feature Active</button>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 feature-purchase-right">
            <div class="dash-inner-flex">
              <p class="dashboard-title">Social Media Posts</p>
              <p>We will post your project on our 4 social media channels. By purchasing this package, you will see your project on our Facebook, Twitter, Pinterest and Instagram accounts with a link to your crowdfunding site when applicable. We currently have over 8,500 combined followers!</p>
              <div class="purchase-box">
                  <!-- <button show={ !activeSocial } id="socialButton" class="btn btn-primary">Purchase $10</button> -->
                  <button show={ !activeSocial } onclick={ socialPurchase } class="btn btn-primary" >Purchase $10</button>
                  <button show={ activeSocial } class="btn btn-primary" disabled>Feature Active</button>
              </div>
            </div>
        </div>
    </div>
</div>
<div id="featurePurchase" class="row dash-body-row">
    <div class="text-left dash-offset-flex">
        <div class="col-xs-12 col-sm-6 feature-purchase-left">
            <div class="dash-inner-flex">
                <p class="dashboard-title">Explore Feature</p>
                <p>Your project will be displayed on our rotating banner located on the explore page as the main focal point of Krowdspace. Our explore page banner will provide increased viewership and a higher click through rate compared to only having the featured icon. This feature will last for a minimum of 10 days.</p>
                <div class="purchase-box">
                    <!-- <button show={ !activeExplore } id="exploreButton" class="btn btn-primary">Purchase $15</button> -->
                    <button show={ !activeExplore } onclick={ explorePurchase } class="btn btn-primary">Purchase $15</button>
                    <button show={ activeExplore } class="btn btn-primary" disabled>Feature Active</button>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 feature-purchase-right">
            <div class="dash-inner-flex">
                <p class="dashboard-title">Landing Feature</p>
                <p>Our landing page package will bring the most traffic to your campaign. Every project owner that purchases this package will be featured on the Krowdspace landing page rotating banner. Your project will stay on our homepage for 10 days.</p>
                <div class="purchase-box">
                    <!-- <button show={ activeLanding } id="landingButton" class="btn btn-primary">Purchase $20</button> -->
                    <button show={ !activeLanding } onclick={ landingPurchase } class="btn btn-primary">Purchase $20</button>
                    <button show={ activeLanding } class="btn btn-primary" disabled>Feature Active</button>
                </div>
            </div>
        </div>
    </div>
</div>
<purchase-modal owner={ owner } project={ project } purchase={ purchase }></purchase-modal>
<script>
  this.on('update', () =>
  {
    if (!opts.purchase)
        return;

    this.project = opts.purchase;
    this.owner = opts.owner;

    if(opts.purchase.project_data.info_data.featured)
    {
      this.activeFeature = true;
    }else{
      this.activeFeature = false;
    };

    if(opts.purchase.project_data.info_data.explore)
    {
      this.activeExplore = true;
    }else{
      this.activeExplore = false;
    };

    if(opts.purchase.project_data.info_data.landing)
    {
      this.activeLanding = true;
    }else{
      this.activeLanding = false;
    };

    if(opts.purchase.project_data.info_data.social)
    {
      this.activeSocial = true;
    }else{
      this.activeSocial = false;
    };

  let lastPurchaseItem = null; // This is for Stripe Payments as well

  featuredPurchase() {
    $('#Purchase').modal('show');
    lastPurchaseItem = "featured_icon";
    this.purchase = lastPurchaseItem;
  }
  explorePurchase() {
    $('#Purchase').modal('show');
    lastPurchaseItem = "explore_feature";
    this.purchase = lastPurchaseItem;
  }
  landingPurchase() {
    $('#Purchase').modal('show');
    lastPurchaseItem = "landing_feature";
    this.purchase = lastPurchaseItem;
  }
  socialPurchase() {
    $('#Purchase').modal('show');
    lastPurchaseItem = "social_feature";
    this.purchase = lastPurchaseItem;
  }


      // var handler = StripeCheckout.configure({
      //     key: 'pk_test_Plb7fsSB0LuDLIRF7vTocG01',
      //     image: 'images/krowdspace-primary-square.png',
      //     locale: 'auto',
      //     color: 'white',
      //     token: function (token)
      //     {
      //         let stripePurchase =
      //         {
      //             token: token,
      //             project: opts.purchase.unique_id,
      //             type: lastPurchaseItem,
      //         };

      //         krowdspace.projects.purchase(stripePurchase).then((res)=>
      //         {
      //             console.log(res);
      //         },(err) => {
      //             console.log(err);
      //     });
      //     }
      // });

      // document.getElementById('featuredButton').addEventListener('click', function (e) {
      //   // Open Checkout with further options:

      //   lastPurchaseItem = "featured_icon";

      //   handler.open({
      //       name: 'Krowdspace',
      //       description: 'Featured Icon Purchase',
      //       amount: 1000
      //   });
      //   e.preventDefault();
      // });

      // document.getElementById('socialButton').addEventListener('click', function (e) {
      //   // Open Checkout with further options:

      //   lastPurchaseItem = "featured_social";

      //   handler.open({
      //       name: 'Krowdspace',
      //       description: 'Social Media Purchase',
      //       amount: 1000
      //   });
      //   e.preventDefault();
      // });

      // document.getElementById('exploreButton').addEventListener('click', function (e) {
      //   // Open Checkout with further options:

      //   lastPurchaseItem = "featured_explore";

      //   handler.open({
      //       name: 'Krowdspace',
      //       description: 'Explore Banner Purchase',
      //       amount: 1500
      //   });
      //   e.preventDefault();
      // });

      // document.getElementById('landingButton').addEventListener('click', function (e) {
      //   // Open Checkout with further options:

      //   lastPurchaseItem = "featured_landing";

      //   handler.open({
      //       name: 'Krowdspace',
      //       description: 'Landing Banner Purchase',
      //       amount: 2000
      //   });
      //   e.preventDefault();
      // });

      // // Close Checkout on page navigation:
      // window.addEventListener('popstate', function () {
      //     handler.close();
      // });
  });
</script>
</purchase>
