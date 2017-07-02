<dashboard-edit-reward>
    <div id="edit-reward" class="modal container fade">
    <div class="krowdspace-modal col-sm-6 col-sm-offset-3">
        <div id="modal" class="modal-content">
            <div class="modal-header" style="padding-bottom: 0px;">
                <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button>
                <p class="modal-heading">Edit Reward Information</p>
                <p class="registration-text text-left edit-text-title" style="margin-top: 15px;">Updating your project reward will reset your project and it can take up to 24 hours to verify and publish on our Explore Page. If you wish to not edit your reward please close the popup window. </p>
            </div>
            
            <div class="modal-body">
                <form id="rewardUpgrade" role="form" onsubmit={ submitReward }>
                    <div class="form-group">
                        <p class="registration-text text-left edit-text-title">Please provide an exclusive reward for our Krowdspace users.</p>
                        <input ref="rewardtext" class="form-control placeholder-color" value="{ rewardtext }" name="reward" aria-required="true" aria-invalid="true">
                    </div>
                    <div class="form-group">
                        <p class="registration-text text-left edit-text-title">Does your reward have a value or is it a discount?</p>
                        <select ref="rewardoption" class="form-control" name="rewardOption">
                            <option disabled selected value>Choose an Option</option>
                            <option value="Yes">Reward has a Value</option>
                            <option value="No">Reward is a Discount</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <p class="registration-text text-left edit-text-title">Please estimate the value of your reward.</p>
                        <input ref="rewardvalue" class="form-control placeholder-color" name="rewardAmount" value="{ rewardvalue }" aria-required="true" aria-invalid="true">
                    </div>
                <div class="text-center update-modal-btn">
                    <button id="submit" type="submit" name="submit"  class="btn-register btn-info-full next-step">Update</button>
                </div>
                </form>
            </div>
        </div>
    </div>
    <div class="background-modal-close" data-dismiss="modal"> </div>
<script>
krowdspace.projects.project(this.opts.userkey).then((res)=>
    {
        this.rewardtext = res.data[0].project_data.info_data.reward;
        this.rewardvalue = res.data[0].project_data.info_data['reward_ammount'];
        this.update();
    },
    (err)=> 
    {
        console.log(err);
    }
);
submitReward(e) 
{
    e.preventDefault();

    krowdspace.users.user(this.opts.userkey).then((res)=>
    {
        let project = res.data.username,
        projectData = 
        {
            project_data: 
            {
                info_data: 
                {
                    reward: this.refs.rewardtext.value,
                    reward_ammount: this.refs.rewardvalue.value,
                    reward_value: this.refs.rewardoption.value,
                },
				meta_data: 
                {
					reward_check : false,
				}
            }
        };

        krowdspace.projects.set_project(project, projectData).then((res)=>
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