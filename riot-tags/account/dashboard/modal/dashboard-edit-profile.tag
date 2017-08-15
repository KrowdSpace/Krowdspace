<dashboard-edit-profile>
   <div id="edit-profile" class="modal container fade">
      <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
         <div id="modal">
            <div class="no-gutter">
               <form role="form" onsubmit={ submitUser }>
                  <div class="modal-box modal-max-box">
                    <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                    </button>
                     <p class="modal-heading">Edit Profile Information</p>
                     <div class="form-group form-split-right edit-margin">
                        <p class="text-left edit-text-title">First Name</p>
                        <input ref="firstname" value="{ firstname }" type="text" class="form-control placeholder-color" required minlength=1>
                     </div>
                     <div class="form-group form-split-left edit-margin">
                        <p class="text-left edit-text-title">Last Name</p>
                        <input type="text" ref="lastname" class="form-control placeholder-color" value="{ lastname }" required minlength=1>
                     </div>
                     <div class="clearfix"></div>
                     <div class="form-group">
                        <p class="text-left edit-text-title">Kickstarter Username</p>
                        <input ref="kickstarterProfile" class="form-control placeholder-color" value="{ kickstarterProfile }" aria-required="true" aria-invalid="true">
                     </div>
                     <div class="form-group">
                        <p class="text-left edit-text-title">Indiegogo Username</p>
                        <input ref="indiegogoProfile" class="form-control placeholder-color" value="{ indiegogoProfile }" aria-required="true" aria-invalid="true">
                     </div>
                  </div>
                  <div class="text-center modal-max-box">
                     <input class="landing-submit" type="submit" name="submit"  value="Update">
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
   </div>
   <script>
      krowdspace.users.user().then((res)=>
          {
          this.firstname = res.data.user_data.fname;
          this.lastname = res.data.user_data.lname;
          this.kickstarterProfile = res.data.user_data.ksuser;
          this.indiegogoProfile = res.data.user_data.iguser;
          this.update();
          },
          (err)=> 
          {

          }
      );
      
      submitUser(e)
      {
          e.preventDefault();
          krowdspace.users.user().then((res)=>
            {
            let project = res.data.username,
                projectData = {  
                    fname: this.refs.firstname.value,
                    lname: this.refs.lastname.value,
                    iguser: this.refs.kickstarterProfile.value,
                    ksuser: this.refs.indiegogoProfile.value,
                
                };
                krowdspace.users.set_user(projectData).then((res)=>
                {
                    window.location.reload();
                },
                (err)=>
                {
            
                });
            },
            (err)=> 
            {
        
            }
        );
      };  
   </script>
</dashboard-edit-profile>