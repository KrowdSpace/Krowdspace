<explore-nav>
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-alt explore-fixed-top" >
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#explore-nav-collapse">
                    <span class="sr-only">Toggle navigation</span><i class="fa fa-bars hamburger"></i>
                </button>
                <a class="navbar-logo-alt page-scroll" href="#page-top"><img src="/../img/krowdspace-explore.png" style="width:55px;"></a>
            </div>
            <div class="collapse navbar-collapse text-center" id="explore-nav-collapse">
                <ul class="nav navbar-nav navbar-left">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll explore-scroll" href="/explore.html"><span class="compass-none"><i class="fa fa-compass fa-lg"></i></span> Explore</a>
                    </li>
                    <li>
                        <a class="page-scroll explore-scroll" href="/account/register.html">Submit Project</a>
                    </li>
                </ul>
                <img class="logo-float" src="img/krowdspace-explore.png" style="width:55px;">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll explore-scroll" href="/account/dashboard.html">Dashboard</a>
                    </li>
                    <li>
                        <a href="#modal-login" class="modal-link" data-toggle="modal">Login</a>
                    </li>
                    <li>
                        <a href="#modal-register" class="modal-link" data-toggle="modal">Sign Up</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <script>
        this.on('mount', function() {
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
</explore-nav>