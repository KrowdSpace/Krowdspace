<dashboard-content-title>
    <div class="social-container no-gutter" style="border-right: 1px solid #3f434f; border-top: 1px solid #3f434f; border-bottom: 1px solid #3f434f; margin: 0px; height: 273px; padding: 15px; position: relative;">
             <a href="#refresh-project" class="modal-link" data-toggle="modal">
                 <span class="fa-stack fa-lg social-btn" style="position: absolute; top: 5px; right: 5px;">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-refresh fa-stack-1x fa-inverse"></i>
            </a>
            </span>
            <p class="boost-purchase-header" style="text-transform: uppercase; padding: 0px;" ref="projectTitle"></p>
            <p class="purchase-description" ref="projectDescription" style="height: 75px; padding:0px;"></p>
            <div class="col-sm-6 text-left" style="margin-top: 30px;">
                <p ref="dataBacked" class="dash-project-description"></p>
            </div>
            <div class="col-sm-6 text-right" style="margin-top: 30px;">
                <p ref="dataGoal" class="dash-project-description"></p>
            </div>
            <div id="progressBar" style="position: absolute; bottom: -5px; right: 0px; left: 0px;"></div>
        </div>
    <script>
    this.on('mount', ()=> 
    {
        krowdspace.projects.project('Mason').then((res)=>
        {
            console.log('Your Project is Working!');
            res.data[0].project_data = JSON.parse(res.data[0].project_data);
            this.update(res.data[0]);

            this.refs.projectDescription.innerHTML = res.data[0].project_data.web_data.description.content;
            this.refs.projectTitle.innerHTML = res.data[0].name;

            let y = parseInt(res.data[0].project_data.web_data.stats["data-pledged"]);
            let backed = Number(y).toLocaleString('en');
            Math.round(y);
            this.refs.dataBacked.innerHTML = '$' + backed + ' RAISED';

            let x = parseInt(res.data[0].project_data.web_data.stats["data-goal"]);
            let goal = Number(x).toLocaleString('en');
            Math.round(x);
            this.refs.dataGoal.innerHTML = '$' + goal + ' GOAL';

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

            var goalPercent = y/x;

            bar.animate(goalPercent);  // Number from 0.0 to 1.0
        },
        (err)=> 
        {
            console.log(err);
        });
    });
    
    </script>
</dashboard-content-title>