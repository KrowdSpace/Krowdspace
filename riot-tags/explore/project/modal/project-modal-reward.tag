<project-modal-reward>
   <div id="kickstarter-reward" class="modal container fade padding-reset">
      <div class="krowdspace-modal col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
         <div id="modal">
            <div class="modal-box modal-max-box">
                <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                    <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                </button>
                    <p class="modal-heading">Support Project</p>
                    <p class="text-left legal-text">To support this project and receive the posted reward make sure to send the below COUPON CODE after completing your pledge. All project owners have agreed to fulfill any and all rewards posted on their project page.</p>
                <div class="coupon-code-box text-center">
                    <p class="coupon-code">{ couponCode }</p>
                </div> 
            </div>
            <div class="text-center modal-max-box">
                <a href="{ projectLink }" target="_blank">
                <p class="landing-submit alt-border">SUPPORT PROJECT</p>
                </a>
            </div>
         </div>
      </div>
   </div>
<script>
krowdspace.projects.project(this.opts.uri).then((res)=>
    {
        this.couponCode = res.data[0].coupon_code;
        this.projectLink = res.data[0].project_data.info_data.url;
        this.update();
    },
    (err)=> 
    {

    });
</script>
</project-modal-reward>