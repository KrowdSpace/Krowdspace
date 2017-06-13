<explore>   
    <style scoped>
		:scope { background-color: #fff }
	</style>
    
    <style type="text/css">
    .slider {
        width: 100%;
        position: relative;
        margin: 0px auto;
    }

    .slick-slide {
      margin: 0px;
    }
    .slick-slide p,
    .slick-slide .learn-more {
      display: none;   
    }
    .slick-current p,
    .slick-current .learn-more {
      display: block;       
    }
    .slick-slide img {
      border-top: 1px solid #dcdedd;
      border-bottom: 1px solid #dcdedd;
      width: 750px;
    }

    .slick-prev:before,
    .slick-next:before {
        color: black;
    }
    </style>
        <style scoped>
		:scope { background-color: #fff }
	</style>
    <explore-page show={ remove }></explore-page>
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
                window.location.replace("/#/account/login");
            });
    </script> 
</explore>