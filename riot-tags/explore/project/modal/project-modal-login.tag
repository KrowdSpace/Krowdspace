<project-modal-login>
    <div class="container login-check-container">
        <div class="krowdspace-modal col-lg-offset-1 col-md-5 col-md-offset-0 col-sm-7 col-sm-offset-2">
            <div id="modal" class="modal-content">
                <div class="modal-header">
                    <p class="modal-heading">Krowdspace Login</p>
                </div>
                <div class="modal-body">
                    <div id="errorLog" class="alert alert-danger alert-dismissable fade in">
                        <a class="close" onclick="$('.alert').hide()"><i class="fa fa-close"></i></a>
                        <strong>Error:</strong> Invalid username or password.
                    </div>
                    <form class="form-vertical no-gutter" onsubmit= { loginSubmit }>
                        <div>
                            <input type="text" class="form-control" placeholder="Username or Email Address" ref="username" autocorrect="off" autocapitalize="off">
                        </div>
                        <div class="col-xs-8 form-group">
                            <input type="password" class="form-control" placeholder="Password" ref="password">
                        </div>
                        <div class="col-xs-4 form-group" style="padding-left:10px;">
                            <button class="button-login" type="submit">Login</button>
                        </div>
                        <div class="col-xs-6 checkbox text-left">
                            <label>
                            <input type="checkbox" id="checkbox">Remember Me
                            </label>
                        </div>
                        <div class="col-xs-6 text-right" style="margin:10px 0px 0px 0px;">
                            <p>Forgot Password?</p>
                        </div>
                    </form>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="krowdspace-modal col-lg-5 col-md-6 hidden-sm hidden-xs">
            <div id="modal" class="modal-content">
                <div class="modal-header">
                    <p class="modal-heading">Krowdspace Register</p>
                </div>
                <div class="modal-body" style="padding-top: 0px;">
                    <p class="register-text text-left">If you have not signed up with Krowdspace please fill out the below form. You will need to sign up with Krowdspace or login before you can submit or view any rewards.</p>
                    <form class="form-vertical" onsubmit={ registerSubmit }>
                        <div class="form-group form-split-right">
                            <input type="text" ref="firstname" class="form-control" placeholder="First Name" required="required" aria-required="true" aria-invalid="true">
                        </div>
                        <div class="form-group form-split-left">
                            <input type="text" ref="lastname" class="form-control" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true">
                        </div>
                        <div class="form-group">
                            <input type="email" ref="email" class="form-control" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true">
                        </div>
                        <div class="form-group">
                            <input type="username" ref="usernameRegister" class="form-control" placeholder="Username" required="required" aria-required="true" aria-invalid="true">
                        </div>
                        <div class="input-group">
                            <input id="PASSWORD" type="password" ref="passwordRegister" placeholder="New Password" class="masked form-control" required="required">
                            <div class="input-group-btn">
                                <button type="button" id="eye" class="btn btn-default">
                        <i class="glyphicon glyphicon-eye-open"></i>
                        </button>
                            </div>
                        </div>
                        <div class="form-group">
                            <input type="text" ref="kickstarter" class="form-control" placeholder="Kickstarter Username (Optional)">
                        </div>
                        <div class="form-group">
                            <input type="text" ref="indiegogo" class="form-control" placeholder="Indiegogo Username (Optional)">
                        </div>
                        <div class="check-terms checkbox text-left">
                            <label>
                     <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="home-links">Krowdspace terms</a>
                     </label>
                        </div>
                        <div class="register-button-box">
                            <input type="submit" class="button-login" name="submit" value="Register">
                        </div>
                    </form>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <script>    
        this.on('mount', () => 
        {
        	function show() 
        	{
        		let pass = document.getElementById('PASSWORD');
        		    pass.setAttribute('type', 'text');
        	}
        	function hide() 
        	{
        		let pass = document.getElementById('PASSWORD');
        		    pass.setAttribute('type', 'password');
        	}
        	
        	let pwShown = 0;
        	
        	document.getElementById("eye").addEventListener("click", () => 
        	{
        		if (pwShown == 0) 
        		{
        			pwShown = 1;
        			show();
        		} 
        		else 
        		{
        			pwShown = 0;
        			hide();
        		}
        	}, false);
        });
        	   
        loginSubmit(e) 
        {
            e.preventDefault();
    
            let USERNAME = this.refs.username.value,
                PASSWORD = this.refs.password.value,
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

        registerSubmit(e)
        {
        	e.preventDefault();
        	
        	let FNAME = this.refs.firstname.value,
        	    LNAME = this.refs.lastname.value,
        	    EMAIL = this.refs.email.value,
        	    USERNAME = this.refs.usernameRegister.value,
        	    PASSWORD = this.refs.passwordRegister.value,
        	    KSUSER = this.refs.kickstarter.value,
        	    IGUSER = this.refs.indiegogo.value;
        	
        	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then((res) => 
        	{
                window.location.replace("/#/account/success");
        	},
        	(err) => 
        	{
        		
        	});
        }    
    </script>
</project-modal-login>