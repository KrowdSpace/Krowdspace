<project-modal-login>
    <div class="container login-check-container">
        <div class="krowdspace-modal col-lg-offset-3 col-md-6">
         <div id="modal">
            <div class="modal-body modal-custom">
                <form onsubmit={ loginSubmit }>
                    <div class="col-sm-12 text-left register-container-modal">
                    <p class="modal-heading modal-heading-alt">Krowdspace Login</p>
                    <div id="errorLog" class="alert alert-danger alert-dismissable fade in">
                        <a class="close" onclick="$('.alert').hide()"><i class="fa fa-close"></i></a>
                        <strong>Error:</strong> Invalid username or password.
                    </div>
                    <div class="has-feedback">
                        <label class="control-label" for="username"></label>
                        <input type="text" class="form-control" id="username" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off" style="border-radius: 0px;">
                        <span class="fa fa-user form-control-feedback"></span>
                    </div>
                    <div class="has-feedback">
                        <label class="control-label" for="password"></label>
                        <input type="password" class="form-control" id="password" placeholder="Password" ref="passwordlogin" autocorrect="off" autocapitalize="off" style="border-radius: 0px;">
                        <span class="fa fa-lock form-control-feedback"></span>
                    </div>
                    <div class="col-xs-6 checkbox text-left" style="padding-left: 0px;">
                        <label>
                            <input type="checkbox" id="checkbox">Remember Me
                        </label>
                    </div>
                    <div class="col-xs-6 checkbox text-right forgot-box">
                        <a style="cursor: pointer;" onclick= { registerPassword }><p class="forgot-pass">Forgot Password?</p></a>
                    </div>
                  </div>
                  <div class="text-center">
                    <input type="submit" class="landing-submit alt-border" name="submit" value="Login">
                </div>
               </form>
               <div class="text-center">
                    <p class="login-float-text">Dont have an account? <a class="function-link" onclick= { registerModal }>Register today!</a></p>
               </div>
            </div>
         </div>
      </div>
    </div>
<script>            	   
loginSubmit(e) 
{
    e.preventDefault();

    let USERNAME = this.refs.usernamelogin.value,
        PASSWORD = this.refs.passwordlogin.value,
        STAYLOGGED = true;

    krowdspace.v1.login(USERNAME, PASSWORD, STAYLOGGED).then((res) => 
    {
        this.logged_in = true;
        this.update();
        window.location.reload();
    },(err) => 
    {
        $("#errorLog").show();
    });
}
registerModal() 
{
$('#modal-global-login').modal('hide');
$('#modal-global-register').modal('show');
}
registerPassword() 
{
$('#modal-global-login').modal('hide');
$('#modal-password').modal('show');
}
</script>
</project-modal-login>