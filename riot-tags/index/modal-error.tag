<modal-error>
    <div class="krowdspace-modal modal fade" id="modal-error" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                <div class="container">
                <div class="row">
                    <div class="col-md-offset-3 col-md-6 col-sm-offset-2 col-sm-8 shadow user-modal">
                        <div class="text-center modal-container">
                            <p class="modal-heading">Still in the Works</p>
                        </div>
                        <div class="text-justify">
                            <p>Thank you for your interest in Krowdspace. We are currently in the process of getting our BETA version up and running. Please send us your contact information and we will notify you when we are live.</p>
                            <p>We are currently in search of projects to test our platform. If you have a project on Kickstarter or Indiegogo that you’d like to register, please fill out the form below and we will contact you. You could be featured on our homepage with a link back to your project! Who doesn't like free publicity? Thank you for your patience and understanding.</p>
                        </div>
                        <div class="text-center user-md-title">
                            <p class="modal-heading">Register with Krowdspace</p>
                        </div>
                        <form class="form-vertical" id="commentForm" onsubmit={ submit4 }>
                            <div class="form-group">
                                <input type="text" name="FNAME4" id="FNAME4" class="form-control" placeholder="First Name*" required aria-required="true" aria-invalid="true">
                            </div>
                            <div class="form-group">
                                <input type="text" name="LNAME4" id="LNAME4" class="form-control" placeholder="Last Name*" required aria-required="true" aria-invalid="true">
                            </div>
                            <div class="form-group">
                                <input type="email" name="EMAIL4" id="EMAIL4" class="form-control" placeholder="Email Address*" required aria-required="true" aria-invalid="true">
                            </div>
                            <!-- <div class="form-group">
                                <input type="firstname" class="form-control" placeholder="New Password*">
                                </div> -->
                            <div class="form-group">
                                <input type="text" name="KSUSER4" id="KSUSER4" class="form-control" placeholder="Kickstarter Username (Optional)">
                            </div>
                            <div class="form-group">
                                <input type="text" name="IGUSER4" id="IGUSER4" class="form-control" placeholder="Indiegogo Username (Optional)">
                            </div>
                            <div class="form-group">
                                <select class="form-control" name="PVALID4" id="PVALID4" >
                                    <option disabled="disabled" selected="selected">Submit your own project?</option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="check-terms checkbox text-left">
                                <label>
                                <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="/?service-terms=1" data-toggle="modal" class="modal-link">Krowdspace terms</a>
                                </label>
                            </div>
                            <div class="register-btn-box">
                                <input type="submit" class="button-login" name="submit" value="Register">
                            </div>
                        </form>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>
<script>
    this.on('mount', function() {
        var url = window.location.href;
        if (url.indexOf('?error=1') != -1) {
            $('#modal-error').modal('show');
            $('#modal-error').fadeIn();
        }
    });
    submit4(e){
        e.preventDefault();
        var formArr = {
          FNAME: $("#FNAME4").val(),
          LNAME: $("#LNAME4").val(),
          EMAIL: $("#EMAIL4").val(),
          KSUSER: $("#KSUSER4").val(),
          IGUSER: $("#IGUSER4").val(),
          PVALID: $("#PVALID4").val()
        };
        $.ajax({
           contentType:"application/json",
           url: 'https://api.krowdspace.com/register/email_list',
           type: 'POST',
           data: JSON.stringify(formArr),
           success: function(data) {
               if(!data.success)
                window.location.replace("/?success=1");

           },
           error: function(XMLHttpRequest, textStatus, errorThrown) {
              console.log(XMLHttpRequest.responseText);
              }
        });
        }
</script>
</modal-error>
