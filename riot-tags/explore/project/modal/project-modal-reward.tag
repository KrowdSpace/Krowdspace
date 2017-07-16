<project-modal-reward>
   <div id="kickstarter-reward" class="modal container fade">
      <div class="krowdspace-modal col-lg-offset-3 col-md-6">
         <div id="modal">
            <div class="modal-body">
                <div class="col-sm-12 edit-user-box">
                     <p class="modal-heading">Support Project</p>
                     <p class="registration-text text-left coupon-code-box">To support this project and receive the posted reward make sure to send the below COUPON CODE after completing your pledge. All project owners have agreed to fulfill any and all rewards posted on their project page.</p>
                    <div class="couponcode-box text-center">
                        <p class="couponcode">{ couponCode }</p>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="text-center">
                    <a href="{ projectLink }" target="_blank">
                    <p class="landing-submit alt-border">SUPPORT PROJECT</p>
                    </a>
                </div>
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