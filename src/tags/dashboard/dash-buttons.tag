<dash-buttons class="dash-button-box-inner">
  <a data-toggle="modal" data-target="#Reward">
    <button class="btn btn-primary dash-buttons"><i class="fa fa-lg fa-edit dash-icon" aria-hidden="true"></i>
      <span class="dash-buttons-text"> Edit Reward</span>
   </button>
  </a>
    <button show={ !ended } onclick={ submitRefresh } class="btn btn-primary dash-buttons"><i class="fa fa-lg fa-refresh dash-icon" aria-hidden="true"></i>
    <span class="dash-buttons-text"> Refresh Content</span>
 </button>
 <a href="/#/account/register">
    <button class="btn btn-primary dash-buttons"><i class="fa fa-lg fa-plus dash-icon" aria-hidden="true"></i>
  <span class="dash-buttons-text"> Add Project</span>
</button>
</a>
    <button data-toggle="modal" data-target="#Delete" class="btn btn-primary dash-buttons"><i class="fa fa-lg fa-trash dash-icon" aria-hidden="true"></i>
  <span class="dash-buttons-text"> Delete Project</span>
</button>
<script>
      this.on('update', ()=>
    {
        if(!opts.project)
        return;

        let refreshData = {data: [opts.project]};
        var endDisable = new Date(opts.project.project_data.meta_data.endTime);
        var newDate = new Date();

        if(endDisable <= newDate){
          this.ended = true;
        }else{
          this.ended = false;
        }

        this.projectIdentify = opts.project.unique_id;

        deleteProject(e)
          {

              e.preventDefault();

              krowdspace.projects.delete(this.projectIdentify).then
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
    submitRefresh(e)
       {
           e.preventDefault();

           if(!opts.project)
               return;

          let projectKey = opts.project.unique_id;

          krowdspace.projects.update_project(projectKey).then((res)=>
           {
               $('#Refresh').modal('show');
           });
       };
</script>
</dash-buttons>
<!-- Validated Content October 27th, 2017 -->
