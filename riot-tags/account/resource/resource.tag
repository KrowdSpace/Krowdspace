<resource>
    <resource-page show={ logged_in }></resource-page>
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
</resource>