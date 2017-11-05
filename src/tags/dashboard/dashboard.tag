<dashboard>
    <dashboard-page show={ !dashboardPage && !userProjectLevel }></dashboard-page>
    <script>
        krowdspace.v1.check().then((res) => {

          krowdspace.users.user().then((res) => {

            this.dashboardPage = false;
            return krowdspace.projects.project(this.userkey);

          }).then((res) => {
            this.userProjectLevel = false;
            this.update();

          },(err) => {
            this.userProjectLevel = true;
            this.update();
            window.location.replace("/#/account/register");
            window.location.reload();

          })
        },
        (err) => {
            this.dashboardPage = true;
            window.location.replace("/#/info/login");
            window.location.reload();
            this.update();
        });
    </script>
</dashboard>
<!-- Validated Content October 27th, 2017 -->
