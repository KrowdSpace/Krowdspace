<project-page-content>
<style>
@media screen and (max-width: 767px) {
        .explore-project {
            margin-left: auto;
            margin-right: auto;
            width: 400px;
            -webkit-box-shadow: none;
    		-moz-box-shadow: none;
        }
    }
</style>
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