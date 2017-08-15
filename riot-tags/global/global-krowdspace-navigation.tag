<global-krowdspace-navigation>
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-alt explore-fixed-top" >
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#explore-nav-collapse">
                    <span class="sr-only">Toggle navigation</span><i class="fa fa-bars hamburger"></i>
                </button>
                <a class="navbar-logo-alt" href="/"><img class="nav-logo-size" src="/../img/press/krowdspace-icon-v1.png" alt="Krowdspace Logo Small"></a>
            </div>
            <div class="collapse navbar-collapse text-center" id="explore-nav-collapse">
                <ul class="nav navbar-nav navbar-left">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="explore-scroll" href="/#/explore">Explore</a>
                    </li>
                    <li>
                        <a class="explore-scroll" href="/#/account/register">Submit Project</a>
                    </li>
                </ul>
                <a href="/">
                    <img class="nav-logo-float nav-logo-size hidden-sm hidden-xs" src="img/press/krowdspace-icon-v1.png" alt="Krowdspace Logo Small">
                </a>
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a show={ logged_in } class="explore-scroll" href="/#/account/dashboard">Dashboard</a>
                    </li>
                    <li>
                        <a show={ !logged_in } href="#modal-global-login" class="modal-link" data-toggle="modal">Login</a>
                    </li>
                    <li>
                        <a show={ !logged_in } href="#modal-global-register" class="modal-link" data-toggle="modal">Register</a>
                    </li>
                    <li>
                        <a show={ logged_in } href="/#/account/resource">Resource</a>
                    </li>
                    <li>
                        <a class="hidden-lg hidden-md" show={ logged_in } onclick={ krowdspaceLogout }>Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
<script>	
    krowdspace.v1.check().then((res)=>
	{
		logged_in = true;
		this.update();
	},
	(err)=>
	{
		
    });
    
    krowdspaceLogout() 
    {
        krowdspace.v1.logout().then((res) => 
        {
            window.location.replace("/");
        },
        (err) => 
        {
    
        });
    };

    this.on('mount', function() 
    {
        $('a.page-scroll').bind('click', function(event) {
            var $anchor = $(this);
            $('html, body').stop().animate({
                scrollTop: ($($anchor.attr('href')).offset().top - 50)
            }, 1250, 'easeInOutExpo');
            event.preventDefault();
        }),
        $('body').scrollspy({
            target: '.explore-fixed-top',
            offset: 51
        }),
        $('.navbar-collapse ul li a').click(function(){ 
                $('.navbar-toggle:visible').click();
        }),
        $('#mainNav').affix({
            offset: {
                top: 10
            }
        })
    });
    </script>
</global-krowdspace-navigation>