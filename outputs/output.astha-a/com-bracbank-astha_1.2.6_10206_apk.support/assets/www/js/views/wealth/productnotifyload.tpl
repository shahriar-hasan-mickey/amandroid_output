<%

var els = new EncryptedLocalStorage('secret');    
var pendingCreditCardActivation=els.get("pendingCreditCardActivation");
var pendingATMActivation=els.get("pendingATMActivation");
var sadadPaymentDue=els.get("sadadPaymentDue");
var trafficVoilationDue=els.get("trafficVoilationDue");
var noOfDays = els.get("noOfDays");
var KYCUpdated = els.get("KYCUpdated");
var legalStaus = els.get("legalStaus");
console.log("legalStaus",legalStaus);
var kyconetimeprocess = els.get('kyconetimeprocess');
var showErrorBlock=false;
if (!(sadadPaymentDue!=undefined && sadadPaymentDue!=null && sadadPaymentDue >= 0 && sadadPaymentDue!="" )) {
	sadadPaymentDue=0;
}
if (!(trafficVoilationDue!=undefined && trafficVoilationDue!=null && trafficVoilationDue > 0 && trafficVoilationDue!="" && trafficVoilationDue!="0")) {
	trafficVoilationDue=0; 
}
if (!(pendingATMActivation!=undefined && pendingATMActivation!=null && pendingATMActivation > 0 && pendingATMActivation!="" && pendingATMActivation!="0")) {
	pendingATMActivation=0;
}
if (!(pendingCreditCardActivation!=undefined && pendingCreditCardActivation!=null && pendingCreditCardActivation > 0 && pendingCreditCardActivation!="" && pendingCreditCardActivation!="0")) {
	pendingCreditCardActivation=0;
}
%>
<div id="notify" class="collapsePanel panel-collapse collapse in" >
						<div class="panel-body">
						<div class="list-group">
								<ul class="list-group subNav ext">
<% if(KYCUpdated != "Y"){%>								
								<% if(noOfDays <= 90 || KYCUpdated != "Y" ){%>
					<% if(legalStaus == "false"){ %>
                           <li class="list-group-item">
                            <a href="#/kycinput">
                               <span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<span class="pull-right label label-danger">1</span>
								<span class="listimg"><span class="idcard"></span></span>
								<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.idexpiregen')%></h4>
							</a>
							</li>
	                       <%}else{%>
	                       <% if(KYCUpdated != "Y" || noOfDays != "" || noOfDays != "0") { %>
                            <li class="list-group-item">
                            <a href="#/kycinput">
                               <span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<span class="pull-right label label-primary">1</span>
								<span class="listimg"><span class="idcard"></span></span>
								<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.expmsg1')%> <strong class="text-danger"> <%-noOfDays%> </strong> <%-$.i18n.t('app.notification.expmsg2')%></h4>
							</a>
							</li>
							<%}else if(KYCUpdated != "Y" || noOfDays != "" || noOfDays == "0") { %>
							<li class="list-group-item">
                            <a href="#/kycinput">
                               <span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<span class="pull-right label label-primary">1</span>
								<span class="listimg"><span class="idcard"></span></span>
								<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.idexpirezero')%> </h4>
							</a>
							</li>
							<%}else{%>
							<%}%>
							<%}%>
							<%}else if(noOfDays > 90 ||kyconetimeprocess != "Y" || KYCUpdated != "Y"){%>	
									<li class="list-group-item">
                            <a href="#/kycinput">
                               <span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<span class="pull-right label label-primary">1</span>
								<span class="listimg"><span class="idcard"></span></span>
								<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.expmsg1')%> <strong class="text-danger"> <%-noOfDays%> </strong> <%-$.i18n.t('app.notification.expmsg2')%></h4>
							</a>
							</li>
							<%}%>
<%}%>							
											<li class="list-group-item"  id="sadad1">
												<% if(sadadPaymentDue != 0) { %>
													<a href="#/duebillpaybynotify">
			                                       <span class="glyphicon glyphicon-chevron-right pull-right"></span>
			                                   	<% } else { %>
												<a>
			                                       <span class="glyphicon glyphicon-chevron-right pull-right" style="visibility:hidden;"></span>												
												<% } %>												 	
													<span class="pull-right label label-danger" id="sadad"><%- sadadPaymentDue %></span> 
													<span class="listimg"><span class="sadad"></span></span>
													<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.sadadduebills')%></h4>
												</a>
											</li>
									 
									 	
											<li class="list-group-item" id="traffic1">
												<% if(trafficVoilationDue != 0) { %>
													<a href="#/moiTraffic">
			                                    	<span class="glyphicon glyphicon-chevron-right pull-right"></span>
			                                    <% } else { %>
												<a>
												<span class="glyphicon glyphicon-chevron-right pull-right" style="visibility:hidden;"></span>
												<% } %>
													<span class="pull-right label label-danger" id="traffic"><%- trafficVoilationDue %></span>
													<span class="listimg"><span class="moi"></span></span>
													<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.trafficvioalation')%></h4>
													<input type="hidden" value="traffic" id="moitrafic">
												</a>
											</li>
									 
									 		
											<li class="list-group-item" id="atm1">
												<% if(pendingATMActivation != 0) { %>
													<a href="#/activatedebitcardnotify">
			                                    	<span class="glyphicon glyphicon-chevron-right pull-right"></span>
			                                     <% } else { %>
												<a>
												<span class="glyphicon glyphicon-chevron-right pull-right" style="visibility:hidden;"></span>
												<% } %>														
													<span class="pull-right label label-danger" id="atm"><%- pendingATMActivation %></span>
													<span class="listimg"><span class="cc"></span></span>
													<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.debitcardsactivation')%></h4>
												</a>
											</li>
									
										
										<li class="list-group-item" id="card1">
											<% if(pendingCreditCardActivation != 0) { %>
												<a href="#/activatecreditcardbynotify">
		                                    	<span class="glyphicon glyphicon-chevron-right pull-right"></span>
		                                     <% } else { %>
												<a>
												<span class="glyphicon glyphicon-chevron-right pull-right" style="visibility:hidden;"></span>
											 <% } %>	
												<span class="pull-right label label-danger" id="card"><%- pendingCreditCardActivation %></span>
												<span class="listimg"><span class="cc"></span></span>
												<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.creditcardsactivation')%></h4>
											</a>
										</li>
									
									<!--<li class="list-group-item">
										<a href="javascript:void(0);">
	                                    	<span class="glyphicon glyphicon-chevron-right pull-right"></span>
											<span class="pull-right label label-danger">1</span>
											<span class="listimg"><span class="offer"></span></span>
											<h4 class="list-group-item-heading">My Offers</h4>
										</a>
									</li>-->
								</ul>
							</div>
						</div>
					</div>