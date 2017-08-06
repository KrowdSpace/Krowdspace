<project-page-content>
    <div class="col-sm-12 explore-project" ref="projectcontent"></div>
    <script>
        krowdspace.projects.project(this.opts.uri).then((res)=>
        {
            if(res.data[0].project_data.meta_data.content)
            {
                this.refs.projectcontent.innerHTML = res.data[0].project_data.meta_data.content;
            }else{
                this.refs.projectcontent.innerHTML = 'need to add content here still if they decide not to put their own';
            }
            
            this.update();
        },
        (err)=> 
        {
            
        });
    </script>
</project-page-content>