<%
var els = new EncryptedLocalStorage('secret');
var push_flag = els.get("proximityPushFlag");
%>
<a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->

                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/preference"><%-$.i18n.t('app.more.preference.preference')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.pushNotification.proximityPushTitle')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                     <!--One Time Billpay Starts Here-->
                     <form role="form">
              
                <div class="form-group text-center">
				<label><%-$.i18n.t('app.more.pushNotification.proximityPushTitle')%></label>&nbsp;&nbsp;
				<div class="btn-group btn-group-justified custTab" role="group">
				<%if(push_flag=='N'){%>
				<div class="btn-group" role="group">
					<button type="button" name="pushflag" value="Y" id="en" autocomplete="off" class="btn btn-default"><%-$.i18n.t('app.more.preference.enable')%></button>
				</div> 			   		
				
				<div class="btn-group" role="group">
             		<button type="button" name="pushflag" value="N" id="dis" autocomplete="off" class="btn btn-default active"><%-$.i18n.t('app.more.preference.disable')%></button>
				</div>					
				
				<%} else {%>
				<div class="btn-group" role="group">
					<button type="button" name="pushflag" value="Y" id="en" autocomplete="off" class="btn btn-default active"><%-$.i18n.t('app.more.preference.enable')%></button>
				</div> 						
					<div class="btn-group" role="group">
             		<button type="button" name="pushflag" value="N" id="dis" autocomplete="off" class="btn btn-default"><%-$.i18n.t('app.more.preference.disable')%></button>
				</div>	
						
				<%}%>
			</div>

	</div>
                            <br/>
                         <a id="submit" name="submit" class="btn btn-success btn-block"><%-$.i18n.t('app.more.preference.submit')%></a>
                         <a id="cancel" name="cancel" class="btn btn-primary btn-block" ><%-$.i18n.t('app.more.preference.cancel')%></a>

                     </form>