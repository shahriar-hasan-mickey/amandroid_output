
<%
	var els = new EncryptedLocalStorage('secret'); 
	
	var device_id = getDeviceId(); //els.get("device_id");
	var myaccounts=els.get("myaccounts");
	var setccdetailsaccno=els.get("setccdetailsaccno");
	var errordesc = els.get("errordesc");
	
%>

<div class="clearfix"></div><br/>
						<!--Breadcrumb Ends Here-->
						<%if(!(intRateExtentions=="" || intRateExtentions=="null" || intRateExtentions==null || intRateExtentions=="undefined" || intRateExtentions==undefined)){%>
						<%if(intRateExtentions.length>0){%>
						<div class="panel panel-default cust_panel">
						
						<div class="panel-heading" data-toggle="collapse" data-target="#beneficiary">
								<p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;<%-$.i18n.t('app.more.general.savaccrates')%></p>
							</div>
							
					  <div id="beneficiary" class="collapsePanel collapse in">
						<div class="panel-body detailsStmt">
							<div class="cust_list_display">
									<ul class="list-group">
									 <% _.each(intRateExtentions,function(data){ %>
										<li class="list-group-item">
											<div class="row">
											  <div class="col-xs-12">
												<p class="value"><%-$.i18n.t('app.more.general.acctype')%></p>
												<p class="value"><%-data.accountType%></p>
											  </div>

											  </div>
											  <div class="row">
											  <div class="col-xs-5">
												  <p class="lbl"><%-$.i18n.t('app.more.general.irates')%></p>
												  <p class="value"><%-data.rates%>%</p>
				
											  </div>
				
											  <div class="col-xs-7 text-right">
												  <p class="lbl"><%-$.i18n.t('app.more.general.accbalanceupto')%></p>
												  <p class="value"><%-data.fromAmount%></p>
				
											  </div>
											</div>
										  </li>
                                       <% }); %>
									</ul>
								  </div>
                                </div>
							  </div>
							</div>
							<%}%>
							<%}else{%>
							<div class="alert alert-info alert-sm">
		  						<%-errordesc%>
		  					</div>
							<%}%>
					
