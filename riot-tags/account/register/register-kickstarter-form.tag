<register-kickstarter-form>
    <form class="kickstarter-registration" id="registerKickstarter" onsubmit={ kickstarter } style="display:none;">
        <!-- KICKSTARTER PAGE 1 QUESTION 1 -->
        <fieldset id="project_information" class="project_information">
            <div class="form-group col-sm-12">
                <p class="text-left">Do you own this crowdfunding project?</p>
                <select ref="kickstarterValid" type="text" class="form-control" name="kickstarterOwner">
                    <option disabled selected value>Select Yes or No</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            <!-- KICKSTARTER PAGE 1 QUESTION 2 -->
            <div class="form-group col-sm-12">
                <p class="text-left">What category best fits your project?</p>
                <select ref="kickstarterCategory" type="text" class="form-control" name="kickstarterCategory">
                    <option disabled selected value>Choose a Category</option>
                    <option value="Art">Art</option>
                    <option value="Design">Design</option>
                    <option value="Film">Film</option>
                    <option value="Food">Food</option>
                    <option value="Health">Health</option>
                    <option value="Music">Music</option>
                    <option value="Photography">Photography</option>
                    <option value="Technology">Technology</option>
                    <option value="Videogames">Videogames</option>
                    <option value="Publishing">Publishing</option>
                </select>
            </div>
            <!-- KICKSTARTER PAGE 1 QUESTION 3 -->
            <div class="form-group col-sm-12 no-gutter">
                <p class="text-left">Please provide your live crowdfunding project url. <a href="#modal-register-link" data-toggle="modal" class="home-links">Need Help?</a></p>
                <div class="col-sm-4 col-xs-6 form-group link-left">
                    <input type="text" class="form-control" value="Kickstarter.com" readonly>
                </div>
                <div class="form-group col-sm-8 col-xs-6 link-right">
                    <input ref="kickstarterLink" type="text" class="form-control" name="kickstarterProject" placeholder="/project/project-url">
                </div>
            </div>
            <div class="register-controls">
                <div class="col-sm-offset-3 col-sm-6 col-xs-offset-2 col-xs-8">
                    <p onClick={ projectPrevious2 } class="pull-left"><a id="project-previous" class="back-project">PREVIOUS</a></p>
                    <p class="pull-right"><a class="back-project next-ks next-step">NEXT</a></p>
                </div>
            </div>
        </fieldset>
        <!-- KICKSTARTER PAGE 2 -->
        <fieldset id="reward_information" class="reward_information">
            <!-- KICKSTARTER PAGE 2 QUESTION 1-->
            <div class="form-group col-sm-12">
                <p class="text-left">Please provide an <a href="#modal-global-rewards" data-toggle="modal" class="home-links">exclusive reward</a> for our Krowdspace users.</p>
                <input ref="kickstarterReward" class="form-control" name="kickstarterReward" maxlength="110" placeholder="See Sample Rewards Below ( Max Character 110 )">
            </div>
            <!-- KICKSTARTER PAGE 2 QUESTION 2-->
            <div class="form-group col-sm-12">
                <p class="text-left">Does your reward have a value or is it a discount?</p>
                <select ref="kickstarterOption" class="form-control" name="kickstarterValue">
                    <option disabled selected value>Choose an Option</option>
                    <option value="Yes">Reward has a Value</option>
                    <option value="No">Reward is a Discount</option>
                </select>
            </div>
            <!-- KICKSTARTER PAGE 2 QUESTION 3-->
            <div class="form-group col-sm-12">
                <p class="text-left">Please estimate the value of your reward.</p>
                <input ref="kickstarterValue" class="form-control" name="kickstarterAmount" maxlength="6">
            </div>
            <div class="register-controls">
                <div class="col-sm-offset-3 col-sm-6 col-xs-offset-2 col-xs-8">
                    <p class="pull-left"><a class="back-project previous-ks">PREVIOUS</a></p>
                    <p class="pull-right"><a class="back-project next-ks next-step">NEXT</a></p>
                </div>
            </div>
        </fieldset>
        <!-- KICKSTARTER PAGE 3 -->
        <fieldset id="project_verify" class="project_verify">
            <!-- KICKSTARTER PAGE 3 QUESTION 1 -->
            <div class="col-sm-12">
                <p class="text-left landing-text">PROJECT VERIFICATION</p>
                <p class="text-left">To verify that you are the project owner please upload one of the images from our <a href="#modal-press-kit" data-toggle="modal" class="home-links">Press Kit</a> area onto your crowdfunding project. This will prevent any false submissions and let us know you are indeed the owner.</p>
                <p class="text-left">The image that you select will need to be hyperlinked back to Krowdspace. We are verifying the actual hyperlink and not just the image being present. Please use the link below:</p>
                <p class="text-left">https://www.Krowdspace.com</p>
                <p class="text-left">If you have any questions or concerns please contact us and thank you for your understanding!</p>
            </div>
            <div class="register-controls">
                <div class="col-sm-offset-3 col-sm-6 col-xs-offset-2 col-xs-8">
                    <p class="pull-left"><a class="back-project previous-ks">PREVIOUS</a></p>
                    <p class="pull-right"><a class="back-project next-ks next-step">NEXT</a></p>
                </div>
            </div>
        </fieldset>
        <!-- KICKSTARTER PAGE 4 -->
        <fieldset id="service_terms" class="service_terms">
            <div class="col-sm-12">
                <p class="text-left landing-text">TERMS AND CONDITIONS</p>
                <p class="text-left">Krowdspace is not liable for any damages or losses related to using our services.</p>
                <p class="text-left">Project owners are legally bound to fullfill any rewards promised to the Krowdspace users.</p>
                <p class="text-left">Krowdspace is not responsible for the puncuality and delivery of the rewards and will not become involved between user disputes.</p>
                <p class="text-left">You agree to be in compliance with Kickstarter's Terms of Use and are using Krowdspace at your own risk.</p>
                <p class="text-left">I have read through and understand the Terms of Service in relation to Krowdspace.</p>
                <div class="login-box">
                    <label>
                    <input class="check-box" ref="kickstarterCheck" type="checkbox" value="checked" name="terms[]" required minlength="1" aria-required="true"/><span>I agree to <a href="#modal-service-terms" data-toggle="modal" class="home-links">Krowdspace Terms</a></span>
                    </label>
                </div>
            </div>
            <div class="register-controls" >
                <div class="col-sm-offset-3 col-sm-6 col-xs-offset-2 col-xs-8">
                    <p class="pull-left"><a class="back-project previous-ks">PREVIOUS</a></p>
                    <p class="pull-right"><input class="back-project" type="submit" value="SUBMIT" name="submit" /></p>
                </div>
            </div>
        </fieldset>
    </form>
    <script>
        projectPrevious2()
        {
            $( ".kickstarter-registration" ).hide();
            $( ".indiegogo-registration" ).hide();
            $( ".project-select-page" ).show();
        };

        kickstarter(e)
        {
            e.preventDefault();
    
            let PVALID = this.refs.kickstarterValid.value,
                CATEGORY = this.refs.kickstarterCategory.value,
                DOMAINURL = 'https://www.kickstarter.com/',
                URL =  this.refs.kickstarterLink.value,
                REWARD = this.refs.kickstarterReward.value,
                REWARDVALUE = this.refs.kickstarterOption.value,
                IGREWARD = 'Not Valid',
                REWARDAMOUNT = this.refs.kickstarterValue.value;
        
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
            
            if(!this.refs.kickstarterCheck.checked)
            return;

            krowdspace.register.project(DATA).then((res) =>
            {
            console.log('Project Submission Successful');
            window.location.replace("/#/account/dashboard");  
            },
            (err) =>
            {
            $('#modal-project-error').modal('show');
            console.log(err);
            }); 
        }
        
        
        this.on('mount', function() 
        {
            $(".next-ks").click(function(){
                var form = $("#registerKickstarter");
                form.validate({
                    errorElement: 'span',
                    errorClass: 'help-block',
                    highlight: function(element, errorClass, validClass) {
                        $(element).closest('.form-group').addClass("has-error");
                    },
                    unhighlight: function(element, errorClass, validClass) {
                        $(element).closest('.form-group').removeClass("has-error");
                    },
                    rules: {
                        kickstarterOwner: {
                            required: true,
                        },
                        kickstarterCategory: {
                            required: true,
                        },
                        kickstarterProject:{
                            required: true,
                        },
                        kickstarterReward:{
                            required: true,
                        },
                        kickstarterValue: {
                            required: true,
                            
                        },
                        kickstarterAmount: {
                            required: true,
                            number: true,
                        },
                        krowdspaceTerms1: {
                            required: true,
                        },
                        
                    },
                    messages: {
                        kickstarterOwner: {
                            required: "",
                        },
                        kickstarterCategory : {
                            required: "",
                        },
                        kickstarterProject: {
                            required: "",
                        },
                        kickstarterReward: {
                            required: "",
                        },
                        kickstarterValue: {
                            required: "",
                        },
                        kickstarterAmount: {
                            required: "",
                        },
                        krowdspaceTerms1: {
                            required: "",
                        },
                    }
                });
                if (form.valid() === true){
                    if ($('.project_information').is(":visible")){
                        current_fs = $('.project_information');
                        next_fs = $('.reward_information');
                    }else if($('.reward_information').is(":visible")){
                        current_fs = $('.reward_information');
                        next_fs = $('.project_verify');
                    }else if($('.project_verify').is(":visible")){
                        current_fs = $('.project_verify');
                        next_fs = $('.service_terms');
                    }
                    
                    next_fs.show(); 
                    current_fs.hide();
                }
            });
        
            $('.previous-ks').click(function(){
                if($('.reward_information').is(":visible")){
                    current_fs = $('.reward_information');
                    next_fs = $('.project_information');
                }else if ($('.project_verify').is(":visible")){
                    current_fs = $('.project_verify');
                    next_fs = $('.reward_information');
                }else if ($('.service_terms').is(":visible")){
                    current_fs = $('.service_terms');
                    next_fs = $('.project_verify');
                }
                next_fs.show(); 
                current_fs.hide();
            });
        });
    </script>
</register-kickstarter-form>