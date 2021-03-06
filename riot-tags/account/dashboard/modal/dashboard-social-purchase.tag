<dashboard-social-purchase>
    <div id="purchase-social" class="modal container fade">
        <div class="krowdspace-modal-custom col-lg-offset-2 col-lg-8 col-md-offset-0 col-md-12">
            <div id="modal">
                <div class="modal-purchase-max no-gutter">
                    <div class="col-sm-7 purchase-container-left">
                        <button type="button" class="close btn-modal hidden-lg hidden-md hidden-sm" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                        </button>
                        <p class="modal-heading">SOCIAL MEDIA POSTS</p>
                        <p class="modal-purchase-text text-left">We will post your project on our 4 social media channels. By purchasing this package, you will see your project on our Facebook, Twitter, Pinterest and Instagram accounts with a link to your crowdfunding site when applicable. We currently have over 6,000 combined followers!</p>
                        <div show={ activated } class="active-box hidden-xs">
                        <i class="fa fa-check check-mark"></i>
                        <span class="active-text">This upgrade is active on your project.</span>
                        </div>
                        <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center divider-inside-right">
                            <p class="purchase-text">SOCIAL POSTS</p>
                        </div>
                        <div class="col-xs-6 hidden-lg hidden-md hidden-sm text-center">
                            <p class="purchase-text-right">FREE</p>
                        </div>
                    </div>
                    <div class="col-sm-5 hidden-xs purchase-container-right">
                        <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true">
                        <i class="fa fa-2x fa-times krowdspace" aria-hidden="true"></i>
                        </button>
                        <img class="img-responsive" alt="Social Media Purchase" src="/img/content/social-purchase.jpg"/>
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
                                    <input class="landing-submit" type="submit" name="submit"  value="Upgrade">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="hidden-lg hidden-md hidden-sm">
                    <form id="purchaseFeature" role="form" onsubmit={ submitSocial }>
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

              if (res.data[0].project_data.info_data.social) 
            {
                activated = true;
            }else{
                activated = false;
            }; 
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
             let project = pRes.data[0].unique_id,
                 projectData = 
                 {
                     project_data: 
                     {
                         info_data: 
                         {
                             social : true,
                             social_date: Date(),
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