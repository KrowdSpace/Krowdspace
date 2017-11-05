<reward>
    <div id="Reward" class="modal fade">
        <div class="modal-dialog" role="document">
            <form ref="loginform" onsubmit={ rewardSubmit } novalidate>
            <div class="modal-content">
                <div class="modal-header text-center">
                    <div class="modal-img-box">
                        <img class="krowdspace-image-white" />
                    </div>
                    <h2 class="modal-heading">Edit Project Reward</h2>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="fa fa-times fa-lg" aria-hidden='true'></i>
              </button>
                </div>
                <div class="modal-body">
                    <p class="modal-body-text">Updating your project reward information will remove your project from our explore page and it can take up to 24 hours to be verified and republished.</p>
                    <label for="question1">Edit Exclusive Reward</label>
                    <div class="form-group">
                        <input for="question1" name="question1" ref="rewardText" class="default-entry form-control" value="{ rewardText || '' }" maxlength=110>
                    </div>
                    <label show={ indiegogoLink } for="question2">Edit Secret Perk Link</label>
                    <div show={ indiegogoLink } class="form-group">
                        <input type="url" for="question2" name="question2" ref="rewardLink" class="default-entry form-control" value="{ rewardLink || '' }">
                    </div>
                    <div class="form-group">
                        <label for="question3">Edit Reward Type</label>
                        <select ref="rewardOption" class="form-control" name="question3">
                           <option value="Yes">Reward has a Value</option>
                           <option value="No">Reward is a Discount</option>
                        </select>
                     </div>
                    <label for="question4">Estimated Reward Value</label>
                    <div class="form-group">
                        <input for="question4" name="question4" ref="rewardValue" class="default-entry form-control" type="number" placeholder="Must Be a Number" value="{ rewardValue || '' }">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary login-btn">Update Reward</button>
                </div>
            </div>
          </form>
        </div>
    </div>
    <script>
        this.on('update', ()=>
        {
            if(!opts.project)
                return;

            this.rewardText = opts.project.project_data.info_data.reward;
            this.rewardValue = opts.project.project_data.info_data['reward_ammount'];

            if(opts.project.project_data.info_data.ig_reward == 'Not Valid'){
              this.indiegogoLink = false;
              this.rewardLink = 'Not Valid';
            }else{
              this.indiegogoLink = true;
              this.rewardLink = opts.project.project_data.info_data.ig_reward;
            }
        });

        rewardSubmit(e)
        {
            e.preventDefault();

            if(!opts.project)
                return;
            this.setUserDeets();

        };

        setUserDeets()
        {
            let project = opts.project.unique_id,
                projectData =
                {
                    project_data:
                    {
                       info_data:
                        {
                            reward: this.refs.rewardText.value.trim(),
                            reward_ammount: this.refs.rewardValue.value.trim(),
                            reward_value: this.refs.rewardOption.value,
                            ig_reward: this.refs.rewardLink.value.trim(),
                            rewardValid : 0,
                        },
                    }
            };

            this.setProjDeets(project, projectData);
        }

        setProjDeets(project, projectData)
        {
            krowdspace.projects.set_project(project, projectData).then((res)=>
            {
                window.location.reload();
            });
        }
     </script>
</reward>
<!-- Validated Content October 27th, 2017 -->
