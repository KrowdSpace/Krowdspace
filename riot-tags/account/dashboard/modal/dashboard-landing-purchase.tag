<dashboard-landing-purchase>
    <div id="purchase-landing" class="modal container fade">
    <div class="krowdspace-modal col-sm-6 col-sm-offset-3">
        <div id="modal" class="modal-content">
            <div class="modal-header" style="padding-bottom: 0px;">
                <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button>
                <p class="modal-heading">Landing Page Banner</p>
                <p class="registration-text text-left edit-text-title" style="margin-top: 15px;">Your project will be listed on our Krowdspace Landing Page. Having your project on our rotating banner will increase viewership. For a limited time we are offering this as a free service while we work through our initial launch! Please click the Upgrade button below to add this feature.</p>
                
            </div>
            
            <div class="modal-body">
                <form id="submitReward" role="form" onsubmit={ submitLanding }>
                    <div class="text-center update-modal-btn">
                        <button id="submit" type="submit" name="submit"  class="btn-register btn-info-full next-step">Upgrade</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="background-modal-close" data-dismiss="modal"> </div>
<script>
   submitFeatured(e) 
    {
        e.preventDefault();

        if(!opts.project)
            return;

        let userRes = {data: opts.user},
            projRes = {data: [opts.project]};

        setUserDeets(userRes, projRes);

    }; 

    setUserDeets(res, pRes)
    {
        let project = res.data.username,
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

        setProjDeets(pRes);
    }
    
    setProjDeets(res)
    {
        krowdspace.projects.set_project(project, projectData).then((res)=>
        {
                window.location.reload();
        });
    }
</script>
</dashboard-landing-purchase>