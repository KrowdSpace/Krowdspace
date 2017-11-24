<prelaunch-body>
	<div class="row resource-row resource-relative">
		<div show={ !preCheck } class="resource-gradient resource-gradient-alt text-center">
			<button class="btn btn-primary btn-resource" data-toggle="modal" data-target="#Login">
        <i class="fa fa-chevron-down resource-arrow"></i>
      </button>
		</div>
		<div class="resource-content media-content">
			<div class="social-guide-left">
        <p class="resource-page-title">Prefundia</p>
        <p class="resource-guide"><span class="resource-title-bold">Prefundia Pros:</span> Prefundia campaign owners can set up a free project page to build an early following prior to launching on Kickstarter or Indiegogo. This service is easy to set up and Prefundia users are able to give feedback on what they like about your campaign. Prefundia will send an email blast once your campaign launches to all of the subscribers who have followed you.</p>
        <p class="resource-guide"><span class="resource-title-bold">Prefundia Cons:</span> It seems that Prefundia has a low conversion rate for project followers. Another downside is that Prefundia is fully automated and wont allow access to the email list you have gathered. It is a one time interaction with followers from the site.</p>
			</div>
			<div class="social-media-left text-center">
        <a href="http://prefundia.com/" target="_blank">
        <img class="prelaunch-box" src="/images/prefundia.jpg">
      </a>
			</div>
		</div>
		<div class="resource-content media-content-reverse">
			<div class="social-media-right text-center">
          <a href="https://www.thunderclap.it/" target="_blank">
        <img class="prelaunch-box" src="/images/thunderclap.jpg">
      </a>
			</div>
			<div class="social-guide-right">
        <p class="resource-page-title">ThunderClap.it</p>
        <p class="resource-guide"><span class="resource-title-bold">ThunderClap Pros:</span> ThunderClap is a unique service that allows for a wave of Facebook posts and Twitter posts to be sent by followers of your campaign all at once. Timing a ThunderClap campaign with a crowdfunding launch can immensely increase traffic to your page. ThunderClap has a free option that allows for a cost effective way to gather new backers.</p>
        <p class="resource-guide"><span class="resource-title-bold">ThunderClap Cons:</span> Once a pre-set goal has been set, it cannot be changed unless you upgrade to a different service tier. If you miss the pre-set goal, you wont benefit from the social media posts provided by the ThunderClap followers. Campaigns with a limited or small outreach require a lot of extra work and can be very time consuming to run. Supporters have the option to submit their email address and ThunderClap doesn't open up this information unless you pay for a premium package.</p>
			</div>
    </div>
    <div class="resource-content media-content" style="margin-top: 50px;">
			<div class="social-guide-left">
        <p class="resource-page-title">LaunchRock</p>
        <p class="resource-guide"><span class="resource-title-bold">LaunchRock Pros:</span> LaunchRock can provide an easy to use "Coming Soon" page for pre-launching your crowdfunding campaign. LaunchRock is a very good alternative to Prefundia and allows access to email addresses gathered by the service. The dashboard provides preset templates and the ability to add custom code for a 5$ per month upgrade. LaunchRock can be integrated with Google AdWords and the dashboard provided very detailed metrics.</p>
        <p class="resource-guide"><span class="resource-title-bold">LaunchRock Cons:</span> The LaunchRock dashboard takes some time to get used to and fully customized pages required the 5$ upgrade. LaunchRock is purely a conversion funnel with limited features and only 1 way to collect user information. This service is not targeted at crowdfunding campaigns like Prefundia but focuses on a more general audience.</p>
			</div>
			<div class="social-media-left text-center">
          <a href="https://www.launchrock.com/" target="_blank">
        <img class="prelaunch-box" src="/images/launchrock.jpg">
      </a>
			</div>
		</div>
	</div>
	<script>
		krowdspace.v1.check()
			.then((res) => {
					this.preCheck = true;
					this.update();
				},
				(err) => {
					this.preCheck = false;
					this.update();
				});

	</script>
</prelaunch-body>
