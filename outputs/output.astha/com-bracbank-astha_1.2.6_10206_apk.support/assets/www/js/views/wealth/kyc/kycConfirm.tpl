<%
var els = new EncryptedLocalStorage('secret'); 
var iqamamaskNumber  = els.get("iqamamask_Number");
var iqamaNumber  = els.get("iqama_number");
var id = els.get("iqnumid");//els.get("iqama_id");
var idExpdateFormated = els.get("idExpdateFormated");
var maskNumber = els.get("maskNumber");
var devicePlatform = els.get("device.platform");
var idexpdate = els.get("idexpdatekycc");
						var idexpyear  = idexpdate.substring(0, 4);
						var idexpmonth  = idexpdate.substring(4, 6);
						var idexpday  = idexpdate.substring(6, 8);
						//idexpdate = idexpyear +"-"+idexpmonth+"-"+idexpday;
						idexpdate = idexpday +"/"+idexpmonth+"/"+idexpyear;
%>
	
	<h3><%-$.i18n.t('app.notification.idexpire')%></h3>
	<div class="newWiz">
		<div class="steps done"><div>1<p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
		<div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.more.preference.verify')%></P></div></div>
		<div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p></div></div>
	</div>
	<div class="alert alert-success"><%-$.i18n.t('app.notification.succmsg')%></div>
	<div class="dtl_view">
		<!--Verify Starts Here-->
		<form role="form">
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
			<a class="btn btn-primary btn-block" href="#/wealth"><%-$.i18n.t('app.tedallalrewards.home')%></a>
			<br/><br/><br/><br/><br/><br/>
		</form>
	</div>	