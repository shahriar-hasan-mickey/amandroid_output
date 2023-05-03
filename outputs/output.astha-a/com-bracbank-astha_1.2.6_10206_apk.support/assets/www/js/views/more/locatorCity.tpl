<h3><%-$.i18n.t('app.locator.locator')%></h3>


				<div class="btn-group btn-group-justified custTab" role="group">
						<div class="btn-group" role="group">
								<button type="button" id="atm" class="btn btn-default"><%-$.i18n.t('app.locator.searchnearme')%>&nbsp;<span class="glyphicon glyphicon-search"></span></button>
						</div>
						<div class="btn-group" role="group">
								<button type="button"  class="btn btn-default active"><%-$.i18n.t('app.locator.searchbycity')%>&nbsp;<span class="glyphicon glyphicon-search"></span></button>
								
						</div>
				</div>
				<br/><br/><br/>
																
                  <form role="form">
                 <!-- <label for=""><%-$.i18n.t('app.locator.selectradius')%></label>
					<div class="form-group">
						<input type="text" id="sliderNear" value="" data-slider-min="5" data-slider-max="20" data-slider-step="5" data-slider-value="15"  data-slider-tooltip="hide">
						<h3 class="pull-right showslideval" id="showkm">15 km</h3>
					</div>-->
                        <div class="form-group required">
                    	<select name="selecity" id="selecity" class="form-control">
                        		<option value=""  selected="selected"><%-$.i18n.t('app.locator.selectcity')%></option>
                            	<% if ( cityListDTO.length > 0 ) { %>
			        				<% _.each(cityListDTO,function(data){ %>
			        					<p>
											<%if(typeof(data.citydesc)!="undefined"){%>
												<option value="<%-data.city%>"><%-data.citydesc%></option>
											
											<%}%>
										</p>
									<% }); %>
					        	<%}%>
						</select>
					</div>
			<div id="errorCity" style="display:none">
        	<p class="help-block error-message">
        	<font color="#A94442"><%-$.i18n.t('app.requests.personalfin.select city')%></font>
        	</p>
     		</div>	
                        <div class="form-group required">
                    	<select name="branch" id="branch" class="form-control">
                        		<option value=""  selected="selected"><%-$.i18n.t('app.locator.selectbranch')%></option>
                            	<% if ( locatorListDTO.length > 0 ) { %>
			        				<% _.each(locatorListDTO,function(data){ %>
			        					<p>
											<%if(typeof(data.desc)!="undefined"){%>
												<option value="<%-data.typeCode%>"><%-data.desc%></option>
											
											<%}%>
										</p>
									<% }); %>
					        	<%}%>
						</select>
					</div>
			<div id="errorBranch" style="display:none">
        	<p class="help-block error-message">
        	<font color="#A94442"><%-$.i18n.t('app.requests.newcc.validbranch')%></font>
        	</p>
     	</div>	
	<button type="submit" id="locatorsearchresult" name="locatorsearchresult" class="btn btn-success btn-block"><%-$.i18n.t('app.locator.search')%> <span class="glyphicon glyphicon-search"></span></button>
                  </form>
<script>
/*$("#sliderNear").slider();
$("#sliderNear").on("slideStop", function(slideEvt) {
	$(".showslideval").text(slideEvt.value +" km");
});*/
</script>