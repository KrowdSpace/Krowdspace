<footer>
    <div class="row footer-row">
        <div class="col-xs-offset-0 col-xs-12 col-sm-offset-1 col-sm-3">
            <div class="footer-sm-transition">
                <p class="footer-title">Quick Links</p>
                <ul class="footer-float">
                    <li><a href="#"data-toggle="modal" data-target="#About">Krowdspace Team</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#Brand">Brand Assets</a></li>
                    <li><a onclick={ faqReload }>General Questions</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#Contact">Contact Krowdspace</a></li>
                    <li class="hidden-xs"><a href="#" data-toggle="modal" data-target="#Privacy">Privacy Policy</a></li>
                    <li class="hidden-xs"><a href="#" data-toggle="modal" data-target="#Service">Terms of Service</a></li>
                    <li class="hidden-xs"><a href="#" data-toggle="modal" data-target="#Disclaimer">Disclaimer</a></li>
                </ul>
                <ul class="footer-float-hidden hidden-xl hidden-lg hidden-md hidden-sm">
                    <li><a href="#" data-toggle="modal" data-target="#Privacy">Privacy Policy</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#Service">Terms of Service</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#Disclaimer">Disclaimer</a></li>
                </ul>
            </div>
        </div>
        <div class="col-xs-12 col-sm-3">
            <div class="footer-sm-transition">
                <p class="footer-title">Project Resources</p>
                <ul class="footer-float">
                    <li><a href="/#/account/dashboard">View Dashboard</a></li>
                    <li><a href="/#/account/register">Project Submissions</a></li>
                    <li><a href="/#/resource/press-release">Press Release</a></li>
                    <li><a href="/#/resource/media-contacts">Media Contacts</a></li>
                    <li class="hidden-xs"><a href="/#/resource/pre-launch">Pre-Launch Services</a></li>
                    <li class="hidden-xs"><a href="/#/resource/post-launch">Post-Launch Services</a></li>
                    <li class="hidden-xs"><a href="/#/giveaway">Giveaways</a></li>
                </ul>
                <ul class="hidden-xl hidden-lg hidden-md hidden-sm">
                    <li class="hidden-xs"><a href="/#/resource/pre-launch">Pre-Launch Services</a></li>
                    <li class="hidden-xs"><a href="/#/resource/post-launch">Post-Launch Services</a></li>
                    <li class="hidden-xs"><a href="/#/giveaway">Giveaways</a></li>
                </ul>
            </div>
        </div>
        <div class="col-xs-12 col-sm-5">
            <div class="footer-sm-transition">
                <p class="footer-title">Krowdspace</p>
                <p class="footer-text">We collaborate with like minded people to make crowdfunding campaigns a reality. Join our community today!</p>
                <button show={ !SignedIn } class="btn btn-primary join-footer-btn" data-toggle="modal" data-target="#Register"><i class="fa fa-user" aria-hidden='true'></i> Join for Free</button>
                <a show={ SignedIn } href="/#/explore">
                <button class="btn btn-primary join-footer-btn">Explore Projects</button>
                </a>
                <a href="/brand/krowdspace-brand-assets.zip" download>
                <button class="btn btn-primary brand-assets-btn"><span class="glyphicon glyphicon-download-alt"></span> Download Logo Kit</button>
              </a>
            </div>
        </div>
    </div>
    <div class="row footer-sub">
        <div class="col-xs-5 text-left footer-sub-left">
            <p class="copyright">&copy; Krowdspace { year }</p>
        </div>
        <div class="col-xs-7 text-right footer-sub-right">
            <p><a href="https://www.facebook.com/Krowdspaced" target="_blank"><i class="fa fa-lg fa-facebook social-primary" aria-hidden="true"></i></a>
              <a href="https://twitter.com/Krowdspaced" target="_blank"><i class="fa fa-lg fa-twitter social-primary" aria-hidden="true"></i></a>
              <a href="https://www.instagram.com/Krowdspace/" target="_blank"><i class="fa fa-lg fa-instagram social-primary" aria-hidden="true"></i></a>
              <a href="https://www.pinterest.com/Krowdspace" target="_blank"><i class="fa fa-lg fa-pinterest social-primary" aria-hidden="true"></i></a>
            </p>
        </div>
    </div>
    <script>
    this.year = new Date().getFullYear();
    this.update();
    faqReload() {

      window.location.replace("/#/info/faq");
      window.location.reload();
    }
    </script>
</footer>
