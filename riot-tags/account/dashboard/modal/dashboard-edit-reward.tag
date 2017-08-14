<dashboard-edit-reward>
   <div id="edit-reward" class="modal container fade">
      <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
         <div id="modal" class="no-gutter">
               <form id="rewardUpgrade" role="form" onsubmit={ submitReward }>
                  <div class="modal-box modal-max-box-alt">
                      <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                    </button>
                     <p class="modal-heading">Edit Reward Information</p>
                     <p class="text-left edit-text-title">Updating your project reward information will remove your project from our Explore Page and it can take up to 24 hours to be verified and republished.</p>
                     <div class="form-group">
                        <p class="text-left edit-text-title">Please provide an exclusive reward for our Krowdspace users.</p>
                        <input ref="rewardtext" class="form-control placeholder-color" value="{ rewardtext || '' }" name="reward" required maxlength=110>
                     </div>
                    <div show={ indiegogoReward } class="form-group">
                        <p class="text-left edit-text-title">Modify your Indiegogo Secret Perk URL.</p>
                        <input ref="indiegogoPerk" class="form-control placeholder-color" value="{ indiegogoPerk || '' }" name="perk" required>
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
                        <input ref="rewardvalue" type="number" class="form-control placeholder-color" name="rewardAmount" value="{ rewardvalue || '' }" required>
                     </div>
                  </div>
                  <div class="text-center modal-max-box-alt">
                     <input class="landing-submit" type="submit" name="submit"  value="Update">
                  </div>
               </form>
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

          if(res.data[0].project_data.info_data.ig_reward == 'Not Valid'){
            indiegogoReward = false;
            this.indiegogoPerk = 'Not Valid';
          }else{
            indiegogoReward = true;
            this.indiegogoPerk = res.data[0].project_data.info_data.ig_reward;
          }
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
          let project = pRes.data[0].unique_id,
              projectData = 
              {
                  project_data: 
                  {
                     info_data: 
                      {
                          reward: this.refs.rewardtext.value,
                          reward_ammount: this.refs.rewardvalue.value,
                          reward_value: this.refs.rewardoption.value,
                          ig_reward: this.refs.indiegogoPerk.value,
                          rewardValid : 0,
                      },
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