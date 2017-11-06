<refresh>
    <div id="Refresh" class="modal fade">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-login-height">
                <div class="modal-header text-center">
                    <div class="modal-img-box">
                        <img src="/images/krowdspace-logo-white.svg" class="krowdspace-image-white" />
                    </div>
                    <h2 class="modal-heading">Project Updated!</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <i class="fa fa-times fa-lg" aria-hidden='true'></i>
                    </button>
                </div>
                <div class="modal-body" >
                    <p>Your Krowdspace project has been updated and is now matching your live crowdfunding campaign. Once your campaign has ended this refresh button will be deactivated. If you have questions about continued support for your project please contact us. To view changes please refresh your browser.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary login-btn" onclick={ refreshClose }>Refresh Browser</button>
                </div>
            </div>
        </div>
    </div>
    <script>
    refreshClose() {
      $('#Refresh').modal('hide');
      window.location.reload();
    }
    </script>
</refresh>
<!-- Validated Content October 27th, 2017 -->
