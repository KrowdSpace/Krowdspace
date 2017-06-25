<boosts>
    <style scoped>
		:scope { background-color: #fff }
	</style>
    <boosts-page show={ logged_in }></boosts-page>
    <global-coming-soon show={ remove }></global-coming-soon>
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
</boosts>