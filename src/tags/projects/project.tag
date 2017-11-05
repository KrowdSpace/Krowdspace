<project>
<project-page show={ !projectPage } campaign={ campaignData }></project-page>
<script>
    this.projectPage = true;

    krowdspace.v1.check().then((res) => {
      this.projectPage = false;
      this.update();
    },
    (err) => {
      this.projectPage = true;
      window.location.replace("/#/info/login");
      window.location.reload();
      this.update();
    });
    krowdspace.projects.project(this.opts.uri).then((res) => {
      this.campaignData = res.data[0];
      this.update();
    },
    (err) => {
      console.log(err);
    });

</script>
</project>
