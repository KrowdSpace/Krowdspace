<global-logout>
    <div class="col-sm-1 text-right no-gutter share-container-right">
        <div class="shadow share-box">
            <a onclick={ krowdspaceLogout } title="Krowdspace Logout">
            <span class="fa-stack fa-lg icon-reset krowdspace-back filterdark">
                <i class="fa fa-square fa-stack-2x krowdspace"></i>
                <i class="fa fa-sign-out fa-stack-1x fa-inverse share-icon-push"></i>
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
</global-logout>