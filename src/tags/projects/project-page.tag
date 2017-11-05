<project-page>
    <div class="container-fluid page">
        <project-header campaign={ campaignData }></project-header>
        <project-body campaign={ campaignData }></project-body>
    </div>
    <coupon campaign={ campaignData }></coupon>
  <script>
      this.on('update', () => {
        this.campaignData = this.opts.campaign;
      });
      $(document).ready(function () {
              $('html, body').animate({scrollTop: $("#myNavbar").offset().top}, 500);
              });
  </script>
</project-page>
<!-- Validated Content October 26th, 2017 -->
