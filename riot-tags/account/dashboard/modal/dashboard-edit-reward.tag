<dashboard-edit-reward>
    <div id="edit-reward" class="modal container fade">
    <div class="krowdspace-modal col-sm-6 col-sm-offset-3">
        <div id="modal" class="modal-content">
            <div class="modal-header">
                <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button>
                <p class="modal-heading">Edit Profile Information</p>
            </div>
            <div class="modal-body">
                <form role="form" onsubmit={ submit101 }>
                    <div class="form-group form-split-right">
                    <p class="dashboard-text text-left edit-text-title">First Name</p>
                     <input ref="firstname" value="{ firstname || FIRSTNAME }" type="text" class="form-control placeholder-color" aria-required="true" aria-invalid="true">
                  </div>
                  <div class="form-group form-split-left">
                      <p class="dashboard-text text-left edit-text-title">Last Name</p>
                     <input type="text" ref="lastname" class="form-control placeholder-color" value="{ lastname || LASTNAME }" aria-required="true" aria-invalid="true">
                  </div>
                    <div class="form-group" style="clear:both;">
                        <p class="dashboard-text text-left edit-text-title">City and State</p>
                        <input ref="city" class="form-control placeholder-color" value="Seattle, WA" aria-required="true" aria-invalid="true">
                    </div>
                    <div class="form-group">
                        <p class="dashboard-text text-left edit-text-title">Kickstarter Username</p>
                        <input ref="kickstarter" class="form-control placeholder-color" value="{ kickstarter || KICKSTARTER }" aria-required="true" aria-invalid="true">
                    </div>
                    <div class="form-group">
                        <p class="dashboard-text text-left edit-text-title">Indiegogo Username</p>
                        <input ref="indiegogo" class="form-control placeholder-color" value="{ indiegogo || INDIEGOGO }" aria-required="true" aria-invalid="true">
                    </div>
                    <hr>
                    <div class="form-group">
                        <p class="dashboard-text text-left edit-text-title">Update Reward</p>
                        <input ref="rewardtext" class="form-control placeholder-color" value="{ rewardtext }" aria-required="true" aria-invalid="true">
                    </div>
                    <div class="form-group">
                        <p class="dashboard-text text-left edit-text-title">Update Reward Value</p>
                        <input ref="rewardvalue" class="form-control placeholder-color" value="{ rewardvalue }" aria-required="true" aria-invalid="true">
                    </div>
                <div class="text-center" style="padding: 0px; margin-top: 35px;"><button type="submit" name="submit"  class="btn-register btn-info-full next-step">Update</button></div>
                </form>
            </div>
        </div>
    </div>
    <div class="background-modal-close" data-dismiss="modal"> </div>
<script>
getUserTest();

function getUserTest(usr)
{   
    return krowdspace.users.user(usr).then((res)=>
    {
        var USERKEY = res.data.username;
        console.log(USERKEY);
        return USERKEY;
    },
    (err)=>
    {
        console.log('Error: ', err);
    });
};

getUserTest().then((usrname)=>
{
    return krowdspace.projects.project(usrname);
}).then((res)=>
{
    this.rewardtext = res.data[0].project_data.info_data.reward;
    this.rewardvalue = res.data[0].project_data.info_data['reward_ammount'];
    this.firstname = res.data[0].project_data.info_data.fname;
    this.lastname = res.data[0].project_data.info_data.lname;
    this.kickstarter = res.data[0].project_data.info_data.ksuser;
    this.indiegogo = res.data[0].project_data.info_data.iguser;
    this.update();
},
(err)=> 
{
    console.log(err);
}
);

getUserTest().then((usrname)=>
{
    return krowdspace.users.user(usrname);
}).then((res)=>
    {
        this.FIRSTNAME = res.data.user_data.fname;
        this.LASTNAME = res.data.user_data.lname;
        this.KICKSTARTER = res.data.user_data.ksuser;
        this.INDIEGOGO = res.data.user_data.iguser;
        this.update();
    },
    (err)=> 
    {
        console.log(err);
    }
);

submit101(e)
{
    e.preventDefault();

    getUserTest().then((usrname)=>
    {
        return krowdspace.users.user(usrname);
    }).then((res)=>
    {
    let pID = res.data.username,
        pData = {
            project_data: {
                info_data: {
                    reward: this.refs.rewardtext.value,
                    reward_ammount: this.refs.rewardvalue.value,
                    ksuser: this.refs.kickstarter.value + ' ',
                    iguser: this.refs.indiegogo.value + ' ',
                    fname: this.refs.firstname.value + ' ',
                    lname: this.refs.lastname.value + ' ',
                    city: this.refs.city.value,
                }
            }
        };
        krowdspace.projects.set_project(pID, pData).then((res)=>
        {
            window.location.reload();
        },
        (err)=>
        {
            console.log(err);
        });
    },
        (err)=> 
        {
            console.log(err);
        }
    );
};  
</script>
</dashboard-edit-reward>