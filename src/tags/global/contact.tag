<contact>
    <div id="Contact" class="modal fade">
        <div class="modal-dialog modal-dialog-medium" role="document">
            <form ref="contactForm" onSubmit={ contactSubmit }>
                <div class="modal-content">
                    <div class="modal-header text-center">
                        <div class="modal-img-box">
                            <img src="/images/krowdspace-logo-white.svg" class="krowdspace-image-white" />
                        </div>
                        <h2 class="modal-heading">Contact Krowdspace</h2>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <i class="fa fa-times fa-lg" aria-hidden='true'></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p class="modal-body-text">For general questions about project submissions, services and features please fill out the contact form.</p>
                        <p class="modal-body-text">If you would like to submit your campaign for a giveaway sponsorship, please provide a prize that has a retail value of at least $50. We will reach out to you with further details about our giveaway process.</p>
                        <p class="modal-body-text">If you are an affiliate and want to collaborate with us, please provide a link to your company website and a brief description of your services. We are always looking for ways to expand our resources and provide the best experience to our members!</p>
                        <div class="form-group">
                            <input type="text" ref="contactName" class="form-control" placeholder="Full Name" required>
                        </div>
                        <div class="form-group">
                            <input type="email" ref="contactEmail" class="form-control" placeholder="Email Address" required>
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" ref="contactMessage" type="text" placeholder="Your Message" rows="4" required></textarea>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary login-btn">Send Message</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script>
      contactSubmit(e) {

        e.preventDefault();

        let FULLNAME = this.refs.contactName.value,
            LASTNAME = 'not needed',
            EMAIL = this.refs.contactEmail.value,
            COMMENT = this.refs.contactMessage.value;

        krowdspace.register.contact_us(FULLNAME,LASTNAME,EMAIL,COMMENT).then
        ((res) =>
        {
          $('#Contact').modal('hide');
            this.refs.contactForm.reset();
          setTimeout(function() {
            $('#ContactConfirm').modal({
            })
          }, 500);
        },
        (err) =>
        {
          console.log(err);
        });
      }
    </script>
</contact>
<!-- Validated Content October 26th, 2017 -->
