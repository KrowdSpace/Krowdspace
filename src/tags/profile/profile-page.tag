<profile-page>
    <div class="container-fluid page">
        <profile-header user={ user } ownerLevel={ campaigns }></profile-header>
        <profile-body></profile-body>
        </div>
        <script>
          this.on('mount', () => {
          krowdspace.users.user().then((res) => {
              this.user = res.data;
              this.userkey = res.data.username;
              this.update();
              return krowdspace.projects.project(this.userkey);

            }).then((res) => {
              this.campaigns = true;
              console.log('Active Project Owner');
              this.update();

            },(err) => {
              this.campaigns = false;
              console.log('Krowdspace Member Does Not Have a Campaign');
              this.update();

            })
        });
      </script>
</profile-page>
<!-- Validated Content October 26th, 2017 -->
