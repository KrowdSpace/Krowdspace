<dashboard-delete-project>
   <div id="delete-project" class="modal container fade">
      <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
         <div id="modal" class="no-gutter">
            <form role="form" onsubmit={ deleteProject }>
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

          deleteProject(e) 
            {
            
                e.preventDefault();
            
                krowdspace.projects.delete(this.projectID).then
                ((res) => 
                {
                    $('#delete-project').modal('hide');
                    window.location.reload();
                },
                (err) => 
                {
                    console.log(err);
                });
            }

      });
      
   </script>
</dashboard-delete-project>