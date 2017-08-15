<verify-page>
    <div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
    </div>
    <div class="container dashboard">
        <global-logout show={ logged_in } uri={ opts.uri }></global-logout>
        <div class="col-sm-10 col-sm-offset-1 padding-reset">
            <div class="row dash-row no-gutter">
                <verify-content-confirm></verify-content-confirm>
            </div>
		</div>  
    </div>
    <global-footer></global-footer>
</verify-page>