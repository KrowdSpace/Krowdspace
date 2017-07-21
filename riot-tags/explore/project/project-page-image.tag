<project-page-image>
    <div class="col-md-6 image-container">
        <div class="fixed-image-box"> 
            <img show={ imagebox } class="img-responsive kickstarter-image" ref="kickstarterImage" src=""/>
            <img show={ !imagebox } class="img-responsive indiegogo-image" ref="indiegogoImage" src=""/>
            <p class="funding-text-left text-left">$ { dataBacked } Raised</p>
            <p class="funding-text-right text-right">$ { dataGoal } Goal</p>
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
        this.refs.kickstarterImage.src = res.data[0].project_data.web_data.mainImg.content;
    }else{
        imagebox = false;
        console.log('Indiegogo Image');
        this.refs.indiegogoImage.src = res.data[0].project_data.web_data.mainImg.content;
    }; 

    let goalValue = res.data[0].project_data.meta_data.funding,
        goalNumber = parseFloat(goalValue.replace(/,/g, '')),

        percentValue = res.data[0].project_data.meta_data.raisedPercent,
        numberMax = Math.min(Math.max(percentValue, 0), 1),
        raisedRawNumber = goalNumber * percentValue,
        raisedNumber = Math.round(raisedRawNumber),
        raisedValue = raisedNumber.toLocaleString(),

        raisedvalue = res.data[0].project_data.web_data.stats['data-percent-raised'],
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
    },
    (err)=> 
    {
        
    });
</script>
</project-page-image>	
	