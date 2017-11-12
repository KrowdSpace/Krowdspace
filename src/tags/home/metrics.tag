<metrics>
    <div class="row metrics-row-flex text-center">
        <div class="metrics-section">
            <h2 class="metrics-title">{ krowdspaceCampaigns || 0 }</h2>
            <h3 class="metrics-text">Campaigns Submitted</h3>
        </div>
        <div class="metrics-section hidden-xs">
            <h2 class="metrics-title">${ krowdspaceTotalReward || 0 }</h2>
            <h3 class="metrics-text">Reward Value</h3>
        </div>
        <div class="metrics-section hidden-xs">
            <h2 id="krowdspaceTotalRaised" class="metrics-title">${ krowdspaceTotalRaised || 0 }</h2>
            <h3 class="metrics-text">Campaigns Raised</h3>
        </div>
    </div>
<script>
    krowdspace.v1.stats().then((res) => {

      this.krowdspaceCampaigns = res.data.totalProjects;

      let totalReward = res.data.platforms[1].rewardAmmount + res.data.platforms[0].rewardAmmount;
      this.krowdspaceTotalReward = Math.round(totalReward).toLocaleString('en-US');

      let raisedValue = res.data.platforms[0].raisedAmount + res.data.platforms[1].raisedAmount;
      this.krowdspaceTotalRaised = Math.round(raisedValue).toLocaleString('en-US');

      this.update();

    },
    (err) => {

        console.log(err);
    });
</script>
</metrics>

