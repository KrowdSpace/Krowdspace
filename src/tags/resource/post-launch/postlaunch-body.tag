<postlaunch-body>
    <div class="row resource-row resource-relative">
        <div show={ !postCheck } class="resource-gradient resource-gradient-alt text-center">
            <button class="btn btn-primary btn-resource" data-toggle="modal" data-target="#Login">
                <i class="fa fa-chevron-down resource-arrow"></i>
            </button>
        </div>
        <div class="resource-content media-content">
            <div class="press-release-guide">
                <p class="resource-page-title">Coming Soon!</p>
            </div>
        </div>
    </div>
    <script>
        krowdspace.v1.check()
            .then((res) => {
                    this.postCheck = true;
                    this.update();
                },
                (err) => {
                    this.postCheck = false;
                    this.update();
                });

    </script>
</postlaunch-body>
