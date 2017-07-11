<admin-page>
      <div class="krowdspace-modal col-lg-offset-3 col-lg-6 col-md-6 hidden-sm hidden-xs">
         <div class="modal-content">
            <div class="modal-header">
               <p class="modal-heading">Krowdspace Register</p>
            </div>
            <div class="modal-body" style="padding-top: 0px;">
               <p class="register-text text-left">If you have not signed up with Krowdspace please fill out the below form. You will need to sign up with Krowdspace before you can submit or view any projects.</p>
               <form class="form-vertical" id="commentForm" onsubmit={ submit }>
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
                        <button type="button" id="eye2" class="btn btn-eye">
                        <i class="fa fa-eye fa-lg"></i>
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
                     <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link">Krowdspace terms</a>
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
</admin-page>