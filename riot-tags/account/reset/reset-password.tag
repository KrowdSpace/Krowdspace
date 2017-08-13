<reset-password>
    <div class="row row-verify">
        <div class=" col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
            <form ref="passwordreset" onSubmit={ resetPassword }>
                <div class="shadow modal-max-box">
                    <div class="text-left modal-box-alt">
                        <p class="modal-heading modal-heading-alt">Reset Password</p>
                        <p class="text-left landing-text" >Please enter the reset code that was sent to your email address and then type in a new password.</p>
                        <div class="has-feedback">
                            <label class="control-label" for="code"></label>
                            <input type="text" class="form-control box-radius" id="code" name="code" placeholder="Reset Password Code" ref="krowdspaceCode"  >
                            <span class="fa fa-user form-control-feedback"></span>
                        </div>
                        <div class="has-feedback password-padding">
                            <label class="control-label" for="password1"></label>
                            <input class="form-control box-radius" id="password1" name="password1" placeholder="New Password" ref="krowdspacePassword">
                            <span class="fa fa-lock form-control-feedback"></span>
                        </div>
                    </div>
                    <div class="text-center">
                        <input type="submit" class="landing-submit" name="submit" value="Password Reset">
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script>
        resetPassword(e) 
            {
            
            	e.preventDefault();
            
                let RESET_CODE = this.refs.krowdspaceCode.value;
                let NEW_PASSWORD = this.refs.krowdspacePassword.value;
            
            	krowdspace.register.reset_password(RESET_CODE, NEW_PASSWORD).then
            	((res) => 
            	{
                    window.location.replace("/#/account/dashboard");
                    this.refs.passwordreset.reset();
            	},
            	(err) => 
            	{
                    console.log(err);
                    this.refs.passwordreset.reset();
            	});
            }
    </script>
</reset-password>