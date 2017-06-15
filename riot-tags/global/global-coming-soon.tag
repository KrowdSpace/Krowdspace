<global-coming-soon>
    <div class="alternate-gradient-background img-responsive text-center" style="position: relative; width: 100%; height: 100vh; ">
        <img src="/img/content/krowdspace-icon-lg.png" style="width: 125px; margin-top: 75px; margin-bottom: 30px;">
        <p style="color:#fff; font-size: 26px; font-weight: 600; padding: 0px 10px;">Our website is currently under construction</p>
        <p style="color:#fff; font-size: 26px; font-weight: 100; margin-top: 20px; margin:0px;">We'll be live in</p>
        <div class="timer-next-service">
            <input type="hidden" id="time_remaining">
            <div class="col-sm-6 col-sm-offset-3 no-gutter" style="margin-top: 30px;">
                <div class="col-xs-3 text-center">
                    <p id="days" class="data" style="color:#fff; font-size: 40px; font-weight: 100;">00</p>
                    <p class="label" style="color:#fff; font-size: 20px; font-weight: 100;">Days</p>
                </div>
                <div class="col-xs-3 text-center">
                    <p id="hours" class="data" style="color:#fff; font-size: 40px; font-weight: 100;">00</p>
                    <p class="label" style="color:#fff; font-size: 20px; font-weight: 100;">Hours</p>
                </div>
                <div class="col-xs-3 text-center">
                    <p id="minutes" class="data" style="color:#fff; font-size: 40px; font-weight: 100;">00</p>
                    <p class="label" style="color:#fff; font-size: 20px; font-weight: 100;">Minutes</p>
                </div>
                <div class="col-xs-3 text-center">
                    <p id="seconds" class="data" style="color:#fff; font-size: 40px; font-weight: 100;">00</p>
                    <p class="label" style="color:#fff; font-size: 20px; font-weight: 100;">Seconds</p>
                </div>
            </div>
        </div>
    </div>
    <script>
        var end = new Date('08/22/2017 11:59 AM');

    var _second = 1000;
    var _minute = _second * 60;
    var _hour = _minute * 60;
    var _day = _hour * 24;
    var timer;

    function showRemaining() {
        var now = new Date();
        var distance = end - now;
        if (distance < 0) {

            clearInterval(timer);
            document.getElementById('countdown').innerHTML = 'EXPIRED!';

            return;
        }
        var days = Math.floor(distance / _day);
        var hours = Math.floor((distance % _day) / _hour);
        var minutes = Math.floor((distance % _hour) / _minute);
        var seconds = Math.floor((distance % _minute) / _second);

        document.getElementById('days').innerHTML = days;
        document.getElementById('hours').innerHTML = hours;
        document.getElementById('minutes').innerHTML = minutes;
        document.getElementById('seconds').innerHTML = seconds;
    }

    timer = setInterval(showRemaining, 1000);
    </script>
    
</global-coming-soon>