<project-modal-reward>
    <div id="kickstarter-reward" class="modal container fade">
    <div class="krowdspace-modal col-sm-6 col-sm-offset-3">
        <div id="modal" class="modal-content">
            <div class="modal-header">
                <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button>
                <p class="modal-heading">Support Project</p>
            </div>
            <div class="modal-body">
                <p class="registration-text text-left">To support this project and receive the posted reward make sure to send the below COUPON CODE after completing your pledge. All project owners have agreed to fulfill any and all rewards posted on their project page.</p>
                <div class="couponcode-box text-center">
                    <p class="couponcode">{ couponCode }</p>
                </div>
                <div class="text-center">
                    <a href="{ projectLink }" target="_blank">
                    <p class="back-project">SUPPORT PROJECT</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="background-modal-close" data-dismiss="modal"> </div>
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