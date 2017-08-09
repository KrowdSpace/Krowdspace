<register-content-signup>
<style>
@media screen and (max-width: 560px) {
        .shadow {
        -webkit-box-shadow: none;
        -moz-box-shadow: none;
        }
        .link-left {
            padding-right: 0px !important;
        }
        .register-background {
            border: none;
        }
    }
</style>
    <div class="no-gutter register-background shadow">
        <div class="col-lg-5 hidden-md hidden-sm hidden-xs register">
            <img class="img-responsive" src="/img/projects/krowdspace-register.png">
            <p class="text-center register-cta">Register your crowdfunding campaign and accelerate your growth today!</p>
        </div>
        <div class="col-lg-7 col-md-12">
            <div class="registration-box shadow">
            <div class="project-select-page">
                <p style="margin: 40px auto 70px auto; text-align: center; font-size: 22px;">Start by choosing your platform</p>
                <div class="col-xs-push-1 col-xs-6 indiegogo-register text-center">
                <a class="indiegogo-register" type="button" onClick={ indiegogoForm }><img class="img-responsive" src="img/fav/indiegogo-icon.svg" style="width: 100px; margin-left: auto; margin-right: auto;"></a>
            <p style="padding-top: 10px;">Indiegogo</p>    
            </div>
        

            <div class="col-xs-pull-1 col-xs-6 kickstarter-register text-center">
                <a class="kickstarter-register" type="button" onClick={ kickstarterForm }><img class="img-responsive" src="img/fav/kickstarter-icon.svg" style="width: 100px; margin-left: auto; margin-right: auto;"></a>
            <p style="padding-top: 10px;">Kickstarter</p>    
            </div>
        </div>
                <form class="kickstarter-registration registerProjectForm" id="registerProjectForm" onsubmit={ kickstarter } style="display:none;">
                <fieldset id="project_information" class="project_information">
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">Do you own this crowdfunding project?</p>
                        <select ref="kickstarterValid" type="text" class="form-control" name="projectOwner">
                            <option disabled selected value>Select Yes or No</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select>
                    </div>
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">What category best fits your project?</p>
                        <select ref="kickstarterCategory" type="text" class="form-control" name="projectCategory">
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
                    <div class="form-group col-sm-12 no-gutter">
                  <p class="text-left registration-text">Please provide your live crowdfunding project url.</p>
                  <div class="col-xs-4 form-group link-left">
                     <input type="text" class="form-control" name="crowdSite" value="Kickstarter.com" readonly>
                     </input>
                  </div>
                  <div class="form-group col-xs-8 link-right">
                     <input ref="kickstarterLink" type="text" class="form-control" name="projectLink" placeholder="/project/project-url">
                  </div>
               </div>
                   <div class="register-controls">
                  <div class="col-xs-offset-3 col-xs-6">
                     <p onClick={ projectPrevious } class="pull-left"><a id="project-previous" class="back-project">PREVIOUS</a></p>
                     <p class="pull-right"><a class="back-project next next-step">NEXT</a></p>
                  </div>
               </div>
                </fieldset>
                <fieldset id="reward_information" class="reward_information">
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">Please provide an exclusive reward for our Krowdspace users.</p>
                        <input ref="kickstarterReward" class="form-control" name="reward" maxlength="110" placeholder="See Sample Rewards Below ( Max Character 110 )">
                    </div>
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">Does your reward have a value or is it a discount?</p>
                        <select ref="kickstarterOption" class="form-control" name="rewardValue">
                            <option disabled selected value>Choose an Option</option>
                            <option value="Yes">Reward has a Value</option>
                            <option value="No">Reward is a Discount</option>
                        </select>
                    </div>
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">Please estimate the value of your reward.</p>
                        <input ref="kickstarterValue" class="form-control" name="rewardAmount">
                    </div>
                
                    <div class="register-controls">
                        <div class="col-xs-offset-3 col-xs-6">
                            <p class="pull-left"><a class="back-project previous">PREVIOUS</a></p>
                            <p class="pull-right"><a class="back-project next next-step">NEXT</a></p>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="project_verify" class="project_verify">
                    <div class="col-sm-12">
                        <p class="text-left registration-text" style="margin-top: 10px;">PROJECT VERIFICATION</p>
                        <p class="text-left registration-text">To verify that you are the project owner please upload one of the images from our <a href="#modal-press-kit" data-toggle="modal" class="modal-link home-links">Press Kit</a> area onto your crowdfunding project. This will prevent any false submissions and let us know you are indeed the owner.</p>
                        <p class="text-left registration-text">The image that you select will need to be hyperlinked back to Krowdspace. We are verifying the actual hyperlink and not just the image being present. Please use the link below:</p>
                        <p class="text-left registration-text">https://www.Krowdspace.com</p>
                        <p class="text-left registration-text">If you have any questions or concerns please contact us and thank you for your understanding!</p>
                    </div>
                    <div class="register-controls">
                        <div class="col-xs-offset-3 col-xs-6">
                            <p class="pull-left"><a class="back-project previous">PREVIOUS</a></p>
                            <p class="pull-right"><a class="back-project next next-step">NEXT</a></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </fieldset>
                <fieldset id="service_terms" class="service_terms">
                    <div class="col-sm-12">
                        <p class="text-left registration-text" style="margin-top: 10px;">TERMS AND CONDITIONS</p>
                        <p class="text-left registration-text">Krowdspace is not liable for any damages or losses related to using our services.</p>
                        <p class="text-left registration-text">Project owners are legally bound to fullfill any rewards promised to the Krowdspace users.</p>
                        <p class="text-left registration-text">Krowdspace is not responsible for the puncuality and delivery of the rewards and will not become involved between user disputes.</p>
                        <p class="text-left registration-text">I have read through and understand the Terms of Service in relation to Krowdspace.</p>
                        <div class="check-terms checkbox">
                            <label>
                            <input type="checkbox" value="checked" name="serviceTerms" required minlength="1" aria-required="true"><span class="registration-text">I agree to <a href="#modal-service-terms" data-toggle="modal" class="home-links registration-text">Krowdspace terms</a></span>
                            </label>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="register-controls" >
                        <div class="col-xs-offset-3 col-xs-6">
                            <p class="pull-left"><a class="back-project previous">PREVIOUS</a></p>
                            <p class="pull-right"><input class="back-project" type="submit" value="SUBMIT" name="submit"></p>
                        </div>
                    </div>
                </fieldset>
                </form>
                <form class="indiegogo-registration registerProjectForm" id="registerProjectForm2" onsubmit={ indiegogo } style="display:none;">
                <fieldset id="project_information" class="project_information2">
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">Do you own this crowdfunding project?</p>
                        <select ref="indiegogoValid" type="text" class="form-control" name="projectOwner2">
                            <option disabled selected value>Select Yes or No</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select>
                    </div>
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">What category best fits your project?</p>
                        <select ref="indiegogoCategory" type="text" class="form-control" name="projectCategory2">
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
                <div class="form-group col-sm-12 indiegogo-registration" style="display: none;">
                  <p class="text-left registration-text">What is your Indiegogo secret perk url? <a href="#modal-register-perk" data-toggle="modal" class="modal-link home-links">Need Help?</a></p>
                  <input ref="indiegogoPerk" type="text" class="form-control" name="projectLink2" placeholder="www.indiegogo.com/secret-perk-url">
               </div>
               <div class="form-group col-sm-12 no-gutter indiegogo-registration" style="display: none;">
                  <p class="text-left registration-text">Please provide your project ID. <a href="#modal-register-id" data-toggle="modal" class="modal-link home-links">Need Help?</a></p>
                  <div class="col-sm-6 form-group link-left">
                     <input type="text" class="form-control" name="crowdSite2" value="Indiegogo.com/projects/" readonly>
                     </input>
                  </div>
                  <div class="form-group col-sm-6 link-right">
                     <input ref="indiegogoID" type="number" class="form-control" placeholder="2152186">
                  </div>
             
               </div>
                   <div class="register-controls">
                  <div class="col-xs-offset-3 col-xs-6">
                     <p onClick={ projectPrevious } class="pull-left"><a id="project-previous" class="back-project">PREVIOUS</a></p>
                     <p class="pull-right"><a class="back-project next2 next-step">NEXT</a></p>
                  </div>
               </div>
                </fieldset>
                <fieldset id="reward_information" class="reward_information2">
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">Please provide an exclusive reward for our Krowdspace users.</p>
                        <input ref="indiegogoReward" class="form-control" name="reward2" maxlength="110" placeholder="See Sample Rewards Below ( Max Character 110 )">
                    </div>
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">Does your reward have a value or is it a discount?</p>
                        <select ref="indiegogoOption" class="form-control" name="rewardValue2">
                            <option disabled selected value>Choose an Option</option>
                            <option value="Yes">Reward has a Value</option>
                            <option value="No">Reward is a Discount</option>
                        </select>
                    </div>
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">Please estimate the value of your reward.</p>
                        <input ref="indiegogoValue" class="form-control" name="rewardAmount2">
                    </div>
                
                    <div class="register-controls">
                        <div class="col-xs-offset-3 col-xs-6">
                            <p class="pull-left"><a class="back-project previous2">PREVIOUS</a></p>
                            <p class="pull-right"><a class="back-project next2 next-step">NEXT</a></p>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="project_verify" class="project_verify2">
                    <div class="col-sm-12">
                        <p class="text-left registration-text" style="margin-top: 10px;">PROJECT VERIFICATION</p>
                        <p class="text-left registration-text">To verify that you are the project owner please upload one of the images from our <a href="#modal-press-kit" data-toggle="modal" class="modal-link home-links">Press Kit</a> area onto your crowdfunding project. This will prevent any false submissions and let us know you are indeed the owner.</p>
                        <p class="text-left registration-text">The image that you select will need to be hyperlinked back to Krowdspace. We are verifying the actual hyperlink and not just the image being present. Please use the link below:</p>
                        <p class="text-left registration-text">https://www.Krowdspace.com</p>
                        <p class="text-left registration-text">If you have any questions or concerns please contact us and thank you for your understanding!</p>
                    </div>
                    <div class="register-controls">
                        <div class="col-xs-offset-3 col-xs-6">
                            <p class="pull-left"><a class="back-project previous2">PREVIOUS</a></p>
                            <p class="pull-right"><a class="back-project next2 next-step">NEXT</a></p>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </fieldset>
                <fieldset id="service_terms" class="service_terms2">
                    <div class="col-sm-12">
                        <p class="text-left registration-text" style="margin-top: 10px;">TERMS AND CONDITIONS</p>
                        <p class="text-left registration-text">Krowdspace is not liable for any damages or losses related to using our services.</p>
                        <p class="text-left registration-text">Project owners are legally bound to fullfill any rewards promised to the Krowdspace users.</p>
                        <p class="text-left registration-text">Krowdspace is not responsible for the puncuality and delivery of the rewards and will not become involved between user disputes.</p>
                        <p class="text-left registration-text">I have read through and understand the Terms of Service in relation to Krowdspace.</p>
                        <div class="check-terms checkbox">
                            <label>
                            <input type="checkbox" value="checked" name="serviceTerms2" required minlength="1" aria-required="true"><span class="registration-text">I agree to <a href="#modal-service-terms" data-toggle="modal" class="home-links registration-text">Krowdspace terms</a></span>
                            </label>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="register-controls" >
                        <div class="col-xs-offset-3 col-xs-6">
                            <p class="pull-left"><a class="back-project previous2">PREVIOUS</a></p>
                            <p class="pull-right"><input class="back-project" type="submit" value="SUBMIT" name="submit"></p>
                        </div>
                    </div>
                </fieldset>
                </form>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="col-sm-12 text-center">
        <p style="font-size: 13px; padding-top: 25px;">For more information about Krowdspace Rewards please view our <a href="#modal-global-rewards" data-toggle="modal" class="home-links">Reward Page</a>.</p>
    </div>
    <script>

    indiegogoForm()
      {
          $( ".indiegogo-registration" ).show();
          $( ".indiegogo-register" ).hide();
          $( ".kickstarter-register" ).hide();
          $( ".project-select-page" ).hide();
      };
      kickstarterForm()
      {
          $( ".kickstarter-registration" ).show();
          $( ".kickstarter-register" ).hide();
          $( ".indiegogo-register" ).hide();
          $( ".project-select-page" ).hide();
      };
      projectPrevious()
      {
          $( ".kickstarter-registration" ).hide();
          $( ".indiegogo-registration" ).hide();
          $( ".kickstarter-register" ).show();
          $( ".indiegogo-register" ).show();
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
        
            krowdspace.register.project(DATA).then
            ((res) =>
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
        
            krowdspace.register.project(DATA).then
            ((res) =>
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
        	$(".next").click(function(){
        		var form = $("#registerProjectForm");
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
        				projectOwner: {
        					required: true,
        				},
        				projectCategory : {
        					required: true,
        				},
        				crowdSite : {
        					required: true,
        				},
        				projectLink:{
        					required: true,
        				},
        				reward:{
        					required: true,
        				},
        				rewardValue: {
        					required: true,
                            
        				},
        				rewardAmount: {
        					required: true,
                          number: true,
        				},
                      serviceTerms: {
        					required: true,
        				},
        				
        			},
        			messages: {
        				projectOwner: {
        					required: "",
        				},
        				projectCategory : {
        					required: "",
        				},
        				crowdSite : {
        					required: "",
        				},
        				projectLink: {
        					required: "",
        				},
        				reward: {
        					required: "",
        				},
                      rewardValue: {
        					required: "",
        				},
                      rewardAmount: {
        					required: "",
        				},
                      serviceTerms: {
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
        
        	$('.previous').click(function(){
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
    this.on('mount', function() 
        {
        	$(".next2").click(function(){
        		var form = $("#registerProjectForm2");
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
        				projectOwner2: {
        					required: true,
        				},
        				projectCategory2 : {
        					required: true,
        				},
        				crowdSite2 : {
        					required: true,
        				},
        				projectLink2:{
        					required: true,
        				},
        				reward2:{
        					required: true,
        				},
        				rewardValue2: {
        					required: true,
                            
        				},
        				rewardAmount2: {
        					required: true,
                          number: true,
        				},
                      serviceTerms2: {
        					required: true,
        				},
        				
        			},
        			messages: {
        				projectOwner2: {
        					required: "",
        				},
        				projectCategory2 : {
        					required: "",
        				},
        				crowdSite2 : {
        					required: "",
        				},
        				projectLink2: {
        					required: "",
        				},
        				reward2: {
        					required: "",
        				},
                      rewardValue2: {
        					required: "",
        				},
                      rewardAmount2: {
        					required: "",
        				},
                      serviceTerms2: {
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
        
        	$('.previous2').click(function(){
        		if($('.reward_information').is(":visible")){
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
</register-content-signup>