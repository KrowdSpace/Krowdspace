<register-content-signup>
    <div class="row">
         <div class="col-sm-10 col-sm-offset-1 no-gutter profile-box">
            <p class="text-center register-confirmation">Register your crowdfunding campaign and accelerate your growth today!</p>
            <div class="wizard">
                <div class="wizard-inner">
                    <div class="connecting-line"></div>
                    <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" class="active">
                            <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">
                            <span class="round-tab">
                            <img class="img-responsive" src="/img/content/submit-icon-sq.png">
                            </span>
                            </a>
                        </li>
                        <li role="presentation" class="disabled">
                            <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
                            <span class="round-tab">
                            <img class="img-responsive" src="/img/content/reward-icon-sq.png">
                            </span>
                            </a>
                        </li>
                        <li role="presentation" class="disabled">
                            <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3">
                            <span class="round-tab">
                            <img class="img-responsive" src="/img/content/image-icon-sq.png">
                            </span>
                            </a>
                        </li>
                        <li role="presentation" class="disabled">
                            <a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Complete">
                            <span class="round-tab">
                            <img class="img-responsive" src="/img/content/backer-icon-sq.png">
                            </span>
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-8 col-sm-offset-2">
                    <form role="form" onsubmit={ submit }>
                        <div class="tab-content tab-content-wizard">
                            <div class="tab-pane active" role="tabpanel" id="step1">
                                <p class="text-left">Do you own this crowdfunding project?</p>
                                <div class="form-group">
                                    <select class="form-control" ref="pvalid" required="required" aria-required="true">
                                        <option disabled selected value>Select Yes or No</option>
                                        <option value="Yes">Yes</option>
                                        <option value="No">No</option>
                                    </select>
                                </div>
                                <p class="text-left project-questions">What category best fits your project?</p>
                                <div class="form-group">
                                    <select class="form-control" ref="category" required="required" aria-required="true">
                                        <option disabled selected value>Choose a Category</option>
                                        <option value="art">Art</option>
                                        <option value="design">Design</option>
                                        <option value="film">Film</option>
                                        <option value="food">Food</option>
                                        <option value="music">Music</option>
                                        <option value="photography">Photography</option>
                                        <option value="technology">Technology</option>
                                        <option value="videogames">Video Games</option>
                                        <option value="publishing">Publishing</option>
                                    </select>
                                </div>
                                <p class="text-left project-questions">Please provide your live crowdfunding project url.</p>
                                <div class="form-group">
                                    <input type="url" ref="projecturl" class="form-control placeholder-color" placeholder="https://" required="required" aria-required="true" aria-invalid="true">
                                </div>
                                <ul class="list-inline pull-right" style="position: absolute; bottom: 0; right: 0;">
                                    <li style="padding: 0px;"><button type="button" class="btn-register next-step">continue</button></li>
                                </ul>
                            </div>
                            <div class="tab-pane" role="tabpanel" id="step2">
                                <p class="text-left">Please provide an exclusive reward for our Krowdspace users. see examples</p>
                                <div class="form-group">
                                    <input ref="reward" class="form-control placeholder-color" placeholder="Backer Rewards" required="required" aria-required="true" aria-invalid="true">
                                </div>
                                <p class="text-left project-questions">Does your reward have a value or is it a discount?</p>
                                <div class="form-group">
                                    <select class="form-control" ref="rewardoption" required="required" aria-required="true">
                                        <option disabled selected value>Choose an Option</option>
                                        <option value="Yes">Reward has a Value</option>
                                        <option value="No">Reward is a Discount</option>
                                    </select>
                                </div>
                                <p class="text-left project-questions">Please provide the dollar amount or discount percentage of the reward.</p>
                                <div class="form-group">
                                    <input ref="rewardvalue" class="form-control placeholder-color" placeholder="Estimated Value or Discount Percentage" required="required" aria-required="true" aria-invalid="true">
                                </div>
                                <ul class="list-inline pull-right" style="position: absolute; bottom: 0; right: 0;">
                                    <li style="padding: 0px; margin-right: 20px;"><button type="button" class="btn-register prev-step">Previous</button></li>
                                    <li style="padding: 0px;"><button type="button" class="btn-register next-step">continue</button></li>
                                </ul>
                            </div>
                            <div class="tab-pane" role="tabpanel" id="step3">
                                <div class="imageupload panel panel-default">
                                    <div class="panel-image clearfix no-gutter">
                                        <p class="text-left image-upload-text">Please upload a project image that represents your campaign as a whole. All images must be 1225 x 700px.</p>
                                    </div>
                                    <div class="file-tab panel-body">
                                        <label class="btn btn-default btn-file">
                                            <span style="image-upload-btn">Upload From Desktop</span>
                                            <!-- The file is stored here. -->
                                            <input type="file" name="image-file" class="thumbnail-tooltip" id="fileUpload" required="required">
                                        </label>
                                        <button type="button" class="btn btn-default">Remove</button>
                                    </div>
                                    <div class="url-tab panel-body">
                                        <div class="input-group">
                                            <input type="text" class="form-control hasclear placeholder-color" placeholder="Image URL">
                                            <div class="input-group-btn">
                                                <button type="button" class="btn btn-default">Submit</button>
                                            </div>
                                        </div>
                                        <!-- The URL is stored here. -->
                                        <input type="hidden" name="image-url" required="required">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <ul class="list-inline pull-right" style="position: absolute; bottom: 0; right: 0;">
                                    <li style="padding: 0px; margin-right: 20px;"><button type="button" class="btn-register prev-step">Previous</button></li>
                                    <li style="padding: 0px;"><button type="button" class="btn-register next-step">continue</button></li>
                                </ul>
                            </div>
                            <div class="tab-pane" role="tabpanel" id="complete">
                                <p class="text-left register-project-title">TERMS AND CONDITIONS</p>
                                <p class="text-left">Krowdspace is not liable for any damages or losses related to using our services.</p>
                                <p class="text-left">Project owners are legally bound to fullfill any rewards promised to the Krowdspace user.</p>
                                <p class="text-left">Krowdspace is not responsible for the puncuality and delivery of the rewards and will not become involved between user disputes.</p>
                                <p class="text-left">Project owners are obligated to respond promptly and truthfully to all questions posed to them by Krowdspace or Krowdspace users.</p>
                                <p class="text-left">You have read through and understand the terms and conditions of Krowdspace.</p>
                                <div class="check-terms checkbox">
                                    <label>
                                    <input type="checkbox" id="terms" value="checked" name="terms[]" required minlength="1" aria-required="true">I agree to <a class="modal-link" href="#">Krowdspace terms</a>
                                    </label>
                                </div>
                                <ul class="list-inline pull-right" style="position: absolute; bottom: 0; right: 0;">
                                    <li style="padding: 0px; margin-right: 20px;"><button type="button" class="btn-register prev-step">Previous</button></li>
                                    <li style="padding: 0px;"><button type="submit" name="submit" class="btn-register btn-info-full next-step">Submit Project</button></li>
                                </ul>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
