<project-page-image>
<style>

</style>
    <div class="col-md-6 project-image-box padding-reset">
            <img class="img-responsive project-image { indiegogoSmall || 'project-image-indiegogo' }"  ref="krowdspaceImage" src=""/>
            <p class="funding-text funded-left">$ { raisedLocale || 0 } RAISED</p>
            <p class="funding-text funded-right">$ { goalLocale || 0 } GOAL</p>
        <div id="progressBar"></div>
    </div> 
<script>
    krowdspace.projects.project(this.opts.uri).then((res)=>
    {
        this.refs.krowdspaceImage.src = res.data[0].project_data.meta_data.mainImg || res.data[0].project_data.meta_data.altImg;
        this.indiegogoSmall = res.data[0].project_data.meta_data.mainImg;

        let raisedValue = res.data[0].project_data.meta_data.raised,
            raisedRounded = Math.round(raisedValue);
        this.raisedLocale = raisedRounded.toLocaleString();

        let goalValue = res.data[0].project_data.meta_data.funding;
        this.goalLocale = goalValue.toLocaleString();

        let percentValue = res.data[0].project_data.meta_data.raisedPercent,
            numberMax = Math.min(Math.max(percentValue, 0), 1);

        let bar = new ProgressBar.Line(progressBar, 
            {
                strokeWidth: 4,
                easing: 'easeInOut', 
                duration: 1400,
                color: '#fed136',
                trailColor: '#eee',
                trailWidth: 4,
                svgStyle: {width: '100%', height: '100%'}
            });
        
        bar.animate(numberMax);  // Number from 0.0 to 1.0
        this.update();
        
    },
    (err)=> 
    {
        
    });
</script>
</project-page-image>	
	