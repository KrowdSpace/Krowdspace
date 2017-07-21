<giveaway-page>
    <div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
    </div>
        <div class="container dashboard">
            <global-logout class="hidden-xs" show={ logged_in } uri={ opts.uri }></global-logout>
			<div class="col-sm-10 col-sm-offset-1 project-container">
				<div class="row dash-row no-gutter">
					<giveaway-content></giveaway-content>
				</div>
			</div>
        </div>
    <global-footer></global-footer>
</giveaway-page>