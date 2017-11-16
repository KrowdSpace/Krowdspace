<project-modal>
  <div id="ProjectID" class="modal fade">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <div class="modal-img-box">
                    <img alt="Krowdspace" src="/images/krowdspace-logo-white.svg" class="krowdspace-image-white" />
                </div>
                <h2 class="modal-heading">Campaign ID</h2>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="fa fa-times fa-lg" aria-hidden='true'></i>
          </button>
            </div>
            <div class="modal-body">
              <p>Please provide your Indiegogo campaign ID which consists of a 7 digit number located on the campaign project page. Please refer to this <a href="https://support.indiegogo.com/hc/en-us/articles/207276657-How-to-Find-Customize-your-Indiegogo-URL" class="anchor-link" target="_blank">Indiegogo help page</a> for exact locations within your account.</p>
              <p>Another easy way to retrieve your project ID is to go to your live crowdfunding page and click on the "Share Twitter" button located next to the "Back It" button.</p>
              <img alt="Indiegogo" src="/images/indiegogo-help-01.jpg" class="indiegogo-help-01 img-responsive">
              <p>Inside the share message there is a project url with the project ID. Take the project ID number and put it into the Krowdspace register form. An example of the project ID number location is highlighted below.</p>
              <img alt="Kickstarter" src="/images/indiegogo-help-02.jpg" class="indiegogo-help-02 img-responsive">
              <p>If you have any questions please contact Krowdspace on social media or through our <a class="anchor-link" onclick={ projectModal }>contact form</a>.</p>
            </div>
        </div>
    </div>
</div>
<script>
    projectModal() {
            $('#ProjectID').modal('hide');

            setTimeout(function() {
              $('#Contact').modal({
              })
            }, 500);
          }
  </script>
</project-modal>
<!-- Validated Content October 26th, 2017 -->
