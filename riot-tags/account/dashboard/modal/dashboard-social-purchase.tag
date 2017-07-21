<dashboard-social-purchase>
    <style>
        @media screen and (max-width: 767px) {
        .purchase-container-left {
        border-right:2px solid #fed136;
        }
        }
    </style>
    <div id="purchase-social" class="modal container fade">
        <div class="krowdspace-modal-custom col-lg-offset-2 col-lg-8 col-md-offset-0 col-md-12">
            <div id="modal">
                <div class="modal-purchase no-gutter" style="max-width: 695px; margin: 0 auto;">
                    <div class="col-sm-7 purchase-container-left">
                        <button type="button" class="close btn-modal hidden-lg hidden-md hidden-sm" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i>
                        </button>
                        <p class="modal-heading">SOCIAL MEDIA POSTS</p>
                        <p class="modal-purchase-text text-left">Your project will be listed on our Explore Page with a featured project icon. Having your project featured means it will get priority filtering and have increased viewership. For a limited time we are offering this as a free service while we work through our initial launch! Please click the Upgrade button below to add this feature.</p>
                        <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center divider-inside-right">
                            <p class="purchase-text">SOCIAL POSTS</p>
                        </div>
                        <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center">
                            <p class="purchase-text-right">FREE</p>
                        </div>
                    </div>
                    <div class="col-sm-5 hidden-xs purchase-container-right">
                        <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i>
                        </button>
                        <img class="img-responsive" src="/img/content/social-purchase.jpg"/>
                        <div class="purchase-price-box no-gutter">
                            <div class="col-sm-6 text-center divider-inside-right">
                                <p class="purchase-text">SOCIAL POSTS</p>
                            </div>
                            <div class="col-sm-6 text-center">
                                <p class="purchase-text-right">FREE</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div>
                            <form id="purchaseFeature"  role="form" onsubmit={ submitSocial }>
                                <div class="text-center">
                                    <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit"  value="Upgrade" class="btn-register">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="hidden-lg hidden-md hidden-sm" style="max-width: 695px; margin: 0 auto;">
                    <form id="purchaseFeature" role="form" onsubmit={ submitSocial }>
                        <div class="text-center">
                            <input class="landing-submit alt-border" style="border-bottom: none;" type="submit" name="submit"  value="Upgrade" class="btn-register">
                        </div>
                    </form>
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
         
         submitSocial(e) 
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
                             social : true,
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
</dashboard-social-purchase>