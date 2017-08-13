<dashboard-delete-project>
   <div id="delete-project" class="modal container fade">
      <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
         <div id="modal" class="no-gutter">
            <form role="form" onsubmit={ submitReward }>
                <div class="modal-box modal-max-box-alt">
                    <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                    <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                </button>
                    <p class="modal-heading">Remove Project</p>
                    <p class="text-left edit-text-title">Are you sure that you want to delete your crowdfunding project from Krowdspace? If you delete this project from Krowdspace you will lose all information and features associated with the project <span class="project-id">{ projectID }</span>.</p>
                    <p class="text-left edit-text-title">Your project "{ projectTitle }: { projectDescription }" will be deleted from Krowdspace.</p>
                </div>
                <div class="text-center modal-max-box-alt">
                    <input class="landing-submit" type="submit" name="submit"  value="Delete">
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
          this.projectID = res.data[0].unique_id;
          this.projectTitle = res.data[0].project_data.meta_data.title;
          this.projectDescription = res.data[0].project_data.meta_data.description;

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
</dashboard-delete-project>