<register-indiegogo-form>
    <form class="indiegogo-registration registerIndiegogo" id="registerIndiegogo" onsubmit={ indiegogo } style="display:none;">
        <!-- INDIEGOGO PAGE 1 QUESTION 1 -->
        <fieldset id="project_information" class="project_information2">
            <div class="form-group col-sm-12">
                <p class="text-left">Do you own this crowdfunding project?</p>
                <select ref="indiegogoValid" type="text" class="form-control" name="indiegogoOwner">
                    <option disabled selected value>Select Yes or No</option>
                    <option value="Yes">Yes</option>
                    <option value="No">No</option>
                </select>
            </div>
            <!-- INDIEGOGO PAGE 1 QUESTION 2 -->
            <div class="form-group col-sm-12">
                <p class="text-left">What category best fits your project?</p>
                <select ref="indiegogoCategory" type="text" class="form-control" name="indiegogoCategory">
                    <option disabled selected value>Choose a Category</option>
                    <option value="Art">Art</option>
                    <option value="Design">Design</option>
                    <option value="Film">Film</option>
                    <option value="Food">Food</option>
                    <option value="Music">Music</option>
                    <option value="Photography">Photography</option>
                    <option value="Technology">Technology</option>
                    <option value="Videogames">Video Games</option>
                    <option value="Publishing">Publishing</option>
                </select>
            </div>
            <!-- INDIEGOGO PAGE 1 QUESTION 3 -->
            <div class="form-group col-sm-12 indiegogo-registration" style="display: none;">
                <p class="text-left">What is your Indiegogo secret perk url? <a href="#modal-register-perk" data-toggle="modal" class="home-links">Need Help?</a></p>
                <input ref="indiegogoPerk" type="text" class="form-control" name="indiegogoPerk" placeholder="www.indiegogo.com/secret-perk-url">
            </div>
            <!-- INDIEGOGO PAGE 1 QUESTION 4 -->
            <div class="form-group col-sm-12 no-gutter indiegogo-registration" style="display: none;">
                <p class="text-left">Please provide your project ID. <a href="#modal-register-id" data-toggle="modal" class="home-links">Need Help?</a></p>
                <div class="col-sm-6 form-group link-left">
                    <input type="text" class="form-control" value="Indiegogo.com/projects/" readonly>
                </div>
                <div class="form-group col-sm-6 link-right">
                    <input ref="indiegogoID" name="indiegogoProject" type="number" class="form-control" placeholder="2152186">
                </div>
            </div>
            <div class="register-controls">
                <div class="col-xs-offset-3 col-xs-6">
                    <p onClick={ projectPrevious } class="pull-left"><a id="project-previous" class="back-project">PREVIOUS</a></p>
                    <p class="pull-right"><a class="back-project next-ig next-step">NEXT</a></p>
                </div>
            </div>
        </fieldset>
        <!-- INDIEGOGO PAGE 2 -->
        <fieldset id="reward_information" class="reward_information2">
            <!-- INDIEGOGO PAGE 2 QUESTION 1 -->
            <div class="form-group col-sm-12">
                <p class="text-left">Please provide an exclusive reward for our Krowdspace users.</p>
                <input ref="indiegogoReward" class="form-control" name="indiegogoReward" maxlength="110" placeholder="See Sample Rewards Below ( Max Character 110 )">
            </div>
            <!-- INDIEGOGO PAGE 2 QUESTION 2 -->
            <div class="form-group col-sm-12">
                <p class="text-left">Does your reward have a value or is it a discount?</p>
                <select ref="indiegogoOption" class="form-control" name="indiegogoValue">
                    <option disabled selected value>Choose an Option</option>
                    <option value="Yes">Reward has a Value</option>
                    <option value="No">Reward is a Discount</option>
                </select>
            </div>
            <!-- INDIEGOGO PAGE 2 QUESTION 3 -->
            <div class="form-group col-sm-12">
                <p class="text-left">Please estimate the value of your reward.</p>
                <input ref="indiegogoValue" class="form-control" name="indiegogoAmount">
            </div>
            <div class="register-controls">
                <div class="col-xs-offset-3 col-xs-6">
                    <p class="pull-left"><a class="back-project previous-ig">PREVIOUS</a></p>
                    <p class="pull-right"><a class="back-project next-ig next-step">NEXT</a></p>
                </div>
            </div>
        </fieldset>
        <!-- INDIEGOGO PAGE 3 -->
        <fieldset id="project_verify" class="project_verify2">
            <!-- INDIEGOGO PAGE 3 QUESTION 1 -->
            <div class="col-sm-12">
                <p class="text-left landing-text">PROJECT VERIFICATION</p>
                <p class="text-left">To verify that you are the project owner please upload one of the images from our <a href="#modal-press-kit" data-toggle="modal" class="home-links">Press Kit</a> area onto your crowdfunding project. This will prevent any false submissions and let us know you are indeed the owner.</p>
                <p class="text-left">The image that you select will need to be hyperlinked back to Krowdspace. We are verifying the actual hyperlink and not just the image being present. Please use the link below:</p>
                <p class="text-left">https://www.Krowdspace.com</p>
                <p class="text-left">If you have any questions or concerns please contact us and thank you for your understanding!</p>
            </div>
            <div class="register-controls">
                <div class="col-xs-offset-3 col-xs-6">
                    <p class="pull-left"><a class="back-project previous-ig">PREVIOUS</a></p>
                    <p class="pull-right"><a class="back-project next-ig next-step">NEXT</a></p>
                </div>
                <div class="clearfix"></div>
            </div>
        </fieldset>
        <!-- INDIEGOGO PAGE 4 -->
        <fieldset id="service_terms" class="service_terms2">
            <!-- INDIEGOGO PAGE 3 QUESTION 1 -->
            <div class="col-sm-12">
                <p class="text-left landing-text">TERMS AND CONDITIONS</p>
                <p class="text-left">Krowdspace is not liable for any damages or losses related to using our services.</p>
                <p class="text-left">Project owners are legally bound to fullfill any rewards promised to the Krowdspace users.</p>
                <p class="text-left">Krowdspace is not responsible for the puncuality and delivery of the rewards and will not become involved between user disputes.</p>
                <p class="text-left">I have read through and understand the Terms of Service in relation to Krowdspace.</p>
                <div class="login-box">
                    <label>
                    <input class="check-box" type="checkbox" value="krowdspaceTerms2" name="krowdspaceTerms2" /><span>I agree to <a href="#modal-service-terms" data-toggle="modal" class="home-links">Krowdspace terms</a></span>
                    </label>
                </div>
            </div>
            <div class="register-controls" >
                <div class="col-xs-offset-3 col-xs-6">
                    <p class="pull-left"><a class="back-project previous-ig">PREVIOUS</a></p>
                    <p class="pull-right"><input class="back-project" type="submit" value="SUBMIT" name="submit"></p>
                </div>
            </div>
        </fieldset>
    </form>
