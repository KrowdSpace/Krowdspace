<dashboard-refresh-content>
   <div id="refresh-content" class="modal container fade">
      <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
         <div id="modal">
            <form id="submitRefresh" role="form" onsubmit={ submitRefresh }>
                <div class="modal-box modal-max-box">
                    <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                    <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                    </button>
                    <p class="modal-heading">Refresh Project Content</p>
                    <p class="text-left edit-text-title">To refresh your project content please click the update button below. This will refresh any content changes as well as your project metric data.</p>
                    <p class="edit-text-title">Warning: Updating your project after it has completed on Kickstarter or Indiegogo will reset some of our Krowdspace metrics. </p>
                    <!-- <p class="modal-purchase-text">If you would like to set this feature to auto update every 24 hours please check the box below and then press the update button. </p>
                    <div class="checkbox">
                    <label>
                    <input type="checkbox" id="terms" ref="checkbox"/><span class="modal-purchase-text">Refresh Automatically Every 24 Hours</span>
                    </label>
                    </div> -->
                </div>
                <div class="text-center modal-max-box">
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
      
           this.refreshContent = res.data[0].project_data.info_data.refresh;
       });
       
       submitRefresh(e) 
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
                           refresh : true,
                       }
                   }
           };
      
           this.setProjDeets(project, projectData);
       }
       
       setProjDeets(project, projectData)
       {
           krowdspace.projects.update_project(project).then((res)=>
           {
               window.location.reload();
           });
       }
   </script>
</dashboard-refresh-content>