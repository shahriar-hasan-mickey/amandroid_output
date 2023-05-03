<script src="js/libs/common/appcommon.js"></script>
<%
	var els = new EncryptedLocalStorage('secret');
	
	var menuVisibilityList =els.get("menuVisibilityList");
	var notifyFlag = menuVisibilityList["MTC3001"].menu_status;
	
	var duebillnotify = els.get("duebillnotify");
	var traficviolnotify = els.get("traficviolnotify");
	var inactdcardnotify = els.get("inactdcardnotify");
	var inactccardnotify = els.get("inactccardnotify");
	var totalCampign = els.get("totalCampign");
	
	var noOfDays = "0";
	try{
		noOfDays = els.get("noOfDays");
	}catch(e){
		noOfDays = "0";
	}
	if(noOfDays==null || noOfDays=="null"){
		noOfDays="0";
	}
	noOfDays = parseInt(noOfDays);

	var KYCUpdated = "";
	try{
		KYCUpdated = els.get("KYCUpdated");
	}catch(e){
		KYCUpdated = "";
	}
	if(KYCUpdated==null || KYCUpdated=="null"){
		KYCUpdated="";
	}
	
	var legalStaus = "";
	console.log("legalStaus",legalStaus);
	try{
		legalStaus = els.get("legalStaus");
	}catch(e){
		legalStaus = "";
	}
	if(legalStaus==null || legalStaus=="null"){
		legalStaus="";
	}
	
	
	
	if(totalCampign=="" || totalCampign==null)
		totalCampign=0;
	else
		totalCampign=parseInt(totalCampign);

	var totalnotify= els.get("totalnotify");
	if(totalnotify=="" || totalnotify==null)
	totalnotify=0;
	else
	totalnotify=parseInt(totalnotify);
	//if(KYCUpdated != "Y" && noOfDays >= 0 && noOfDays <= 90) {
	
	var totalnotifycount;
	var usrlogincount = els.get("usrlogincount");
	var iqnumid= els.get("iqnumid");
	if(KYCUpdated != "Y" && noOfDays<=90) {
		totalnotifycount=totalnotify + totalCampign+1;
	}else{
		totalnotifycount=totalnotify + totalCampign;
	}
	var kyconetimeprocess = "";
	
	try{
		kyconetimeprocess = els.get('kyconetimeprocess');
	}catch(e){
		kyconetimeprocess = "";
	}
	if(kyconetimeprocess==null || kyconetimeprocess=="null"){
		kyconetimeprocess="";
	}
	
	var id = els.get("iqnumid");
	els.set("notifyCountUpdated",totalnotifycount);
	var sel_lang_id = els.get("lang_id");
%>


