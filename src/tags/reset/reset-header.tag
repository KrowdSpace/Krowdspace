<reset-header>
    <div class="row reset-flex">
        <div class="reset-box-left">
            <form ref="passwordReset" onSubmit={ resetPassword }>
                <div class="reset-box">
                    <div class="modal-header text-center">
                        <div class="modal-img-box">
                            <img alt="Krowdspace" src="/images/krowdspace-logo-white.svg" class="krowdspace-image-white" />
                        </div>
                        <h2 show={ !successReset } class="modal-heading">Reset Password</h2>
                        <h2 show={ successReset } class="modal-heading">Success!</h2>
                        <p class="reset-description">Please enter the reset password code that was sent to your email address and then type in a new password. Your account will be updated automatically.</p>
                    </div>
                    <div class="modal-body modal-body-inline">
                        <div class="form-group has-feedback">
                            <input type="text" ref="krowdspaceCode" class="form-control login-form" placeholder="Reset Password Code" required>
                            <i class="fa fa-user fa-lg form-control-feedback" aria-hidden='true'></i>
                        </div>
                        <div class="form-group has-feedback">
                            <input type="text" ref="krowdspacePassword" class="form-control login-form" placeholder="New Password" required>
                            <i class="fa fa-lock fa-lg form-control-feedback" aria-hidden='true'></i>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary reset-btn">Reset Password</button>
                    </div>
                </div>
            </form>
        </div>
      <div class="reset-box-right">
          <p class="profile-title">Reset Account Password</p>
          <div class="reset-list">
              <div>
                  <p class="reset-number">1</p>
              </div>
              <p>Make sure that your account is active and that you own the account that needs to be reset. You can send a reset code to your email address by using our <a class="anchor-link" data-toggle="modal" data-target="#Password">password reset form</a>.</p>
          </div>
          <div class="reset-list">
              <div>
                  <p class="reset-number">2</p>
              </div>
              <p>Take the reset password code that was sent to your email address and input it into the reset password form. Type in a new password and click on the reset password button.</p>
          </div>
          <div class="reset-list">
              <div>
                  <p class="reset-number">3</p>
              </div>
              <p>Your account will be updated automatically and you can now use the new password to login in to your Krowdspace Account. If you have any problems please contact us as soon as possible.</p>
          </div>
      </div>
  </div>
  <script>
      resetPassword(e)
          {

            e.preventDefault();

              let RESET_CODE = this.refs.krowdspaceCode.value.trim();
              let NEW_PASSWORD = this.refs.krowdspacePassword.value.trim();

            krowdspace.register.reset_password(RESET_CODE, NEW_PASSWORD).then
            ((res) =>
            {
              this.successReset = true;
              this.refs.passwordReset.reset();
              setTimeout(function(){ $('#Login').modal('show'); }, 2000);
              this.update();
            },
            (err) =>
            {
              console.log(err);
            });
          }
  </script>
</reset-header>
<!-- Validated Content October 26th, 2017 -->
