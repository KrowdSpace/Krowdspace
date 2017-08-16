<admin-login>
        <div class="dark-modal"> 
                <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
                    <form ref="accountlogin" onSubmit={ adminSubmit }>
                        <div class="text-left modal-box-alt modal-max-box">
                            <p class="modal-heading modal-heading-alt">Krowdspace Login</p>
                            <div id="errorLog" class="alert alert-danger alert-dismissable fade in">
                                <a class="close" onclick="$('.alert').hide()"><i class="fa fa-close"></i></a>
                                <strong>Error:</strong> Invalid username or password.
                            </div>
                            <div class="has-feedback">
                                <label class="control-label" for="username"></label>
                                <input type="text" class="box-radius form-control" id="username" name="username" placeholder="Username or Email Address" ref="usernameloginAdmin">
                                <span class="fa fa-user form-control-feedback"></span>
                            </div>
                            <div class="has-feedback">
                                <label class="control-label" for="password"></label>
                                <input type="password" class="box-radius form-control" id="password" name="password" placeholder="Password" ref="passwordloginAdmin">
                                <span class="fa fa-lock form-control-feedback"></span>
                            </div>
                            <div class="col-xs-6 login-box text-left">
                                <label>
                                    <input class="check-box" class="check-box" type="checkbox" ref="checkboxAdmin" id="checkbox">Remember Me
                                </label>
                            </div>
                            <div class="col-xs-6 login-box text-right">
                                <a onclick= { registerPassword }><p class="forgot-pass">Forgot Password?</p></a>
                            </div>
                            <div class="clearfix"></div>
                          </div>
                          <div class="text-center modal-max-box">
                            <input type="submit" class="landing-submit" name="submit" value="Login">
                        </div>
                    </form>
                    <div class="text-center">
                            <p class="login-float-text">Are you in the right place? <a href="/#/explore" class="function-link">Explore Page!</a></p>
                       </div>
                </div>
            </div>
            
        <script>
                adminSubmit(e) 
                {
                    
                    e.preventDefault();
        
                    var USERNAME = this.refs.usernameloginAdmin.value,
                        PASSWORD = this.refs.passwordloginAdmin.value;
                        STAYLOGGED = this.refs.checkboxAdmin.checked;
        
            krowdspace.v1.login(USERNAME, PASSWORD, STAYLOGGED).then((res)=>
            {
                this.logged_in = true;
                this.update();
                this.refs.accountlogin.reset();
                window.location.reload();
            },
            (err) => 
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
</admin-login>