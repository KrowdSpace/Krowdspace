<admin>
	<admin-page show={ remove }></admin-page>
	<global-coming-soon show={ logged_in }></global-coming-soon>
	<script>	
		krowdspace.v1.check().then((res)=>
			{
				logged_in = true;
				this.update();
			},
			(err)=>
			{
				console.log('You are not logged in');  
			});
	</script>
</admin>

