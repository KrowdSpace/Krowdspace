<project-page-image>
    <div class="col-md-6 image-container">
        <div class="fixed-image-box"> 
            <img show={ imagebox } class="img-responsive kickstarter-image" ref="kickstarterImage" src=""/>
            <img show={ !imagebox } class="img-responsive indiegogo-image" ref="indiegogoImage" src=""/>
            <p class="funding-text-left text-left">$ { dataBacked || 0} Raised</p>
            <p class="funding-text-right text-right">$ { dataGoal || 0} Goal</p>
        </div>
        <div id="progressBar"></div>
    </div>
<script>
    krowdspace.projects.project(this.opts.uri).then((res)=>
    {

        let platform = res.data[0].platform;

        if (platform == 'kickstarter') 
        {
            imagebox = true;
            console.log('Kickstarter Image');
            this.refs.kickstarterImage.src = res.data[0].project_data.meta_data.mainImg;

            let goalValue = res.data[0].project_data.meta_data.funding,
            goalNumber = parseFloat(goalValue.replace(/,/g, '')),

            percentValue = res.data[0].project_data.meta_data.raisedPercent,
            numberMax = Math.min(Math.max(percentValue, 0), 1),
            raisedRawNumber = goalNumber * percentValue,
            raisedNumber = Math.round(raisedRawNumber),
            raisedValue = raisedNumber.toLocaleString(),

            raisedvalue = res.data[0].project_data.meta_data.raisedPercent,
            rawdecimal = Number.parseFloat(raisedvalue);

            this.dataBacked = raisedValue;
            this.dataGoal = goalValue;

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

        }else{
            imagebox = false;
            console.log('Indiegogo Image');
            this.refs.indiegogoImage.src = res.data[0].project_data.meta_data.jsonReply.response.video_overlay_url;

            let raisedRaw = res.data[0].project_data.meta_data.jsonReply.response.collected_funds,
                raisedNumber = raisedRaw.toLocaleString(),
            
                goalRaw = res.data[0].project_data.meta_data.jsonReply.response.goal,
                goalNumber = goalRaw.toLocaleString(),
            
                percentValue = raisedRaw/goalRaw,
                percentMax = Math.min(Math.max(percentValue, 0), 1);

            this.dataBacked = raisedNumber;
            this.dataGoal = goalNumber;

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
            
        bar.animate(percentMax);  // Number from 0.0 to 1.0
        this.update();
        }; 

         
    },
    (err)=> 
    {
        
    });
</script>
</project-page-image>	
	