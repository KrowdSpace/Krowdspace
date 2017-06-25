<project-page-image>
    <div class="col-sm-6 image-container">
        <div class="fixed-image-box"> 
            <img show={ imagebox } class="img-responsive kickstarter-image" ref="kickstarterImage" src=""/>
            <img show={ !imagebox } class="img-responsive indiegogo-image" ref="indiegogoImage" src=""/>
            <p class="funding-text-left text-left" ref="dataBacked"></p>
        <p class="funding-text-right text-right" ref="dataGoal"></p>
        </div>
        <div id="progressBar"></div>
    </div>
<script>
    krowdspace.projects.project('Adam').then((res)=>
    {

        let raisedvalue = res.data[0].project_data.web_data.stats['data-percent-raised'];
        let rawdecimal = Number.parseFloat(raisedvalue);
        let platform = res.data[0].platform;

        if (platform == 'kickstarter') 
        {
            imagebox = true;
            console.log('Kickstarter Image');
            this.refs.kickstarterImage.src = res.data[0].project_data.web_data.mainImg.content;
        }else{
            console.log('Indiegogo Image');
            this.refs.indiegogoImage.src = res.data[0].project_data.web_data.mainImg.content;
        }; 

        let raisedstring = res.data[0].project_data.web_data.funding.text,
            raisedarray = raisedstring.split('$'),
            backed = raisedarray[1],
            rawvalue = parseFloat(backed.replace(',','')),
            rawnumber = rawvalue * rawdecimal;
            wholenumber = Math.round(rawnumber);
            finishedvalue = wholenumber.toLocaleString();

        this.refs.dataBacked.innerHTML = '$' + finishedvalue + ' RAISED';

        let goalstring = res.data[0].project_data.web_data.funding.text,
            goalarray = goalstring.split('$'),
            target = goalarray[1];

        this.refs.dataGoal.innerHTML = '$' + target + ' GOAL';

        let x = parseInt(target),
            y = parseInt(backed);
            z = y * rawdecimal;
        var bar = new ProgressBar.Line(progressBar, 
        {
            strokeWidth: 4,
            easing: 'easeInOut',
            duration: 1400,
            color: '#fed136',
            trailColor: '#eee',
            trailWidth: 4,
            svgStyle: {width: '100%', height: '100%'}
        });

        var goalpercent = z/x;
        bar.animate(goalpercent);  // Number from 0.0 to 1.0

        this.update(res.data[0]); 
    },
    (err)=> 
    {
        console.log(err);
    });
</script>
</project-page-image>	
	