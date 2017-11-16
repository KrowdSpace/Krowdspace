<delete>
    <div id="Delete" class="modal fade">
        <div class="modal-dialog" role="document">
                <div class="modal-content modal-login-height">
                    <div class="modal-header text-center">
                        <div class="modal-img-box">
                            <img alt="Krowdspace" src="/images/krowdspace-logo-white.svg" class="krowdspace-image-white" />
                        </div>
                        <h2 show={ !successDelete } class="modal-heading">Delete Project</h2>
                        <h2 show={ successDelete } class="modal-heading">Project Deleted!</h2>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <i class="fa fa-times fa-lg" aria-hidden='true'></i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <p>Are you sure that you want to delete your crowdfunding project from Krowdspace? If you delete this project from Krowdspace you will lose all information and features associated with project <span class="uppercase">{ projectIdentify }</span>.</p>
                        <p>{ projectTitle }: { projectDescription }</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary login-btn" onclick={ deleteProject }>Delete Project</button>
                    </div>
                </div>
        </div>
    </div>
    <script>
      this.on('update', ()=>
    {
        if(!opts.project)
        return;
        this.projectIdentify = opts.project.unique_id;
        this.projectTitle = opts.project.project_data.meta_data.title;
        this.projectDescription = opts.project.project_data.meta_data.description;

        deleteProject(e)
          {

              e.preventDefault();

              krowdspace.projects.delete(this.projectIdentify).then
              ((res) =>
              {
                this.successDelete = true;
                this.update();
                setTimeout(function(){ window.location.reload(); }, 500);


              },
              (err) =>
              {
                  console.log(err);
              });
          }

    });
</script>
</delete>
<!-- Validated Content October 27th, 2017 -->
