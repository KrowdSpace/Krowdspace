<ks-login>
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
                        <div class="col-md-5 col-centered shadow user-modal">
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
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</ks-login>