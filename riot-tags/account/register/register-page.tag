<register-page>
    <div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
    </div>
        <div class="container dashboard">
            <global-logout show={ logged_in } uri={ opts.uri }></global-logout>
			<div class="col-sm-10 col-sm-offset-1 project-container">
				<div class="row dash-row no-gutter">
					<register-content-signup></register-content-signup>
				</div>
			</div>
        </div>
    <register-project-error></register-project-error>
    <global-footer></global-footer>
</register-page>