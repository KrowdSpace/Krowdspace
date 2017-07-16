<dashboard-edit-reward>
   <div id="edit-reward" class="modal container fade">
      <div class="krowdspace-modal col-lg-offset-3 col-md-6">
         <div id="modal">
            <div class="modal-body no-gutter">
               <form id="rewardUpgrade" role="form" onsubmit={ submitReward }>
                  <div class="col-sm-12 edit-user-box">
                     <p class="modal-heading">Edit Reward Information</p>
                     <p class="text-left edit-text-title" style="margin-top: 15px;">Updating your project reward will reset your project and it can take up to 24 hours to verify and publish on our Explore Page. If you wish to not edit your reward please close the popup window. </p>
                     <div class="form-group">
                        <p class="text-left edit-text-title">Please provide an exclusive reward for our Krowdspace users.</p>
                        <input ref="rewardtext" class="form-control placeholder-color" value="{ rewardtext }" name="reward" aria-required="true" aria-invalid="true">
                     </div>
                     <div class="form-group">
                        <p class="text-left edit-text-title">Does your reward have a value or is it a discount?</p>
                        <select ref="rewardoption" class="form-control" name="rewardOption">
                           <option disabled selected value>Choose an Option</option>
                           <option value="Yes">Reward has a Value</option>
                           <option value="No">Reward is a Discount</option>
                        </select>
                     </div>
                     <div class="form-group">
                        <p class="text-left edit-text-title">Please estimate the value of your reward.</p>
                        <input ref="rewardvalue" class="form-control placeholder-color" name="rewardAmount" value="{ rewardvalue }" aria-required="true" aria-invalid="true">
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
      this.on('update', ()=>
      {
          if(!opts.project)
              return;
      
          let res = {data: [opts.project]};
      
          this.rewardtext = res.data[0].project_data.info_data.reward;
          this.rewardvalue = res.data[0].project_data.info_data['reward_ammount'];
      });
      
      submitReward(e) 
      {
          e.preventDefault();
      
          if(!opts.project)
              return;
      
          let userRes = {data: opts.user}
              projRes = {data: [opts.project]};
      
          this.setUserDeets(userRes, projRes);
      
      }; 
      
      setUserDeets(res, pRes)
      {
          let project = pRes.data[0].name,
              projectData = 
              {
                  project_data: 
                  {
                     info_data: 
                      {
                          reward: this.refs.rewardtext.value,
                          reward_ammount: this.refs.rewardvalue.value,
                          reward_value: this.refs.rewardoption.value,
                      },
                      meta_data: 
                      {
                          reward_check : false,
                      }
                  }
          };
      
          this.setProjDeets(project, projectData);
      }
      
      setProjDeets(project, projectData)
      {
          krowdspace.projects.set_project(project, projectData).then((res)=>
          {
              window.location.reload();
          });
      }
   </script>
</dashboard-edit-reward>