<dashboard-explore-purchase>
    <div id="purchase-explore" class="modal container fade">
        <div class="krowdspace-modal col-lg-offset-2 col-md-8">
            <div id="modal">
                <div class="modal-body modal-purchase no-gutter">
                    <div class="col-sm-7 purchase-container-left">
                        <p class="modal-heading">EXPLORE PAGE BANNER</p>
                        <p class="modal-purchase-text text-left">Your project will be listed on our Explore Page with a featured project icon. Having your project featured means it will get priority filtering and have increased viewership. For a limited time we are offering this as a free service while we work through our initial launch! Please click the Upgrade button below to add this feature.</p>
                    </div>
                    <div class="col-sm-5 purchase-container-right">
                      
                            <img class="img-responsive" src="/img/content/explore-purchase.jpg"/>
                        
                        <div class="purchase-price-box no-gutter">
                            <div class="col-sm-6 text-center divider-inside-right">
                                <p class="purchase-text">EXPLORE BANNER</p>
                            </div>
                            <div class="col-sm-6 text-center">
                                <p class="purchase-text-right">FREE</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div>
                            <form id="purchaseExplore" role="form" onsubmit={ submitExplore }>
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
    
    submitExplore(e) 
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
                        explore : true,
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
</dashboard-explore-purchase>