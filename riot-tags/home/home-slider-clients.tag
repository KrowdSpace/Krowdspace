<home-slider-clients>
<style type="text/css">
    .slick-slide img {
    width: 100%;
    width: 150px;
    border: none;
}
</style>
	<aside class="hidden-xs">
		<div class="container text-center">
			<section class="center slider">
   				<div each= { indexClients }>
      				<a href="{ imageURL }" target="_blank"><img src="{ image }" alt="{ imageAlt }"></a>
    			</div>
 			</section>
		</div>
	</aside>
<script type="text/javascript">
        this.indexClients = [
        { image:"img/clients/digital-ocean-logo.png", imageURL:"https://m.do.co/c/0d0a3c0340d3", imageAlt:"Digital Ocean"},
        { image:"img/clients/ryanv-logo.png", imageURL:"http://ryanvillasanti.com", imageAlt:"Ryan Villasanti"},
        { image:"img/clients/lb-logo.png", imageAlt:"Lala Bahari"},
        { image:"img/clients/collective-logo.png", imageAlt:"Collective Expression"},
        { image:"img/clients/pepo-logo.png", imageAlt:"Pepo Brand"},
        { image:"img/clients/krowdspace-logo.png", imageURL:"/?giveaway=1", imageAlt:"Krowdspace"},
        ]
</script>
<script type="text/javascript">
    this.on('mount', function() 
    {
        $('.center').slick({
        centerMode: true,
        arrows: false,
        centerPadding: '60px',
        slidesToShow: 4,
        autoplay: true,
        autoplaySpeed: 3000,
        });
    });
</script>
</home-slider-clients>
