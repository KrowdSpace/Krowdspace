<register>
	<style scoped>
		:scope { background-color: #fff }
	</style>
 	<register-page show={ logged_in }></register-page>
<script>	
	krowdspace.users.check().then((res)=>
		{
			logged_in = true;
			this.update();
			console.log('You are logged in');
		},
		(err)=>
		{
			console.log('You are not logged in');
			window.location.replace("/#account/login");
		});
</script>
</register>