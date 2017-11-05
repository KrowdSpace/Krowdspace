<password>
    <div id="Password" class="modal fade">
        <div class="modal-dialog" role="document">
            <form ref="passwordForm" onSubmit={ forgotPassword }>
                <div class="modal-content modal-login-height">
                    <div class="modal-header text-center">
                        <div class="modal-img-box">
                            <img class="krowdspace-image-white" />
                        </div>
                        <h2 show={ !successEmail } class="modal-heading">Forgot Your Password?</h2>
                        <h2 show={ successEmail } class="modal-heading">Email Sent!</h2>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <i class="fa fa-times fa-lg" aria-hidden='true'></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p class="modal-body-text">Please enter the email address used to register at Krowdspace and we will send an automated email with instructions on how to reset your password. Make sure to check you junk mail if you do not see it in your inbox within a few minutes.</p>
                        <div class="form-group has-feedback">
                            <input type="email" ref="krowdspaceEmail" class="form-control login-form" placeholder="Email Address" required>
                            <i class="fa fa-envelope fa-lg form-control-feedback" aria-hidden='true'></i>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary login-btn">Send Email</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script>
      forgotPassword(e) {

          e.preventDefault();

          let EMAIL = this.refs.krowdspaceEmail.value.trim();

          krowdspace.register.request_reset_password(EMAIL).then((res) => {
            this.successEmail = true;
            this.refs.passwordForm.reset();
            setTimeout(function(){ $('#Password').modal('hide'); }, 2000);
            this.update();
          },
          (err) => {
              console.log(err);
          });
      }
    </script>
</password>
<!-- Validated Content October 26th, 2017 -->
