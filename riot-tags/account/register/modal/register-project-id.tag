<register-project-id>
   <div id="modal-register-id" class="modal container fade">
      <div class="krowdspace-modal-custom col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8" style="padding: 0px;">
         <div id="modal">
            <div class="modal-box">
                <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                </button>
                <p class="modal-heading">Indiegogo Project ID</p>
                <p class="modal-purchase-text text-left" >We will need your project ID which consists of a 7 digit number located on the project url. Please refer to this <a class="home-links" href="https://support.indiegogo.com/hc/en-us/articles/207276657-How-to-Find-Customize-your-Indiegogo-URL" target="_blank">Indiegogo Help Page</a> for exact locations within your account.</p>
                <p class="modal-purchase-text text-left" >Another easy way to retrieve your project ID is to go to your live crowdfunding page and click on the "Share Twitter" button located next to the "Back It" button.</p>
                
                <img class="img-responsive register-img" src="/img/content/indiegogo-help-1.jpg">
                <p class="modal-purchase-text text-left" >Inside the share message there is a project url with the project ID. Take the project ID number and put it into the Krowdspace register form. An example of the project ID number location is below.</p>
                <img class="img-responsive register-img" src="/img/content/indiegogo-help-2.jpg">
                <p class="modal-purchase-text text-left" >If you have any questions please contact Krowdspace on social media or through our <a onclick= { projectComment } class="home-links">contact form</a>.</p>
            </div>
         </div>
      </div>
   </div>
<script>
    projectComment() 
    {
        $('#modal-register-id').modal('hide');
        $('#modal-global-contact').modal('show');
    }
</script>
</register-project-id>