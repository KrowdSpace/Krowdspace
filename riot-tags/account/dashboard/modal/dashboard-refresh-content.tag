<dashboard-refresh-content>
   <div id="refresh-content" class="modal container fade">
      <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8" style="padding: 0px;">
         <div id="modal">
               <form id="submitRefresh" role="form" onsubmit={ submitRefresh }>
                  <div class="edit-user-box modal-max-login" style="position: relative;">
                     <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i>
                     </button>
                     <p class="modal-heading">Refresh Project Content</p>
                     <p class="modal-purchase-text text-left edit-text-title" style="margin-top: 15px;">To refresh your project content please click the update button below. This will refresh any content changes as well as your project metric data.</p>
                     <p class="modal-purchase-text">If you would like to set this feature to auto update every 24 hours please check the box below and then press the update button</p>
                     <div class="check-terms checkbox">
                        <label>
                        <input type="checkbox" id="terms" ref="checkbox"/><span class="modal-purchase-text">Refresh Automatically Every 24 Hours</span>
                        </label>
                     </div>
                  </div>
                  <div class="text-center modal-max-login">
                     <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit"  value="Update" class="btn-register">
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
      
           this.refreshContent = res.data[0].project_data.meta_data.refresh;
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
           let project = pRes.data[0].name,
               projectData = 
               {
                   project_data: 
                   {
                       meta_data: 
                       {
                           refresh : this.refs.checkbox.checked,
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