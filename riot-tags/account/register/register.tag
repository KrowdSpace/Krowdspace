<register>
	<style scoped>
		:scope { background-color: #fff }
	</style>
 	<register-page show={ remove }></register-page>
	 <global-coming-soon show={ logged_in }></global-coming-soon>
<script>	
	krowdspace.v1.check().then((res)=>
		{
			logged_in = true;
			this.update();
		},
		(err)=>
		{
			window.location.replace("/#/account/login");
		});
</script>
</register>