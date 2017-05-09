<explore>   
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
            <explore-navigation></explore-navigation>
            <explore-slider-hero></explore-slider-hero>
        </div>
        <div class="container">
            <explore-content-filter></explore-content-filter>
            <explore-content-card></explore-content-card>
        </div>
        <div class="row">
            <global-footer></global-footer>
        </div>

</explore>