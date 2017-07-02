<dashboard-project-title>
   <div class="col-sm-12 dashboard-title-container no-gutter">
        <div class="col-sm-4 divider-inside-right dashboard-title-box">
            <p class="dashboard-text-alt">{ projectTitle }</p>
            <p class="dashboard-text-alt description-text">{ projectDescription }</p>
        </div>
        <div class="col-sm-8 no-gutter text-center">
            <div class="col-sm-4 feature-box">
            <a href="#purchase-featured" class="modal-link" data-toggle="modal">
            <img class="img-responsive banner" src="/img/content/featured-project-icon.jpg"/>
            <span class="fa-stack fa-lg social-btn feature-hover-icon">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-usd fa-stack-1x fa-inverse"></i>
            </span>
            <div class="dashboard-text feature-hover"></div>
            </a>
            <p class="dashboard-text-alt">Featured Project</p>
            </div>
            <div class="col-sm-4 feature-box">
            <a href="#purchase-explore" class="modal-link" data-toggle="modal">
            <img class="img-responsive banner" src="/img/content/featured-slider-icon.jpg"/>
            <span class="fa-stack fa-lg social-btn feature-hover-icon">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-usd fa-stack-1x fa-inverse"></i>
            </span>
            <div class="dashboard-text feature-hover"></div>
            </a>
            <p class="dashboard-text-alt">Featured Explore Banner</p>
            </div>
            <div class="col-sm-4 feature-box">
                <a href="#purchase-landing" class="modal-link" data-toggle="modal">
            <img class="img-responsive banner" src="/img/content/featured-landing-icon.jpg"/>
            <span class="fa-stack fa-lg social-btn feature-hover-icon">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-usd fa-stack-1x fa-inverse"></i>
            </span>
            <div class="dashboard-text feature-hover"></div>
            <a/>
            <p class="dashboard-text-alt">Landing Page Banner</p>
            </div>
        </div>
    </div>
<script>
    this.on('update', ()=>
    {
        krowdspace.projects.project(this.opts.userkey).then((res)=>
        {
            this.projectTitle = opts.project.project_data.web_data.title.content;
            this.projectDescription = opts.project.project_data.web_data.description.content;
            this.update();
        },
        (err)=> 
        {
            console.log(err);
        });
    });

console.log(this.opts.project);
</script>
</dashboard-project-title>	
	