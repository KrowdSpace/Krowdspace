<giveaway-live>
    <div class="giveaway-block">
        <div class="giveaway-image">
            <img id="giveaway9" class="giveaway img-responsive">
        </div>
        <div class="giveaway-text-block">
            <p>The First Convertible Tote Bag of its Kind From Krowdspace!</p>
            <p>Enter to win a Bahari Bag - the worlds only convertible tote bag! This bag converts from a towel or wrap into a tote through an innovative rope mechanism. Made with the finest materials and handcrafted in Africa to support local communities, this bag retails at over $80 and is exclusively available through this giveaway sponsored by Krowdspace.</p>
            <div class="giveaway-btn-box">
                <a show={ giveawayLink } href="https://gleam.io/9YdZZ/bahari-bag-giveaway" target="_blank">
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
