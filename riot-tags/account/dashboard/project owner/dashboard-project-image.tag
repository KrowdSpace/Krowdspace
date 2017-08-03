<dashboard-project-image>
    <div class="col-md-6 image-container">
        <div class="fixed-image-box"> 
            <img show={ imagebox } class="img-responsive kickstarter-image" ref="kickstarterImage" src=""/>
            <img show={ !imagebox } class="img-responsive indiegogo-image" ref="indiegogoImage" src=""/>
            <p class="funding-text-left text-left">$ { dataBacked || 0 } RAISED</p>
            <p class="funding-text-right text-right">$ { dataGoal || 0 } GOAL</p>
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
            console.log('Kickstarter Image');
            
            this.refs.kickstarterImage.src = opts.project.project_data.meta_data.mainImg;
            let goalValue = opts.project.project_data.meta_data.funding,
            goalNumber = parseFloat(goalValue.replace(/,/g, '')),

            percentValue = opts.project.project_data.meta_data.raisedPercent,
            numberMax = Math.min(Math.max(percentValue, 0), 1),

            raisedRawNumber = goalNumber * percentValue,
            raisedNumber = Math.round(raisedRawNumber),
            raisedValue = raisedNumber.toLocaleString(),
            rawdecimal = Number.parseFloat(percentValue);

            this.dataBacked = raisedValue || 0;
            this.dataGoal = goalValue;

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
        }else{
            
            imagebox = false;
            console.log('Indiegogo Image');

            this.refs.indiegogoImage.src = opts.project.project_data.meta_data.jsonReply.response.video_overlay_url;

            let raisedRaw = opts.project.project_data.meta_data.jsonReply.response.collected_funds,
                raisedNumber = raisedRaw.toLocaleString(),
            
                goalRaw = opts.project.project_data.meta_data.jsonReply.response.goal,
                goalNumber = goalRaw.toLocaleString(),
            
                percentValue = raisedRaw/goalRaw,
                percentMax = Math.min(Math.max(percentValue, 0), 1);

            this.dataBacked = raisedNumber;
            this.dataGoal = goalNumber;

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
            
            bar.animate(percentMax || 1);  // Number from 0.0 to 1.0
        }; 
    });
</script>
</dashboard-project-image>	
	