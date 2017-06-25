<project>
	<style scoped>
			:scope { background-color: #fff }
		</style>
	<project-modal-login show={ !logged_in } uri={ opts.uri }></project-modal-login>
	<project-page show={ logged_in } uri={ opts.uri }></project-page>
	<script>
		this.uri = opts.uri;
		console.log(this.uri);
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

