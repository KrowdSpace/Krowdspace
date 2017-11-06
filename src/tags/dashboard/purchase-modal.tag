<purchase-modal>
    <div id="Purchase" class="modal fade">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-login-height">
                <div class="modal-header text-center">
                    <div class="modal-img-box">
                        <img src="/images/krowdspace-logo-white.svg" class="krowdspace-image-white" />
                    </div>
                    <h2 show={ featured } class="modal-heading">Featured Icon</h2>
                    <h2 show={ explore } class="modal-heading">Explore Feature</h2>
                    <h2 show={ landing } class="modal-heading">Landing Feature</h2>
                    <h2 show={ social } class="modal-heading">Social Media Post</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <i class="fa fa-times fa-lg" aria-hidden='true'></i>
                    </button>
                </div>
                <div class="modal-body" >
                    <p>Thank you for your interest in purchasing a featured upgrade. We are currently integrating the new payment gateway so in the meantime, please enjoy all of our services for free!</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary login-btn" onclick={ submitPurchase }>Free Upgrade</button>
                </div>
            </div>
        </div>
    </div>
    <script>
this.on('update', () =>
{
  this.featured = false;
  this.explore = false;
  this.landing = false;
  this.social = false;

  if (this.opts.purchase == 'featured_icon')
  {
    this.featured = true;
  } else if (this.opts.purchase == 'explore_feature')
  {
    this.explore = true;
  } else if (this.opts.purchase == 'landing_feature')
  {
    this.landing = true;
  } else if (this.opts.purchase == 'social_feature'){
    this.social = true;
  };
});

submitPurchase(e)
{
  e.preventDefault();

  let projectData = null;
  let project = opts.project.unique_id;

  if (this.opts.purchase == 'featured_icon')
  {
    projectData =
    {
      project_data:
      {
        info_data:
        {
          featured : true,
          date: Date(),
        }
      }
    };
  } else if (this.opts.purchase == 'explore_feature')
  {
    projectData =
    {
      project_data:
      {
        info_data:
        {
          explore : true,
          date: Date(),
        }
      }
    };
  } else if (this.opts.purchase == 'landing_feature')
  {
    projectData =
    {
      project_data:
      {
        info_data:
        {
          landing : true,
          date: Date(),
        }
      }
    };
  } else if (this.opts.purchase == 'social_feature'){
    projectData =
    {
      project_data:
      {
        info_data:
        {
          social : true,
          date: Date(),
        }
      }
    };
  };

this.setPurchaseDetails(project, projectData);
}

setPurchaseDetails(project, projectData)
{
  krowdspace.projects.set_project(project, projectData).then((res)=>
  {
    window.location.reload();
  });
}
</script>
</purchase-modal>
