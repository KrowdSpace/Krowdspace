<project-page-content>
    <div class="col-sm-12 explore-project" ref="projectcontent"></div>
    <script>
        krowdspace.projects.project(this.opts.uri).then((res)=>
        {
            this.refs.projectcontent.innerHTML = res.data[0].project_data.web_data.content.html;
            this.update();
        },
        (err)=> 
        {
            
        });
    </script>
</project-page-content>