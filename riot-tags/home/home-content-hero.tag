<home-content-hero>
    <header alt="Back the project, not the platform. Launch your project with Krowdspace today!">
        <div class="container-header">
            <div class="row">
                <div class="col-lg-8 col-md-12 header-left text-left">
                    <h1 class="header-title hidden-xs">Back the Project, not the Platform</h1>
                    <div class="container-top-header">
                        <p>At Krowdspace, our goal is to unify the crowdfunding community. Whether you’re a project owner building momentum for your campaign, or a backer looking to support the next big idea, Krowdspace offers a platform to discover the latest projects from top crowdfunding sites all in one place.</p>
                        <p style="margin-bottom: 40px;">Krowdspace members will receive exclusive rewards for backing projects and project owners gain access to our easy to use promotional tools to take their campaigns to the next level.</p>
                        <a href="#modal-global-login" data-toggle="modal" class="btn-landing shadow">Submit a Project</a>
                    </div>
                </div>
                <div class="col-lg-4 header-right hidden-md hidden-sm hidden-xs">
                    <div class="shadow">
                        <form ref="registerform" onsubmit={ submit }>
                            <div class="col-sm-12 register-container text-left">
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
                                    <input type="username" ref="username" class="form-control" placeholder="Username" required="required" aria-required="true" aria-invalid="true">
                                </div>
                                <div class="input-group">
                                    <input type="password" ref="password" placeholder="New Password" id="PASSWORD" class="masked form-control" required="required">
                                    <div class="input-group-btn">
                                        <button type="button" id="eye" class="btn btn-default">
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
                                <input type="submit" class="landing-submit" name="submit" value="Join Krowdspace">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <script>
        // --- Register Submit --- //
        		
        submit(e)
        {
        	e.preventDefault();
        	
        	var FNAME = this.refs.firstname.value,
        		LNAME = this.refs.lastname.value,
        		EMAIL = this.refs.email.value,
        	    USERNAME = this.refs.username.value,
        	    PASSWORD = this.refs.password.value,
        		KSUSER = this.refs.kickstarter.value,
        	    IGUSER = this.refs.indiegogo.value;
        	
        	krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then
        	((res) => 
        	{
        
                $('#modal-submission').modal('show');
                this.refs.registerform.reset();
        	},
        	(err) => 
        	{
        		console.log(err);
        	});
        }    
        		
        // --- Show and Hide Password --- //		
        
        this.on('mount', function() 
        {
        	function show() 
        	{
        		var pass = document.getElementById('PASSWORD');
        		pass.setAttribute('type', 'text');
        	}
        	function hide() 
        	{
        		var pass = document.getElementById('PASSWORD');
        		pass.setAttribute('type', 'password');
        	}
        	
        	var pwShown = 0;
        	
        	document.getElementById("eye").addEventListener("click", function () 
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
    </script>
</home-content-hero>