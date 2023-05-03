<%
var els = new EncryptedLocalStorage('secret');
var mpin_otp = els.get("mpin_login_otp");
%>
<a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->

                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/preference"><%-$.i18n.t('app.more.preference.preference')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.preference.enableotp')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                     <!--One Time Billpay Starts Here-->
                     <form role="form">
                        <!-- <div class="form-group text-center">
                                <label><%-$.i18n.t('app.more.preference.otp')%></label>&nbsp;&nbsp;                                
                                <div class="btn-group" data-toggle="buttons">
                                <%if(mpin_otp=='Y'){%> 
                                  <label class="btn btn-default active">
                                <input type="radio" name="option" value="Y" id="en" autocomplete="off"><%-$.i18n.t('app.more.preference.enable')%>
                                  </label>
                                 <label class="btn btn-default">
                                  <input type="radio" name="option" value="N" id="dis" autocomplete="off"><%-$.i18n.t('app.more.preference.disable')%>
                                  </label>
                                  <%}else{%>
                                  <label class="btn btn-default">
                                <input type="radio" name="option" value="Y" id="en" autocomplete="off"><%-$.i18n.t('app.more.preference.enable')%>
                                  </label>
                                 <label class="btn btn-default active">
                                  <input type="radio" name="option" value="N" id="dis" autocomplete="off"><%-$.i18n.t('app.more.preference.disable')%>
                                  </label>
				                <%}%>
                                </div>
                            </div>-->
                            
                <div class="form-group text-center">
				<label><%-$.i18n.t('app.more.preference.otp')%></label>&nbsp;&nbsp;
				<div class="btn-group btn-group-justified custTab" role="group">
				<%if(mpin_otp=='N'){%>
				<div class="btn-group" role="group">
					<button type="button" name="otp" value="Y" id="en" autocomplete="off" class="btn btn-default"><%-$.i18n.t('app.more.preference.enable')%></button>
				</div> 			   		
				
				<div class="btn-group" role="group">
             		<button type="button" name="otp" value="N" id="dis" autocomplete="off" class="btn btn-default active"><%-$.i18n.t('app.more.preference.disable')%></button>
				</div>					
				
				<%} else {%>
				<div class="btn-group" role="group">
					<button type="button" name="otp" value="Y" id="en" autocomplete="off" class="btn btn-default active"><%-$.i18n.t('app.more.preference.enable')%></button>
				</div> 						
					<div class="btn-group" role="group">
             		<button type="button" name="otp" value="N" id="dis" autocomplete="off" class="btn btn-default"><%-$.i18n.t('app.more.preference.disable')%></button>
				</div>	
						
				<%}%>
			</div>

	</div>
                            <br/>
                         <a id="submit" name="submit" class="btn btn-success btn-block"><%-$.i18n.t('app.more.preference.submit')%></a>
                         <a id="cancel" name="cancel" class="btn btn-primary btn-block" ><%-$.i18n.t('app.more.preference.cancel')%></a>

                     </form>