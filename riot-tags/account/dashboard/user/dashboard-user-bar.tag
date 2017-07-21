<dashboard-user-bar>
<style>
@media screen and (max-width: 991px) {
        .icon-share-bar {
            margin: 2px 5px 0px 5px;
        }
    }
@media screen and (max-width: 767px) {
        .dash-bar {
            height: auto;
            margin-left: auto;
            margin-right: auto;
            width: 400px;
        }
    } 
</style>
    <div class="dash-bar col-sm-12 no-gutter" >
        <div class="col-sm-3 col-xs-4 text-center divider-inside-right">
            <a href="{ kickstarterPage }" target="_blank">
                <img class="icon-share-bar filterdark" src="img/fav/kickstarter-icon.png"/>
            </a>
            <a href="{ indiegogoPage }" target="_blank"> 
                <img class="icon-share-bar filterdark" src="img/fav/indiegogo-icon.png"/>
            </a>
            <p class="dashboard-text-bar dash-divider hidden-xs">Crowdfunding Links</p>
             <p class="dashboard-text-bar dash-divider hidden-lg hidden-md hidden-sm">Links</p>
        </div> 
        <div class="col-sm-6 col-xs-6 text-center divider-inside-right no-gutter">
            <div class="col-sm-12">
            <a href="{ facebookShare }" target="_blank">
            <span class="fa-stack fa-lg facebook filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a href="{ twitterShare }" target="_blank">
            <span class="fa-stack fa-lg twitter filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a class="hidden-md hidden-sm hidden-xs" href="{ linkedinShare }" target="_blank">
            <span class="fa-stack fa-lg linkedin filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a href="{ redditShare }" target="_blank">
            <span class="fa-stack fa-lg reddit filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-reddit-alien fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a class="hidden-md hidden-sm hidden-xs" href="{ diggShare }" target="_blank">
            <span class="fa-stack fa-lg digg filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-digg fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a class="hidden-sm hidden-xs" href="{ stumbleuponShare }" target="_blank">
            <span class="fa-stack fa-lg stumbleupon filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-stumbleupon fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <p class="dashboard-text-bar dash-divider hidden-xs">Share Krowdspace on Social Media</p>
            <p class="dashboard-text-bar dash-divider hidden-lg hidden-md hidden-sm">Share on Social Media</p>
            </div>
        </div>
        <div class="col-sm-3 text-center">
            <a href="/#/account/giveaway" class="modal-link" data-toggle="modal">
                <span class="fa-stack fa-lg social-btn">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-money fa-stack-1x fa-inverse"></i>
                </span>
            </a>
                <p class="dashboard-text-bar dash-divider hidden-xs">Krowdspace Giveaways</p>
        </div>
    </div>
<script>

        this.kickstarterPage = 'https://www.kickstarter.com'; 

        this.indiegogoPage = 'https://www.indiegogo.com';

        this.facebookShare = 'https://www.facebook.com/sharer.php?u=https://www.krowdspace.com';
        
        this.twitterShare = 'https://twitter.com/intent/tweet?text=Get extra rewards and support awesome crowdfunding project at Krowdspace.com &via=krowdspaced&hashtags=krowdspace, crowdfunding, rewards';
        
        this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com';

        this.redditShare = 'https://reddit.com/submit?url=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com'; 

        this.diggShare = 'http://digg.com/submit?url=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com'; 

        this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=https://www.krowdspace.com&title=Get extra rewards and support awesome crowdfunding project at Krowdspace.com';
</script>
</dashboard-user-bar>	
	