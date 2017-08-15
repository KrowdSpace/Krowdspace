<dashboard-image-project>
   <div id="indiegogo-image" class="modal container fade">
      <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
         <div id="modal" class="no-gutter">
            <form role="form" onsubmit={ imageRefresh }>
                <div class="modal-box modal-max-box">
                    <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                    <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                </button>
                    <p class="modal-heading">Indiegogo Image</p>
                    <p class="text-left edit-text-title">Krowdspace is using your main project image from Indiegogo. To have the best user experience at Krowdspace please upload a video image overlay to your Indiegogo Project page. This will fix most of the black padding you see on either side of the current image.</p>
                    <p class="text-left edit-text-title">After the image has been uploaded to Indiegogo please press the refresh image button. This is an optional feature but we recommend adding an overlay image if you decide to purchase any of our featured areas.   </p>
                </div>
            <div class="text-center modal-max-box">
                <input class="landing-submit" type="submit" name="submit"  value="Refresh Image">
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
      
       });
       
       imageRefresh(e) 
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
</dashboard-image-project>