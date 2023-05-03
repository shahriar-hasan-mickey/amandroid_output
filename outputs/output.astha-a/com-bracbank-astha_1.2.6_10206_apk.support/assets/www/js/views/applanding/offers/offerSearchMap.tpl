<h3><%-$.i18n.t('app.offers.offers')%></h3>

<!-- tabs starts here -->


<div class="form-group">
	<div class="btn-group btn-group-justified custTab" role="group">
			<div class="btn-group" role="group">
					<button type="button" id="promotions" class="btn btn-default"> <%-$.i18n.t('app.offers.promotion')%> </button>
			</div>
			<div class="btn-group" role="group">
					<button type="button"  class="btn btn-default active"> <%-$.i18n.t('app.offers.offer')%></button>
			</div>
			
	</div>
</div>

<div class="tab-content">
<form role="form" action="#">
    <!-- offers tab starts here -->
    <div role="tabpanel" class="tab-pane active" id="offers">
    	<br/>
    		<label for=""><%-$.i18n.t('app.offers.selectradius')%></label>
	<div class="form-group">
		<input type="text" autocomplete='off' id="sliderNear" value="" data-slider-min="5" data-slider-max="20" data-slider-step="5" data-slider-value="15"  data-slider-tooltip="hide">
		<h3 class="pull-right showslideval">15 km</h3>
	</div>

       

                          <div class="btn-group  navbar-btn" role="group" aria-label="mode of view">
                                      <button type="button" name="locatorsearchlist" id="locatorsearchlist" class="btn btn-default "><span class="glyphicon glyphicon-list"></span> <%-$.i18n.t('app.offers.list')%></button>
                                      <button type="button"  class="btn btn-default active"><span class="glyphicon glyphicon-map-marker"></span> <%-$.i18n.t('app.offers.map')%></button>
                            </div>
                 

                          <div id="map_canvas" style="width:100%;height:300px"></div>
</form>
                   <br/>
<script>
$("#sliderNear").slider();
$("#sliderNear").on("slide", function(slideEvt) {
	$(".showslideval").text(slideEvt.value +" km");
});
</script>
      