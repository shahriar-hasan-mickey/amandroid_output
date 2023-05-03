<%
var els = new EncryptedLocalStorage('secret'); 
var sliderNearid=els.get("distkm");
var newProxiURL=  els.get("newProxiURL");
%>

<h3><%-$.i18n.t('app.offers.offers')%></h3>

<!-- tabs starts here -->


<div class="form-group">
		<div class="btn-group btn-group-justified custTab" role="group">
			<div class="btn-group" role="group">
					<button type="button" id="promotions" class="btn btn-default"><%-$.i18n.t('app.offers.promotion')%></button>
			</div>
			<div class="btn-group" role="group">
					<button type="button"  class="btn btn-default active"><%-$.i18n.t('app.offers.offer')%></button>
			</div>			
		</div>
</div>

<div class="tab-content">
<form role="form" action="#">
    <!-- offers tab starts here -->
    <div role="tabpanel" class="tab-pane active" id="offers">
    	<br/>    		
	<div class="form-group" id="scrollslider">
		<label for=""><%-$.i18n.t('app.offers.selectradius')%></label>
		<input type="text" autocomplete='off' id="sliderNear" name="sliderNear"  data-slider-min="5" data-slider-max="20" data-slider-step="5" data-slider-value="15"  data-slider-tooltip="hide">
		<h3 class="pull-right showslideval" id="sliderNearid">15 km</h3>
		<input type="hidden" name="offerpromosliderval" id="offerpromosliderval" />
	</div>
	
	<div  style="display:none">
		<input type="button" id="sildeb" name="sildeb" value="sildeb" />
	</div>

       

                          <div class="btn-group  navbar-btn" role="group" aria-label="mode of view">
                                      <button type="button"  class="btn btn-default active"><span class="glyphicon glyphicon-list"></span> <%-$.i18n.t('app.offers.list')%></button>
                                      <button type="button" name="offersearchmap" id="offersearchmap" class="btn btn-default"><span class="glyphicon glyphicon-map-marker"></span> <%-$.i18n.t('app.offers.map')%></button>
                            </div>
                 

                         <div>
							<ul class="list-group subNav" id="offersresult">
							</ul>
							<div id="errorResult" style="display:none" class="alert alert-info text-center">
								<b><%-$.i18n.t('app.locator.nodataForSearch')%></b> 
							</div>
                         </div>
                         <!--<button type="submit" id="offersearchresult" name="locatorsearchresult" class="btn btn-success btn-block">Search <span class="glyphicon glyphicon-search"></span></button>-->
</form>
                   <br/>
<script>

var els = new EncryptedLocalStorage('secret'); 
var newProxiURL=  els.get("newProxiURL");
$("#sliderNear").slider();
if("newnotiproxioffer" == newProxiURL){	
	$("#scrollslider").hide();
}

/*
$("#sliderNear").on("slideStop", function(slideEvt) {
	$(".showslideval").text(slideEvt.value +" km");
	$("#offerpromosliderval").val(slideEvt.value);
	
	$('#sildeb').trigger("click");
	
});
*/
//$("#offerpromosliderval").val("15");
</script>
      