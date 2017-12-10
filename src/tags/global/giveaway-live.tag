<giveaway-live>
    <div class="giveaway-block">
        <div class="giveaway-image">
            <img alt="Krowdspace Giveaway #10" src="/images/giveaway-10.jpg" class="giveaway img-responsive">
        </div>
        <div class="giveaway-text-block">
            <p>QuikSnap&trade; Car Window Sunshades Kickstarter Giveaway! </p>
            <p>Enter to win a customized QuickSnap car window sunshade set for all four windows! Every set is designed for your car and has an estimated retail value of $60. This revolutionary automotive accessory snaps on and off instantly to provide protection without using any clips, magnets or support. Now funding on Kickstarter and being featured at Krowdspace.</p>
            <div class="giveaway-btn-box">
                <a show={ giveawayLink } href="https://gleam.io/FqJ5n/quiksnap-car-window-sunshades-kickstarter-giveaway" target="_blank">
                  <button class="btn btn-primary">Enter Giveaway</button>
                </a>
                  <a show={ !giveawayLink } href="/#/giveaway">
                  <button class="btn btn-primary">Krowdspace Giveaways</button>
                </a>
            </div>
        </div>
    </div>
    <script>
        let giveaway = window.location.hash;

        if (giveaway != '#/giveaway') {
            this.giveawayLink = false;
        } else {
            this.giveawayLink = true;
        }
    </script>
</giveaway-live>
<!-- Validated Content October 27th, 2017 -->
