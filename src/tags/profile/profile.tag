<profile>
  <profile-page show={ !profilePage }></profile-page>
  <script>
        this.profilePage = true;

        krowdspace.v1.check().then((res) => {
            this.profilePage = false;
            this.update();
        },
        (err) => {
            this.profilePage = true;
            window.location.replace("/#/info/login");
            window.location.reload();
            this.update();
        });
        $(document).ready(function () {
              $('html, body').animate({scrollTop: $("#myNavbar").offset().top}, 500);
              });
    </script>
</profile>
