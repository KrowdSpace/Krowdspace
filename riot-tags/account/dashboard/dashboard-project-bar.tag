<dashboard-project-bar>
    <div class="dash-bar col-sm-12 no-gutter" >
        <div class="col-sm-3 text-center divider-inside-right">
            <a href="{ kickstarterShare }" target="_blank">
                <img class="icon-share filterdark" src="img/fav/kickstarter-icon.png"/>
            </a>
            <a href="/#/explore/project?{ krowdspaceShare }"> 
                <img class="icon-share filterdark" src="img/fav/krowdspace-share-icon.png"/>
            </a>
            <p class="dashboard-text-bar dash-divider">Live Project Links</p>
        </div>
        <div class="col-sm-7 text-center divider-inside-right">
            <div class="col-sm-8">
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
            <a href="{ linkedinShare }" target="_blank">
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
            <a href="{ diggShare }" target="_blank">
            <span class="fa-stack fa-lg digg filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-digg fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a href="{ stumbleuponShare }" target="_blank">
            <span class="fa-stack fa-lg stumbleupon filterdark">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-stumbleupon fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <p class="dashboard-text-bar dash-divider">Share Your Project on Social Media</p>
            </div>
            <div class="col-sm-4">
            <span class="fa-stack fa-lg social-btn">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-usd fa-stack-1x fa-inverse"></i>
            </span>
            <p class="dashboard-text-bar dash-divider">Social Media Boost</p>
            </div>
        </div>
        <div class="col-sm-2 text-center">
            <span class="fa-stack fa-lg social-btn">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-refresh fa-stack-1x fa-inverse"></i>
            </span>
            <p class="dashboard-text-bar dash-divider">Refresh Content</p>
        </div>
    </div>
<script>
getUserTest();

function getUserTest(usr)
{
    return krowdspace.users.user(usr).then((res)=>
    {
        
    },
    (err)=>
    {
        console.log('Error: ', err);
    });
};

getUserTest().then((usrname)=>
{
    return krowdspace.projects.project(usrname);
}).then((res)=>
{
    this.kickstarterShare = res.data[0].project_data.info_data.url;    

    this.facebookShare = 'https://www.facebook.com/sharer.php?u=' + res.data[0].project_data.info_data.url;
    
    this.twitterShare = 'https://twitter.com/intent/tweet?text=Get extra rewards and support my crowdfunding project at Krowdspace.com &via=krowdspaced&hashtags=krowdspace, crowdfunding, rewards';
    
    this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content;

    this.redditShare = 'https://reddit.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content; 

    this.diggShare = 'http://digg.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content; 

    this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content;

    this.update();
    },
    (err)=> 
    {
        console.log(err);
    }
);
</script>
</dashboard-project-bar>	
	