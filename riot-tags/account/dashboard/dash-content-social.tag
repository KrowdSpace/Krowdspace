<dash-content-social>
        <div class="social-container">
			<div style="position:absolute; top: -20px;">
			<fb:login-button scope="public_profile,email" onlogin="checkLoginState();"></fb:login-button>
			</div>
            <div class="social-header-dropdown text-center">
				<p class="social-title">SOCIAL MEDIA</p>
				<ul class="add-dropdown text-right">
					<li class="dropdown">
						<a href="#" id="dropdown-image" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-plus plus-dropdown" aria-hidden="true"></i></a>
						<ul class="dropdown-menu add-dropdown-menu">
							<li><a>BOOST SINGLE POST</a></li>
							<li><a href="#" data-toggle="modal" class="dropdown-general drop-list">BOOST ALL POSTS</a></li>
						</ul>
					</li>
				</ul>
        	</div>
            <div class="text-center social-slider-box single-item">
                <div data-index="1">
                    <span class="fa-stack fa-3x"><i class="fa fa-square fa-stack-2x social-fb-color"></i><i class="fa fa-facebook fa-stack-1x fa-inverse social-icon-text"></i></span>
                </div>
                <div data-index="2">
                    <span class="fa-stack fa-3x"><i class="fa fa-square fa-stack-2x social-tw-color"></i><i class="fa fa-twitter fa-stack-1x fa-inverse social-icon-text"></i></span>
                </div>
                <div data-index="3">
                    <span class="fa-stack fa-3x"><i class="fa fa-square fa-stack-2x social-pt-color"></i><i class="fa fa-pinterest fa-stack-1x fa-inverse social-icon-text"></i></span>
                </div>
                <div data-index="4">
                    <span class="fa-stack fa-3x"><i class="fa fa-square fa-stack-2x social-ig-color"></i><i class="fa fa-instagram fa-stack-1x fa-inverse social-icon-text"></i></span>
                </div>
            </div>
            <div class="social-content-box slider-social one" data-id="1">
                <p class="text-center social-content-title">FACEBOOK METRICS</p>
                <div class="col-sm-6 social-metric-left">
                    <div class="divider-inside-right">
						<!-- FACEBOOK IMPRESSION GO HERE -->
                        <p id ="FBimpressions" class="text-center social-metric">0</p>
                        <p class="text-center social-content-sub">IMPRESSIONS</p>
                    </div>
                </div>
                <div class="col-sm-6 social-content-box-right">
					<!-- FACEBOOK REACTIONS GO HERE -->
                    <p id="FBreactions" class="text-center social-metric">0</p>
                    <p class="text-center social-content-sub">REACTIONS</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="social-content-box slider-social two" data-id="2">
                <p class="text-center social-content-title">TWITTER METRICS</p>
                <div class="col-sm-6 social-metric-left">
                    <div class="divider-inside-right">
						<!-- TWITTER REACH GOES HERE -->
                        <p class="text-center social-metric">0</p>
                        <p class="text-center social-content-sub">IMPRESSIONS</p>
                    </div>
                </div>
                <div class="col-sm-6 social-content-box-right">
					<!-- TWITTER LIKES GO HERE -->
                    <p id ="" class="text-center social-metric">0</p>
                    <p class="text-center social-content-sub">LIKES</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="social-content-box slider-social three" data-id="3">
                <p class="text-center social-content-title">PINTEREST METRICS</p>
                <div class="col-sm-6 social-metric-left">
                    <div class="divider-inside-right">
						<!-- PINTEREST REPINS GO HERE -->
                        <p id="pinterestPins" class="text-center social-metric">0</p>
                        <p class="text-center social-content-sub">REPINS</p>
                    </div>
                </div>
                <div class="col-sm-6 social-content-box-right">
					<!-- PINTEREST COMMENST GO HERE -->
                    <p id ="pinterestComments" class="text-center social-metric">0</p>
                    <p class="text-center social-content-sub">COMMENTS</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="social-content-box slider-social four" data-id="4">
                <p class="text-center social-content-title">INSTAGRAM METRICS</p>
                <div class="col-sm-6 social-metric-left">
                    <div class="divider-inside-right">
						<!-- INSTAGRAM LIKES -->
                        <p id="instagramLikes" class="text-center social-metric">0</p>
                        <p class="text-center social-content-sub">POST LIKES</p>
                    </div>
                </div>
                <div class="col-sm-6 social-content-box-right">
					<!-- INSTAGRAM COMMENTS -->
                    <p id="instagramComments" class="text-center social-metric">0</p>
                    <p class="text-center social-content-sub">COMMENTS</p>
                </div>
				<div class="clearfix"></div>
            </div>
        </div>
<script>
    // Social Media Slider Controls
    this.on('mount', function() {
        $('.single-item').slick({
            dots: false,
            arrows: true,
            infinite: true,
        });
        $('.single-item').on('afterChange', function(event, slick, currentSlide) {
            $('.slider-social').hide();
            $('.slider-social[data-id=' + (currentSlide + 1) + ']').show();
        });
    });
	
    // Social Media Widget Dropdown Menu
    this.on('mount', function() {
        $("#dropdown-image").click(function() {
            $(".dropdown-menu").toggle(300);
        });
    });
</script>
</dash-content-social>