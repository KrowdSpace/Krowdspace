<global-footer>
    <footer id="contacts" class="alternate-background">
        <div class="footer-custom">
			<div class="container">
                <div class="row" style="margin: 0px;">
                    <div class="col-md-3 hidden-sm hidden-xs static">
                        <p class="footer-title">
                            <strong>Quick Links</strong>
                        </p>
                        <ul class="text-left quicklinks">
                            <li><a class="page-scroll home-text" href="/#/account/dashboard">View Dashboard</a></li>
                            <li><a class="page-scroll home-text" href="/#/account/register">Submit A Project</a></li>
                            <li><a href="#modal-about" data-toggle="modal" class="modal-link home-text">About Krowdspace</a></li>
                            <li><a href="/#/account/giveaway" data-toggle="modal" class="modal-link home-text">Giveaways</a></li>
                            <li><a href="#modal-press-kit" data-toggle="modal" class="modal-link home-text">Press Kit</a></li>
                            <li><a href="#modal-privacy-policy" data-toggle="modal" class="modal-link home-text">Privacy Policy</a></li>
                            <li><a href="#modal-service-terms" data-toggle="modal" class="modal-link home-text">Terms of Service</a></li>
                            <li><a href="#modal-disclaimer" data-toggle="modal" class="modal-link home-text">Disclaimer</a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 col-sm-offset-0 col-sm-6 col-xs-offset-0 col-xs-12 footer-social">
                        <p class="footer-title">
                            <strong>Follow Us On Social Media</strong>
                        </p>
                        <p class="text-left social-footer">We are constantly building our social media community. Connect with us for updates on the latest news, promotions and exclusive giveaways.
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
                    <div class="col-lg-push-1 col-lg-4 col-md-5 col-sm-offset-0 col-sm-6 col-xs-offset-0 col-xs-12 text-center contact-container">
                        <p class="footer-title contact-box"><strong>Contact Krowdspace</strong></p>
                        <form onsubmit={ contactMessage } ref="commentForm">
                            <div class="form-group">
                                <input type="text" ref="fullname" class="form-control" placeholder="Full Name" required>
                            </div>
                            <div class="form-group">
                                <input type="email" ref="email" class="form-control" placeholder="Email Address" required>
                            </div>
                            <div class="form-group">
                                <textarea class="form-control" ref="comment" type="text" placeholder="Your Message" rows="3" required></textarea>
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
      contactMessage(e)
        {
            e.preventDefault();
            
            let FULLNAME = this.refs.fullname.value,
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
    
            });
        }  
        this.year = new Date().getFullYear();
        this.update();
    </script>
</global-footer>
