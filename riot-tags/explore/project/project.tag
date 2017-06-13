<project>
	<style scoped>
			:scope { background-color: #fff }
		</style>
	<project-modal-login show={ !logged_in }></project-modal-login>
	<project-page show={ remove }></project-page>
	<global-coming-soon show={ logged_in }></global-coming-soon>	
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

