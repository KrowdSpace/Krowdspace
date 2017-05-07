<modal-login>
    <div class="krowdspace-modal modal fade" id="modal-login" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
				<div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="col-md-5 col-md-offset-0 col-sm-7 col-sm-offset-2 shadow user-modal">
                                <div class="text-left modal-container">
                                    <p class="modal-heading">Krowdspace Login</p>
                                </div>
                                <div id="errorLog" class="alert alert-danger alert-dismissable fade in" style="display:none;">
                                    <a href="#" class="close" onclick="$('.alert').hide()">&times;</a>
                                    <strong>Error:</strong> Invalid username or password.
                                </div>
                                <form id="CustomerLoginForm" class="form-vertical no-gutter" onsubmit={ loginSubmit }>
                                    <div>
                                        <input type="text" class="form-control placeholder-color" placeholder="Username or Email Address" id="LOGINUSER" autocorrect="off" autocapitalize="off">
                                    </div>
                                    <div class="col-xs-8 form-group">
                                        <input type="password" class="form-control placeholder-color" placeholder="Password" value="" id="LOGINPASSWORD">
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
                            </div>
                            <div class="col-md-1 clearfix hidden-sm"></div>
                            <div class="col-lg-5 col-md-6 shadow user-modal hidden-sm hidden-xs">
                                <div class="text-left register-title">
                                    <p class="modal-heading">Krowdspace Register</p>
                                </div>
                                <p class="register-text text-left">If you have not signed up with Krowdspace please fill out the below form. You will need to sign up with Krowdspace before you can submit or view any projects.</p>
                                <form class="form-vertical" id="commentForm" onsubmit={ submit22 }>
                                    <div class="form-group form-split-right">
                                        <input type="text" name="FNAME2" id="FNAME2" class="form-control placeholder-color" placeholder="First Name" required="required" aria-required="true" aria-invalid="true">
                                    </div>
                                    <div class="form-group form-split-left">
                                        <input type="text" name="LNAME2" id="LNAME2" class="form-control placeholder-color" placeholder="Last Name" required="required" aria-required="true" aria-invalid="true">
                                    </div>
                                    <div class="form-group">
                                        <input type="email" name="EMAIL2" id="EMAIL2" class="form-control placeholder-color" placeholder="Email Address" required="required" aria-required="true" aria-invalid="true">
                                    </div>
                                    <div class="form-group">
                                        <input type="username" name="USERNAME2" id="USERNAME2" class="form-control placeholder-color" placeholder="Username" required="required" aria-required="true" aria-invalid="true">
                                    </div>
                                    <div class="input-group">
                                        <input type="password" placeholder="New Password" id="PASSWORD2" class="masked form-control placeholder-color" name="PASSWORD2" required="required">
                                        <div class="input-group-btn">
                                            <button type="button" id="eye2" class="btn btn-default">
                                            <i class="glyphicon glyphicon-eye-open"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="KSUSER2" id="KSUSER2" class="form-control placeholder-color" placeholder="Kickstarter Username (Optional)">
                                    </div>
                                    <div class="form-group">
                                        <input type="text" name="IGUSER2" id="IGUSER2" class="form-control placeholder-color" placeholder="Indiegogo Username (Optional)">
                                    </div>
                                    <div class="check-terms checkbox text-left">
                                        <label>
                                        <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link">Krowdspace terms</a>
                                        </label>
                                    </div>
                                    <div class="register-button-box">
                                        <input type="submit" class="button-login" name="submit" value="Register">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        loginSubmit(e){
        e.preventDefault();
        var errorMessage = $("#errorLog");
        var USERNAME = $("#LOGINUSER").val(),
        PASSWORD = $("#LOGINPASSWORD").val(),
        STAYLOGGED = document.getElementById("checkbox").checked;// andre just added this. The old way was keeping it true.
            console.log(USERNAME);
            console.log(PASSWORD);
        console.log(STAYLOGGED); 
        krowdspace.users.login(USERNAME, PASSWORD, STAYLOGGED, (res) => {
            if(!res.success){
        document.getElementById('errorLog').style.display = 'block';
            }else{
                 window.location.replace("/account/dashboard.html");  
                }
            });
        };
    </script>
    <script>
        this.on('mount', function() {
              function show() {
        var p = document.getElementById('PASSWORD2');
        p.setAttribute('type', 'text');
        }
        function hide() {
        var p = document.getElementById('PASSWORD2');
        p.setAttribute('type', 'password');
        }
        var pwShown = 0;
        document.getElementById("eye2").addEventListener("click", function () {
        if (pwShown == 0) {
            pwShown = 1;
            show();
        } else {
            pwShown = 0;
            hide();
        }
        }, false);
            });
    </script>
	<script>
			this.on('mount', function() {
        var url = window.location.href;
        if (url.indexOf('?login=1') != -1) {
            $('#modal-login').modal('show');
            $('#modal-login').fadeIn();
        }
    });
	</script>
</modal-login>