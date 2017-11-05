<relative>
  <div id="Relative" class="modal fade">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <div class="modal-img-box">
                    <img class="krowdspace-image-white" />
                </div>
                <h2 class="modal-heading">Relative Paths</h2>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <i class="fa fa-times fa-lg" aria-hidden='true'></i>
          </button>
            </div>
            <div class="modal-body">
              <p>The Relative Path is everything after https://www.Kickstarter.com/. Lets take a look at an example project link from Kickstarter. The full link will look something like this:</p>
              <p>https://www.Kickstarter.com/projects/1764329921/project-title</p>
              <p>We can break that same link into multiple sections as described below. The full project link can be broken down into a Protocol, Domain and Relative Path.</p>
              <p>Protocol: https://</p>
              <p>Domain: www.Kickstarter.com</p>
              <p>Relative Path: <span class="primary-highlight" >/projects/1764329921/project-title</span></p>
              <p>Please only provide the Relative Path from your crowdfunding campaign link. If you provide the full link an error will popup after submission. If you have any questions please reach out to us through our <a class="anchor-link" onclick={ relativeModal }>contact form</a>.</p>
            </div>
        </div>
    </div>
</div>
<script>
  relativeModal() {
          $('#Relative').modal('hide');

          setTimeout(function() {
            $('#Contact').modal({
            })
          }, 500);
        }
</script>
</relative>
<!-- Validated Content October 26th, 2017 -->
