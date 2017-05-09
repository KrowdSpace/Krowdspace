<dash-content-tabs>
	<div class="social-container">
	<div class="text-center social-sub-header">
	  <ul class="dash-sub-nav">
    <li><a data-toggle="tab" href="#menu2">BOOSTS</a></li>
    <li class="active"><a data-toggle="tab" href="#home">CAMPAIGN METRICS</a></li>
    <li><a data-toggle="tab" href="#menu3">RESOURCES</a></li>
  </ul> 
		</div>
  <div class="tab-content tab-dashboard" style="border-left: 1px solid #3f434f; border-right: 1px solid #3f434f; border-bottom: 1px solid #3f434f;">
    <div id="home" class="tab-pane fade in active">
    <tab-metrics-barchart></tab-metrics-barchart>
	<tab-metrics-daysleft></tab-metrics-daysleft>
	<tab-metrics-views></tab-metrics-views>
	<tab-metrics-goal></tab-metrics-goal>
								<div class="clearfix"></div>
    </div>
    <div id="menu2" class="tab-pane fade">
      <div class="project-boost-box">
		<tab-boosts-package></tab-boosts-package>
		<tab-boosts-mix></tab-boosts-mix>
		<tab-boosts-featured></tab-boosts-featured>
		<tab-boosts-social></tab-boosts-social>	
	</div>
    </div>
    <div id="menu3" class="tab-pane fade">
      <tab-resource-content></tab-resource-content>
    </div>
  </div>
					
						</div>

</dash-content-tabs>