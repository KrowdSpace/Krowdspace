<explore-page>   
    <div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
        <explore-slider-hero></explore-slider-hero>
    </div>
    <div class="container" style="margin-bottom: 50px;">
        <explore-content-filter filtersearch={ filter } ></explore-content-filter>
        <explore-content-card ref="filter"></explore-content-card>
    </div>
    <div class="row">
        <global-footer></global-footer>
    </div>
    <explore-modal-login></explore-modal-login>
    <explore-modal-register></explore-modal-register>
    <script>
        this.on('mount', ()=>
        {
            this.filter = this.refs.filter;
            this.update();
        });
    </script>
</explore-page>