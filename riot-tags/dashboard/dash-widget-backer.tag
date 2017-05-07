<dash-widget-backer>
<div class="social-container">
	<div class="social-header-dropdown">
            <p class="social-title">CAMPAIGN BACKERS</p>
		<ul class="add-dropdown text-right" style="padding-left: 950px;">
					<li class="dropdown">
						<a href="#" id="dropdown-image2" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-plus plus-dropdown" aria-hidden="true"></i></a>
						<ul class="dropdown-menu add-dropdown-menu" style="border-left: 1px solid #3f434f;">
							<li><a>EXPORT LIST</a></li>
						</ul>
					</li>
				</ul>
        </div>
	<div style="border-right: 1px solid #3f434f; border-bottom: 1px solid #3f434f; border-left: 1px solid #3f434f;">
            <div class="" style="">
               <table class="text-center table table-striped">
                  <thead>
                     <tr class="headings">
                        <th class="column-title text-center">Backer #</th>
                        <th class="column-title text-center">Pledge Date</th>
                        <th class="column-title text-center">First Name</th>
                        <th class="column-title text-center">Last Name</th>
                        <th class="column-title text-center">Amount</th>
                        <th class="column-title text-center">Platform Username</th>
                     </tr>
                  </thead>
                  <tbody>
                     <tr each= { backers } class="{ alternate } pointer">
                        <td class=" ">{ count }</td>
                        <td class=" ">{ date }</td>
                        <td class=" ">{ firstName }</td>
                        <td class=" ">{ lastName }</td>
                        <td class=" ">${ amount }</td>
                        <td class=" ">{ userName }</td>
                     </tr>
                  </tbody>
               </table>
            </div>
	</div>
<!-- Backers Data on Current Project -->
<script>
        this.backers = [
        { alternate: 'odd',count:'0001',date:"May 23, 2014",firstName:"Andre",lastName:"Fisher",amount:'10.00',userName:'Kickster'},
        { alternate: 'even',count:'0002',date:"May 23, 2014",firstName:"Mason",lastName:"Barton",amount:'35.00',userName:'MagicMason'},
        { alternate: 'odd',count:'0003',date:"May 23, 2014",firstName:"Tim",lastName:"Cash",amount:'60.00',userName:'TimCash'},
        { alternate: 'even',count:'0004',date:"May 23, 2014",firstName:"Adam",lastName:"Bradly",amount:'40.00',userName:'ADBRAD'},
        { alternate: 'odd',count:'0005',date:"May 23, 2014",firstName:"Shelby",lastName:"Adams",amount:'50.00',userName:'FunTT'},
        { alternate: 'even',count:'0006',date:"May 23, 2014",firstName:"Amanda",lastName:"Young",amount:'55.00',userName:'KittyCrasher'},
        { alternate: 'odd',count:'0007',date:"May 23, 2014",firstName:"Trevor",lastName:"Tran",amount:'35.00',userName:'SMOSH'},
        { alternate: 'even',count:'0008',date:"May 23, 2014",firstName:"Paul",lastName:"Collins",amount:'20.00',userName:'Sle7en'},
        { alternate: 'odd',count:'0009',date:"May 23, 2014",firstName:"Edward",lastName:"Herzog",amount:'70.00',userName:'Diablo3'},
        { alternate: 'even',count:'0010',date:"May 23, 2014",firstName:"John",lastName:"Oliver",amount:'80.00',userName:'Awnry'},
        ]
</script>
<script>
        this.on('mount', function() {
            $("#dropdown-image2").click(function(){
                $(".dropdown-menu").toggle(300);
            });
        });
    </script>
</div>
</dash-widget-backer>