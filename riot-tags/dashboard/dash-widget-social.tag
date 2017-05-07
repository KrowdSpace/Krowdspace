<dash-widget-social>
        <div class="social-container">
            <div class="social-header-dropdown">
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
                        <p class="text-center social-metric">435</p>
                        <p class="text-center social-content-sub">IMPRESSIONS</p>
                    </div>
                </div>
                <div class="col-sm-6 social-content-box-right">
                    <p class="text-center social-metric">14</p>
                    <p class="social-content-sub">TODAY<span class="social-content-right"><i class="fa fa-caret-up" aria-hidden="true"></i> 4%</span></p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="social-content-box slider-social two" data-id="2">
                <p class="text-center social-content-title">TWITTER METRICS</p>
                <div class="col-sm-6 social-metric-left">
                    <div class="divider-inside-right">
                        <p class="text-center social-metric">235</p>
                        <p class="text-center social-content-sub">IMPRESSIONS</p>
                    </div>
                </div>
                <div class="col-sm-6 social-content-box-right">
                    <p class="text-center social-metric">10</p>
                    <p class="social-content-sub">TODAY<span class="social-content-right"><i class="fa fa-caret-up" aria-hidden="true"></i> 2%</span></p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="social-content-box slider-social three" data-id="3">
                <p class="text-center social-content-title">PINTEREST METRICS</p>
                <div class="col-sm-6 social-metric-left">
                    <div class="divider-inside-right">
                        <p class="text-center social-metric">331</p>
                        <p class="text-center social-content-sub">IMPRESSIONS</p>
                    </div>
                </div>
                <div class="col-sm-6 social-content-box-right">
                    <p class="text-center social-metric">7</p>
                    <p class="social-content-sub">TODAY<span class="social-content-right"><i class="fa fa-caret-up" aria-hidden="true"></i> 3%</span></p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="social-content-box slider-social four" data-id="4">
                <p class="text-center social-content-title">INSTAGRAM METRICS</p>
                <div class="col-sm-6 social-metric-left">
                    <div class="divider-inside-right">
                        <p class="text-center social-metric">188</p>
                        <p class="text-center social-content-sub">IMPRESSIONS</p>
                    </div>
                </div>
                <div class="col-sm-6 social-content-box-right">
                    <p class="text-center social-metric">21</p>
                    <p class="social-content-sub">TODAY<span class="social-content-right"><i class="fa fa-caret-up" aria-hidden="true"></i> 3%</span></p>
                </div>
				<div class="clearfix"></div>
            </div>
        </div>
    <script>
this.on('mount', function() {
	$('.single-item').slick({
    	dots: false,
        arrows:true,
        infinite: true,
	});
    $('.single-item').on('afterChange', function(event, slick, currentSlide){   
    	$('.slider-social').hide();
    	$('.slider-social[data-id=' + (currentSlide + 1) + ']').show();
    });	
});
    </script>
	<script>
        this.on('mount', function() {
            $("#dropdown-image").click(function(){
                $(".dropdown-menu").toggle(300);
            });
        });
    </script>
</dash-widget-social>