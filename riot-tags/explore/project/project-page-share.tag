<project-page-share>
    <div class="col-sm-1 no-gutter share-container">
        <div class="text-left shadow share-box">
            <a href="{ facebookShare }" target="_blank">
            <span class="fa-stack fa-lg facebook icon-reset facebook-back filterdark">
                <i class="fa fa-square fa-stack-2x"></i>
                <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <br/>
            <a href="{ twitterShare }" target="_blank">
            <span class="fa-stack fa-lg twitter icon-reset twitter-back filterdark">
                <i class="fa fa-square fa-stack-2x"></i>
                <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <br/>
            <a href="{ linkedinShare }" target="_blank">
            <span class="fa-stack fa-lg linkedin icon-reset linked-back filterdark">
                <i class="fa fa-square fa-stack-2x"></i>
                <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <br/>
            <a href="{ redditShare }" target="_blank">
            <span class="fa-stack fa-lg reddit icon-reset reddit-back filterdark">
                <i class="fa fa-square fa-stack-2x"></i>
                <i class="fa fa-reddit-alien fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <br/>
            <a href="{ diggShare }" target="_blank">
            <span class="fa-stack fa-lg digg icon-reset digg-back filterdark">
                <i class="fa fa-square fa-stack-2x"></i>
                <i class="fa fa-digg fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <br/>
            <a href="{ stumbleuponShare }" target="_blank">
            <span class="fa-stack fa-lg stumbleupon icon-reset stumble-back filterdark">
                <i class="fa fa-square fa-stack-2x"></i>
                <i class="fa fa-stumbleupon fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <br/>
            <a href="https://www.facebook.com/Krowdspaced" target="_blank"> 
                <img class="icon-share icon-reset krowdspace-back filterdark" src="img/fav/krowdspace-share-icon.png"/>
            </a>
        </div>
    </div>
<script>
    krowdspace.projects.project(this.opts.uri).then((res)=>
    {
        this.facebookShare = 'https://www.facebook.com/sharer.php?u=' + res.data[0].project_data.info_data.url;
    
        this.twitterShare = 'https://twitter.com/intent/tweet?text=Check out ' + res.data[0].project_data.web_data.title.content + ' at Krowdspace.com!&hashtags=krowdspace, kickstarter, indiegogo';
        
        this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content;

        this.redditShare = 'https://reddit.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content; 

        this.diggShare = 'http://digg.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content; 

        this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.web_data.title.content;

        this.update();

    },
    (err)=> 
    {

    });
</script>
</project-page-share>	
	