<dashboard-featured-purchase>
    <div id="purchase-featured" class="modal container fade">
        <div class="krowdspace-modal-custom col-lg-offset-2 col-lg-8 col-md-offset-0 col-md-12">
            <div id="modal">
                <div class="modal-purchase-max no-gutter">
                    <div class="col-sm-7 purchase-container-left">
                        <button type="button" class="close btn-modal hidden-lg hidden-md hidden-sm" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                        </button>
                        <p class="modal-heading">FEATURED PROJECT LISTING</p>
                        <p class="modal-purchase-text text-left">Every featured project will have a yellow heart icon located in the corner of your project image. These icons will be displayed on our Explore Page filtering system. Having the icon will allow your project to have priority filtering and will always show ahead of other projects without the icon. Our featured project listing will last the entire length of your campaign.</p>
                        <div show={ activated } class="active-box hidden-xs">
                        <i class="fa fa-check check-mark"></i>
                        <span class="active-text">This upgrade is active on your project.</span>
                        </div>
                        <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center divider-inside-right">
                            <p class="purchase-text">FEATURED ICON</p>
                        </div>
                        <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center">
                            <p class="purchase-text-right">FREE</p>
                        </div>
                    </div>
                    <div class="col-sm-5 hidden-xs purchase-container-right">
                        <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                        </button>
                        <img class="img-responsive" alt="Featured Purchase" src="/img/content/featured-purchase.jpg"/>
                        <div class="purchase-price-box no-gutter">
                            <div class="col-sm-6 text-center divider-inside-right">
                                <p class="purchase-text">FEATURED ICON</p>
                            </div>
                            <div class="col-sm-6 text-center">
                                <p class="purchase-text-right">FREE</p>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div>
                            <form id="purchaseFeature" role="form" onsubmit={ submitFeatured }>
                                <div class="text-center">
                                    <input class="landing-submit" type="submit" name="submit"  value="Upgrade">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="hidden-lg hidden-md hidden-sm">
                    <form id="purchaseFeature" role="form" onsubmit={ submitFeatured }>
                        <div class="text-center">
                            <input class="landing-submit modal-purchase-max" type="submit" name="submit"  value="Upgrade">
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

              if (res.data[0].project_data.info_data.featured) 
            {
                activated = true;
            }else{
                activated = false;
            }; 
         });
         
         submitFeatured(e) 
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
                         info_data: 
                         {
                             featured : true,
                             featured_date: Date(),
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
</dashboard-featured-purchase>