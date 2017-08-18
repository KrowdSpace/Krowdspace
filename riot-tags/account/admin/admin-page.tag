<admin-page>
    <style>
    input[type="radio"] {
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        display: inline-block;
        width: 13px;
        height: 13px;
        background-clip: content-box;
        border: 2px solid #bbbbbb;
        background-color: #e7e6e7;
        border-radius: 50%;
    }
    input[type="radio"]:focus {
        outline: none;
    }
    input[type="radio"]:checked:nth-of-type(1) {
        background-color: #d9534f;
    }
    input[type="radio"]:checked:nth-of-type(2) {
        background-color: #fdb540;
    }
    input[type="radio"]:checked:nth-of-type(3) {
        background-color: #93e026;
    }
    input[type="radio"]:checked:nth-of-type(4) {
        background-color: #000;
    }
    </style>
    <global-logout class="hidden-xs" show={ logged_in } uri={ opts.uri }></global-logout>
    <div class="col-sm-12 text-center">
        <p>
            <span class="admin-options">
            <i class="fa fa-circle" style="color: #d9534f;" aria-hidden="true"></i> Returned
            </span>
            <span class="admin-options">
            <i class="fa fa-circle" style="color: #fdb540;" aria-hidden="true"></i> Pending 
            </span>
            <span class="admin-options">
            <i class="fa fa-circle" style="color: #93e026;" aria-hidden="true"></i> Approved 
            </span>
            <span class="admin-options">
            <i class="fa fa-circle" style="color: #000000;" aria-hidden="true"></i> Expired
            </span>
        </p>
    </div>
    <div class="col-sm-12 text-left admin-container row-verify padding-reset shadow">
        <div class="col-sm-12 admin-box no-gutter">
            <div class="col-sm-1">
                <p class="admin-text">NAME</p>
            </div>
            <div class="col-sm-7">
                <p class="admin-text">REWARD</p>
            </div>
            <div class="col-sm-3 padding-reset">
                <div class="col-sm-3 text-center padding-reset">
                    <p class="admin-text padding-reset">FEATURE</p>
                </div>
                <div class="col-sm-3 text-center padding-reset">
                    <p class="admin-text padding-reset">EXPLORE</p>
                </div>
                <div class="col-sm-3 text-center padding-reset">
                    <p class="admin-text padding-reset">LANDING</p>
                </div>
                <div class="col-sm-3 text-center padding-reset">
                    <p class="admin-text padding-reset">SOCIAL</p>
                </div>
            </div>
            <div class="col-sm-1 text-center">
                <p class="admin-text">VALID</p>
            </div>
        </div>

<div ref="formHolder">
        <form class="projF" each={ adminData }>
            <div class="col-sm-12 admin-data-box no-gutter">
                <div class="col-sm-1">
                    <input class="admin-text" name="projectId" type="hidden" value="{ unique_id }"><p class="admin-text">{ unique_id }</p>
                </div>
                <div class="col-sm-7">
                    <p class="admin-text">{ project_data.info_data.reward }</p>
                </div>
                <div class="col-sm-3 padding-reset">
                    <div class="col-sm-3 text-center">
                        <input name="featuredCheck" checked={ project_data.info_data.featured } type="checkbox">
                    </div>
                    <div class="col-sm-3 text-center">
                        <input name="exploreCheck" checked={ project_data.info_data.explore } type="checkbox">
                    </div>
                    <div class="col-sm-3 text-center">
                        <input name="landingCheck" checked={ project_data.info_data.landing } type="checkbox">
                    </div>
                    <div class="col-sm-3 text-center">
                        <input name="socialCheck" checked={ project_data.info_data.social } type="checkbox">
                    </div>
                </div>
                <div class="col-sm-1 text-center">
                    <input class="admin-radio" checked={ project_data.info_data.rewardValid == '1'} name="projectValid" type="radio" value="1">
                    <input class="admin-radio" checked={ project_data.info_data.rewardValid == '0'} name="projectValid" type="radio" value="0">
                    <input class="admin-radio" checked={ project_data.info_data.rewardValid == '2'} name="projectValid" type="radio" value="2">
                    <input class="admin-radio" checked={ project_data.info_data.rewardValid == '3'} name="projectValid" type="radio" value="3">
                </div>
            </div>
        </form>
        <div class="col-sm-12 padding-reset">
                <button type="button" onclick={ checker } class="admin-comment-submit" name="submit" value="Update Project Database">Update Project Database</button>
        </div>
    </div>
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


        this.checker = function checker()
        {
            let forms = this.refs.formHolder.getElementsByClassName('projF');
            let sendO = [];

            for(let form of forms)
            {
                let lO = {};
                let fd = new FormData(form);
                for(let prop of fd)
                {
                    lO[prop[0]] = prop[1];
                }
                sendO.push(lO);
            }

            console.log(sendO);
        }
    
        
    </script>
</admin-page>