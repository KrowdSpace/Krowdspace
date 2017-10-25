<giveaway-page>
    <div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
    </div>
        <div class="container dashboard">
            <global-logout class="hidden-xs" show={ logged_in } uri={ opts.uri }></global-logout>
			<div class="col-sm-12 padding-reset">
				<div class="row dash-row no-gutter">
					<giveaway-content></giveaway-content>
				</div>
			</div>
        </div>
    <global-footer></global-footer>
</giveaway-page>
