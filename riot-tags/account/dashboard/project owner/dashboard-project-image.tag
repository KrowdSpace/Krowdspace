<dashboard-project-image>
    <div class="col-md-6 project-image-box padding-reset">
        <img class="img-responsive project-image { indiegogoSmall }"  ref="krowdspaceImage" src=""/>
        <p class="funding-text funded-left">$ { raisedLocale || 0 } RAISED</p>
        <p class="funding-text funded-right">$ { goalLocale || 0 } GOAL</p>
        <div id="progressBar"></div>
    </div> 
<script>
    this.progBar = null;

    this.on('update', ()=> 
    {
        if(!opts.project)
            return;

        this.refs.krowdspaceImage.src = opts.project.project_data.meta_data.mainImg || opts.project.project_data.meta_data.altImg;
        this.indiegogoSmall = opts.project.project_data.meta_data.mainImg || 'project-image-indiegogo';

        let raisedValue = opts.project.project_data.meta_data.raised || 0,
            raisedRounded = Math.round(raisedValue);
        this.raisedLocale = raisedRounded.toLocaleString();

        let goalValue = opts.project.project_data.meta_data.funding || 0;
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
	