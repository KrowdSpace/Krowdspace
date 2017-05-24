<dashboard>
 	<div class="row">
		<account-navigation></account-navigation>
	</div>
	<div class="container-alt">
		<div class="row dash-row-top">
			<div class="col-md-3">
				<dash-content-social></dash-content-social>
				<dash-content-social-pie></dash-content-social-pie>
			</div>
			<div class="col-md-9 dash-col-right">
				<dash-content-tabs></dash-content-tabs>
			</div>
		</div>
		<div class="row dash-row-bottom">
			<div class="col-sm-12">
				<dash-content-backers></dash-content-backers>	
			</div>
		</div>
	</div>
	<account-login-verify></account-login-verify>
	<global-footer></global-footer> 
<script>
	
var social = {
	labels: 
	[
	" Facebook",
	" Twitter",
	" Pinterest",
	" Instagram"
	],
	datasets: 
	[
		{
			data: 
			[
				'0', 
				'0', 
				'0', 
				'0'
			],
			backgroundColor: 
			[
				"#3b5998",
				"#0084b4",
				"#C92228",
				"#125688"
			],
			hoverBackgroundColor: 
			[
				"#3b5998",
				"#0084b4",
				"#C92228",
				"#125688"
			],			
		}
	],	
}; 
	
let INSTA_URL = "https://api.instagram.com/v1/media/",
	INSTA_POST_ID = "1500905039610194798",
	INSTA_CODE = "/?access_token=4163437312.5f0ec4e.f66076806af249ae95f7dfdfc70c4c03",
	
	FB_URL = "https://graph.facebook.com/v2.9/330201904004972_",
	FB_POST_ID = "414542278904267",
	FB_QUERY = "/insights/post_impressions_organic_unique",
	FB_QUERY2 = "/insights/post_impressions_organic_unique",
	FB_CODE = "/?access_token=EAACEdEose0cBACkawgGGJOT9iOQmc19MQ6JjNT2ER0dCYM4fCYZBcIz49Hoep3iIWYIH3pYqFzaqtLk9TTbZAu9fzhQZCOZCoxIeASFArT",
	
	PIN_ID = "https://api.pinterest.com/v1/pins/",
	PIN_POST_ID = "672162313105809308",
	PIN_CODE = "/?access_token=AcXfn0UPLaJJ9w_tSHbdvSARJ_seFL_I33XQkDlEBLLJJmBBigAAAAA&fields=counts";
	
let promiseA = [];
	
promiseA[0] = fetch(INSTA_URL + INSTA_POST_ID + INSTA_CODE).then((response)=>
{
	return response.json();
})
	.then(function(data) 
{
	document.getElementById('instagramLikes').innerHTML = data.data.likes.count;
	document.getElementById('instagramPieLikes').innerHTML = data.data.likes.count;
	document.getElementById('instagramComments').innerHTML = data.data.comments.count;
	social.datasets[0].data[3] = data.data.likes.count;
});
	
promiseA[1] = fetch(PIN_ID + PIN_POST_ID + PIN_CODE).then((response)=>
{
	return response.json();
})
	.then(function(data) 
{
	console.log(data.data.counts);
	document.getElementById('pinterestPins').innerHTML = data.data.counts.repins;
	document.getElementById('pinterestPiePins').innerHTML = data.data.counts.repins;
	document.getElementById('pinterestComments').innerHTML = data.data.counts.comments;
	social.datasets[0].data[2] = data.data.counts.repins;
});

// promiseA[2] = fetch(FB_URL + FB_POST_ID + FB_QUERY + FB_CODE).then(function(response) {
// return response.json();
// }).then(function(data) {
// console.log(data.data[0].values[0]);
// document.getElementById('FBimpressions').innerHTML = data.data[0].values[0].value;
// });
	
// promiseA[3] = fetch(FB_URL + FB_POST_ID + FB_QUERY2 + FB_CODE).then(function(response) {
// return response.json();
// }).then(function(data) {
// console.log(data.data[0].values[0]);
// document.getElementById('FBreactions').innerHTML = data.data[0].values[0].value;
// });

function onMount()
{
    Promise.all(promiseA).then((resA)=>
    {
        var ctx = document.getElementById("myChart");
			var data = social;
			var options = {  
				cutoutPercentage:0,
				legend: {
					display: false
				},
			};  
			var myDoughnutChart = new Chart(ctx, {
				type: 'doughnut',
				data: data,
				options: options
			});
    });
}

onMount();

	
	
</script>
</dashboard>
