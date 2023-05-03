 <%
	var els = new EncryptedLocalStorage('secret');
	var currentDevice=getDeviceId();//els.get("touchToginDevice");
	console.log("currentDevice",currentDevice);
	var bioFlag=els.get("BiometricType");
	%>
<a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->

                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/preference"><%-$.i18n.t('app.more.preference.preference')%></a></li>
                     <% if(bioFlag=="TID"){ %>
                     	<li class="active"><%-$.i18n.t('app.touchid.changeTouchID')%></li>
                     <% }else if(bioFlag=="FID"){ %>
                     	<li class="active"><%-$.i18n.t('app.faceid.changeFaceID')%></li>
                     <% } %>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                     <% if(bioMetricDetailsDTO[0].deviceUDID != null && bioMetricDetailsDTO[0].deviceUDID != "") { %>
                     <form >
                	<!-- form Starts here-->
                  <fieldset> <!-- fieldset Starts here-->
                    <div>
                    
	                   <ul class="list-group cust_list">
	                   
	                   	<% _.each(bioMetricDetailsDTO,function(data,index) { %>
	                   		<% if(currentDevice == data.deviceUDID) { %>
                               <li class="list-group-item active">
                            <% } else { %>
                                <li class="list-group-item">
                            <% } %> 
                            
                              <div class="row">
								<div class="col-xs-3"><span>
									<% if(data.biometric_type_flag == "FID") { %>
										<img src="images/common/newicons/light_theme/faceid-icon.png">
									<% } else { %>
										<img src="images/common/newicons/light_theme/touchid-icon.png">
									<% } %>
								</div></span>
								<div class="col-xs-9">
									<h4 class="media-heading"><%-$.i18n.t('app.touchid.model')%></h4>
									<p><span>
									<% if(data.deviceName	 != null && data.deviceName	 != "") { %>
                               			<%- data.deviceName %>
                               		<% } else if(data.deviceModel != null && data.deviceModel != "") { %>
                               			<%- data.deviceModel %>
                               		<% } %>
                               		<br/>
                               		<%  if(data.deviceUDID != null && data.deviceUDID != "") { %>
                               			<% if(currentDevice == data.deviceUDID ) { %>
                                 			<span class="uuid"><%- data.deviceUDID %></span>
                                 		<% } else { %>
                                 		 	<%- data.deviceUDID %>
                                 		<% } %> 
                               				
                               		<% } %>
                               		</span>
                               		</p>                               		
									<%console.log("===========",currentDevice);
									console.log("----------",data.deviceUDID);
									 if(currentDevice == data.deviceUDID) { %>
										<p class="text-right"><span class="label label-warning"><%-$.i18n.t('app.touchid.loggedInDevice')%></span> </p>
									<% } %>
									</p>
      							</div>
                     		</div>
                     		<div class="row">
                     			<div class="col-xs-12 text-right">
									<div class="btn-group" data-toggle="buttons">
										<% if(data.biometric_enadis_flag == "E") { %>
											<label class="btn btn-success active" id="labelYes<%- index %>">
												<input type="radio" name="deviceNeed<%- index %>" id="deviceYes<%- index %>" value="<%- data.deviceUDID%>~<%-data.biometric_type_flag%>" checked> <%-$.i18n.t('app.touchid.enable')%>
	                                 		</label>
	                                  		<label class="btn btn-default" id="labelNo<%- index %>">
	                            				<input type="radio" name="deviceNeed<%- index %>" id="deviceNo<%- index %>" value="<%- data.deviceUDID%>~<%-data.biometric_type_flag%>" ><%-$.i18n.t('app.touchid.disable')%>
	                          				</label>
                                  		<% } else { %>
	                                  		<label class="btn btn-default" id="labelYes<%- index %>">
	                                		 	<input type="radio" name="deviceNeed<%- index %>" id="deviceYes<%- index %>" value="<%- data.deviceUDID%>~<%-data.biometric_type_flag%>">  <%-$.i18n.t('app.touchid.enable')%>
	                                		 </label>
	                                		 <label class="btn btn-success active" id="labelNo<%- index %>">
	                            				<input type="radio" name="deviceNeed<%- index %>" id="deviceNo<%- index %>" value="<%- data.deviceUDID%>~<%-data.biometric_type_flag%>" checked><%-$.i18n.t('app.touchid.disable')%>
	                          				</label>
                                  		<% } %>
                                	</div>
                     			</div>
                     		</div>  
                     		<!-- <div><small><b><%-$.i18n.t('app.touchid.status')%></b></small></div>-->
                     	</li>
                       <% }) %>
                      </ul>
                  	</div>
                        <input type="button" id="deviceListSubmit" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.mpin.submit')%>" />
                         <a href="#/preference" class="btn btn-primary btn-block"><%-$.i18n.t('app.mpin.cancel')%></a>
                    </fieldset><!-- Fieldset Ends here-->
                          </form>
                          
                          <% } else { %>
                                 	<div class="alert alert-info">
		<span class="msg"><%-$.i18n.t('app.touchid.bioNotRegister')%></span>
	</div>
                                 <% } %>
                                 <script>
  $(document).ready(function()
		{
		 $("#deviceListSubmit").attr('disabled','disabled');
		});
</script>