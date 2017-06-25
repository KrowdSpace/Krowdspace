<project-page>
    <div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
    </div>
        <div class="container dashboard">
			<project-page-share uri={ opts.uri }></project-page-share>
			<div class="col-sm-10 col-sm-offset-1" style="padding: 0px;">
				<div class="row dash-row no-gutter shadow">
					<project-page-image uri={ opts.uri }></project-page-image>	
					<project-page-title uri={ opts.uri }></project-page-title>
				</div>
			</div>
            <div class="col-sm-10 col-sm-offset-1" style="padding: 0px;">
				<div class="row project-row no-gutter dash">
					<project-page-content uri={ opts.uri }></project-page-content>	
				</div>
			</div>
        </div>
    <global-footer></global-footer>

</project-page>