<dashboard-landing-purchase>
    <div id="purchase-landing" class="modal container fade">
        <div class="krowdspace-modal col-lg-offset-2 col-md-8">
            <div id="modal">
                <div class="modal-body modal-purchase no-gutter">
                    <div class="col-sm-7 purchase-container-left">
                        <p class="modal-heading">LANDING PAGE BANNER</p>
                        <p class="modal-purchase-text text-left">Your project will be listed on our Explore Page with a featured project icon. Having your project featured means it will get priority filtering and have increased viewership. For a limited time we are offering this as a free service while we work through our initial launch! Please click the Upgrade button below to add this feature.</p>
                    </div>
                    <div class="col-sm-5 purchase-container-right">
                        <div class="img-purchase-box">
                            <img class="img-responsive" src="/img/content/landing-purchase.jpg"/>
                        </div>
                        <div class="col-sm-6 text-center divider-inside-right" style="padding: 0px;">
                            <p class="purchase-text">LANDING BANNER</p>
                        </div>
                        <div class="col-sm-6 text-center">
                            <p class="purchase-text-right">FREE</p>
                        </div>
                        <div class="clearfix"></div>
                        <div>
                            <form id="purchaseLanding" class="submit-purchase" role="form" onsubmit={ submitLanding }>
                                <div class="text-center">
                                    <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit"  value="Upgrade" class="btn-register">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
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
    
    submitLanding(e) 
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
                        landing : true,
                    }
                }
        };

        this.setProjDeets(project, projectData);
    }
    
    setProjDeets(project, projectData)
    {
        krowdspace.projects.set_project(project, projectData).then((res)=>
        {
            window.location.reload();
        });
    }
</script>
</dashboard-landing-purchase>