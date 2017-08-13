<admin>
	<admin-modal-login show={ !logged_in }></admin-modal-login>
	<admin-page show={ logged_in } uri={ opts.uri }></admin-page>
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

