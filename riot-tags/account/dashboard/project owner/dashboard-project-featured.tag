<dashboard-project-featured>
    <div class="col-md-4 feature-container-left">
        <div class="shadow text-left dashboard-purchase-box">
            <a href="#purchase-featured" class="modal-link" data-toggle="modal">
            <span class="fa-stack fa-lg social-btn filterdark float-btn">
            <i class="fa fa-circle fa-stack-2x"></i>
            <i class="fa fa-heart fa-stack-1x fa-inverse" style="padding-top: 1px;"></i>
            </span>
            </a>
            <p class="dashboard-text-alt">Featured Icon</p>
            <p class="dashboard-text-alt feature-space">Have your campaign dislayed with priority filtering on our Explore Page.</p>
            <div class="no-gutter feature-space">
                <div class="col-xs-6 text-center divider-inside-right">
                    <p class="dashboard-text-alt">Days Active</p>
                    <p class="social-metric">{ projectDays || 0 }</p>
                </div>
                <div class="col-xs-6 chart-data text-center">
                    <p class="dashboard-text-alt">Entry Price</p>
                    <p class="social-metric">$10</p>
                </div>
            </div>
            <a href="#purchase-featured" class="modal-link" data-toggle="modal">
                <p show={ !activeFeature } class="purchase-more filterdark">See Details</p>
                <p show={ activeFeature } class="purchase-more filterdark">Active</p>
            </a>
        </div>
    </div>
    <div class="col-md-4 feature-container">
        <div class="shadow dashboard-purchase-box">
            <a href="#purchase-explore" class="modal-link" data-toggle="modal">
            <span class="fa-stack fa-lg social-btn filterdark float-btn">
            <i class="fa fa-circle fa-stack-2x"></i>
            <i class="fa fa-compass fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <p class="dashboard-text-alt">Explore Feature</p>
            <p class="dashboard-text-alt feature-space">Have your campaign featured on our Explore Page rotating banner.</p>
            <div class="no-gutter feature-space">
                <div class="col-xs-6 text-center divider-inside-right">
                    <p class="dashboard-text-alt">Days Active</p>
                    <p class="social-metric">7</p>
                </div>
                <div class="col-xs-6 chart-data text-center">
                    <p class="dashboard-text-alt">Entry Price</p>
                    <p class="social-metric">$15</p>
                </div>
            </div>
            <a href="#purchase-explore" class="modal-link" data-toggle="modal">
                <p show={ !activeExplore } class="purchase-more filterdark">See Details</p>
                <p show={ activeExplore } class="purchase-more filterdark">Active</p>
            </a>
        </div>
    </div>
    <div class="col-md-4 feature-container-right">
        <div class="shadow dashboard-purchase-box">
            <a href="#purchase-landing" class="modal-link" data-toggle="modal">
            <span class="fa-stack fa-lg social-btn filterdark float-btn">
            <i class="fa fa-circle fa-stack-2x"></i>
            <i class="fa fa-home fa-stack-1x fa-inverse"></i>
            </span>
            </a>
            <p class="dashboard-text-alt">Landing Feature</p>
            <p class="dashboard-text-alt feature-space">Featured on the Krowdspace landing page as well as every users dashboard.</p>
            <div class="no-gutter feature-space">
                <div class="col-xs-6 text-center divider-inside-right">
                    <p class="dashboard-text-alt">Days Active</p>
                    <p class="social-metric">10</p>
                </div>
                <div class="col-xs-6 chart-data text-center">
                    <p class="dashboard-text-alt">Entry Price</p>
                    <p class="social-metric">$20</p>
                </div>
            </div>
            <a href="#purchase-landing" class="modal-link" data-toggle="modal">
                <p show={ !activeLanding } class="purchase-more filterdark">See Details</p>
                <p show={ activeLanding } class="purchase-more filterdark">Active</p>
            </a>
        </div>
    </div>
    <script>
        this.on('update', ()=>
        {
            if(!opts.project)
                return;

            let res = {data: [opts.project]};
            
            this.projectDays = res.data[0].project_data.meta_data.duration;
            
            if(res.data[0].project_data.info_data.featured) 
            {
                activeFeature = true;
            }else{
                activeFeature = false;
            }; 

            if(res.data[0].project_data.info_data.explore) 
            {
                activeExplore = true;
            }else{
                activeExplore = false;
            }; 

            if(res.data[0].project_data.info_data.landing) 
            {
                activeLanding = true;
            }else{
                activeLanding = false;
            }; 
            
            if(res.data[0].project_data.info_data.social) 
            {
                activeSocial = true;
            }else{
                activeSocial = false;
            }; 
        });
    </script>
</dashboard-project-featured>