<script>
 this.update(
    krowdspace.users.login("", "", "").then(
        (res) =>
		    {
                if(res.already_logged_in = true)
                {
                    this.logged_in = true;
                    this.update();
                    console.log(res);
                } else{
                    console.log("not logged in");
                }

            },
        (err) =>
			{
                console.log(err);
            })
        );
    submit(e)
    {
        e.preventDefault();

        let PVALID = this.refs.pvalid.value,
            CATEGORY = this.refs.category.value,
            URL = this.refs.projecturl.value,
            REWARD = this.refs.reward.value,
            REWARDVALUE = this.refs.rewardoption.value,
            REWARDAMOUNT = this.refs.rewardvalue.value;

        let DATA = {
                    PVALID,
                    CATEGORY,
                    URL,
                    REWARD,
                    REWARDVALUE,
                    REWARDAMOUNT,
                    };

        krowdspace.register.project(DATA).then
        ((res) =>
            {
            console.log('winning');
            },
        (err) =>
            {
            console.log(err);
            });
    }

</script>
    <script>
        this.on('mount', function()
        {
            var $imageupload = $('.imageupload');
            $imageupload.imageupload();
            $('#imageupload-disable').on('click', function()
            {
                    $imageupload.imageupload('disable');
                    $(this).blur();
            });

            $('#imageupload-enable').on('click', function()
            {
                $imageupload.imageupload('enable');
                $(this).blur();
            });

            $('#imageupload-reset').on('click', function()
            {
                $imageupload.imageupload('reset');
                $(this).blur();
            });
        });
    </script>
    <script>
        this.on('mount', function()
        {
            $(document).ready(function ()
            {
            //Initialize tooltips
                $('.nav-tabs > li a[title]').tooltip();
            //Wizard
                $('a[data-toggle="tab"]').on('show.bs.tab', function (e)
                {
                    var $target = $(e.target);
                    if ($target.parent().hasClass('disabled'))
                    {
                        return false;
                    }
            });

                $(".next-step").click(function (e)
                {
                    var $active = $('.wizard .nav-tabs li.active');
                    $active.next().removeClass('disabled');
                    nextTab($active);
                });

                $(".prev-step").click(function (e)
                {
                    var $active = $('.wizard .nav-tabs li.active');
                    prevTab($active);
                });
            });

            function nextTab(elem)
            {
                $(elem).next().find('a[data-toggle="tab"]').click();
            }
            function prevTab(elem)
            {
                $(elem).prev().find('a[data-toggle="tab"]').click();
            }
        });
    </script>
</register-content-signup>
