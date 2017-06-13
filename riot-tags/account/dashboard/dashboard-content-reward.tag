<dashboard-content-reward>
    <div class="social-container" style="border: 1px solid #3f434f;">
        <div style="position: relative; padding: 15px 15px;">
            <a href="#edit-reward" class="modal-link" data-toggle="modal">
                <span class="fa-stack fa-lg social-btn" style="position: absolute; top: 5px; right: 5px;">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-pencil fa-stack-1x fa-inverse"></i>
                </span>
            </a>
            <p class="backer-reward-text" style="padding-right: 50px; height: 42px;"><strong>REWARD: <span ref="projectReward"></span></strong></p>
            <p class="backer-reward-text" style="margin: 0px;">Upon succesful completion of your crowdfunding project you have agreed to send out any additional rewards to the backers who have supported your campaign.</p>
            <div class="text-center" style="border: 3px solid #fed136; margin: 15px 0px;">
            <p style="font-size: 30px; margin: 0px; font-weight: 600; color: #fed136;">1XD6D3</p>
            </div>
        <p class="backer-reward-text" style="margin: 0px;">This is your project reward code. Backers from Krowdspace will send you this code through your crowdfunding platform website so that you can verify their discount.</p>
        </div>
    </div>
    <div class="clearfix"></div>
<script>
    this.on('mount', ()=> 
        {
            krowdspace.projects.project('Mason').then((res)=>
                {     
                    res.data[0].project_data = JSON.parse(res.data[0].project_data);
                    this.update(res.data[0]);
                    this.refs.projectReward.innerHTML = res.data[0].project_data.info_data.reward;
                },
            (err)=> 
                {
                    console.log(err);
                });
        });
</script>   
</dashboard-content-reward>