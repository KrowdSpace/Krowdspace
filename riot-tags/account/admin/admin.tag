<admin>
	<div class="row">
		<global-krowdspace-navigation></global-krowdspace-navigation>
	</div>
	<div class="container-stand-alone">
		<div class="col-sm-10 col-sm-offset-1 padding-reset">
			<div class="row dash-row no-gutter">
				<admin-login show={ !admin_login }></admin-login>
				<admin-page show={ admin_login } uri={ opts.uri }></admin-page>
			</div>
		</div>  
	</div>
	<admin-form-confirm></admin-form-confirm>
	<script>	
		krowdspace.users.user().then((res)=>
			{
				if(res.data.level == 4){
					admin_login = true;
					this.update();
				}
			},
			(err)=>
			{
				console.log(err);  
			});
	</script>
</admin>

