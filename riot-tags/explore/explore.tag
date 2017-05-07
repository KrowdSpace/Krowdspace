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
            <explore-nav></explore-nav>
            <explore-header></explore-header>
        </div>
        <div class="container">
            <explore-filter></explore-filter>
            <explore-content></explore-content>
        </div>
        <div class="row">
            <explore-footer></explore-footer>
        </div>

</explore>