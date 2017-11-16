<dashboard-page>
    <div class="container-fluid page">
        <dash-header project={ project }></dash-header>
        <dash-body user = { user } project={ project }></dash-body>
        <div class="dash-button-box">
          <span each={ p, index in projects }>
              <dash-button onclick={ makeButtF(p) } project = { p }>
                <button class="btn btn-primary dash-buttons">
                    <img alt="Krowdspace" src="/images/krowdspace-logo-white.svg" class="krowdspace" aria-hidden="true" />
                    <span class="dash-buttons-text project-id-btn">Project ID: { project.unique_id }</span>
                </button>
              </dash-button>
          </span>
            <dash-buttons user = { user } project={ project }></dash-buttons>
        </div>
        <delete project={ project }></delete>
        <reward user={ user } project={ project }></reward>
        <refresh></refresh>
        <verify-status></verify-status>
    </div>
    <script>
        this.projectNum = 0;
        this.projectIndex = 0;
        this.projects = [];
        this.projectIndex = 0;
        this.user = null;

        this.userkey = "";

        this.on('mount', () => {
            krowdspace.users.user().catch(err => err).then((res) => {
                this.user = res.data;
                this.userkey = res.data.username;

                return krowdspace.projects.project(this.userkey);

            }).catch((err) => {
                if (this.user) {
                    this.projects = [];
                    this.update();
                }

            }).then((res) => {
                if (res && res.data) {
                    this.projects = res.data;
                    this.setProject(res.data[0]);
                }
            });

    });

        setProject(proj) {
            this.project = proj;
            this.projectIndex = this.projects.indexOf(proj);
            this.update();

        }

        makeButtF(proj) {
            let p = proj;
            return function (e) {
                this.setProject(p);
            };
        };
        $(document).ready(function () {
              $('html, body').animate({scrollTop: $("#myNavbar").offset().top}, 500);
              });
    </script>
</dashboard-page>
<!-- Validated Content October 27th, 2017 -->
