<project-body>
    <div class="row project-row">
        <div class="project-campaign-data">
            <div show= { contentDisplay } class="explore-project" ref="projectcontent"></div>
        </div>

    </div>
    <script>
        this.on('update', () => {
          if(!opts.campaign)
          return;

            if(opts.campaign.project_data.meta_data.content){
            this.refs.projectcontent.innerHTML = opts.campaign.project_data.meta_data.content;
            this.contentDisplay = true;
        }else{
            this.contentDisplay= false;
        }
        });
    </script>
</project-body>
<!-- Validated Content October 26th, 2017 -->
