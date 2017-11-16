<coupon>
    <div id="Coupon" class="modal fade">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-login-height">
                <div class="modal-header text-center">
                    <div class="modal-img-box">
                        <img alt="Krowdspace" src="/images/krowdspace-logo-white.svg" class="krowdspace-image-white" />
                    </div>
                    <h2 class="modal-heading">Support Campaign!</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="fa fa-times fa-lg" aria-hidden='true'></i>
              </button>
                </div>
                <div class="modal-body text-center">
                    <p class="modal-body-text">To support this campaign and receive the posted reward make sure to send the below COUPON CODE to the campaign owner after completing your pledge. You can send the COUPON CODE as a message or note upon backing the campaign. All project owners have agreed to fulfill any and all rewards posted on their project page.</p>
                  <p class="project-coupon-code">{ couponCode }</p>
                </div>
                <div class="modal-footer">
                  <a href="{ campaignLink }" target="_blank">
                    <button type="button" class="btn btn-primary login-btn">View Campaign</button>
                  </a>
                </div>
            </div>
        </div>
    </div>
    <script>
        this.on('update', () => {
          if(!opts.campaign)
          return;

          this.couponCode = opts.campaign.coupon_code;
          this.campaignLink = opts.campaign.project_data.info_data.url;
          });
    </script>
</coupon>
<!-- Validated Content October 26th, 2017 -->
