<boosts>
    <style scoped>
		:scope { background-color: #fff }
	</style>
    <boosts-page></boosts-page>
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
                window.location.replace("/#account/login");  
            });
    </script>
</boosts>