<explore>
    <div class="container-fluid page">
        <explore-header projects={ projectData }></explore-header>
        <explore-filter projects={ projectData } filtersearch={ filter }></explore-filter>
    </div>
    <div class="container-fluid page">
        <explore-card ref="filter"></explore-card>
    </div>
    <script>
        this.on('mount', () => {
            this.filter = this.refs.filter;
            this.update();
        });

        this.projects = null;
        let DATA = {
            LIMIT: 100,
        };

        krowdspace.projects.explore(DATA).then((res) => {
          this.projectData = res.data;
          this.update();

          $('.explore').slick({
            dots: false,
            infinite: true,
            arrows: false,
            speed: 1000,
            slidesToScroll: 1,
            centerMode: true,
            autoplay: true,
            autoplaySpeed: 5000,
            variableWidth: true
          });

        },
        (err) => {

        });
        $(document).ready(function () {
          $('html, body').animate({scrollTop: $("#myNavbar").offset().top}, 500);
        });
    </script>
</explore>
<!-- Validated Content October 26th, 2017 -->
