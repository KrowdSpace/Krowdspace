<admin-page-panel>
    <div class="col-sm-12 text-left container-page shadow">
        <div class="col-sm-12 no-gutter" style="padding: 10px 0px;">
            <div class="col-sm-1">
                <p style="font-size: 13px;">NAME</p>
            </div>
            <div class="col-sm-6">
                <p style="font-size: 13px;">REWARD</p>
            </div>
            <div class="col-sm-1 text-center">
                <p style="font-size: 13px;">FEATURE</p>
            </div>
            <div class="col-sm-1 text-center">
                <p style="font-size: 13px;">EXPLORE</p>
            </div>
            <div class="col-sm-1 text-center">
                <p style="font-size: 13px;">LANDING</p>
            </div>
            <div class="col-sm-1 text-center">
                <p style="font-size: 13px;">SOCIAL</p>
            </div>
            <div class="col-sm-1 text-center">
                <p style="font-size: 13px;">REWARD</p>
            </div>
        </div>
        <div class="col-sm-12 no-gutter" style="border-bottom: 1px solid pink; padding: 3px 0px;" each={ adminData }>
            <div class="col-sm-1">
                <p style="font-size: 13px; margin: 0px;">{ unique_id }</p>
            </div>
            <div class="col-sm-6">
                <p style="font-size: 13px; margin: 0px;">{ project_data.info_data.reward }</p>
            </div>
            <div class="col-sm-1 text-center">
                <input checked={ project_data.info_data.featured } input type="checkbox">
            </div>
            <div class="col-sm-1 text-center">
                <input checked={ project_data.info_data.explore } input type="checkbox">
            </div>
            <div class="col-sm-1 text-center">
                <input checked={ project_data.info_data.landing } input type="checkbox">
            </div>
            <div class="col-sm-1 text-center">
                <input checked={ project_data.info_data.social } input type="checkbox">
            </div>
            <div class="col-sm-1 text-center">
                <input checked={ project_data.info_data.reward } input type="checkbox">
            </div>
        </div>
    </div>
    <script type="text/javascript">
        krowdspace.projects.explore().then((res) =>
        {
            this.adminData = res.data;
            this.adminData.reverse();
            this.update();

        },
        (err)=>
        {
            console.log(err)
        });
        
    </script>
</admin-page-panel>

