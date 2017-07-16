<register-content-signup>
    <div class="no-gutter register-background shadow">
        <div class="col-sm-5 register">
            <img class="img-responsive" src="/img/projects/krowdspace-register.png">
            <p class="text-center register-cta">Register your crowdfunding campaign and accelerate your growth today!</p>
        </div>
        <form class="col-sm-7" id="registerProjectForm" onsubmit={ submit }>
            <div class="registration-box shadow">
                <fieldset id="project_information">
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">Do you own this crowdfunding project?</p>
                        <select ref="pvalid" type="text" class="form-control" name="projectOwner">
                            <option disabled selected value>Select Yes or No</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>
                        </select>
                    </div>
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">What category best fits your project?</p>
                        <select ref="category" type="text" class="form-control" name="projectCategory">
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
                        <div class="form-group col-sm-4 link-left">
                            <select ref="crowdportal" type="text" class="form-control" name="crowdSite">
                                <option disabled selected value>Choose Site</option>
                                <option value="https://www.kickstarter.com/">Kickstarter.com</option>
                                <option value="https://www.indiegogo.com/">Indiegogo.com</option>
                            </select>
                        </div>
                        <div class="form-group col-sm-8 link-right">
                            <input ref="projecturl" type="text" class="form-control" name="projectLink" placeholder="/project/project-url">
                        </div>
                    </div>
                    <div class="register-controls text-center">
                        <p><a class="back-project next next-step">NEXT</a></p>
                    </div>
                </fieldset>
                <fieldset id="reward_information">
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">Please provide an exclusive reward for our Krowdspace users.</p>
                        <input ref="rewardtext" class="form-control" name="reward" maxlength="110" placeholder="See Sample Rewards Below ( Max Character 110 )">
                    </div>
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">Does your reward have a value or is it a discount?</p>
                        <select ref="rewardoption" class="form-control" name="rewardValue">
                            <option disabled selected value>Choose an Option</option>
                            <option value="Yes">Reward has a Value</option>
                            <option value="No">Reward is a Discount</option>
                        </select>
                    </div>
                    <div class="form-group col-sm-12">
                        <p class="text-left registration-text">Please estimate the value of your reward.</p>
                        <input ref="rewardvalue" class="form-control" name="rewardAmount">
                    </div>
                    <div class="register-controls">
                        <div class="col-lg-offset-3 col-lg-6">
                            <p class="pull-left"><a class="back-project previous">PREVIOUS</a></p>
                            <p class="pull-right"><a class="back-project next next-step">NEXT</a></p>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="project_verify">
                    <div class="col-sm-12">
                        <p class="text-left registration-text" style="margin-top: 10px;">PROJECT VERIFICATION</p>
                        <p class="text-left registration-text">To verify that you are the project owner please upload one of the images from our <a href="#modal-press-kit" data-toggle="modal" class="modal-link home-links">Press Kit</a> area onto your crowdfunding project. This will prevent any false submissions and let us know you are indeed the owner.</p>
                        <p class="text-left registration-text">The image that you select will need to be hyperlinked back to Krowdspace. We are verifying that actual hyperlink and not just the image being present. Please use the link below:</p>
                        <p class="text-left registration-text">https://www.Krowdspace.com</p>
                        <p class="text-left registration-text">If you have any questions or concerns please contact us and thank you for your understanding!</p>
                    </div>
                    <div class="register-controls">
                        <div class="col-lg-offset-3 col-lg-6">
                            <p class="pull-left"><a class="back-project previous">PREVIOUS</a></p>
                            <p class="pull-right"><a class="back-project next next-step">NEXT</a></p>
                        </div>
                    </div>
                </fieldset>
                <fieldset id="service_terms">
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
                    </div>
                    <div class="register-controls" >
                        <div class="col-lg-offset-3 col-lg-6">
                            <p class="pull-left"><a class="back-project previous">PREVIOUS</a></p>
                            <p class="pull-right"><input class="back-project" type="submit" value="SUBMIT" name="submit"></p>
                        </div>
                    </div>
                </fieldset>
            </div>
        </form>
        <div class="clearfix"></div>
    </div>
    <div class="col-sm-12 text-center">
        <p style="font-size: 13px; padding-top: 25px;">For more information about Krowdspace Rewards please view our <a href="#modal-global-rewards" data-toggle="modal" class="home-links">Reward Page</a>.</p>
    </div>
    <script>
        submit(e)
        {
            e.preventDefault();
        
            let PVALID = this.refs.pvalid.value,
                CATEGORY = this.refs.category.value,
                DOMAINURL = this.refs.crowdportal.options[this.refs.crowdportal.selectedIndex].value,
                URL =  this.refs.projecturl.value,
                REWARD = this.refs.rewardtext.value,
                REWARDVALUE = this.refs.rewardoption.value,
                IGREWARD = 'test',
                REWARDAMOUNT = this.refs.rewardvalue.value;
        
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
        			if ($('#project_information').is(":visible")){
        				current_fs = $('#project_information');
        				next_fs = $('#reward_information');
        			}else if($('#reward_information').is(":visible")){
        				current_fs = $('#reward_information');
        				next_fs = $('#project_verify');
        			}else if($('#project_verify').is(":visible")){
        				current_fs = $('#project_verify');
        				next_fs = $('#service_terms');
        			}
        			
        			next_fs.show(); 
        			current_fs.hide();
        		}
        	});
        
        	$('.previous').click(function(){
        		if($('#reward_information').is(":visible")){
        			current_fs = $('#reward_information');
        			next_fs = $('#project_information');
        		}else if ($('#project_verify').is(":visible")){
        			current_fs = $('#project_verify');
        			next_fs = $('#reward_information');
        		}else if ($('#service_terms').is(":visible")){
        			current_fs = $('#service_terms');
        			next_fs = $('#project_verify');
        		}
        		next_fs.show(); 
        		current_fs.hide();
        	});
        });
    </script>
</register-content-signup>