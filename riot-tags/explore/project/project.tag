<project>
	<style scoped>
			:scope { background-color: #fff }
		</style>
	<project-modal-login show={ !logged_in }></project-modal-login>
	<project-page show={ logged_in }></project-page>
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
</project>

