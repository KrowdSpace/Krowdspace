<project-page-content>
    <div show= { contentDisplay } class="col-sm-12 explore-project" ref="projectcontent"></div>
    <script>
        krowdspace.projects.project(this.opts.uri).then((res)=>
        {
            if(res.data[0].project_data.meta_data.content)
            {
                this.refs.projectcontent.innerHTML = res.data[0].project_data.meta_data.content;
                this.contentDisplay = true;
            }else{
                this.contentDisplay= false;
            }
            
            this.update();
        },
        (err)=> 
        {
            
        });
    </script>
</project-page-content>