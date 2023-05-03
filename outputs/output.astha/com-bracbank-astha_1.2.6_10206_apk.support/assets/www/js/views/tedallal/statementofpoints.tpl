<%
var els = new EncryptedLocalStorage('secret');
var year=els.get("currentyear");
var prevyear=year-1;
var mnthnum=els.get("currentmonth");
%>        
	                                 <a href="#/tedallalhome" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
	
		<!-- Breadcrumb Starts Here -->
             <ol class="breadcrumb cust_breadcrumb pull-left">
                 <li><a href="#/tedallalhome"><%-$.i18n.t('app.tedallalrewards.rewardsprogram')%></a></li>
                 <li class="active"><%-$.i18n.t('app.tedallalrewards.stmtofpoints')%></li>                 
			 </ol>
                 <div class="clearfix"></div>
       	<!-- Breadcrumb Ends Here -->
       	     <h3><%-$.i18n.t('app.tedallalrewards.stmtofpoints')%></h3>
             <br/>
            <form>
  				<div class="form-group">
   					<label for="cc_no"><%-$.i18n.t('app.tedallalrewards.selectstmtperiod')%></label>
   					<div id="errorMinAmount" style="display:none">
						<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.tedallalrewards.selectmnth')%> <%-mnthnum%>/<%-prevyear%> <%-$.i18n.t('app.tedallalrewards.to')%> <%-mnthnum%>/<%-year%> </p>
					</div>
					<div class="row">
   							<div class="col-xs-8">
    							<select class="form-control" id="mnth" placeholder="Month" required>
    									<option selected value="JAN~01"><%-$.i18n.t('app.tedallalrewards.jan')%></option>
     									<option value="FEB~02"><%-$.i18n.t('app.tedallalrewards.feb')%> </option>
      									<option value="MAR~03"><%-$.i18n.t('app.tedallalrewards.mar')%></option>
      									<option value="APR~04"><%-$.i18n.t('app.tedallalrewards.apr')%></option>
      									<option value="MAY~05"><%-$.i18n.t('app.tedallalrewards.may')%></option>
      									<option value="JUN~06"><%-$.i18n.t('app.tedallalrewards.jun')%> </option>
      									<option value="JUL~07"><%-$.i18n.t('app.tedallalrewards.jul')%></option>
      									<option value="AUG~08"><%-$.i18n.t('app.tedallalrewards.aug')%></option>
      									<option value="SEP~09"><%-$.i18n.t('app.tedallalrewards.sep')%></option>
      									<option value="OCT~10"><%-$.i18n.t('app.tedallalrewards.oct')%></option>
      									<option value="NOV~11"><%-$.i18n.t('app.tedallalrewards.nov')%></option>
      									<option value="DEC~12"><%-$.i18n.t('app.tedallalrewards.dec')%></option>
    							</select>
    						</div>

       						<div class="col-xs-4">
    							<select class="form-control" id="year" placeholder="Year" required>
									    <option selected value="<%-year%>"><%-year%></option>
									    <option value="<%-prevyear%>"><%-prevyear%></option>
								</select>
							</div>
				    </div>
			    </div>
  					<a class="btn btn-success btn-block" id="submit"><%-$.i18n.t('app.tedallalrewards.submit')%></a>
  			</form>