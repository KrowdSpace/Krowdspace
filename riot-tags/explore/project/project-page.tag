<project-page>
<style>
@media screen and (max-width: 767px) {
	.shadow {
		-webkit-box-shadow: none;
		-moz-box-shadow: none;
	}
}
</style>
        <div class="container dashboard">
			 <project-page-share uri={ opts.uri }></project-page-share> 
			<global-logout class="hidden-xs" show={ logged_in } uri={ opts.uri }></global-logout>
			<div class="col-sm-10 col-sm-offset-1 padding-reset">
				<div class="row dash-row no-gutter shadow">
					<project-page-image uri={ opts.uri }></project-page-image>	
					<project-page-title uri={ opts.uri }></project-page-title>
				</div>
			</div>
            <div class="col-sm-10 col-sm-offset-1 padding-reset">
				<div class="project-row no-gutter">
					<project-page-content uri={ opts.uri }></project-page-content>	
				</div>
			</div>
        </div>
	<project-modal-reward uri={ opts.uri }></project-modal-reward>
    <global-footer></global-footer>
</project-page>