<% if(notifyFlag == "Y" ) { %>

	<div class="panel panel-default cust_panel hilit_panel" >

		<% if(totalnotifycount > 0 ) { %>
			<div class="panel-heading " data-target="#notify" data-toggle="collapse" id="bubblenotify">
			<p class="panel-title small"><span id="notifyd" class="glyphicon glyphicon-chevron-down"></span>&nbsp;
		<% } else { %>
			<div class="panel-heading collapsed" data-target="#notify" data-toggle="collapse" id="bubblenotify">
			<p class="panel-title small"><span id="notifyd" class="glyphicon glyphicon-chevron-right"></span>&nbsp;
		<% } %>
			
				<%-$.i18n.t('app.notification.notification')%>
				<% if(totalnotifycount >= 0) { %> 
					<span class="pull-right label label-danger header-label" id="totalcount">
				  		<%-totalnotifycount%>
				  	</span>
				<% } %>  
			</p>	 
		</div>
		<% if(totalnotifycount > 0 ) { %>
			<div id="notify" class="collapsePanel panel-collapse collapse in">
		<% } else { %>
			<div id="notify" class="collapsePanel panel-collapse collapse ">
		<% } %>		
			<div class="panel-body">
				<div class="list-group">
					<ul class="list-group subNav ext">
<% if(iqnumid >= 3){%>
<%}else{%>
<% if(noOfDays > 90){%>
<%}else{%>
<% if(KYCUpdated != "Y"){%>
	<% if(noOfDays >= 0 && noOfDays <= 90 && KYCUpdated != "Y" ){%>
		<% if(legalStaus == "false"){ %>
			<%if(noOfDays <= 90 && noOfDays >= 0){%>
								<li class="list-group-item">
		                            <a href="#/kycinput">
		                               <span class="glyphicon glyphicon-chevron-right pull-right"></span>
										<span class="pull-right label label-danger">1</span>
										<span class="listimg"><span class="idcard"></span></span>
										<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.idexpirexdays')%> <strong class="text-danger"> <%-noOfDays%> </strong>
										<%if(sel_lang_id=="en-US"){%>
												<%if(noOfDays==1){%>
													<%-$.i18n.t('app.notification.days1')%>
												<%}else{%>
												 	<%-$.i18n.t('app.notification.days')%>
												 <%}%>
										 <%}else if(sel_lang_id=="en-AR"){%>
												 <%if(noOfDays>=3 && noOfDays<=10){%>
												 	<%-$.i18n.t('app.notification.days3to10')%>
												 <%}else{%>
												 	<%-$.i18n.t('app.notification.days')%>
												 <%}%> 
										 <%}%>
										 <%-$.i18n.t('app.notification.kindidexpirexdays')%></h4>
									</a>
									</li>
				<%}else{%>
		                           <li class="list-group-item">
		                            <a href="#/kycinput">
		                               <span class="glyphicon glyphicon-chevron-right pull-right"></span>
										<span class="pull-right label label-danger">1</span>
										<span class="listimg"><span class="idcard"></span></span>
										<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.idexpiupdate')%> </h4>
									</a>
									</li>
					<%}%>
	      	<%}else{%>
	          		<% if(KYCUpdated != "Y" || noOfDays != "" || noOfDays != "0") { %>
		                            <li class="list-group-item">
		                            <a href="#/kycinput">
		                               <span class="glyphicon glyphicon-chevron-right pull-right"></span>
										<span class="pull-right label label-danger">1</span>
										<span class="listimg"><span class="idcard"></span></span>
										<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.idexpirexdays')%> <strong class="text-danger"> <%-noOfDays%> </strong>
										 <%if(sel_lang_id=="en-US"){%>
												<%if(noOfDays==1){%>
													<%-$.i18n.t('app.notification.days1')%>
												<%}else{%>
												 	<%-$.i18n.t('app.notification.days')%>
												 <%}%>
										 <%}else if(sel_lang_id=="en-AR"){%>
												 <%if(noOfDays>=3 && noOfDays<=10){%>
												 	<%-$.i18n.t('app.notification.days3to10')%>
												 <%}else{%>
												 	<%-$.i18n.t('app.notification.days')%>
												 <%}%> 
										 <%}%> 
										 <%-$.i18n.t('app.notification.kindidexpirexdays')%></h4>
									</a>
									</li>
					<%}else if(KYCUpdated != "Y" || noOfDays != "" || noOfDays == "0") { %>
										<li class="list-group-item">
			                            <a href="#/kycinput">
			                               <span class="glyphicon glyphicon-chevron-right pull-right"></span>
											<span class="pull-right label label-danger">1</span>
											<span class="listimg"><span class="idcard"></span></span>
											<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.idexpiupdate')%> </h4>
										</a>
										</li>
					<%}else{%>
					<li class="list-group-item">
		                            <a href="#/kycinput">
		                               <span class="glyphicon glyphicon-chevron-right pull-right"></span>
										<span class="pull-right label label-danger">1</span>
										<span class="listimg"><span class="idcard"></span></span>
										<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.idexpiupdate')%> </h4>
									</a>
									</li>
					<%}%>
			<%}%>
		<%}else if(noOfDays >= 0 && noOfDays > 90 ||kyconetimeprocess != "Y" ){%>
							<%if(KYCUpdated != "Y"){%>
									<li class="list-group-item">
                            <a href="#/kycinput">
                               <span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<span class="pull-right label label-danger">1</span>
								<span class="listimg"><span class="idcard"></span></span>
								<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.idexpiupdate')%> </h4>
							</a>
							</li>
		<%}%>
	<%}else{%>
	<li class="list-group-item">
		                            <a href="#/kycinput">
		                               <span class="glyphicon glyphicon-chevron-right pull-right"></span>
										<span class="pull-right label label-danger">1</span>
										<span class="listimg"><span class="idcard"></span></span>
										<%if(id==1){%>
										<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.idexpiupdate')%> </h4>
										<%}else{%>
										<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.idexpiupdate')%> </h4>
										<%}%>
										
									</a>
									</li>
	<%}%>
<%}%>
<%}%>
<%}%>
						<!-- Due Bills Count -->	
						<% if(duebillnotify != 0 && duebillnotify != "-") { %>								
							<li class="list-group-item"  id="sadad1">							
								<a href="#/duebillpaybynotify">
								<span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<span class="pull-right label label-danger" id="sadad"><%- duebillnotify %></span> 
								<span class="listimg"><span class="sadad"></span></span>
								<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.sadadduebills')%></h4>
								</a>
							</li>
			                <% } %>												 	
							
						
						<!-- Traffic violations Count -->
						
							<% if(traficviolnotify != 0 && traficviolnotify !="-") { %>
								<li class="list-group-item" id="traffic1">
								<a href="#/moiTraffic">
					            	<span class="glyphicon glyphicon-chevron-right pull-right"></span>
					            	<span class="pull-right label label-danger" id="traffic"><%- traficviolnotify %></span>
									<span class="listimg"><span class="violations"></span></span>
									<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.trafficvioalation')%></h4>
									<input type="hidden" value="traffic" id="moitrafic">
								</a>
							</li>
					        <% } %>
							
											 
						<!-- Debit card activation 
						
							<% if(inactdcardnotify != 0 && inactdcardnotify != "-") { %>
								<li class="list-group-item" id="atm1">
								<a href="#/activatedebitcardnotify">
			            		<span class="glyphicon glyphicon-chevron-right pull-right"></span>
			            		<span class="pull-right label label-danger" id="atm"><%- inactdcardnotify %></span>
								<span class="listimg"><span class="cc"></span></span>
								<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.debitcardsactivation')%></h4>
								</a>
								</li>
			     			<% }  %>
							
						-->
		
						<!-- Credit card activation -->
						
							<% if(inactccardnotify != 0 && inactccardnotify != "-") { %>
								<li class="list-group-item" id="card1">
								<a href="#/activatecreditcardbynotify">
					        	<span class="glyphicon glyphicon-chevron-right pull-right"></span>
					        	<span class="pull-right label label-danger" id="card"><%- inactccardnotify %></span>
								<span class="listimg"><span class="cc"></span></span>
								<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.creditcardsactivation')%></h4>
								</a>
								</li>
			         		<% } %>
							
						
						<!-- My Offers -->
						
						
							<% if(totalCampign != 0 && totalCampign != "-") { %>
								<li class="list-group-item" id="crossselling1">
								<% if(totalCampign >1) { %>
									<a href="#/campaignsummary">
							    	<span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<% }else if(totalCampign == 1){ %>
							    	<a href="#/showCampaigns/0">
							    	<span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<% } %>
								<span class="pull-right label label-danger" id="crossselling1"><%- totalCampign  %></span>
								<span class="listimg"><span class="offer"></span></span>
								<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.myoffers')%></h4>
								</a>
								</li>
						    <% } %>														
							</a>
						</li>
						
						<!--
						<li class="list-group-item" id="crossselling1">
						<a href="#/personalfinancesummary">
						<span class="glyphicon glyphicon-chevron-right pull-right" style="visibility:hidden;"></span>
						<span class="pull-right label label-danger" id="crossselling1"><%- totalCampign  %></span>
							<span class="listimg"><span class="offer"></span></span>
							<h4 class="list-group-item-heading"><%-$.i18n.t('app.notification.myoffers')%></h4>
							</a>
						</li>
						-->
					</ul>
				</div>
			</div>
		</div>

	</div>
	
<%}%>

<script>
$(document).ready(function(){
	var els = new EncryptedLocalStorage('secret');
	$('#bubblenotify').click(function(e){
		notifyCountUpdated =els.get("notifyCountUpdated");
		if(notifyCountUpdated == 0 || notifyCountUpdated == null ) {
			e.preventDefault();
			e.stopPropagation();
		}
	});
});
</script>
