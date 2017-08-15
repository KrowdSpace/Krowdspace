<dashboard-project-wysiwyg>
    <div class="col-sm-12 no-gutter wysiwyg-editor">
        <form role="form" onsubmit={ submitContent }>
            <button class="wysiwyg-save filterdark" type="submit" name="submit">SAVE</button>
            <textarea class="wysiwyg" ref="crowdContent"></textarea>
        </form>
    </div>
<script>
    this.on('update', ()=>
    {
        if(!opts.project)
        return;

        let res = {data: [opts.project]};
        let projectContent = res.data[0].project_data.meta_data.content;

        $(function() 
        {
            $('.wysiwyg').froalaEditor()
            $('.wysiwyg').froalaEditor('html.set', projectContent);
        });
    });
    
    submitContent(e) 
    {
        e.preventDefault();
    
        if(!opts.project)
            return;
    
        let userRes = {data: opts.user}
            projRes = {data: [opts.project]};

        this.setUserDeets(userRes, projRes);
    
    }; 
      
    setUserDeets(res, pRes)
    {
        let project = pRes.data[0].unique_id,
            projectData = 
            {
                project_data: 
                {
                    meta_data: 
                    {
                        content: this.refs.crowdContent.value,
                    },
                }
            };
    
        this.setProjDeets(project, projectData);
    }
      
    setProjDeets(project, projectData)
    {
        krowdspace.projects.set_project(project, projectData).then((res)=>
        {
            window.location.reload();
        });
    }
</script>
</dashboard-project-wysiwyg>