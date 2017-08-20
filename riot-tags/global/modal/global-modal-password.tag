<global-modal-password>
   <div id="modal-password" class="modal container fade">
      <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
         <div id="modal">
            <div class="modal-body modal-custom">
                <form ref="passwordform" onSubmit={ forgotPassword }>
                    <div class="text-left modal-box-alt modal-max-box">
                    <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                    </button>
                    <p class="modal-heading modal-heading-alt">Forgot your Password?</p>
                    <p class="text-left landing-text" >Please enter your email address and we will send you instructions on how to reset your password.</p>
                    <div class="has-feedback email-box">
                        <label class="control-label" for="username"></label>
                        <input type="text" ref="krowdspaceEmail" class="form-control box-radius" id="email" placeholder="Email Address" ref="usernamelogin" autocorrect="off" autocapitalize="off">
                        <span class="fa fa-envelope form-control-feedback"></span>
                    </div>
                    </div>
                  <div class="text-center modal-max-box">
                    <input type="submit" class="landing-submit" name="submit" value="Send Email">
                </div>
               </form>
            </div>
         </div>
      </div>
   </div>
<script>
    forgotPassword(e) 
        {
        
        	e.preventDefault();
        
        	let EMAIL = this.refs.krowdspaceEmail.value;
        
        	krowdspace.register.request_reset_password(EMAIL).then
        	((res) => 
        	{
                $('#modal-password').modal('hide');
                this.refs.passwordform.reset();
        	},
        	(err) => 
        	{
        		console.log(err);
        	});
        }
</script>
</global-modal-password>