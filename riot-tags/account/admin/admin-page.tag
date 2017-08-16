<admin-page>
    <global-logout class="hidden-xs" show={ logged_in } uri={ opts.uri }></global-logout>
    <div class="col-sm-12 text-left admin-container row-verify padding-reset shadow">
        <div class="col-sm-12 admin-box no-gutter">
            <div class="col-sm-1">
                <p class="admin-text">NAME</p>
            </div>
            <div class="col-sm-6">
                <p class="admin-text">REWARD</p>
            </div>
            <div class="col-sm-1 text-center">
                <p class="admin-text">FEATURE</p>
            </div>
            <div class="col-sm-1 text-center">
                <p class="admin-text">EXPLORE</p>
            </div>
            <div class="col-sm-1 text-center">
                <p class="admin-text">LANDING</p>
            </div>
            <div class="col-sm-1 text-center">
                <p class="admin-text">SOCIAL</p>
            </div>
            <div class="col-sm-1 text-center">
                <p class="admin-text">REWARD</p>
            </div>
        </div>
        <form>
            <div class="col-sm-12 admin-data-box no-gutter" each={ adminData }>
                <div class="col-sm-1">
                    <p class="admin-text">{ unique_id }</p>
                </div>
                <div class="col-sm-6">
                    <p class="admin-text">{ project_data.info_data.reward }</p>
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
                    <input class="admin-radio" checked={ project_data.info_data.rewardValid == '1'} name="{ unique_id }" type="radio" value="1">
                    <input class="admin-radio" checked={ project_data.info_data.rewardValid == '0'} name="{ unique_id }" type="radio" value="0">
                    <input class="admin-radio" checked={ project_data.info_data.rewardValid == '2'} name="{ unique_id }" type="radio" value="2">
                </div>
            </div>
            <div class="col-sm-12 padding-reset">
                    <input type="submit" class="admin-comment-submit" name="submit" value="Update Project Database"/>
            </div>
        </form>
    </div>
    <div class="col-sm-12 text-left admin-container padding-reset shadow">
        <div class="col-sm-12 admin-box no-gutter">
            <div class="col-sm-2">
                <p class="admin-text">NAME</p>
            </div>
            <div class="col-sm-3">
                <p class="admin-text">EMAIL</p>
            </div>
            <div class="col-sm-6">
                <p class="admin-text">COMMENT</p>
            </div>
            <div class="col-sm-1 text-center">
                <p class="admin-text">READ</p>
            </div>
        </div>
        <form>
            <div class="col-sm-12 admin-data-box no-gutter">
                <div class="col-sm-2">
                    <p class="admin-text">Mason Halstead</p>
                </div>
                <div class="col-sm-3">
                    <p class="admin-text">Mason@krowdspace.com</p>
                </div>
                <div class="col-sm-6">
                    <p class="admin-text">Comment can go here.</p>
                </div>
                <div class="col-sm-1 text-center">
                    <input class="admin-radio-alt" name="uniqueID" type="radio" value="0">
                    <input class="admin-radio-alt" name="uniqueID" type="radio" value="1">
                </div>
            </div>
            <div class="col-sm-12 padding-reset">
                    <input type="submit" class="admin-comment-submit" name="submit" value="Remove Read Comments"/>
            </div>
        </form>
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
</admin-page>