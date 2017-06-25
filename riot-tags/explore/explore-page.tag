<explore-page>   
    <style type="text/css">
    .slider {
        width: 100%;
        position: relative;
        margin: 0px auto;
    }

    .slick-slide {
      margin: 0px;
    }
    .slick-slide p,
    .slick-slide .learn-more {
      display: none;   
    }
    .slick-current p,
    .slick-current .learn-more {
      display: block;       
    }
    .slick-slide img {
      border-top: 1px solid #dcdedd;
      border-bottom: 1px solid #dcdedd;
      width: 750px;
    }

    .slick-prev:before,
    .slick-next:before {
        color: black;
    }
    </style>
    <div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
        <explore-slider-hero></explore-slider-hero>
    </div>
    <div class="container" style="margin-bottom: 50px;">
        <explore-content-filter filterSearch = { refs.filter } ></explore-content-filter>
        <explore-content-card ref="filter"></explore-content-card>
    </div>
    <div class="row">
        <global-footer></global-footer>
    </div>
    <explore-modal-login></explore-modal-login>
    <explore-modal-register></explore-modal-register>

    <script>
    this.on('mount',function(){

        this.filter = this.refs.filter;
        
    });
        
    </script>
</explore-page>