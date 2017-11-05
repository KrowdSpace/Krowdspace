<home>
    <div class="container-fluid container-hero page">
        <hero-banner SignedIn={ SignedIn }></hero-banner>
    </div>
    <div class="container-fluid page">
        <features></features>
        <questions></questions>
        <benefits></benefits>
        <metrics></metrics>
        <giveaway-home></giveaway-home>
    </div>
        <home-modals></home-modals>
<script>
  this.on('mount', () => {
  if(this.opts.uri === 'faq'){
    $('html, body').animate({
        scrollTop: $("#faq").offset().top - 100
    }, 1000);
  }else if(this.opts.uri === 'benefits'){
    $('html, body').animate({
        scrollTop: $("#benefits").offset().top - 50
    }, 1000);
  }else if(this.opts.uri === 'login'){
    $('#Login').modal('show');
  }
});
        krowdspace.v1.check().then((res) => {
            this.SignedIn = true;
            this.update();
        },
        (err) => {
            this.SignedIn = false;
            this.update();
        });
</script>
</home>
