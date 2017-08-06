<dashboard-project-title>
    <div class="col-lg-3 col-md-12 dashboard-title-box shadow" style="margin-left: 0px;">
        <a href="#refresh-content" class="modal-link" data-toggle="modal">
            <span class="fa-stack fa-lg social-btn filterdark float-btn">
            <i class="fa fa-circle fa-stack-2x"></i>
            <i class="fa fa-refresh fa-stack-1x fa-inverse"></i>
            </span>
        </a>
        <p class="dashboard-text-alt" style="padding-right: 35px; height: 57px;">{ projectTitle || '' }</p>
        <p class="dashboard-text-alt" style="padding-top: 15px; height: 110px;">{ projectDescription || '' }</p>
        <p class="dashboard-text-alt" style="padding-top: 15px">Please click on the refresh icon to update project.</p>
    </div>
<script>
    this.on('update', ()=>
    {
        if(!opts.project)
        return;

        this.projectTitle = opts.project.project_data.meta_data.title;
        this.projectDescription = opts.project.project_data.meta_data.description;
    });
</script>
</dashboard-project-title>
