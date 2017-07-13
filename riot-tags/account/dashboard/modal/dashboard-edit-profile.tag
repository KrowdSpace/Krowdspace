<dashboard-edit-profile>
   <div id="edit-profile" class="modal container fade">
      <div class="krowdspace-modal col-lg-offset-3 col-md-6">
         <div id="modal">
            <div class="modal-body no-gutter">
               <form role="form" onsubmit={ submitUser }>
                  <div class="col-sm-12 edit-user-box">
                     <p class="modal-heading">Edit Profile Information</p>
                     <div class="form-group form-split-right edit-margin">
                        <p class="dashboard-text-alt text-left edit-text-title">First Name</p>
                        <input ref="firstname" value="{ firstname }" type="text" class="form-control placeholder-color" aria-required="true" aria-invalid="true">
                     </div>
                     <div class="form-group form-split-left edit-margin">
                        <p class="dashboard-text-alt text-left edit-text-title">Last Name</p>
                        <input type="text" ref="lastname" class="form-control placeholder-color" value="{ lastname }" aria-required="true" aria-invalid="true">
                     </div>
                     <div class="clearfix"></div>
                     <div class="form-group">
                        <p class="dashboard-text-alt text-left edit-text-title">Kickstarter Username</p>
                        <input ref="kickstarter" class="form-control placeholder-color" value="{ kickstarter }" aria-required="true" aria-invalid="true">
                     </div>
                     <div class="form-group">
                        <p class="dashboard-text-alt text-left edit-text-title">Indiegogo Username</p>
                        <input ref="indiegogo" class="form-control placeholder-color" value="{ indiegogo }" aria-required="true" aria-invalid="true">
                     </div>
                  </div>
                  <div class="text-center">
                     <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit"  value="Update" class="btn-register">
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
          this.kickstarter = res.data.user_data.ksuser;
          this.indiegogo = res.data.user_data.iguser;
          this.update();
          },
          (err)=> 
          {
              console.log(err);
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
                          iguser: this.refs.kickstarter.value,
                          ksuser: this.refs.indiegogo.value,
              
              };
              krowdspace.users.set_user(projectData).then((res)=>
              {
                  window.location.reload();
              },
              (err)=>
              {
                  console.log(err);
              });
          },
              (err)=> 
              {
                  console.log(err);
              }
          );
      };  
   </script>
</dashboard-edit-profile>