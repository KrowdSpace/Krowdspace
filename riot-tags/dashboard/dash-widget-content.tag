<dash-widget-content>
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
    <dash-metrics-barchart></dash-metrics-barchart>
	<dash-metrics-daysleft></dash-metrics-daysleft>
	<dash-metrics-views></dash-metrics-views>
	<dash-metrics-goal></dash-metrics-goal>
								<div class="clearfix"></div>
    </div>
    <div id="menu2" class="tab-pane fade">
      <div class="project-boost-box">
		<dash-boost-package></dash-boost-package>
		<dash-boost-mix></dash-boost-mix>
		<dash-boost-featured></dash-boost-featured>
		<dash-boost-social></dash-boost-social>	
	</div>
    </div>
    <div id="menu3" class="tab-pane fade">
      <dash-resource-widget></dash-resource-widget>
    </div>
  </div>
					
						</div>

</dash-widget-content>