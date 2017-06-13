<home-modal-boosts>
    <div id="modal-boost" class="modal container fade">
		<div class="krowdspace-modal col-sm-10 col-sm-offset-1">
			<div id="modal" class="modal-content">
				<div class="modal-header">
					<button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button>
					<p class="modal-heading">Single Boosts And Descriptions</p>
				</div>
				<div class="modal-body">
					<p>Welcome to our single boost options for your live crowdfunding project. At Krowdspace we have experienced first-hand how difficult it can be to launch a crowdfunding campaign. We want to make the marketing of your project as easy as possible. If you are still on the fence about making a purchase, we recommend signing up and exploring our member’s area to see the true value of what we are offering. For a limited time, we are offering free social media posts and featured project packages on our landing page! For details and to see if you qualify please <a class="home-links" href="mailto:Mason@Krowdspace.com">contact us</a> directly. If you would like to purchase one of these single boost items please follow the "Make A Purchase" button and choose from the options.</p>
					<div class="row text-left no-gutter">
						<div class="col-md-4">
							<div class="boost-pricing">
								<p class="text-center"><strong>Social Media Posts</strong></p>
								<p class="text-center">$10</p>
								<p class="boost-description">We will post your project on our 4 social media channels. By purchasing this boost, you will see your project on our Facebook, Twitter, Pinterest and Instagram. All you need to provide is an image that represents your project. Our default message will be your project description unless stated otherwise.</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="boost-pricing">
								<p class="text-center"><strong>Newsletter Feature</strong></p>
								<p class="text-center">$10</p>
								<p class="boost-description">Your project will be sent to our highly targeted Krowdspace audience. It will be featured on our weekly newsletter and we will have a brief description and other URL's that will benefit your project. To assure valid emails and reduce our bounce rate, we use a double opt-in process for our newsletter subscribers.</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="boost-pricing">
								<p class="text-center"><strong>Featured Project Listing</strong></p>
								<p class="text-center">$15/30 Days</p>
								<p class="boost-description">Your crowdfunding project will be listed on the main search page of our explore area for 30 days or the duration of your project, whichever is less. It will have priority filtering and a "Featured" banner in the corner.</p>
							</div>
						</div>
					</div>
					<div class="row text-left no-gutter">
						<div class="col-md-4">
							<div class="boost-pricing">
								<p class="text-center"><strong>Explore Page Banner</strong></p>
								<p class="text-center">$15/30 Days</p>
								<p class="boost-description">Your crowdfunding project will be listed on our explore page rotating banner. This large format will attract new backers to your project. We will rotate the order of banner features randomly so your project will have the opportunity to show up first upon opening the page. We will feature your project for 30 days or the duration of your project, whichever is less.</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="boost-pricing">
								<p class="text-center"><strong>Landing Page Banner</strong></p>
								<p class="text-center">$10/1 Week</p>
								<p class="boost-description">Your crowdfunding project will be listed on our landing page which receives the most traffic. This large format will attract new backers to your project. We will rotate the order randomly so your project will have the opportunity to show up first upon opening the page. We will feature your project for 1 week.</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="boost-pricing">
								<p class="text-center"><strong>Metrics Dashboard</strong></p>
								<p class="text-center">Free</p>
								<p class="boost-description">We have created a Metrics Dashboard to edit and view your project on Krowdspace. We provide project metrics such as page views, page clicks and project backers. In addition, you can also unlock social media post metrics and our targeted media contact list.</p>
							</div>
						</div>
					</div>
					<div class="row text-left no-gutter">
						<div class="col-md-4">
							<div class="boost-pricing">
								<p class="text-center"><strong>Social Media Marketing</strong></p>
								<p class="text-center">$25+</p>
								<p class="boost-description">Krowdspace will use your marketing budget and help apply it to a social media marketing campaign. We will make a targeted campaign based on a short form and launch it on our social channels. We will not take any additional fees other than our payment gateway fee.</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="boost-pricing">
								<p class="text-center"><strong>Media List (500+ Contacts)</strong></p>
								<p class="text-center">$20</p>
								<p class="boost-description">Most companies that provide media lists give you thousands of names and no direction. At Krowdspace our media list consists of verified contacts from the largest companies out there. We provide up to 10 contacts from every company and a list of places to submit your crowdfunding video.</p>
							</div>
						</div>
						<div class="col-md-4">
							<div class="boost-pricing">
								<p class="text-center"><strong>Press Release Guide</strong></p>
								<p class="text-center">Free</p>
								<p class="boost-description">Check out our Press Release Guide and use our format to write a winning Press Release you can send out to our media list. Take our free example and turn it into your own. Get the publicity you need for your project.</p>
							</div>
						</div>
					</div>
					<div class="row text-center">
							<button type="button" class="text-center modal-close" data-dismiss="modal">Close</button>
						</div>
				</div>
			</div>
		</div>
		<div class="background-modal-close" data-dismiss="modal"></div>
	</div>
    <script>
        this.on('mount', function() 
		{
			var url = window.location.href;
			if (url.indexOf('?boost=1') != -1) 
			{
				$("#modal-boost").modal('show');
                $('#modal-boost').fadeIn(100);
            };
        });
    </script>
</home-modal-boosts>