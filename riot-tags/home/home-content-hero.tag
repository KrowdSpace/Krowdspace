<home-content-hero>
    <header alt="Back the project, not the platform. Launch your project with Krowdspace today!">
        <div class="container-header">
            <div class="row">
                <div class="col-lg-8 col-md-12 header-left text-left">
                    <h1 class="home-padding home-text hidden-xs">Back the Project, not the Platform</h1>
                    <div class="container-top-header">
                        <p class="home-text">At Krowdspace, our goal is to unify the crowdfunding community. Whether you’re a project owner building momentum for your campaign, or a backer looking to support the next big idea, Krowdspace offers a platform to discover the latest projects from top crowdfunding sites all in one place.</p>
                        <p class="home-padding home-text">Krowdspace members will receive exclusive rewards for backing projects and project owners gain access to our easy to use promotional tools to take their campaigns to the next level.</p>
                        <a href="/#/account/register" data-toggle="modal">
                            <p class="btn-landing shadow">Submit a Project</p>
                        </a>
                    </div>
                </div>
                <div class="col-lg-4 header-right hidden-md hidden-sm hidden-xs">
                    <div class="shadow">
                        <form ref="registerform" onsubmit={ submit }>
                            <div class="col-sm-12 register-container text-left">
                                <p class="text-left cta-header">Discover extra rewards for projects you love or submit your own crowdfunding project!</p>
                                <div class="form-group form-split-right">
                                    <input type="text" ref="firstname" class="form-control" placeholder="First Name" required>
                                </div>
                                <div class="form-group form-split-left">
                                    <input type="text" ref="lastname" class="form-control" placeholder="Last Name" required>
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" ref="email" class="form-control" placeholder="Email Address" required>
                                </div>
                                <div class="form-group">
                                    <input type="text" ref="username" class="form-control" placeholder="Username" required="required" minlength="5">
                                </div>
                                <div class="input-group">
                                    <input type="password" ref="password" placeholder="New Password" id="PASSWORD" class="masked form-control" required="required" minlength="5">
                                    <div class="input-group-btn">
                                        <button type="button" id="eye" class="btn btn-eye">
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
                                        <input class="check-box" type="checkbox" required minlength="1"/>I agree to <a href="#modal-service-terms" data-toggle="modal" class="home-links">Krowdspace terms</a>
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
        submit(e)
        {
        	e.preventDefault();
        	
        	let FNAME = this.refs.firstname.value,
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
        		
        	});
        }    
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