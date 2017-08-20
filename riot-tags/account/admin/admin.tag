<admin>
	<div class="row">
		<global-krowdspace-navigation></global-krowdspace-navigation>
	</div>
	<div class="container-stand-alone">
		<div class="col-sm-10 col-sm-offset-1 padding-reset">
			<div class="row dash-row no-gutter">
				<admin-login show={ !logged_in }></admin-login>
				<admin-page show={ logged_in } uri={ opts.uri }></admin-page>
			</div>
		</div>  
	</div>
	<admin-form-confirm></admin-form-confirm>
	<script>	
		krowdspace.v1.check().then((res)=>
			{
				logged_in = true;
				this.update();
			},
			(err)=>
			{
				console.log(err);  
			});
	</script>
</admin>

