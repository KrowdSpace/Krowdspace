<dash-footer>
    <footer class="dashboard-footer alternate-background" style="background-color: #fff;">
        <div class="container">
            <div class="row">
                <div class="col-md-3 hidden-sm hidden-xs">
                    <p class="footer-text">
                        <strong>Quick Links</strong>
                    </p>
                    <ul class="text-left quicklinks">
                        <li><a href="#modal-about" data-toggle="modal" class="modal-link neutral-link">About Krowdspace</a></li>
                        <li><a class="page-scroll neutral-link" href="#project">Submit A Project</a></li>
                        <li><a class="page-scroll neutral-link" href="#benefits">Our Benefits</a></li>
                        <li><a class="page-scroll neutral-link" href="#boost">View Boosts</a></li>
                        <li><a href="#modal-privacy-policy" data-toggle="modal" class="modal-link neutral-link">Privacy Policy</a></li>
                        <li><a href="#modal-service-terms" data-toggle="modal" class="modal-link neutral-link">Terms of Service</a></li>
                        <li><a href="#modal-giveaway" data-toggle="modal" class="modal-link neutral-link">Giveaways</a></li>
                        <li><a href="#modal-press-kit" data-toggle="modal" class="modal-link neutral-link">Press Kit</a></li>
                    </ul>
                </div>
                <div class="col-md-4 col-sm-offset-0 col-sm-6 col-xs-offset-1 col-xs-10">
                    <p class="footer-text">
                        <strong>Follow Us On Social Media</strong>
                    </p>
                    <p class="text-left">We are constantly building our social media community. Connect with us for updates on the latest news, promotion and exclusive giveaways.
                    </p>
                    <div class="text-left social-icons">
                        <a href="https://www.facebook.com/Krowdspaced" target="_blank">
                        <span class="fa-stack fa fa-2x social-btn">
                        <i class="fa fa-circle fa-stack-2x" ></i>
                        <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                        </span>
                        </a>
                        <a href="https://www.pinterest.com/Krowdspace" target="_blank">
                        <span class="fa-stack fa fa-2x social-btn">
                        <i class="fa fa-circle fa-stack-2x"></i>
                        <i class="fa fa-pinterest fa-stack-1x fa-inverse"></i>
                        </span>
                        </a>
                        <a href="https://www.twitter.com/Krowdspaced" target="_blank">
                        <span class="fa-stack fa fa-2x social-btn">
                        <i class="fa fa-circle fa-stack-2x"></i>
                        <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                        </span>
                        </a>
                        <a href="https://www.instagram.com/Krowdspace" target="_blank">
                        <span class="fa-stack fa fa-2x social-btn">
                        <i class="fa fa-circle fa-stack-2x"></i>
                        <i class="fa fa-instagram fa-stack-1x fa-inverse"></i>
                        </span>
                        </a>
                    </div>
                </div>
                <div class="col-sm-1 hidden-xs"></div>
                <div id="contact" class="col-md-4 col-sm-offset-0 col-sm-5 col-xs-offset-1 col-xs-10 shadow contact-area">
                    <form class="form-vertical no-gutter form-style" id="messageForm" onsubmit={ submit }>
                        <div class="form-group">
                            <input type="text" name="FNAME1" id="FNAME1" class="form-control placeholder-color" placeholder="First Name" required="" aria-required="true" aria-invalid="true">
                        </div>
                        <div class="form-group">
                            <input type="text" name="LNAME1" id="LNAME1" class="form-control placeholder-color" placeholder="Last Name" required="" aria-required="true" aria-invalid="true">
                        </div>
                        <div class="form-group">
                            <input type="email" name="EMAIL1" id="EMAIL1" class="form-control placeholder-color" placeholder="Email Address" required="" aria-required="true" aria-invalid="true">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control placeholder-color" type="text" name="COMMENT1" placeholder="Your Message" id="COMMENT1" rows="3" required=""></textarea>
                        </div>
                        <div>
                            <input type="submit" class="contact-btn" name="submit" value="Send Message">
                        </div>
                    </form>
                </div>
            </div>
            <div class="text-left">
                <p class="copyright">&#169; Krowdspace 2017</p>
            </div>
        </div>
    </footer>
    <script>
    var self = this;
        this.on('mount', function() {
            $('a.page-scroll').bind('click', function(event) {
                var $anchor = $(this);
                $('html, body').stop().animate({
                    scrollTop: ($($anchor.attr('href')).offset().top - 50)
                }, 1250, 'easeInOutExpo');
                event.preventDefault();
            })
        });
    </script>
</dash-footer>
