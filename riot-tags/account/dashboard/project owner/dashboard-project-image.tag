<dashboard-project-image>
    <div class="col-md-6 image-container">
        <div class="fixed-image-box"> 
            <img show={ imagebox } class="img-responsive kickstarter-image" ref="kickstarterImage" src=""/>
            <img show={ !imagebox } class="img-responsive indiegogo-image" ref="indiegogoImage" src=""/>
            <p class="funding-text-left text-left">$ { raisedLocale || 0 } RAISED</p>
            <p class="funding-text-right text-right">$ { goalLocale || 0 } GOAL</p>
        </div>
        <div id="progressBar"></div>
    </div> 
<script>
    this.progBar = null;

    this.on('update', ()=> 
    {
        if(!opts.project)
            return;

        let platform = opts.project.platform;

        if (platform == 'kickstarter') 
        {
            imagebox = true;
            this.refs.kickstarterImage.src = opts.project.project_data.meta_data.mainImg;
        }else{
            imagebox = false;
            this.refs.indiegogoImage.src = opts.project.project_data.meta_data.jsonReply.response.video_overlay_url;
        }; 

        let raisedValue = opts.project.project_data.meta_data.raised;
            this.raisedLocale = raisedValue.toLocaleString();

            let goalValue = opts.project.project_data.meta_data.funding;
            this.goalLocale = goalValue.toLocaleString();

            let percentValue = opts.project.project_data.meta_data.raisedPercent,
            numberMax = Math.min(Math.max(percentValue, 0), 1);

            let bar = null;

        if(!this.progBar)
            this.progBar = bar = new ProgressBar.Line(progressBar, 
            {
                strokeWidth: 4,
                easing: 'easeInOut',
                duration: 1400,
                color: '#fed136',
                trailColor: '#eee',
                trailWidth: 4,
                svgStyle: {width: '100%', height: '100%'}
            });
        else

        bar = this.progBar;
            
        bar.animate(numberMax || 1);  // Number from 0.0 to 1.0
    });
</script>
</dashboard-project-image>	
	