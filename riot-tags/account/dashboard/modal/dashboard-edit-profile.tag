<dashboard-edit-profile>
    <div id="edit-profile" class="modal container fade">
    <div class="krowdspace-modal col-sm-6 col-sm-offset-3">
        <div id="modal" class="modal-content">
            <div class="modal-header modal-edit">
                <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button>
                <p class="modal-heading">Edit Profile Information</p>
            </div>
            <div class="modal-body">
                <form role="form" onsubmit={ submit101 }>
                    <div class="form-group form-split-right edit-margin">
                    <p class="dashboard-text-alt text-left edit-text-title">First Name</p>
                     <input ref="firstname" value="{ FIRSTNAME }" type="text" class="form-control placeholder-color" aria-required="true" aria-invalid="true">
                  </div>
                  <div class="form-group form-split-left edit-margin">
                      <p class="dashboard-text-alt text-left edit-text-title">Last Name</p>
                     <input type="text" ref="lastname" class="form-control placeholder-color" value="{ LASTNAME }" aria-required="true" aria-invalid="true">
                  </div>
                  <div class="clearfix"></div>
                    <div class="form-group">
                        <p class="dashboard-text-alt text-left edit-text-title">Kickstarter Username</p>
                        <input ref="kickstarter" class="form-control placeholder-color" value="{ KICKSTARTER }" aria-required="true" aria-invalid="true">
                    </div>
                    <div class="form-group">
                        <p class="dashboard-text-alt text-left edit-text-title">Indiegogo Username</p>
                        <input ref="indiegogo" class="form-control placeholder-color" value="{ INDIEGOGO }" aria-required="true" aria-invalid="true">
                    </div>
                <div class="text-center" style="padding: 0px; margin-top: 35px;"><button type="submit" name="submit"  class="btn-register btn-info-full next-step">Update</button></div>
                </form>
            </div>
        </div>
    </div>
    <div class="background-modal-close" data-dismiss="modal"> </div>
<script>
krowdspace.users.user().then((res)=>
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
    krowdspace.users.user(this.opts.userkey).then((res)=>
    {
    let project = res.data.username,
        projectData = {
                
                    fname: this.refs.firstname.value,
                    lname: this.refs.lastname.value,
                    iguser: this.refs.kickstarter.value,
                    ksuser: this.refs.indiegogo.value,
        
        };
        krowdspace.users.set_user(projectData).then((res)=>
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
</dashboard-edit-profile>