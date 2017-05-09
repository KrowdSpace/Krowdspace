<home-modal-live>
    <div class="krowdspace-modal modal fade" id="modal-live" tabindex="-1" role="dialog" aria-hidden="true">
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
                                <p class="modal-heading">Placeholder Projects</p>
                            </div>
                            <div class="text-justify">
                                <p>Thank you for coming to our website and wanting to view a project. The current projects we are featuring on our home page are either expired or just placeholders. We are currently in the process of rotating them to live projects.</p>
                                <p>If you currently have a live project on Indiegogo or Kickstarter we want to hear from you. You could be featured on our homepage with a link back to your project! Who doesn't like free publicity! Thank you for your patience and understanding.</p>
                            </div>
                            <div class="text-center user-md-title">
                                <p class="modal-heading">Register with Krowdspace</p>
                            </div>
                            <form class="form-vertical" id="commentForm" onsubmit={ submit3 }>
                                <div class="form-group">
                                    <input type="text" name="FNAME3" id="FNAME3" class="form-control" placeholder="First Name*" required aria-required="true" aria-invalid="true">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="LNAME3" id="LNAME3" class="form-control" placeholder="Last Name*" required aria-required="true" aria-invalid="true">
                                </div>
                                <div class="form-group">
                                    <input type="email" name="EMAIL3" id="EMAIL3" class="form-control" placeholder="Email Address*" required aria-required="true" aria-invalid="true">
                                </div>
                                <!-- <div class="form-group">
                                    <input type="firstname" class="form-control" placeholder="New Password*">
                                    </div> -->
                                <div class="form-group">
                                    <input type="text" name="KSUSER3" id="KSUSER3" class="form-control" placeholder="Kickstarter Username (Optional)">
                                </div>
                                <div class="form-group">
                                    <input type="text" name="IGUSER3" id="IGUSER3" class="form-control" placeholder="Indiegogo Username (Optional)">
                                </div>
                                <div class="form-group">
                                    <select class="form-control" name="PVALID3" id="PVALID3">
                                        <option disabled="disabled" selected="selected">Submit your own project?</option>
                                        <option value="Yes">Yes</option>
                                        <option value="No">No</option>
                                    </select>
                                </div>
                                <div class="check-terms checkbox text-left">
                                    <label>
                                    <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a href="#modal-service-terms" data-toggle="modal" class="modal-link">Krowdspace terms</a>
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
            if (url.indexOf('?live=1') != -1) {
                $("#modal-live").modal('show');
                $('#modal-live').fadeIn();
            };
        });
         submit3(e){
            e.preventDefault();
            var formArr = {
              FNAME: $("#FNAME3").val(),
              LNAME: $("#LNAME3").val(),
              EMAIL: $("#EMAIL3").val(),
              KSUSER: $("#KSUSER3").val(),
              IGUSER: $("#IGUSER3").val(),
              PVALID: $("#PVALID3").val()
            };
            $.ajax({
               contentType:"application/json",
               url: 'https://api.krowdspace.com/register/email_list',
               type: 'POST',
               data: JSON.stringify(formArr),
               success: function(data) {
                    if(!data.success)
                    window.location.replace("/?success=1");
               }
            });
            }  
    </script>
</home-modal-live>