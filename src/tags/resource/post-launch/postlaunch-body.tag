<postlaunch-body>
    <div class="row resource-row resource-relative">
        <div show={ !postCheck } class="resource-gradient resource-gradient-alt text-center">
            <button class="btn btn-primary btn-resource" data-toggle="modal" data-target="#Login">
                <i class="fa fa-chevron-down resource-arrow"></i>
            </button>
        </div>
        <div class="resource-content media-content">
            <div class="post-campaign-guide">
                <p class="resource-page-title">Spread The Word</p>
                <p>Spread the Word is a multi-faceted company comprised of marketers, innovators, entrepreneurs and community minded professionals that are seeking to better the communities in which we serve and do business. Being in Mississippi, we are centrally located to the UPS and FED EX terminals in Memphis and the USPS hub in Jackson, MS.  This allows us to offer our customers 2-3 day delivery times in most cases.  With daily pick ups from all major carriers the world is closer than ever before.</p>
                <p>
                We know that shipping products to warehouses can be confusing and concerning.  We make the process of shipping your products to our secure warehouses easy and painless.  Our Free Onboarding lets you pack up your products and send them to our facilities.  We will check your inventory when it arrives, verify the condition and quantities of each SKU and enter them into our inventory system.  Your items are completely safe in our facility as our systems update your website with up-to-date inventory levels at our facilities.Spread the Word knows that you want to sell more.  While other providers charge you per item, we offer Pick &amp; Pack packages that include up to 3 items per package.</p>
                <p>
                With clear pricing, flexible Crowdsourcing Plans, a 99.6% accuracy rate, and many satisfied crowdsource customers, Spread the Word is prepared to serve our clients with outstanding service and customer support. We want to take the worry out of your shipping process so you can focus on your business. </p>
            </div>
        </div>
        <div class="resource-content media-content" style="margin-top: 50px;">
            <div class="press-release-guide">
                <p class="resource-page-title">BackerKit Post Campaign</p>
                <p>BackerKit is a great resource for any successful campaign and can really ease you into the fulfillment process and next steps when it comes to organizing and shipping products out to your backers. Our affiliate Spread The Word has also integrated with BackerKit so they can help you with anything you may need after a successful campaign.</p>
                <p class="resource-guide"><span class="resource-title-bold">Post Campaign Guide:</span> BackerKit has produced a great guide showing some of the most common questions when it comes to fulfilling campaign promises. It will show you how to handle failed payments, refunds, promotions, add-ons and so much more. Take a minute to get to know what <a class="anchor-link" href="https://www.backerkit.com/blog/guides/the-ultimate-post-campaign-strategy-guide/" target="_blank">BackerKit can offer your campaign</a>. </p>
            </div>
            <div class="press-release-example">
                <a href="https://backerkit.com" target="_blank">
                <img alt="BackerKit" src="/images/backerkit.png" class="backerkit img-responsive">
              </a>
            </div>
        </div>
    </div>
    <script>
        krowdspace.v1.check()
            .then((res) => {
                    this.postCheck = true;
                    this.update();
                },
                (err) => {
                    this.postCheck = false;
                    this.update();
                });

    </script>
</postlaunch-body>
