<submission>
      <div id="Submission" class="modal fade">
        <div class="modal-dialog" role="document">
            <form ref="loginform" onsubmit={ loginSubmit } autocomplete="on">
            <div class="modal-content modal-login-height">
                <div class="modal-header text-center">
                    <div class="modal-img-box">
                        <img src="/images/krowdspace-logo-white.svg" class="krowdspace-image-white" />
                    </div>
                    <h2 class="modal-heading">Registration Success!</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="fa fa-times fa-lg" aria-hidden='true'></i>
              </button>

                </div>
                <div class="modal-body">
                    <p class="modal-body-text">Thank you for registering with Krowdspace. Please go ahead and login with your new credentials. We hope you enjoy our services and happy crowdfunding!</p>
                        <div id="input-error-box" class="form-group has-feedback">
                            <input id="input-error" type="text" ref="usernamelogin" class="form-control login-form" placeholder="Username or Email Address" required>
                            <i class="fa fa-user fa-lg form-control-feedback" aria-hidden='true'></i>
                        </div>
                        <div id="input-error-box2" class="form-group has-feedback">
                            <input id="input-error2" type="password" ref="passwordlogin" class="form-control login-form" placeholder="Password" required>
                            <i class="fa fa-lock fa-lg form-control-feedback" aria-hidden='true'></i>
                        </div>
                    <div class="checkbox">
                        <label><input ref="checkbox" type="checkbox"> Remember me</label>
                    </div>
                    <p class="login-password"><a class="anchor-link" onclick={ submissionPassword }>Forgot Password?</a></p>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary login-btn">Login</button>
                </div>
            </div>
          </form>
        </div>
    </div>
    <script>
        loginSubmit(e)
        {

        	e.preventDefault();

        	let USERNAME = this.refs.usernamelogin.value,
        	    PASSWORD = this.refs.passwordlogin.value,
              STAYLOGGED = this.refs.checkbox.checked;

        	krowdspace.v1.login(USERNAME, PASSWORD, STAYLOGGED).then
        	((res) =>
        	{

            this.SignedIn = true;
            this.update();

            this.refs.loginform.reset();
            console.log('Welcome to Krowdspace');
            window.location.replace("/#/account/profile");
            window.location.reload();
            $('#Submission').modal('hide');
        	},
        	(err) =>
        	{
            this.refs.loginform.reset();
            if(err.data.bad_username === true){
              $("#input-error-box2").removeClass("has-error");
              $("#input-error2").attr("placeholder", "Password");
              $("#input-error-box").addClass("has-error");
              $("#input-error").attr("placeholder", "Username Does Not Exist");
            }else{
              $("#input-error-box").removeClass("has-error");
              $("#input-error").attr("placeholder", "Username or Email Address");
              $("#input-error-box2").addClass("has-error");
              $("#input-error2").attr("placeholder", "Password Does Not Match Username");
            }
        	});
        }
        submissionPassword() {
          $('#Submission').modal('hide');

          setTimeout(function() {
            $('#Password').modal({
            })
          }, 500);
        }
    </script>
</submission>
<!-- Validated Content October 26th, 2017 -->
