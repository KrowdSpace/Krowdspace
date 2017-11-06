<register>
  <div id="Register" class="modal fade">
      <div class="modal-dialog" role="document">
          <div class="modal-content">
              <div class="modal-header text-center">
                  <div class="modal-img-box">
                      <img src="/images/krowdspace-logo-white.svg" class="krowdspace-image-white" />
                  </div>
                  <h2 class="modal-heading">Create Your Account</h2>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <i class="fa fa-times fa-lg" aria-hidden='true'></i>
            </button>
              </div>
              <form id="registrationMember" autocomplete="on">
              <div class="modal-body">
                      <div class="col-sm-6 form-group form-left login-relative">
                          <input type="text" class="form-control" name="firstname" placeholder="First Name">
                      </div>
                      <div class="col-sm-6 form-group form-right login-relative">
                          <input type="text" class="form-control" name="lastname" placeholder="Last Name">
                      </div>
                      <div class="clearfix"></div>
                      <div class="form-group login-relative">
                          <input type="email" class="form-control" name="email" placeholder="Email Address">
                      </div>
                      <div id="usernameError" class="form-group login-relative">
                          <input type="text" class="form-control" name="username" placeholder="New Username">
                      </div>
                      <div class="form-group flex login-relative">
                          <input id="PasswordReveal" type="password" name="password" class="form-control masked" placeholder="Password">
                          <button type="button" id="EyeButton" class="btn btn-primary password-btn"><i class="fa fa-eye fa-lg"></i></button>
                      </div>
                      <div class="form-group login-relative">
                          <input type="text" class="form-control" name="kickstarter" placeholder="Kickstarter Username (Optional)">
                      </div>
                      <div class="form-group login-relative">
                          <input type="text" class="form-control" name="indiegogo" placeholder="Indiegogo Username (Optional)">
                      </div>

                  <div class="checkbox">
                      <span class="terms-label"><input type="checkbox" name="checkbox"> I agree to <a class="anchor-link" onclick={ registerModal }>Krowdspace Terms &amp; Conditions</a></span>
                  </div>
              </div>
              <div class="modal-footer">
                  <button id="registrationSubmit" type="button" class="btn btn-primary login-btn">Join Krowdspace</button>
              </div>
            </form>
          </div>
      </div>
  </div>
  <script>

    registerModal() {
          $('#Register').modal('hide');

          setTimeout(function() {
            $('#Service').modal({
            })
          }, 500);
        }
    $(document).ready(function () {
                $("#registrationSubmit").click(function () {
                        var form = $("#registrationMember");
                        form.validate({
                            errorElement: 'span',
                            errorClass: 'errors',
                            highlight: function (element, errorClass, validClass) {
                                $(element).closest('.form-group').addClass("has-error");
                            },
                            unhighlight: function (element, errorClass, validClass) {
                                $(element).closest('.form-group').removeClass("has-error");
                            },
                            rules: {
                                firstname: {
                                    required: true,
                                },
                                lastname: {
                                    required: true,
                                },
                                email: {
                                    required: true,
                                },
                                username: {
                                    required: true,
                                },
                                password: {
                                    required: true,
                                },
                                kickstarter: {
                                    required: false,
                                },
                                indiegogo: {
                                    required: false,
                                },
                                checkbox: {
                                    required: true,
                                },
                            },
                            messages: {
                                firstname: {
                                    required: " ",
                                },
                                lastname: {
                                    required: " ",
                                },
                                email: {
                                    required: " ",
                                },
                                username: {
                                    required: " ",
                                },
                                password: {
                                    required: " ",
                                },
                                kickstarter: {
                                    required: " ",
                                },
                                indiegogo: {
                                    required: " ",
                                },
                                checkbox: {
                                    required: " ",
                                }
                              },
                        });
                        if (form.valid() === true) {

                          let FNAME = $(form).find('input[name="firstname"]').val(),
                              LNAME = $(form).find('input[name="lastname"]').val(),
                              EMAIL = $(form).find('input[name="email"]').val(),
                              USERNAME = $(form).find('input[name="username"]').val(),
                              PASSWORD = $(form).find('input[name="password"]').val(),
                              KSUSER = $(form).find('input[name="kickstarter"]').val(),
                              IGUSER = $(form).find('input[name="indiegogo"]').val();

                            krowdspace.register.user(FNAME, LNAME, EMAIL, USERNAME, PASSWORD, KSUSER, IGUSER).then((res) =>
                            {
                              var formReset = $("#registrationMember");
                              $('#Register').modal('hide');
                              setTimeout(function() {
                                $('#Submission').modal({
                                })
                              }, 500);
                              formReset[0].reset();
                            },
                            (err) =>
                            {
                              $("#usernameError").addClass("has-error");
                              $( "#usernameError" ).append( "<span class='errors'>Username or Email Has Been Taken</span>" );
                            });
                        }
                    });
                  });
      $(document).ready(function () {
          function show() {
              let pass = document.querySelector('#PasswordReveal');
              pass.setAttribute('type', 'text');
          }

          function hide() {
              let pass = document.querySelector('#PasswordReveal');
              pass.setAttribute('type', 'password');
          }

          let pwShown = 0;

          document.querySelector("#EyeButton").addEventListener("click", function () {
              if (pwShown == 0) {
                  pwShown = 1;
                  show();
              } else {
                  pwShown = 0;
                  hide();
              }
          }, false);
      });
  </script>
</register>
<!-- Validated Content October 26th, 2017 -->
