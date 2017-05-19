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
                        <p id ="FBimpressions" class="text-center social-metric"></p>
                        <p class="text-center social-content-sub">IMPRESSIONS</p>
                    </div>
                </div>
                <div class="col-sm-6 social-content-box-right">
					<!-- FACEBOOK REACTIONS GO HERE -->
                    <p id="FBreactions" class="text-center social-metric"></p>
                    <p class="text-center social-content-sub">REACTIONS</p>
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
                    <p id ="FBreactions" class="text-center social-metric"></p>
                    <p class="social-content-sub">TODAY<span class="social-content-right"><i class="fa fa-caret-up" aria-hidden="true"></i> 2%</span></p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="social-content-box slider-social three" data-id="3">
                <p class="text-center social-content-title">PINTEREST METRICS</p>
                <div class="col-sm-6 social-metric-left">
                    <div class="divider-inside-right">
						<!-- PINTEREST REPINS GO HERE -->
                        <p id="PIrepins" class="text-center social-metric"></p>
                        <p class="text-center social-content-sub">REPINS</p>
                    </div>
                </div>
                <div class="col-sm-6 social-content-box-right">
					<!-- PINTEREST COMMENST GO HERE -->
                    <p id ="PIcomments" class="text-center social-metric"></p>
                    <p class="text-center social-content-sub">COMMENTS</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="social-content-box slider-social four" data-id="4">
                <p class="text-center social-content-title">INSTAGRAM METRICS</p>
                <div class="col-sm-6 social-metric-left">
                    <div class="divider-inside-right">
						<!-- INSTAGRAM LIKES -->
                        <p id="IGlikes" class="text-center social-metric"></p>
                        <p class="text-center social-content-sub">POST LIKES</p>
                    </div>
                </div>
                <div class="col-sm-6 social-content-box-right">
					<!-- INSTAGRAM COMMENTS -->
                    <p id="IGcomments" class="text-center social-metric"></p>
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
        arrows:true,
        infinite: true,
	});
    $('.single-item').on('afterChange', function(event, slick, currentSlide){   
    	$('.slider-social').hide();
    	$('.slider-social[data-id=' + (currentSlide + 1) + ']').show();
    });	
});

// Social Media Widget Dropdown Menu
	
        this.on('mount', function() {
            $("#dropdown-image").click(function(){
                $(".dropdown-menu").toggle(300);
            });
        });

// Facebook API Call Likes on an individual post impressions
	
fetch('https://graph.facebook.com/v2.9/330201904004972_414542278904267/insights/post_impressions_organic_unique/?access_token=EAACEdEose0cBAMWZA9G8Xiij9UZBJoAvqgrIxoZAnQAqvN0qEwJviRLs6ZBOC6aNog3blr3WZARPZBYcV5dwZC0mNV7H51baaI6sAtxC6VZBj7UWQi6cGRMNeGZBZCCs72Ewo8USkYJJGejLy9FLBmaB9gDEvkBr45G6DiA4J0upN7IZAODOyuZCsKZBZBgLGp81Mkny4ZD').then(function(response) {
  return response.json();
}).then(function(data) {
  console.log(data.data[0].values[0]);
  document.getElementById('FBimpressions').innerHTML = data.data[0].values[0].value;
});

// Facebook API Call Likes on an individual post likes

fetch('https://graph.facebook.com/v2.9/330201904004972_414542278904267/insights/post_reactions_like_total/?access_token=EAACEdEose0cBAMWZA9G8Xiij9UZBJoAvqgrIxoZAnQAqvN0qEwJviRLs6ZBOC6aNog3blr3WZARPZBYcV5dwZC0mNV7H51baaI6sAtxC6VZBj7UWQi6cGRMNeGZBZCCs72Ewo8USkYJJGejLy9FLBmaB9gDEvkBr45G6DiA4J0upN7IZAODOyuZCsKZBZBgLGp81Mkny4ZD').then(function(response) {
  return response.json();
}).then(function(data) {
  console.log(data.data[0].values[0]);
    		document.getElementById('FBreactions').innerHTML = data.data[0].values[0].value;
});

	
// Instagram API Call Likes on an individual post 
	
fetch('https://api.instagram.com/v1/media/1500905039610194798/?access_token=4163437312.5f0ec4e.f66076806af249ae95f7dfdfc70c4c03').then(function(response) {
  return response.json();
}).then(function(data) {
  console.log(data.data.likes);
  document.getElementById('IGlikes').innerHTML = data.data.likes.count;
});

// Instagram API Call Comments on an individual post
	
fetch('https://api.instagram.com/v1/media/1500905039610194798/?access_token=4163437312.5f0ec4e.f66076806af249ae95f7dfdfc70c4c03').then(function(response) {
  return response.json();
}).then(function(data) {
  console.log(data.data.comments);
  document.getElementById('IGcomments').innerHTML = data.data.comments.count;
});
	
// Pinterest Access Token Af2Z8T8VO5uGNRB5Td_VLWWdlipSFL-MY2JRpYJEBLLJJmBBigAAAAA
	
fetch('https://api.pinterest.com/v1/pins/672162313105809308/?access_token=AcXfn0UPLaJJ9w_tSHbdvSARJ_seFL_I33XQkDlEBLLJJmBBigAAAAA&fields=counts').then(function(response) {
  return response.json();
}).then(function(data) {
  console.log(data.data.counts);
  document.getElementById('PIrepins').innerHTML = data.data.counts.repins;
  document.getElementById('PIcomments').innerHTML = data.data.counts.comments;
});
	
</script>
</dash-content-social>