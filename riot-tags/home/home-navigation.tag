<home-navigation>
    <nav id="mainNav" class="navbar navbar-default navbar-custom navbar-fixed-top" >
        <div class="container">
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation-collapse">
                    <span class="sr-only">Toggle navigation</span><i class="fa fa-bars"></i>
                </button>
                <a class="page-scroll" href="#page-top"><img class="navbar-logo" src="img/krowdspace-explore.png" alt="Krowdspace Logo Small" style="width:55px;"></a>
            </div>
            <div class="collapse navbar-collapse" id="navigation-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
					<li>
                        <a href="/#/explore">Explore</a>
                    </li>
                    <li>
                        <a show={ !logged_in } href="#modal-global-register" class="modal-link" data-toggle="modal">Submit Project</a>
                    </li>
                    <li>
                        <a show={ logged_in } href="/#/account/dashboard">Dashboard</a>
                    </li>
                    <li>
                        <a show={ logged_in } href="/#/account/register">Submit Project</a>
                    </li>
                    <li>
                        <a show={ !logged_in } class="page-scroll" href="#benefits">Benefits</a>
                    </li>
                    <li>
                        <a show={ !logged_in } href="#modal-global-login" class="modal-link" data-toggle="modal">Login</a>
                    </li>
                    <li>
                        <a show={ logged_in } href="/#/account/resource">Resource</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
<script>
this.on('mount', function()
{
    $('a.page-scroll').bind('click', function(event)
    {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: ($($anchor.attr('href')).offset().top - 50)
        }, 1250, 'easeInOutExpo');
        event.preventDefault();
    }),
    $('body').scrollspy({
        target: '.navbar-fixed-top',
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
krowdspace.v1.check().then((res)=>
		{
			logged_in = true;
			this.update();
			console.log('You are logged in');
		},
		(err)=>
		{
		console.log('You are not logged in');
    });
</script>
</home-navigation>
