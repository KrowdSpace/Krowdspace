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
            <img class="img-responsive" src="/img/content/krowdspace-register.png">
            <p class="text-center register-cta">Register your crowdfunding campaign and accelerate your growth today!</p>
        </div>
        <div class="col-lg-7 col-md-12">
            <div class="registration-box shadow">
                <div class="project-select-page">
                    <p class="register-title" >Start by choosing your platform</p>
                    <div class="col-xs-push-1 col-xs-6 indiegogo-register text-center">
                        <a class="indiegogo-register" type="button" onClick={ indiegogoForm }><img class="img-responsive register-icons" src="img/fav/indiegogo-icon.svg"></a>
                        <p class="landing-text">Indiegogo</p>
                    </div>
                    <div class="col-xs-pull-1 col-xs-6 kickstarter-register text-center">
                        <a class="kickstarter-register" type="button" onClick={ kickstarterForm }><img class="img-responsive register-icons" src="img/fav/kickstarter-icon.svg"></a>
                        <p class="landing-text">Kickstarter</p>
                    </div>
                </div>
                <register-kickstarter-form></register-kickstarter-form>
                <register-indiegogo-form></register-indiegogo-form>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="col-sm-12 text-center">
        <p class="register-rewards" >For more information about Krowdspace Rewards please view our <a href="#modal-global-rewards" data-toggle="modal" class="home-links">Reward Page</a>.</p>
    </div>
<script>
    indiegogoForm()
        {
            $( ".indiegogo-registration" ).show();
            $( ".project-select-page" ).hide();
        };
        kickstarterForm()
        {
            $( ".kickstarter-registration" ).show();
            $( ".project-select-page" ).hide();
        };
</script>
</register-content-signup>