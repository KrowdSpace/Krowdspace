<dashboard-project-buttons>
    <div class="col-sm-1 text-right no-gutter share-container-right">
        <div class="share-box shadow" class="modal-link" data-toggle="modal">
            <a onclick={ krowdspaceLogout } title="Krowdspace Logout">
            <span class="fa-stack fa-lg icon-reset krowdspace-back filterdark">
                <i class="fa fa-square fa-stack-2x krowdspace"></i>
                <i class="fa fa-sign-out fa-stack-1x fa-inverse share-icon-push"></i>
            </span>
            </a>
            <a show={ project } href="#delete-project" title="Krowdspace Remove Project" data-toggle="modal">
            <span class="fa-stack fa-lg icon-reset krowdspace-back-alt filterdark">
                <i class="fa fa-square fa-stack-2x krowdspace-alt"></i>
                <i class="fa fa-trash fa-stack-1x fa-inverse share-icon-push"></i>
            </span>
            </a>
            <a show={ project.project_data.meta_data.mainImg } href="#indiegogo-image" title="Krowdspace Image Size" data-toggle="modal">
            <span class="fa-stack fa-lg icon-reset krowdspace-back-warning filterdark">
                <i class="fa fa-square fa-stack-2x krowdspace-warning"></i>
                <i class="fa fa-exclamation fa-stack-1x fa-inverse share-icon-push"></i>
            </span>
            </a>
        </div>
    </div>
<script>
    krowdspaceLogout() 
    {
        krowdspace.v1.logout().then((res) => 
        {
            window.location.replace("/");
        },
        (err) => 
        {
    
        });
    };
</script>
</dashboard-project-buttons>