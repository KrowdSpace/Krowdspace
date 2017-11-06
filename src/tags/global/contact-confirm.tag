<contact-confirm>
    <div id="ContactConfirm" class="modal fade">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-login-height">
                <div class="modal-header text-center">
                    <div class="modal-img-box">
                        <img src="/images/krowdspace-logo-white.svg" class="krowdspace-image-white" />
                    </div>
                    <h2>Message Sent!</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <i class="fa fa-times fa-lg" aria-hidden='true'></i>
                        </button>
                </div>
                <div class="modal-body">
                    <p>Thank you for sending a message to Krowdspace. While you wait for a response please <a class="anchor-link" onclick={ contactConfirm }>register</a> and get to know our new site! We will respond as quickly as possible. </p>
                </div>
                <div class="modal-footer">
                    <a href="/#/explore">
                        <button type="button" class="btn btn-primary login-btn">Explore Krowdspace</button>
                      </a>
                </div>
            </div>
        </div>
    </div>
<script>
  contactConfirm() {
  $('#ContactConfirm').modal('hide');
          setTimeout(function() {
            $('#Register').modal({
            })
          }, 500);
        }
</script>
</contact-confirm>
<!-- Validated Content October 26th, 2017 -->
