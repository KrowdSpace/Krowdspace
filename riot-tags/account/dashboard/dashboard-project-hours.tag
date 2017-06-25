<dashboard-project-hours>
    <div class="col-sm-3 dashboard-hours-container no-gutter shadow">
        <div id="circleChart"></div>
        <div class="col-sm-6 chart-data text-center">
            <div class="divider-inside-right">
                <p class="dashboard-text">Days Left</p>
                <p class="social-metric">{ countdownTimer }</p>
            </div>
        </div>
        <div class="col-sm-6 chart-data text-center">
            <div>
                <p class="dashboard-text">Total Days</p>
                <p class="social-metric" ref="projectLength"></p>
            </div>
        </div>
    </div>
<script>
getUserTest();

function getUserTest(usr)
{
    return krowdspace.users.user(usr).then((res)=>
    {

    },
    (err)=>
    {
        console.log('Error: ', err);
    });
};

getUserTest().then((usrname)=>
{
    return krowdspace.projects.project(usrname);
}).then((res)=>
{
    this.refs.projectLength.innerHTML = res.data[0].project_data.web_data.hours['data-duration'];

        let endTime = res.data[0].project_data.web_data.hours['data-end_time'],
            projectTime = res.data[0].project_data.web_data.hours['data-duration'],
            end = new Date(endTime),
            _second = 1000,
            _minute = _second * 60,
            _hour = _minute * 60,
            _day = _hour * 24,
            timer;

        function showRemaining() 
        {
            let now = new Date(),
                distance = end - now,
                days = Math.floor(distance / _day),
                hours = Math.floor((distance % _day) / _hour),
                minutes = Math.floor((distance % _hour) / _minute),
                seconds = Math.floor((distance % _minute) / _second);
                return days;
        }

        timer = setInterval(showRemaining, 1000);
        this.countdownTimer = showRemaining();
        let bar = new ProgressBar.Circle(circleChart, 
        {
            color: '#3f434f',
            strokeWidth: 16,
            trailWidth: 16,
            easing: 'easeInOut',
            duration: 1400,
            text: {
                autoStyleContainer: false
            },
            from: { 
                color: '#fed136', 
                width: 16 
            },
            to: { 
                color: '#fed136', 
                width: 16 
            },
            step: function(state, circle) {
                circle.path.setAttribute('stroke', state.color);
                circle.path.setAttribute('stroke-width', state.width);
                var value = Math.round(circle.value() * 100);
                if (value === 0) {
                    circle.setText('');
                } else {
                    circle.setText(value + '%');
                }
            }
        });

        bar.text.style.fontFamily = '"Montserrat"';
        bar.text.style.fontSize = '30px';
        bar.text.style.fontWeight = '600';

        let x = projectTime,
            y = showRemaining(),
            z = y/x - 1;
            circleProgress = Math.abs(z);

        bar.animate(circleProgress);  // Number from 0.0 to 1.0
        this.update();
    },
    (err)=> 
    {
        console.log(err);
    }
);
</script>
</dashboard-project-hours>	
	