<script>
        projectPrevious()
        {
            $( ".kickstarter-registration" ).hide();
            $( ".indiegogo-registration" ).hide();
            $( ".project-select-page" ).show();
        };

        
        indiegogo(e)
        {
            e.preventDefault();
        
            let PVALID = this.refs.indiegogoValid.value,
                CATEGORY = this.refs.indiegogoCategory.value,
                DOMAINURL = 'https://www.indiegogo.com/projects/',
                URL =  this.refs.indiegogoID.value,
                REWARD = this.refs.indiegogoReward.value,
                REWARDVALUE = this.refs.indiegogoOption.value,
                IGREWARD = this.refs.indiegogoPerk.value,
                REWARDAMOUNT = this.refs.indiegogoValue.value;
        
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
            	$(".next-ig").click(function(){
            		var form = $("#registerIndiegogo");
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
            				indiegogoOwner: {
            					required: true,
            				},
            				indiegogoCategory : {
            					required: true,
            				},
            				indiegogoPerk: {
            					required: true,
            				},
            				indiegogoProject:{
            					required: true,
            				},
            				indiegogoReward:{
            					required: true,
            				},
            				indiegogoValue: {
            					required: true,
                                
            				},
            				indiegogoAmount: {
            					required: true,
                              number: true,
            				},
                            krowdspaceTerms2: {
            					required: true,
            				},
            				
            			},
            			messages: {
            				indiegogoOwner: {
            					required: "",
            				},
            				indiegogoCategory: {
            					required: "",
            				},
            				indiegogoPerk: {
            					required: "",
            				},
            				indiegogoProject: {
            					required: "",
            				},
            				indiegogoReward: {
            					required: "",
            				},
                            indiegogoValue: {
            					required: "",
            				},
                            indiegogoAmount: {
            					required: "",
            				},
                          krowdspaceTerms2: {
            					required: "",
            				},
            			}
            		});
            		if (form.valid() === true){
            			if ($('.project_information2').is(":visible")){
            				current_fs = $('.project_information2');
            				next_fs = $('.reward_information2');
            			}else if($('.reward_information2').is(":visible")){
            				current_fs = $('.reward_information2');
            				next_fs = $('.project_verify2');
            			}else if($('.project_verify2').is(":visible")){
            				current_fs = $('.project_verify2');
            				next_fs = $('.service_terms2');
            			}
            			
            			next_fs.show(); 
            			current_fs.hide();
            		}
            	});
            
            	$('.previous-ig').click(function(){
            		if($('.reward_information2').is(":visible")){
            			current_fs = $('.reward_information2');
            			next_fs = $('.project_information2');
            		}else if ($('.project_verify2').is(":visible")){
            			current_fs = $('.project_verify2');
            			next_fs = $('.reward_information2');
            		}else if ($('.service_terms2').is(":visible")){
            			current_fs = $('.service_terms2');
            			next_fs = $('.project_verify2');
            		}
            		next_fs.show(); 
            		current_fs.hide();
            	});
            });
    </script>
</register-indiegogo-form>