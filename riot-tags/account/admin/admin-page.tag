<admin-page>
      <div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
    </div>
        <div class="container dashboard">
            <global-logout show={ logged_in } uri={ opts.uri }></global-logout>
            <div class="col-sm-10 col-sm-offset-1 padding-reset">
                  <div class="row dash-row no-gutter shadow">
                        <admin-page-panel></admin-page-panel>
                  </div>
            </div>
        </div>
    <global-footer></global-footer>
</admin-page>     