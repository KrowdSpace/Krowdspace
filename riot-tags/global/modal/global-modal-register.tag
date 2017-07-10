<global-modal-register>
   <div id="modal-global-register" class="modal container fade">
      <div class="krowdspace-modal col-lg-offset-3 col-lg-6 col-md-6 hidden-sm hidden-xs">
         <div id="modal">
            <div class="modal-body modal-custom">
                <form onsubmit={ submitRegister }>
                <div class="col-sm-12 text-left register-container-modal">
                   <p class="modal-heading modal-heading-alt">Krowdspace Register</p>
                    <p class="text-left landing-text" style="margin-bottom: 15px;">Discover extra rewards for projects you love or submit your own crowdfunding project!</p>
                    <div class="form-group form-split-right" style="margin-top: 0px">
                        <input type="text" ref="firstname" class="form-control" placeholder="First Name" required="required" aria-required="true" aria-invalid="true">
                    </div>
                    <div class="form-group form-split-left" style="margin-top: 0px">
                        <input type="text" ref="lastname" class="form-control" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true">
                    </div>
                    <div class="form-group">
                        <input type="email" ref="email" class="form-control" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true">
                    </div>
                    <div class="form-group">
                        <input type="username" ref="usernameform" class="form-control" placeholder="Username" required="required" aria-required="true" aria-invalid="true">
                    </div>
                    <div class="input-group">
                        <input type="password" ref="passwordform" placeholder="New Password" id="PASSWORD2" class="masked form-control" required="required">
                        <div class="input-group-btn">
                            <button type="button" id="eyeRegister" class="btn btn-default">
                            <i class="fa fa-eye fa-lg"></i>
                            </button>
                        </div>
                    </div>
                    <div class="form-group">
                        <input type="text" ref="kickstarter" class="form-control" placeholder="Kickstarter Username (Optional)">
                    </div>
                    <div class="form-group">
                        <input type="text" ref="indiegogo" class="form-control" placeholder="Indiegogo Username (Optional)">
                    </div>
                    <div class="check-terms checkbox" style="margin-top: 15px;">
                        <label>
                        <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true"/>I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link home-links">Krowdspace terms</a>
                        </label>
                    </div>
                </div>
                <div class="text-center">
                    <input type="submit" class="landing-submit alt-border" name="submit" value="Join Krowdspace">
                </div>
            </form>
         </div>
      </div>
   </div>
<script> 
this.on('mount', function() 
{
	function show() 
	{
		let pass = document.getElementById('PASSWORD2');
		pass.setAttribute('type', 'text');
	}
	function hide() 
	{
		let pass = document.getElementById('PASSWORD2');
		pass.setAttribute('type', 'password');
	}
	
	let pwShown = 0;
	
	document.getElementById("eyeRegister").addEventListener("click", function () 
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
	   
// --- Register Submit --- //   
	   
submitRegister(e)
{
	e.preventDefault();
	
	var FNAME = this.refs.firstname.value,
            LNAME = this.refs.lastname.value,
            EMAIL = this.refs.email.value,
            USERNAME = this.refs.usernameform.value,
            PASSWORD = this.refs.passwordform.value,
            KSUSER = this.refs.kickstarter.value,
            IGUSER = this.refs.indiegogo.value;
	
	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
	((res) => 
	{
                $('#modal-global-register').modal('hide');
                $('#modal-submission').modal('show');
	},
	(err) => 
	{
		console.log(err);
	});
}    
</script>
</global-modal-register>