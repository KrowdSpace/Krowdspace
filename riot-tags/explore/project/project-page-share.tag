<project-page-share>
    <style>
        @media screen and (max-width: 767px) {
            .shadow {
            -webkit-box-shadow: none;
            -moz-box-shadow: none;
            }
            .share-container {
            top: 79px;
            left:0;
            right: 0;
            position: absolute;
            display: inline-block;
            font-size: 0px;
            width: 400px;
            margin-left: auto;
            margin-right: auto;
            }
            .share-box {
            width: 400px;
            border-right: 1px solid #eb4924;;
            }
            .icon-reset {
            font-size: 19px;
            width: 57px;
            }
            .icon-reset:hover {
            font-size: 19px;
            width: 57px;
            }
        }
    </style>
    <div class="col-sm-1 no-gutter share-container">
        <div class="text-left shadow share-box">
            <a href="{ facebookShare }" target="_blank">
            <span class="fa-stack fa-lg facebook icon-reset facebook-back filterdark">
            <i class="fa fa-square fa-stack-2x"></i>
            <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a href="{ twitterShare }" target="_blank">
            <span class="fa-stack fa-lg twitter icon-reset twitter-back filterdark">
            <i class="fa fa-square fa-stack-2x"></i>
            <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a href="{ googleShare }" target="_blank">
            <span class="fa-stack fa-lg google icon-reset google-back filterdark">
            <i class="fa fa-square fa-stack-2x"></i>
            <i class="fa fa-google-plus fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a href="{ linkedinShare }" target="_blank">
            <span class="fa-stack fa-lg linkedin icon-reset linked-back filterdark">
            <i class="fa fa-square fa-stack-2x"></i>
            <i class="fa fa-linkedin fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a href="{ redditShare }" target="_blank">
            <span class="fa-stack fa-lg reddit icon-reset reddit-back filterdark">
            <i class="fa fa-square fa-stack-2x"></i>
            <i class="fa fa-reddit-alien fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a href="{ diggShare }" target="_blank">
            <span class="fa-stack fa-lg digg icon-reset digg-back filterdark">
            <i class="fa fa-square fa-stack-2x"></i>
            <i class="fa fa-digg fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a href="{ stumbleuponShare }" target="_blank">
            <span class="fa-stack fa-lg stumbleupon icon-reset stumble-back filterdark">
            <i class="fa fa-square fa-stack-2x"></i>
            <i class="fa fa-stumbleupon fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <a class="hidden-xs" href="https://www.facebook.com/Krowdspaced" target="_blank"> 
            <img class="icon-share icon-reset krowdspace-back filterdark" src="img/fav/krowdspace-share-icon.png"/>
            </a>
        </div>
    </div>
    <script>
        krowdspace.projects.project(this.opts.uri).then((res)=>
        {
            let platform = res.data[0].platform;
            if(platform == 'kickstarter'){
                this.facebookShare = 'https://www.facebook.com/sharer.php?u=' + res.data[0].project_data.info_data.url;
        
                this.twitterShare = 'https://twitter.com/intent/tweet?text=Check out ' + res.data[0].project_data.meta_data.title + ' at Krowdspace.com!&hashtags=krowdspace, kickstarter, indiegogo';
                
                this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title;
            
                this.redditShare = 'https://reddit.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title; 
            
                this.diggShare = 'http://digg.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title; 
            
                this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=' + res.data[0].project_data.info_data.url + '&title=' + res.data[0].project_data.meta_data.title;
            
                this.googleShare = 'https://plus.google.com/share?url=' + res.data[0].project_data.info_data.url;
            
                this.update();
            }else{
                this.facebookShare = 'https://www.facebook.com/sharer.php?u=' + res.data[0].project_data.meta_data.jsonReply.response.web_url;
        
                this.twitterShare = 'https://twitter.com/intent/tweet?text=Check out ' + res.data[0].project_data.meta_data.jsonReply.response.title + ' at Krowdspace.com!&hashtags=krowdspace, kickstarter, indiegogo';
                
                this.linkedinShare = 'https://www.linkedin.com/shareArticle?url=' + res.data[0].project_data.meta_data.jsonReply.response.web_url + '&title=' + res.data[0].project_data.meta_data.jsonReply.response.title;
            
                this.redditShare = 'https://reddit.com/submit?url=' + res.data[0].project_data.meta_data.jsonReply.response.web_url + '&title=' + res.data[0].project_data.meta_data.jsonReply.response.title; 
            
                this.diggShare = 'http://digg.com/submit?url=' + res.data[0].project_data.meta_data.jsonReply.response.web_url + '&title=' + res.data[0].project_data.meta_data.jsonReply.response.title; 
            
                this.stumbleuponShare = 'http://www.stumbleupon.com/submit?url=' + res.data[0].project_data.meta_data.jsonReply.response.web_url + '&title=' + res.data[0].project_data.meta_data.jsonReply.response.title;
            
                this.googleShare = 'https://plus.google.com/share?url=' + res.data[0].project_data.meta_data.jsonReply.response.web_url;
            
                this.update();
            }
        },
        (err)=> 
        {
        
        });
    </script>
</project-page-share>