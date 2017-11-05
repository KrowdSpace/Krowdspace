<registration>
  <register-page show={ !registerPage }></register-page>
  <script>
      this.registerPage = true;

      krowdspace.v1.check().then((res) => {
          this.registerPage = false;
          this.update();
      },
      (err) => {
          this.registerPage = true;
          window.location.replace("/#/info/login");
          window.location.reload();
          this.update();
      });
  </script>
</registration>
<!-- Validated Content October 26th, 2017 -->
