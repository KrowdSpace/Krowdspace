<dashboard-project-title>
   <div class="col-sm-12 dashboard-title-container no-gutter">
        <div class="col-sm-4 divider-inside-right dashboard-title-box">
            <p class="dashboard-text-alt">{ projectTitle }</p>
            <p class="dashboard-text-alt description-text">{ projectDescription }</p>
        </div>
        <div class="col-sm-8 no-gutter text-center">
            <div class="col-sm-4 text-center feature-box">
                <div class="purchase-view">
                <a href="#purchase-featured" class="modal-link" data-toggle="modal">
                    <img class="img-responsive feature-buy" src="/img/content/featured-purchase.jpg"/>
                    <div class="filter-background">
                        <p class="featured-text-buy">FEATURED ICON</p>
                    </div>
                </a>
                </div>
            </div>
            <div class="col-sm-4 feature-box">
                <div class="purchase-view">
            <a href="#purchase-explore" class="modal-link" data-toggle="modal">
            <img class="img-responsive feature-buy" src="/img/content/explore-purchase.jpg"/>
            <div class="filter-background">
                <p class="featured-text-buy">EXPLORE BANNER</p>
            </div>
            </div><a/>
            </div>
            <div class="col-sm-4 feature-box">
                <div class="purchase-view">
                <a href="#purchase-landing" class="modal-link" data-toggle="modal">
            <img class="img-responsive feature-buy" src="/img/content/landing-purchase.jpg"/>
            <div class="filter-background">
                <p class="featured-text-buy">LANDING BANNER</p>
            </div>
            </div><a/>
            </div>
        </div>
    </div>
<script>
    this.on('update', ()=>
    {
        if(!opts.project)
            return;
            
        this.projectTitle = opts.project.project_data.web_data.title.content;
        this.projectDescription = opts.project.project_data.web_data.description.content;
    });

console.log(this.opts.project);
</script>
</dashboard-project-title>	
	