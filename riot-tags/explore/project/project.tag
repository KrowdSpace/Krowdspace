<project>
	<project-modal-login show={ !logged_in }></project-modal-login>
	<project-page show={ logged_in }>
		<style scoped>
			:scope { background-color: #fff }
		</style>
	</project-page>
	<script>	
		krowdspace.v1.check().then((res)=>
			{
				logged_in = true;
				this.update();
				console.log('You are logged in');
			},
			(err)=>
			{
				console.log('You are not logged in');  
			});
	</script>
</project>

