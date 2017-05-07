<ks-login-verify>
    <div style="background: rgba(50, 48, 49, .99); position: fixed; top: 0; left: 0; width: 100%; height: 100%; z-index:9999;" ref="login_cont" if={ !logged_in }>
        
		<div class="col-md-5 col-centered shadow user-modal" style="margin-top:100px;">
                            <div class="text-left modal-container">
                                <p class="modal-heading">Krowdspace Login</p>
                            </div>
							<div id="errorLog" class="alert alert-danger alert-dismissable fade in" style="display:none;">
                                <a href="#" class="close" onclick="$('.alert').hide()">&times;</a>
                                <strong>Error:</strong> Invalid username or password.
                            </div>
                            <form refs="loginForm" id="CustomerLoginForm" class="form-vertical no-gutter" ref="login" onsubmit={ loginSubmit }>
                                <div>
                                    <input type="text" ref="username" class="form-control placeholder-color" placeholder="Username or Email Address">
                                </div>
                                <div class="col-xs-8 form-group">
                                    <input type="password" ref="password" class="form-control placeholder-color" placeholder="Password">
                                </div>
                                <div class="col-xs-4 form-group" style="padding-left:10px;">
                                    <button class="button-login" ref="login_button">Login</button>
                                </div>
                                <div class="col-xs-6 check-terms checkbox text-left" style="margin:10px 0px 0px 0px;">
                                    <label>
                                    <input type="checkbox" id="checkbox">Remember Me
                                    </label>
                                </div>
                                <div class="col-xs-6 check-terms checkbox text-right" style="font-size: 14px; margin:10px 0px 0px 0px;">
                                        <span>Forgot Password?</span>
                                    </div>
                            </form>
			<div class="clearfix"></div>
                        </div>
    </div>

    
    <script>
        loginSubmit(e)
		{
			e.preventDefault();
			var USERNAME = this.refs.username.value;
			var PASSWORD = this.refs.password.value;
			STAYLOGGED = true;// andre just added this. The old way was keeping it true.
				console.log(USERNAME);
				console.log(PASSWORD);
			console.log(STAYLOGGED); 
			krowdspace.users.login(USERNAME, PASSWORD, STAYLOGGED).then(
				(res) => 
				{
					this.logged_in = true;
					window.location.replace("/account/dashboard.html"); 
				},
				(err) => 
				{
					console.log('winning');
			});
		}
    </script>
</ks-login-verify>