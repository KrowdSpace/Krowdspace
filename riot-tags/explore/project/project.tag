<project>
	<div class="row">
		<global-krowdspace-navigation></global-krowdspace-navigation>
	</div>
	<project-modal-login show={ !logged_in }></project-modal-login>
	<project-page show={ logged_in } uri={ opts.uri }></project-page>
	<script>
		krowdspace.v1.check().then((res)=>
			{
				logged_in = true;
				this.update();
			},
			(err)=>
			{

			});
	</script>
</project>

