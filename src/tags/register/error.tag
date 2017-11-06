<error>
    <div id="Error" class="modal fade">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-login-height">
                <div class="modal-header text-center">
                    <div class="modal-img-box">
                        <img src="/images/krowdspace-logo-white.svg" class="krowdspace-image-white" />
                    </div>
                    <h2>Project Submission Error</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <i class="fa fa-times fa-lg" aria-hidden='true'></i>
                        </button>
                </div>
                <div class="modal-body">
                    <p>It looks like an error occured during the submission process! Please make sure that the correct relative link is in place for Kickstarter campaigns or the correct 7 digit Indiegogo campaign ID is present. If you are still having problems submitting your campaign please reach out to us directly on social media or through our <a class="anchor-link" onclick={ errorModal }>contact form</a>.</p>
                </div>
            </div>
        </div>
    </div>
    <script>
    errorModal() {
          $('#Error').modal('hide');

          setTimeout(function() {
            $('#Contact').modal({
            })
          }, 500);
        }
    </script>
</error>
<!-- Validated Content October 26th, 2017 -->
