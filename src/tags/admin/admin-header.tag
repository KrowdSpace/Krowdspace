<admin-header>
	<div class="row admin-header-row">
		<div id="admin-menu">
			<div class="panelFlex panelFlexBorder">
				<p class="adminLink">Project Links</p>
				<p class="adminReward">Krowdspace Reward</p>
				<p class="adminDays">Days Left</p>
				<div class="adminFeatures text-center">
					<p class="adminFeatureText">Featured</p>
					<p class="adminFeatureText">Explore</p>
					<p class="adminFeatureText">Landing</p>
					<p class="adminFeatureText">Social</p>
				</div>
				<div class="adminApproval text-center">
					<p>Approval Status</p>
				</div>
			</div>
			<div ref="adminForm">
				<form class="adminPanel" each={ adminData }>
					<div class="panelFlex">
						<input name="projectId" type="hidden" value="{ adminBlock.data.id }">
						<div class="adminLink">
							<a href="/#/project/{ adminBlock.data.id }">
                <button type="button" class="btn btn-primary admin-buttons"><img alt="Krowdspace" class="admin-krowdspace" aria-hidden="true" />
                </button>
              </a>
							<a href="{ adminBlock.data.url }" target="_blank">
                <button type="button" class="btn btn-primary admin-buttons"><img alt="Krowdspace Platform Logo" class="admin-{ adminBlock.data.platform }" aria-hidden="true" />
                </button>
              </a>
							<p class="admin-project-id">{ adminBlock.data.id }</p>
						</div>
						<p class="adminReward">{ adminBlock.data.reward }</p>
						<p class="adminDays">{ adminBlock.data.days }</p>
						<div class="adminFeatures text-center">
							<input name="featuredCheck" checked={ project_data.info_data.featured } type="checkbox">
							<input name="exploreCheck" checked={ project_data.info_data.explore } type="checkbox">
							<input name="landingCheck" checked={ project_data.info_data.landing } type="checkbox">
							<input name="socialCheck" checked={ project_data.info_data.social } type="checkbox">
						</div>
						<div class="adminApproval text-center">
							<input checked={ project_data.info_data.rewardValid=='2' } name="rewardStatus" type="radio" value="2">
							<input checked={ project_data.info_data.rewardValid=='0' } name="rewardStatus" type="radio" value="0">
							<input checked={ project_data.info_data.rewardValid=='1' } name="rewardStatus" type="radio" value="1">
							<input checked={ project_data.info_data.rewardValid=='3' } name="rewardStatus" type="radio" value="3">
						</div>
					</div>
				</form>
				<button class="btn btn-primary adminSubmitButton" type="button" onclick={ adminPanel } name="submit" value="Update Project Database">Update Project Database</button>
			</div>
		</div>
	</div>
	<script>
    this.on('update', () =>
    {
			if (!opts.projects)
				return;

			let adminDataFilter = this.opts.projects;
      adminDataFilter.forEach((element) =>
      {
				let endDate = new Date(element.project_data.meta_data.endTime),
				remainingTime = new Date(endDate.getTime() - (new Date().getTime())).getTime() / 86400000,
				Days = Math.max(0, Math.floor(remainingTime)) + " Days";

        element.adminBlock =
        {
          data:
          {
						'id': element.unique_id,
						'days': Days,
						'reward': element.project_data.info_data.reward,
						'feature': element.project_data.info_data.featured,
						'explore': element.project_data.info_data.explore,
						'landing': element.project_data.info_data.landing,
						'social': element.project_data.info_data.social,
						'projectLevel': element.project_data.info_data.rewardValid,
						'platform': element.platform,
						'url': element.project_data.info_data.url,
					}
				}
			});
			this.adminData = adminDataFilter;
		});

    this.adminPanel = function adminPanel()
    {
			let forms = this.refs.adminForm.getElementsByClassName('adminPanel');
			let sendO = [];

      for (let form of forms)
      {
				let lO = {};
				let fd = new FormData(form);
        for (let prop of fd)
        {
					lO[prop[0]] = prop[1];
				}
				sendO.push(lO);
			}

			let ADMINSUBMIT = sendO;

      krowdspace.admin.submit(ADMINSUBMIT).then((res) =>
      {
				window.location.reload();
      },
      (err) =>
      {

      });
		}
	</script>
</admin-header>
