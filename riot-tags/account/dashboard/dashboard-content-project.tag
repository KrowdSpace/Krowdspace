<dashboard-content-project>
    <div class="social-container project-content" style="border: 1px solid #3f434f; margin-top: 0px;">
        <div style="position: relative; padding: 15px 15px;">
            <span class="fa-stack fa-lg social-btn" style="position: absolute; top: 15px; right: 10px;">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-refresh fa-stack-1x fa-inverse"></i>
            </span>
            <p class="dash-project-description" style="padding: 0px 50px 0px 0px; margin-top: 0px;">LALA BAHARI: THE FIRST CONVERTIBLE TOTE BAG OF ITS KIND</p>
            <p class="dash-project-description">PROJECT URL</p>
            <p style="font-size: 14px;">{ project_data.info_data.url }</p>
            <p class="dash-project-description">PROJECT DESCRIPTION</p>
            <p style=""></p>
            <p class="dash-project-description">PROJECT CONTENT</p>
            <div ref="cc"></div>
        </div>
        <div class="clearfix"></div>
    </div>
    <script>
    this.on('mount', ()=> 
    {
        krowdspace.projects.project('Mason').then((res)=>
        {
           
            res.data[0].project_data = JSON.parse(res.data[0].project_data);
            console.log(res.data[0]);
            this.update(res.data[0]);
            this.refs.cc.innerHTML = res.data[0].project_data.web_data.content.html;
        },
        (err)=> 
        {
            console.log(2, err);
        });
    });
    </script>
</dashboard-content-project>