<global-coming-soon>
    <div class="alternate-gradient-background img-responsive text-center" style="position: relative; width: 100%; height: 100vh; ">
        <img src="/img/content/krowdspace-icon-lg.png" style="width: 125px; margin-top: 75px; margin-bottom: 30px;">
        <p style="color:#fff; font-size: 26px; font-weight: 600; padding: 0px 10px;">Our website is currently under construction</p>
        <p style="color:#fff; font-size: 26px; font-weight: 100; margin-top: 20px; margin:0px;">We'll be live in</p>
        <div class="timer-next-service">
            <input type="hidden" id="time_remaining" value="5458087">
            <div class="col-sm-6 col-sm-offset-3 no-gutter" style="margin-top: 30px;">
                <div class="col-xs-3 text-center days">
                    <p class="data" style="color:#fff; font-size: 40px; font-weight: 100;">00</p>
                    <p class="label" style="color:#fff; font-size: 20px; font-weight: 100;">Days</p>
                </div>
                <div class="col-xs-3 text-center hours">
                    <p class="data" style="color:#fff; font-size: 40px; font-weight: 100;">00</p>
                    <p class="label" style="color:#fff; font-size: 20px; font-weight: 100;">Minutes</p>
                </div>
                <div class="col-xs-3 text-center minutes">
                    <p class="data" style="color:#fff; font-size: 40px; font-weight: 100;">00</p>
                    <p class="label" style="color:#fff; font-size: 20px; font-weight: 100;">Hours</p>
                </div>
                <div class="col-xs-3 text-center seconds">
                    <p class="data" style="color:#fff; font-size: 40px; font-weight: 100;">00</p>
                    <p class="label" style="color:#fff; font-size: 20px; font-weight: 100;">Seconds</p>
                </div>
            </div>
        </div>
    </div>
    <script>
        jQuery(document).ready(function($) {
        
          timer = function() {
            remaining = $('.timer-next-service #time_remaining').val();
        
            if (remaining > 0) {
              remaining--;
              $('.timer-next-service #time_remaining').val(remaining);
              days = Math.floor(remaining / 86400);
              hours = Math.floor((remaining % 86400) / 3600);
              minutes = Math.floor(((remaining % 86400) % 3600) / 60);
              seconds = Math.floor(((remaining % 86400) % 3600) % 60);
              $('.timer-next-service .seconds .data').text(fill(seconds));
              $('.timer-next-service .minutes .data').html(fill(minutes));
              $('.timer-next-service .hours .data').html(fill(hours));
              $('.timer-next-service .days .data').html(fill(days));
              setTimeout("timer();", 1000);
            }
          }
        
          fill = function(value) {
            if(value < 10){
              return '0' + value;
            }else{
              return value;
            }
          }
        
          setTimeout("timer()", 1000);
        
        }(jQuery));    
    </script>
</global-coming-soon>