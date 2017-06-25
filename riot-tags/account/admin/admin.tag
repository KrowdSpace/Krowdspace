<admin>
	<admin-page show={ logged_in }></admin-page>
	<global-coming-soon show={ remove }></global-coming-soon>
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

