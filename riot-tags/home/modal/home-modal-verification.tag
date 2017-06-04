<home-modal-verification>
    <div id="modal-verification" class="modal fade">
        <div class="krowdspace-modal col-sm-6 col-sm-offset-3">
            <div id="modal" class="modal-content text-center">
                <div class="modal-header">
                </div>
                <div class="modal-body">
                    <p class="modal-heading verify-heading">Confirm Your Email Address</p>
                    <p class="verify-message">A confirmation email has been sent to your inbox. Click on the confirmation link to verify your account.</p>
                </div>
            </div>
        </div>
		<div class="background-modal-close" data-dismiss="modal"> </div>
    </div>
    <script>
        this.on('mount', function() 
        {
            var url = window.location.href;
            if (url.indexOf('?verify=1') != -1) 
            {
                $("#modal-verification").modal('show');
                $('#modal-verification').fadeIn(100);
            };
        });
    </script>
</home-modal-verification>