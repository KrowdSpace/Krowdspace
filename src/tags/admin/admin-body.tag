<admin-body>
    <div class="row admin-row">
        <p class="message-title">Contact Messages</p>
        <div class="message-block" each={ this.opts.comments }>
            <p class="message-left" class="admin-text">{ fname }</p>
            <p class="message-center" class="admin-text">{ email }</p>
            <p class="message-right" class="admin-text">{ comment }</p>
        </div>
        <div class="adminRefreshFlex">
            <div class="adminRewardBox">
                <form onsubmit={ adminRewardSubmit }>
                    <div class="adminRefreshContent">
                        <p>Update project rewards and reward links. If the campaign is from Kickstarter make sure to enter "Not Valid" and the Secret Perk Link input.</p>
                        <div class="form-group">
                            <input ref="projectID" class="default-entry form-control" required placeholder="Project Identification">
                        </div>
                        <div class="form-group">
                            <input ref="rewardText" class="default-entry form-control" maxlength=110 placeholder="Krowdspace Reward" required>
                        </div>
                        <div class="form-group">
                            <input ref="rewardLink" class="default-entry form-control" placeholder="Secret Perk Link or 'Not Valid'" required>
                        </div>
                        <div class="form-group">
                            <input ref="rewardValue" placeholder="Reward Value" class="default-entry form-control" required>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary login-btn">Update Reward</button>
                    </div>
                </form>
            </div>
            <div>
              <div class="adminRefreshBox">
                  <form onsubmit={ adminRefreshProject }>
                      <div class="adminRefreshContent">
                          <p>Refresh individual campaign data by putting in the Project Identification. This will update all metrics from Kickstarter or Indiegogo. Do not refresh after a campaign has ended.</p>
                          <div class="form-group">
                              <input placeholder="Project Identification" ref="refreshKey" class="default-entry form-control">
                          </div>
                      </div>
                      <button type="submit" class="btn btn-primary login-btn">Refresh Campaign</button>
                  </form>
              </div>
            </div>
        </div>
    </div>
    <script>
    adminRefreshProject(e)
    {
      e.preventDefault();
      let adminProjectKey = this.refs.refreshKey.value.trim();
      krowdspace.projects.update_project(adminProjectKey).then((res) => {
        console.log("winning");
      });
    };

    adminRewardSubmit(e) {
      e.preventDefault();
      this.adminUserDeets();
    };

    adminUserDeets()
    {
      let project = this.refs.projectID.value.trim(),
      projectData = {
        project_data: {
          info_data: {
            reward: this.refs.rewardText.value.trim(),
            reward_ammount: this.refs.rewardValue.value.trim(),
            ig_reward: this.refs.rewardLink.value.trim(),
            rewardValid: 0,
          },
        }
      };
      this.adminProjDeets(project, projectData);
    }

    adminProjDeets(project, projectData)
    {
      krowdspace.projects.set_project(project, projectData).then((res) => {
        window.location.reload();
      });
    }

    $(document).ready(function () {
      $('html, body').animate({scrollTop: $("#myNavbar").offset().top}, 500);
      });
    </script>
</admin-body>
