<giveaway>
    <giveaway-page show={ logged_in }></giveaway-page>
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
</giveaway>