<registration-form>
    <div class="row project-form-flex">
            <div class="register-form-box">
                <button class="btn btn-primary register-btn-kickstarter" onClick={ kickstarterForm }><img class="kickstarter-full"></button>
                <button class="btn btn-primary register-btn-indiegogo" onClick={ indiegogoForm }><img class="indiegogo-full"></button>
                <p class="submission_form select-campaign-text">Please select which crowdfunding platform your campaign is being hosted on.</p>
                <form id="registrationForm" onsubmit={ submission }>
                    <div class="col-xs-12 submission_form">
                        <p class="register-title">{ title } Campaign Form</p>
                        <label for="question1">Do you own this crowdfunding project?</label>
                        <div class="form-group">
                            <select ref="owner" name="question1" class="default-entry form-control">
                              <option disabled selected value>Confirm Ownership</option>
                              <option value="Yes">Yes</option>
                            </select>
                        </div>
                        <label for="question2">What category best fits your project?</label>
                        <div class="form-group">
                            <select ref="category" class="default-entry form-control" name="question2">
                      <option disabled selected value>Choose a Category</option>
                      <option value="Art">Art</option>
                      <option value="Design">Design</option>
                      <option value="Film">Film</option>
                      <option value="Food">Food</option>
                      <option value="Health">Health</option>
                      <option value="Music">Music</option>
                      <option value="Photography">Photography</option>
                      <option value="Publishing">Publishing</option>
                      <option value="Technology">Technology</option>
                      <option value="Videogames">Videogames</option>
                    </select>
                        </div>
                        <label class="kickstarter-registration" for="question3">Please provide the relative path from your Kickstarter Campaign. <a class="anchor-link" data-toggle="modal" data-target="#Relative">Need Help?</a></label>
                        <div class="form-group kickstarter-registration">
                            <input for="question3" name="question3" ref="kickstarterLink" class="default-entry form-control " placeholder="Everything after Kickstarter.com (ex. /project/project-url)">
                        </div>
                        <label class="indiegogo-registration" for="question4">Please provide your Indiegogo Campaign ID. <a class="anchor-link" data-toggle="modal" data-target="#ProjectID">Need Help?</a></label>
                        <div class="form-group indiegogo-registration">
                            <input for="question4" name="question4" ref="indiegogoLink" class="default-entry form-control" placeholder="7493201">
                        </div>
                        <label class="indiegogo-registration" for="question5">What is your Indiegogo Secret Perk Link? <a class="anchor-link" data-toggle="modal" data-target="#Perk">Need Help?</a></label>
                        <div class="form-group indiegogo-registration">
                            <input for="question5" name="question5" ref="indiegogoPerk" class="default-entry form-control" placeholder="Full Secret Perk Link">
                        </div>
                        <label for="question6">Please provide an exclusive reward for our Krowdspace members.</label>
                        <div class="form-group">
                            <input for="question6" name="question6" ref="reward" class="default-entry form-control" placeholder="See Sample Rewards Below, Max Character 110" maxlength="110">
                        </div>
                        <label for="question7">Does your reward have a value or is it a discount?</label>
                        <div class="form-group">
                            <select for="question7"  name="question7" class="default-entry form-control" ref="rewardValue">
                            <option disabled selected value>Choose an Option</option>
                            <option value="Yes">Reward has a Value</option>
                            <option value="No">Reward is a Discount</option>
                          </select>
                        </div>
                        <label for="question8">Please estimate the value of your reward.</label>
                        <div class="form-group">
                            <input for="question8"  name="question8" ref="rewardAmount" class="default-entry form-control" placeholder="10">
                        </div>
                    </div>
                    <button class="btn btn-primary next submission_form" type="button">Submit Project</button>
                    <div class="col-xs-12 submission_terms">
                      <img class="img-responsive krowdspace-featured">
                        <p>Please upload our "Featured on Krowdspace" image to your Kickstarter or Indiegogo Campaign page with a link back to Krowdspace.com. You can also choose an alternative image from our <a class="anchor-link" data-toggle="modal" data-target="#Brand">Brand Assets</a>. This will prevent any false submissions and let us know you are indeed the owner.</p>
                        <p class="registration-title-terms">Additional Terms and Conditions</p>
                        <p>Krowdspace is not liable for any damages or losses related to using our services.</p>
                        <p>Project owners are legally bound to fullfill any rewards promised to Krowdspace Members.</p>
                        <p>Krowdspace is not responsible for the puncuality or delivery of the rewards and will not become involved between member disputes.</p>
                        <p>You agree to be in compliance with Kickstarter's and Indiegogo's Terms of Use and are using Krowdspace at your own risk.</p>
                        <p>I have read through and understand the Terms of Service in relation to Krowdspace.</p>
                        <div class="register-checkbox">
                        <div class="checkbox">
                            <span class="terms-label"><input ref="checkbox" type="checkbox"> I agree to <a class="anchor-link" data-toggle="modal" data-target="#Service">Krowdspace Terms &amp; Conditions</a></span>
                        </div>
                        <button class="btn btn-primary" type="button" id="previous">Previous</button>
                      </div>
                    </div>
                    <button class="btn btn-primary submission_terms" type="button" onClick={ submission }>Submit Project</button>
                </form>
            </div>
    </div>
    <script>
        $(document).ready(function () {
                $(".next").click(function () {
                        var form = $("#registrationForm");
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
                                question1: {
                                    required: true,
                                },
                                question2: {
                                    required: true,
                                },
                                question3: {
                                    required: true
                                },
                                question4: {
                                    required: true,
                                    number: true,
                                    minlength: 7,
                                    maxlength: 7
                                },
                                question5: {
                                    required: true,
                                    url: true
                                },
                                question6: {
                                    required: true
                                },
                                question7: {
                                    required: true,
                                },
                                question8: {
                                    required: true,
                                    number: true,
                                    maxlength: 6
                                },
                            },
                            messages: {
                                question1: {
                                    required: "",
                                },
                                question2: {
                                    required: "",
                                },
                                question3: {
                                    required: "Relative Path Required",
                                },
                                question4: {
                                    required: "7 Digit Project ID Required",
                                },
                                question5: {
                                    required: "",
                                },
                                question6: {
                                    required: "",
                                },
                                question7: {
                                    required: "",
                                },
                                question8: {
                                    required: "Number Required",
                                },
                            }
                        });
                        if (form.valid() === true) {
                            $(".submission_form").hide();
                            $(".submission_terms").show();
                            $('.register-btn-kickstarter, .register-btn-indiegogo').prop('disabled', true);
                        }
                    });

                $('#previous')
                    .click(function () {
                        $(".submission_form").show();
                        $(".submission_terms").hide();
                        $('.register-btn-kickstarter, .register-btn-indiegogo').prop('disabled', false);
                    });

            });
        $(document).ready(function () {
                $(".default-entry, .submission_form").prop('disabled', true);
            });
        indiegogoForm() {
            $(".indiegogo-registration").show();
            $(".indiegogo-registration :input").prop('required', true);
            $(".kickstarter-registration").hide();
            $(".kickstarter-registration :input").prop('required', null);
            $(".default-entry, .submission_form").prop('disabled', false);
            this.title = "Indiegogo";
            this.update();
        };
        kickstarterForm() {
            $(".kickstarter-registration").show();
            $(".kickstarter-registration :input").prop('required', true);
            $(".indiegogo-registration").hide();
            $(".indiegogo-registration :input").prop('required', null);
            $(".default-entry, .submission_form").prop('disabled', false);
            this.title = "Kickstarter";
            this.update();
        };
        submission(e) {
          if(this.refs.checkbox.checked === false)
          return;

          e.preventDefault();

            if (this.title == 'Kickstarter') {
                this.projectLink = this.refs.kickstarterLink.value.trim();
                this.hostDomain = 'https://www.kickstarter.com/';
            } else {
                this.projectLink = this.refs.indiegogoLink.value.trim();
                this.hostDomain = 'https://www.indiegogo.com/projects/';
            }

            let PVALID = this.refs.owner.value,
                CATEGORY = this.refs.category.value,
                DOMAINURL = this.hostDomain,
                URL = this.projectLink.trim(),
                IGREWARD = this.refs.indiegogoPerk.value.trim() || 'Not Valid',
                REWARD = this.refs.reward.value.trim(),
                REWARDVALUE = this.refs.rewardValue.value,
                REWARDAMOUNT = this.refs.rewardAmount.value.trim();

            let DATA = {
              PVALID,
                CATEGORY,
                DOMAINURL,
                URL,
                REWARD,
                REWARDVALUE,
                REWARDAMOUNT,
                IGREWARD,
            };

            krowdspace.register.project(DATA).then((res) =>
            {
            console.log('Project Submission Successful');
            $('#SubmitConfirm').modal('show');
            },
            (err) =>
            {
            $('#Error').modal('show');
            });

        };
    </script>
    </body>
</registration-form>
<!-- Validated Content October 26th, 2017 -->
