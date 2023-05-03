	<%
			var els = new EncryptedLocalStorage('secret'); 
			var iqamamaskNumber  = els.get("iqamamask_Number ");
			var iqamaNumber  = els.get("iqama_number");
			var id = els.get("iqnumid");
			var dob = els.get("dob");
			var idExpdateFormated = els.get("idExpdateFormated");
			var iqamaExpiryDateH = els.get("iqamaExpiryDateH");
			var idExpdatePosting = els.get("idExpdatePosting");
			var maskNumber = els.get("maskNumber");
			 var devicePlatform = els.get("device.platform");
			  var legalStaus = els.get("legalStaus");
			  var idexpdate = els.get("idexpdatekycc");
						var idexpyear  = idexpdate.substring(0, 4);
						var idexpmonth  = idexpdate.substring(4, 6);
						var idexpday  = idexpdate.substring(6, 8);
						//idexpdate = idexpyear +"-"+idexpmonth+"-"+idexpday;
						idexpdate = idexpday +"/"+idexpmonth+"/"+idexpyear;
						var renewflag = els.get("renewalFlag");
						var iqamamaskNumber  = els.get("iqamamask_Number ");
			var iqamaNumber  = els.get("iqama_number");
			var idExpdateFormated = els.get("idExpdateFormated");
			var maskNumber = els.get("maskNumber");
			 var devicePlatform = els.get("device.platform");
			 var noOfDays = els.get("noOfDays");
			 var KYCUpdated = els.get("KYCUpdated");
			 var kyconetimeprocess = els.get('kyconetimeprocess');
			 
%> 
	
		<h3><%-$.i18n.t('app.notification.idexpire')%></h3>
	<div class="newWiz">
		<div class="steps done"><div>1<p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
		<div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.more.preference.verify')%></P></div></div>
		<div class="steps"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p></div></div>
	</div>
	<div class="dtl_view">
		<!--Verify Starts Here-->
		<form role="form">
		<%if(legalStaus == "false"){%>
		<div class="alert alert-info"><%-$.i18n.t('app.notification.nearbrnuid')%></div>
		<%}%>
		<br/>
		<%if(idexpdate == idExpdateFormated){%>
		<div class="alert alert-info"><%-$.i18n.t('app.notification.expdatevalidationss')%></div>
		<br/>
		<!--<a class="btn btn-primary btn-block" href="#/wealth"><%-$.i18n.t('app.tedallalrewards.home')%></a>-->
		<%}%>
			<table class="table table-bordered table-striped">
				<tbody>
					<tr>
						<%if(id=="1"){%>
							<td><%-$.i18n.t('app.moi.moipayments.nationalid')%></td>
						<%}else{%>
							<td><%-$.i18n.t('app.moi.moipayments.iqamano1')%></td>
						<%}%>
						<td><%-maskNumber%></td>
					</tr>
					<tr>
						<td><%-$.i18n.t('app.notification.idexpdate')%></td>
						<td><%-idexpdate%></td>
					</tr>
					<tr>
						<td><%-$.i18n.t('app.notification.newexpdate')%></td>
						<td><%-idExpdateFormated%></td>
					</tr>
				</tbody>
			</table>
			<input type="hidden" id="hiddeniqamamaskNumber" 		value="<%-iqamamaskNumber%>">
			<input type="hidden" id="hiddendob" 		value="<%-dob%>">
		<br/>
		<% if(legalStaus == "true" && renewflag == 'yes'){ %>
           <a id="submit" class="btn btn-success btn-block" ><%-$.i18n.t('app.tedallalrewards.confirm')%></a>
			<a class="btn btn-primary btn-block" href="#/kycinput"><%-$.i18n.t('app.tedallalrewards.cancel')%></a>
        <%}else{%> 
           <a class="btn btn-primary btn-block" href="#/wealth"><%-$.i18n.t('app.tedallalrewards.home')%></a>
			
		<%}%>
			<br/><br/><br/><br/><br/><br/>
		</form>
	</div>	