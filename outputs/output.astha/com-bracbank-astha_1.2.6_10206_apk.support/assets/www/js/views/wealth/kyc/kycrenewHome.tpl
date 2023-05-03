<%
var els = new EncryptedLocalStorage('secret'); 
var iqamamaskNumber  = els.get("iqamamask_Number");
var iqamaNumber  = els.get("iqama_number");
var id = els.get("iqama_id");
var idExpdateFormated = els.get("idExpdateFormated");
var maskNumber = els.get("maskNumber");
var devicePlatform = els.get("device.platform");
var noOfDays = els.get("noOfDays");
var legalStaus = els.get("legalStaus");
var KYCUpdated = els.get("KYCUpdated");
var kyconetimeprocess = els.get('kyconetimeprocess');
%>
	<div class="clearfix"></div>
	<h3><%-$.i18n.t('app.notification.idexpire')%></h3>
	<!--<div class="newWiz">
		<div class="steps done"><div>1<p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
		<div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.more.preference.verify')%></P></div></div>
		<div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p></div></div>
	</div>-->
	<!--<div class="alert alert-success"><%-$.i18n.t('app.notification.succmsg')%></div>-->
	<div class="dtl_view">
		<!--Verify Starts Here-->
		<form role="form">
			<fieldset> <!-- fieldset Starts here-->
                    <div class="alert alert-success text-center">
                    
<% if(KYCUpdated != "Y"){%>
	<% if(noOfDays >= 0 && noOfDays <= 90 && KYCUpdated != "Y" ){%>
		<% if(legalStaus == "false"){ %>
			<%if(noOfDays <= 90 && noOfDays >= 0){%>
								
										<p><%-$.i18n.t('app.notification.idexpirexdays')%> <strong class="text-danger"> <%-noOfDays%> </strong> <%-$.i18n.t('app.notification.kindidexpirexdays')%></p>
									
				<%}else{%>
		                           
										<p><%-$.i18n.t('app.notification.idexpiupdate')%> <%-$.i18n.t('app.notification.clickhere')%></p>
									
					<%}%>
	      	<%}else{%>
	          		<% if(KYCUpdated != "Y" || noOfDays != "" || noOfDays != "0") { %>
		                            
										<p><%-$.i18n.t('app.notification.idexpirexdays')%> <strong class="text-danger"> <%-noOfDays%> </strong> <%-$.i18n.t('app.notification.kindidexpirexdays')%></p>
									
					<%}else if(KYCUpdated != "Y" || noOfDays != "" || noOfDays == "0") { %>
										
											<p><%-$.i18n.t('app.notification.idexpiupdate')%> <%-$.i18n.t('app.notification.clickhere')%></p>
										
					<%}else{%>
					<%}%>
			<%}%>
		<%}else if(noOfDays >= 0 && noOfDays > 90 ||kyconetimeprocess != "Y" ){%>
							<%if(KYCUpdated != "Y"){%>
									
								<p><%-$.i18n.t('app.notification.idexpiupdate')%> <%-$.i18n.t('app.notification.clickhere')%></p>
							
		<%}%>
	<%}%>
<%}%>
                  	</div>
                        <a class="btn btn-primary btn-block" href="#/wealth"><%-$.i18n.t('app.tedallalrewards.home')%></a>
                    </fieldset><!-- Fieldset Ends here-->
			<br/><br/><br/><br/><br/><br/>
		</form>
	</div>	