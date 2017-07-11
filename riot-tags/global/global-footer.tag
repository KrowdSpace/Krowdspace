<global-footer>
    <footer id="contacts" class="alternate-background">
        <div class="custom-footer">
			<div class="container">
            <div class="row">
                <div class="col-md-3 hidden-sm hidden-xs">
                    <p class="footer-text">
                        <strong>Quick Links</strong>
                    </p>
                    <ul class="text-left quicklinks">
                        <li><a class="page-scroll neutral-footer-link" href="/#/account/dashboard">View Dashboard</a></li>
                        <li><a class="page-scroll neutral-footer-link" href="/#/account/register">Submit A Project</a></li>
                        <li><a href="#modal-about" data-toggle="modal" class="modal-link neutral-footer-link">About Krowdspace</a></li>
                        <li><a href="#modal-privacy-policy" data-toggle="modal" class="modal-link neutral-footer-link">Privacy Policy</a></li>
                        <li><a href="#modal-service-terms" data-toggle="modal" class="modal-link neutral-footer-link">Terms of Service</a></li>
                        <li><a href="#modal-giveaway" data-toggle="modal" class="modal-link neutral-footer-link">Giveaways</a></li>
                        <li><a href="#modal-press-kit" data-toggle="modal" class="modal-link neutral-footer-link">Press Kit</a></li>
                    </ul>
                </div>
                <div class="col-md-4 col-sm-offset-0 col-sm-6 col-xs-offset-1 col-xs-10">
                    <p class="footer-text">
                        <strong>Follow Us On Social Media</strong>
                    </p>
                    <p class="text-left social-footer">We are constantly building our social media community. Connect with us for updates on the latest news, promotion and exclusive giveaways.
                    </p>
                    <div class="text-left social-icons">
                        <a href="https://www.facebook.com/Krowdspaced" target="_blank">
                        <i class="fa fa-facebook footer-social-icon filterprimary"></i>
                        </a>
                        <a href="https://www.pinterest.com/Krowdspace" target="_blank">
                        <i class="fa fa-pinterest footer-social-icon filterprimary"></i>
                        </a>
                        <a href="https://www.twitter.com/Krowdspaced" target="_blank">
                        <i class="fa fa-twitter footer-social-icon filterprimary"></i>
                        </a>
                        <a href="https://www.instagram.com/Krowdspace" target="_blank">
                        <i class="fa fa-instagram footer-social-icon filterprimary"></i>
                        </a>
                    </div>
                </div>
                <div class="col-lg-push-1 col-lg-4 text-center">
                    <p class="footer-text" style="margin-bottom: 26px;"><strong>Contact Krowdspace</strong></p>
                    <form onsubmit={ contactMessage } ref="commentForm">
                        <div class="form-group">
                            <input type="text" ref="fullname" class="form-control" placeholder="Full Name" required="required" aria-required="true" aria-invalid="true">
                        </div>
                        <div class="form-group">
                            <input type="email" ref="email" class="form-control" placeholder="Email Address" required="" aria-required="true" aria-invalid="true">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" ref="comment" type="text" placeholder="Your Message" rows="3" required="required"></textarea>
                        </div>
                        <div>
                            <input type="submit" class="contact-btn" name="submit" value="Send Message">
                        </div>
                    </form>
                </div>
            </div>
            <div class="text-left">
                <p class="copyright">&copy; Krowdspace { year }</p>
            </div>
        </div>
		</div>
    </footer>
    <script>
        this.on('mount', function() 
        {
            $('a.page-scroll').bind('click', function(event) 
            {
                var $anchor = $(this);
                $('html, body').stop().animate({
                    scrollTop: ($($anchor.attr('href')).offset().top - 50)
                }, 1250, 'easeInOutExpo');
                event.preventDefault();
            })
        });
      contactMessage(e)
        {
            e.preventDefault();
            
            var FULLNAME = this.refs.fullname.value,
                EMAIL = this.refs.email.value,
                COMMENT = this.refs.commentForm.value;
        
            krowdspace.register.contact_us(FULLNAME,EMAIL,COMMENT).then
            ((res) => 
            {
                $('#modal-comment').modal('show');
                this.refs.commentForm.reset();
            },
            (err) => 
            {
                console.log(err);
            });
        }  
        this.year = new Date().getFullYear();
        this.update();
    </script>
</global-footer>
