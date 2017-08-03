<dashboard-explore-purchase>
    <div id="purchase-explore" class="modal container fade">
        <div class="krowdspace-modal-custom col-lg-offset-2 col-lg-8 col-md-offset-0 col-md-12">
            <div id="modal">
                <div class="modal-purchase no-gutter" style="max-width: 695px; margin: 0 auto;">
                    <div class="col-sm-7 no-gutter purchase-container-left">
                        <button type="button" class="close btn-modal hidden-lg hidden-md hidden-sm" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i>
                        </button>
                        <p class="modal-heading">EXPLORE PAGE BANNER</p>
                        <p class="modal-purchase-text text-left">Every project that is featured on our Explore Page Rotating Banner will have increased viewership and a higher click through rate compared to only having the featured icon. Your project will be displayed on our rotating banner located on the Explore Page as a hero image. This explore featured banner will last 7 days and then expire.</p>
                       <div show={ activated } class="active-box hidden-xs">
                        <i class="fa fa-check media-icons" style="color: #5cb85c"></i>
                        <span class="active-text">This upgrade is active on your project.</span>
                        </div>
                        <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center divider-inside-right">
                            <p class="purchase-text">EXPLORE BANNER</p>
                        </div>
                        <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center">
                            <p class="purchase-text-right">FREE</p>
                        </div>
                    </div>
                    <div class="col-sm-5 hidden-xs purchase-container-right">
                        <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i>
                        </button>
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
                <div class="hidden-lg hidden-md hidden-sm" style="max-width: 695px; margin: 0 auto;">
                    <form id="purchaseExplore" role="form" onsubmit={ submitExplore }>
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

             if (res.data[0].project_data.meta_data.explore) 
            {
                activated = true;
            }else{
                activated = false;
            }; 
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
             let project = pRes.data[0].unique_id,
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