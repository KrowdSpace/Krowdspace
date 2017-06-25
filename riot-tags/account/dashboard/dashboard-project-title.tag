<dashboard-project-title>
   <div class="col-sm-12 dashboard-title-container no-gutter">
        <div class="col-sm-4 divider-inside-right dashboard-title-box">
            <p class="dashboard-text" ref="projectTitle"></p>
            <p class="dashboard-text description-text" ref="projectDescription"></p>
        </div>
        <div class="col-sm-8 no-gutter text-center">
            <div class="col-sm-4 feature-box">
            <img class="img-responsive banner" src="/img/content/featured-project-icon.jpg"/>
            <span class="fa-stack fa-lg social-btn feature-hover-icon">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-usd fa-stack-1x fa-inverse"></i>
            </span>
            <div class="dashboard-text feature-hover"></div>
            <p class="dashboard-text">Featured Project</p>
            </div>
            <div class="col-sm-4 feature-box">
            <img class="img-responsive banner" src="/img/content/featured-slider-icon.jpg"/>
            <span class="fa-stack fa-lg social-btn feature-hover-icon">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-usd fa-stack-1x fa-inverse"></i>
            </span>
            <div class="dashboard-text feature-hover"></div>
            <p class="dashboard-text">Featured Explore Banner</p>
            </div>
            <div class="col-sm-4 feature-box">
            <img class="img-responsive banner" src="/img/content/featured-landing-icon.jpg"/>
            <span class="fa-stack fa-lg social-btn feature-hover-icon">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-usd fa-stack-1x fa-inverse"></i>
            </span>
            <div class="dashboard-text feature-hover"></div>
            <p class="dashboard-text">Landing Page Banner</p>
            </div>
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
    this.refs.projectTitle.innerHTML = res.data[0].project_data.web_data.title.content;
    this.refs.projectDescription.innerHTML = res.data[0].project_data.web_data.description.content;
},
(err)=> 
{
    console.log(err);
}
);
</script>
</dashboard-project-title>	
	