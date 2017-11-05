<main>
    <div class="container-fluid container-hero page">
        <navigation></navigation>
    </div>
    <div class="container-fluid container-hero page footer-absolute">
    <route></route>
    </div>
    <div class="container-fluid page footer-bottom">
        <footer SignedIn={ SignedIn }></footer>
    </div>
    <login></login>
    <register></register>
    <submission></submission>
    <password></password>
    <contact></contact>
    <contact-confirm></contact-confirm>
    <submit-confirm></submit-confirm>
    <privacy></privacy>
    <service></service>
    <disclaimer></disclaimer>
    <brand></brand>
    <about></about>
    <google-analytics id="UA-92584644-1"></google-analytics>
    <script>
      $(window).on('hashchange', function() {
        $('.modal').modal('hide');
      });
        krowdspace.v1.check()
            .then((res) => {
                    this.SignedIn = true;
                    this.update();
                },
                (err) => {
                    this.SignedIn = false;
                    this.update();
                });
    </script>
</main>
