<global-modal-marketing>
   <div id="modal-global-marketing" class="modal padding-reset container">
      <div class="krowdspace-modal col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
         <div id="modal">
            <div class="marketing-modal">
                <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                    <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                </button>
                <img class="img-responsive" src="img/social-content/krowdspace-marketing.jpg"/>
                <div class="col-sm-12 text-left market-container-modal">
                    <p class="cta-header">If you have ever backed a crowdfunding project on Kickstarter or Indiegogo then you have to check out Krowdspace.com! If you dont, you will be missing out on free secret perks and extra rewards associated with every campaign.</p>
                    <p class="cta-header">Project owners from Indeigogo and Kickstarter submit their projects to Krowdspace with exclusive rewards to gain a larger community. Members on Krowdspace will then have access to these secret rewards and perks and receive them upon backing the campaign. Check to see if the project you want to support has already submitted to Krowdspace. It is that simple and 100% free.</p> 
                    <p class="cta-header">You can register by using the form below!</p>
                </div>
                <form onsubmit={ submitRegister }>
                <div class="col-sm-12 text-left market-container-modal">
                   <p class="modal-heading modal-heading-alt">Krowdspace Register</p>
                    <p class="text-left cta-header">Discover extra rewards for projects you love or submit your own crowdfunding project!</p>
                    <div class="form-group form-split-right">
                        <input type="text" ref="firstname" class="form-control" placeholder="First Name" required="required">
                    </div>
                    <div class="form-group form-split-left">
                        <input type="text" ref="lastname" class="form-control" placeholder="Last Name" required="required">
                    </div>
                    <div class="form-group">
                        <input type="email" ref="email" class="form-control" placeholder="Email Address" required="required">
                    </div>
                    <div class="form-group">
                        <input type="text" ref="usernameform" class="form-control" placeholder="Username" required="required" minlength="5">
                    </div>
                    <div class="input-group">
                        <input type="password" ref="passwordform" placeholder="New Password" id="PASSWORD2" class="masked form-control" required="required" minlength="5">
                        <div class="input-group-btn">
                            <button type="button" id="eyeRegister" class="btn btn-eye">
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
                    <div class="login-box">
                        <label>
                            <input class="check-box" type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true"/>I agree to <a onclick={ krowdspaceTerms } class="modal-link home-links"><span>Krowdspace Terms</span></a>
                        </label>
                    </div>
                </div>
                <div class="text-center">
                    <input type="submit" class="landing-submit" name="submit" value="Join Krowdspace">
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
krowdspaceTerms()
{
    $("#modal-global-marketing").modal('hide');
    $("#modal-service-terms").modal('show');
}   
// --- Register Submit --- //   
	   
submitRegister(e)
{
	e.preventDefault();
	
	let FNAME = this.refs.firstname.value,
            LNAME = this.refs.lastname.value,
            EMAIL = this.refs.email.value,
            USERNAME = this.refs.usernameform.value,
            PASSWORD = this.refs.passwordform.value,
            KSUSER = this.refs.kickstarter.value,
            IGUSER = this.refs.indiegogo.value;
	
	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
	((res) => 
	{
                $('#modal-global-marketing').modal('hide');
                $('#modal-submission').modal('show');
	},
	(err) => 
	{
		console.log(err);
	});
}    
</script>
    <script>
        this.on('mount', function() 
        {
            var url = window.location.href;
            if (url.indexOf('?facebook=1') != -1) 
            {
                $("#modal-global-marketing").modal('show');
            };
        });
    </script>
</global-modal-marketing>