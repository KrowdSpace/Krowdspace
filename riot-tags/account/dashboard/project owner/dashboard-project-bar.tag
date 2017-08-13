<dashboard-project-bar>
    <div class="dash-bar col-sm-12 no-gutter" >
        <div class="col-xs-3 text-center divider-inside-right">
            <a show={ platformSwitch } class="hidden-xs" href="{ kickstarterShare }" title="Kickstarter Project Page" target="_blank">
                <img class="icon-share-bar filterdark" src="img/fav/kickstarter-icon.svg"/>
            </a>
            <a show={ !platformSwitch } class="hidden-xs" href="{ indiegogoShare }" title="Indiegogo Project Page" target="_blank">
                <img class="icon-share-bar filterdark" src="img/fav/indiegogo-icon.svg"/>
            </a>
            <a href="/#/explore/project/{ krowdspacePage }"> 
                <img class="icon-share-bar filterdark" title="Krowdspace Project Page" src="img/fav/krowdspace-icon.svg"/>
            </a>
            <p class="dashboard-text-bar dash-divider hidden-xs">Live Project Links</p>
            <p class="dashboard-text-bar dash-divider hidden-lg hidden-md hidden-sm">Project Link</p>
        </div>
        <div class="col-xs-7 text-center divider-inside-right">
            <a href="{ facebookShare }" title="Share on Facebook" target="_blank">
            <span class="fa-stack fa-lg facebook filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a href="{ twitterShare }" title="Share on Twitter" target="_blank">
            <span class="fa-stack fa-lg twitter filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a class="hidden-sm hidden-xs" title="Share on Google Plus" href="{ googleShare }" target="_blank">
            <span class="fa-stack fa-lg google filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-google-plus fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a href="{ linkedinShare }" title="Share on Linkedin" target="_blank">
            <span class="fa-stack fa-lg linkedin filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a href="{ redditShare }" title="Share on Reddit" target="_blank">
            <span class="fa-stack fa-lg reddit filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-reddit-alien fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a class="hidden-xs" href="{ diggShare }" title="Share on Digg" target="_blank">
            <span class="fa-stack fa-lg digg filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-digg fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a class="hidden-xs" href="{ stumbleuponShare }" title="Share on StumbleUpon" target="_blank">
            <span class="fa-stack fa-lg stumbleupon filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-stumbleupon fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a class="hidden-sm hidden-xs" href="{ tumblrShare }" title="Share on Tumblr" target="_blank">
                <span class="fa-stack fa-lg tumblr filterdark">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-tumblr fa-stack-1x fa-inverse"></i>
                </span>
            </a>
            <p class="dashboard-text-bar dash-divider">Share Your Project on Social Media</p>
            </div>
        <div class="col-sm-2 text-center">
            <a href="#purchase-social" class="modal-link" title="Social Media Purchase" data-toggle="modal">
                    <span class="fa-stack fa-lg social-btn filterdark">
                        <i class="fa fa-circle fa-stack-2x"></i>
                        <i class="fa fa-wifi fa-stack-1x fa-inverse" style="padding-top: 2px;"></i>
                    </span>
                </a>
            <p class="dashboard-text-bar dash-divider">Social Media Boost</p>
        </div>
    </div>
<script>
    this.on('update', ()=>
    {
        if(!opts.project)
            return;

        let res = { data: [opts.project] };
        let platform = opts.project.platform;

        if(platform == 'kickstarter')
        {
            this.platformSwitch = true;
            this.kickstarterShare = res.data[0].project_data.info_data.url; 

        }else{ 

            this.platformSwitch = false;
            this.indiegogoShare = res.data[0].project_data.info_data.url; 

        }

            this.krowdspacePage = res.data[0].unique_id;

            this.facebookShare = 'https://www.facebook.com/sharer.php?u=' + res.data[0].project_data.info_data.url;
            
            this.twitterShare = 'https://twitter.com/intent/tweet?text=Get extra rewards and support my crowdfunding project at Krowdspace.com &via=krowdspaced&hashtags=krowdspace, crowdfunding, rewards';

            this.googleShare = 'https://plus.google.com/share?url=' + res.data[0].project_data.info_data.url;
            
            this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title;

            this.redditShare = 'https://reddit.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title; 

            this.diggShare = 'http://digg.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title; 

            this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title;

            this.tumblrShare = 'https://www.tumblr.com/widgets/share/tool?canonicalUrl=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title + '&caption=' + res.data[0].project_data.meta_data.description;
    });
</script>
</dashboard-project-bar>	
	