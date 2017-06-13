<home-modal-login>
   <div id="modal-login" class="modal container fade">
      <div class="krowdspace-modal col-lg-offset-1 col-md-5 col-md-offset-0 col-sm-7 col-sm-offset-2">
         <div id="modal" class="modal-content">
            <div class="modal-header">
               <p class="modal-heading">Krowdspace Login</p>
            </div>
            <div class="modal-body">
               <div id="errorLog" class="alert alert-danger alert-dismissable fade in" style="display:none;">
                  <a class="close" onclick="$('.alert').hide()"><i class="fa fa-close"></i></a>
                  <strong>Error:</strong> Invalid username or password.
               </div>
               <form id="CustomerLoginForm" class="form-vertical no-gutter" onsubmit={ loginSubmit }>
                  <div>
                     <input type="text" class="form-control placeholder-color" placeholder="Username or Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off">
                  </div>
                  <div class="col-xs-8 form-group">
                     <input type="password" class="form-control placeholder-color" placeholder="Password" value="" ref="passwordlogin">
                  </div>
                  <div class="col-xs-4 form-group" style="padding-left:10px;">
                     <button class="button-login" type="submit">Login</button>
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
      </div>
      <div class="krowdspace-modal col-lg-5 col-md-6 hidden-sm hidden-xs">
         <div id="modal" class="modal-content">
            <div class="modal-header">
               <p class="modal-heading">Krowdspace Register</p>
            </div>
            <div class="modal-body" style="padding-top: 0px;">
               <p class="register-text text-left">If you have not signed up with Krowdspace please fill out the below form. You will need to sign up with Krowdspace before you can submit or view any projects.</p>
               <form class="form-vertical" id="commentForm" ref="modalform" onsubmit={ submit2 }>
                  <div class="form-group form-split-right">
                     <input type="text" ref="firstname" class="form-control placeholder-color" placeholder="First Name" required="required" aria-required="true" aria-invalid="true">
                  </div>
                  <div class="form-group form-split-left">
                     <input type="text" ref="lastname" class="form-control placeholder-color" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true">
                  </div>
                  <div class="form-group">
                     <input type="email" ref="email" class="form-control placeholder-color" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true">
                  </div>
                  <div class="form-group">
                     <input type="username" ref="username" class="form-control placeholder-color" placeholder="Username" required="required" aria-required="true" aria-invalid="true">
                  </div>
                  <div class="input-group">
                     <input id="PASSWORD2" type="password" ref="password" placeholder="New Password"  class="masked form-control placeholder-color"  required="required">
                     <div class="input-group-btn">
                        <button type="button" id="eye2" class="btn btn-default">
                        <i class="glyphicon glyphicon-eye-open"></i>
                        </button>
                     </div>
                  </div>
                  <div class="form-group">
                     <input type="text" ref="kickstarter_user" class="form-control placeholder-color" placeholder="Kickstarter Username (Optional)">
                  </div>
                  <div class="form-group">
                     <input type="text" ref="indiegogo_user" class="form-control placeholder-color" placeholder="Indiegogo Username (Optional)">
                  </div>
                  <div class="check-terms checkbox text-left">
                     <label>
                     <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link home-links">Krowdspace terms</a>
                     </label>
                  </div>
                  <div class="register-button-box">
                     <input type="submit" class="button-login" name="submit" value="Register" >
                  </div>
               </form>
               <div class="clearfix"></div>
            </div>
         </div>
      </div>
   </div>
<script>
// --- Show Password and Hide Password --- //	   
	   
this.on('mount', function() 
{
	function show() 
	{
		var pass = document.getElementById('PASSWORD2');
		pass.setAttribute('type', 'text');
	}
	function hide() 
	{
		var pass = document.getElementById('PASSWORD2');
		pass.setAttribute('type', 'password');
	}
	
	var pwShown = 0;
	
	document.getElementById("eye2").addEventListener("click", function () 
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
	   
// --- Login Submit --- //

loginSubmit(e) 
{
	
	e.preventDefault();

	var USERNAME = this.refs.usernamelogin.value,
	    PASSWORD = this.refs.passwordlogin.value;

	STAYLOGGED = true;

	console.log(USERNAME);
	console.log(PASSWORD);

	krowdspace.v1.login(USERNAME, PASSWORD, STAYLOGGED).then
	((res) => 
	{
		this.logged_in = true;
		this.update();
        $('#modal-login').modal('hide');
        window.location.replace("/#/account/dashboard");
	},
	(err) => 
	{
		console.log(err);
        $("#errorLog").show();
	});
}
	   
// --- Register Submit --- //   
	   
submit2(e)
{
	e.preventDefault();
	
	var FNAME = this.refs.firstname.value,
		LNAME = this.refs.lastname.value,
		EMAIL = this.refs.email.value,
		USERNAME = this.refs.username.value,
		PASSWORD = this.refs.password.value,
		KSUSER = this.refs.kickstarter_user.value,
		IGUSER = this.refs.indiegogo_user.value;
        this.refs.modalform.reset();
	
	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
	((res) => 
	{
		$('#modal-login').modal('hide');
        this.refs.modalform.reset();
        $('#modal-submission').modal('show');
	},
	(err) => 
	{
		console.log(err);
	});
}    
</script>
</home-modal-login>