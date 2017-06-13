<dashboard-edit-reward>
    <div id="edit-reward" class="modal fade">
    <div class="krowdspace-modal col-sm-6 col-sm-offset-3">
        <div id="modal" class="modal-content">
            <div class="modal-header">
                <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button>
                <p class="modal-heading">Edit Backer Reward</p>
            </div>
            <div class="modal-body">
                <form role="form" onsubmit={ submit }>
                    <p class="text-left" style="margin: 10px 0px;">Please provide a new and exclusive reward for our Krowdspace users.</p>
                    <div class="form-group">
                        <input ref="reward" class="form-control placeholder-color" placeholder="Backer Rewards" required="required" aria-required="true" aria-invalid="true">
                    </div>
                </form>
                <p class="backer-reward-text" style="margin: 25px 0px;">CURRENT REWARD: <span ref="currentReward"></span></p>
                <div style="padding: 0px; margin-top: 35px;"><button type="submit" name="submit" class="btn-register btn-info-full next-step">Update</button></div>
            </div>
        </div>
    </div>
    <div class="background-modal-close" data-dismiss="modal"> </div>
    <script>
        this.on('mount', ()=> 
            {
                krowdspace.projects.project('Mason').then((res)=>
                    {     
                        res.data[0].project_data = JSON.parse(res.data[0].project_data);
                        this.update(res.data[0]);
                        this.refs.currentReward.innerHTML = res.data[0].project_data.info_data.reward;
                    },
                (err)=> 
                    {
                        console.log(err);
                    });
            });
    </script>  
</dashboard-edit-reward>