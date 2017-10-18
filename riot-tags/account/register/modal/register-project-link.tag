<register-project-link>
   <div id="modal-register-link" class="modal container fade">
      <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
         <div id="modal">
            <div class="modal-box">
                <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                </button>
                <p class="modal-heading">Kickstarter Project Link</p>
                <p class="modal-purchase-text text-left" >Please only provide the relative url from your Kickstarter project. The relative url is everything after www.Kickstarter.com. </p>
                <p class="modal-purchase-text text-left">An example Kickstarter Project link looks like https://www.kickstarter.com/projects/1764329921/project-title.</p>
                <p class="modal-purchase-text text-left">For this example you would need to only provide /projects/1764329921/project-title to the submission form. If you still have questions please <a onclick= { projectComment2 } class="home-links">contact us</a>.</p>
            </div>
         </div>
      </div>
   </div>
<script>
    projectComment2() 
    {
        $('#modal-register-link').modal('hide');
        $('#modal-global-contact').modal('show');
    }
</script>
</register-project-link>