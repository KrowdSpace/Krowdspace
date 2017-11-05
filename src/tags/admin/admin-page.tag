<admin-page>
    <div class="container-fluid page">
        <admin-header projects={ adminProjects }></admin-header>
        <admin-body comments={ adminComments }></admin-body>
        </div>
        <script>
          let DATA = {
            LIMIT: 100,
        };
        krowdspace.projects.explore(DATA).then((res) =>
        {
            this.adminProjects = res.data;
            this.adminProjects.reverse();
            this.update();
        },
        (err)=>
        {
            console.log(err)
        });

        krowdspace.admin.getComments().then((res) =>
        {
            this.adminComments = res.data;
            this.adminComments.reverse();
            this.update();
        },
        (err)=>
        {
            console.log(err)
        });
      </script>
</admin-page>
