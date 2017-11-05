<submit-confirm>
    <div id="SubmitConfirm" class="modal fade">
        <div class="modal-dialog" role="document">
            <div class="modal-content modal-login-height">
                <div class="modal-header text-center">
                    <div class="modal-img-box">
                        <img class="krowdspace-image-white" />
                    </div>
                    <h2>Project Submitted!</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                          <i class="fa fa-times fa-lg" aria-hidden='true'></i>
                        </button>
                </div>
                <div class="modal-body">
                    <p>Your crowdfunding campaign has been submitted successfully and we are in the process of verifying your reward! Please be patient as this process may take up to 24 hours depending on the time your campaign was submitted.</p>
                    <p>To view your campaign please visit our project dashboard.</p>
                </div>
                <div class="modal-footer">
                    <button type="button" onclick={ successDash } class="btn btn-primary login-btn">View Dashboard</button>
                </div>
            </div>
        </div>
    </div>
<script>
successDash() {
  window.location.replace("/#/account/dashboard");
  window.location.reload();
}
</script>
</submit-confirm>
