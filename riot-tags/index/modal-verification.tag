<modal-verification>
    <div class="krowdspace-modal modal fade" id="modal-verification" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div onclick={ close } class="close-modal-full" data-dismiss="modal">
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 shadow user-modal text-center modal-verify">
                            <div class="modal-container">
                                <p class="modal-heading verify-heading">Confirm Your Email Address</p>
                            </div>
                            <p class="verify-message">A confirmation email has been sent to your inbox. Click on the confirmation link to verify your account.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        this.on('mount', function() {
            var url = window.location.href;
            if (url.indexOf('?verify=1') != -1) {
                $("#modal-verification").modal('show');
                $('#modal-verification').fadeIn();
            }
        });
        close(e){
        e.preventDefault();
        window.location.replace('/');
        }
    </script>
</modal-verification>