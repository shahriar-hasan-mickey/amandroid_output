<%
	
	var els = new EncryptedLocalStorage('secret');
	var Assets_balanceOfAccounts = els.get("Assets_balanceOfAccounts");
	var Assets_balanceOfTimeDeposits = els.get("Assets_balanceOfTimeDeposits");
	var Assets_balanceOfMubasherAccounts = els.get("Assets_balanceOfMubasherAccounts");
	var Liabilities_creditCardOutstandingBalance = els.get("Liabilities_creditCardOutstandingBalance");
	var Liabilities_homeFinanceOutstandingBalance = els.get("Liabilities_homeFinanceOutstandingBalance");
	var Liabilities_personalFinanceOutstandingBalance = els.get("Liabilities_personalFinanceOutstandingBalance");
	var pastTxn_transactionsDTO = els.get("pastTxn_transactionsDTO");
	
	
	var total_Assets_Amt = els.get("total_Assets_Amt");
	var total_Liabilities_amt = els.get("total_Liabilities_amt");
	var total_Assets_curr = els.get("total_Assets_curr");
	var total_Liabilities_curr = els.get("total_Liabilities_curr")
	
	var today = getDatelineToday();
	
	var data;
	
	var txn_indx = els.get("dateline_txn_index");
	var mod_indx = els.get("dateline_mod_index");
	
	
	var indx = parseInt(txn_indx);
	
	
	/*if(mod_indx=="2"){
		data = els.get("pastTxn_transactionsDTO");
	}else{
		data = els.get("pastTxn_transactionsDTO");
	}*/

	data = els.get("futureTxn_transactionsDTO");
		
%>

<a class="pull-left btn btn-default btn-sm back-btn" href="#/dateline"><span class="glyphicon glyphicon-chevron-left"></span></a>
<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/dateline"><%-$.i18n.t('app.menu.dateline')%></a></li>
	<li><%-$.i18n.t('app.dateline.reminders')%></li>
</ol>

<div class="clearfix"></div>
<div class="dateline">
		<ul>
			<li>
				<div class="d_msg">
					<p class="type"><span class="pull-left"><%-$.i18n.t('app.transfer.general.standinginstructions')%></span>
					<span class="amt pull-right"><span class="cur"><%-data[indx].currency%></span><%-data[indx].amount%></span></p>
					<p class="des"><%-data[indx].frequencydesc%></p>
				</div>
			</li>
		</ul>
</div>

<div class="dtl_view">
<!--Verify Starts Here-->
<form role="form">
		<table class="table table-bordered table-striped">
			<thead>
					<tr>
						<th colspan="2"><%-$.i18n.t('app.dateline.transdetail')%></th>
					</tr>
			</thead>
			<tbody>
					<tr>
						<td><%-$.i18n.t('app.dateline.frmaccount')%></td>
						<td><%-data[indx].frmacct%></td>
					</tr>
					<tr>
						<td><%-$.i18n.t('app.dateline.toaccount')%></td>
						<td><%-data[indx].toacct%></td>
					</tr>
					<tr>
						<td><%-$.i18n.t('app.dateline.date')%></td>
						<td><%-data[indx].nextexecutiondate%></td>
					</tr>
					<tr>
						<td><%-$.i18n.t('app.dateline.sdate')%></td>
						<td><%-data[indx].frmdate%></td>
					</tr>
					<tr>
						<td><%-$.i18n.t('app.dateline.edate')%></td>
						<td><%-data[indx].todate%></td>
					</tr>
					<tr>
						<td><%-$.i18n.t('app.dateline.transamt')%></td>
						<td class="amt"><span><%-data[indx].currency%></span><%-data[indx].amount%></td>
					</tr>
					<tr>
						<td><%-$.i18n.t('app.dateline.frequency')%></td>
						<td><%-data[indx].frequency%></td>
					</tr>
			</tbody>
	</table>
	
		<input type="hidden" id="frmacctnum"  name="frmacctnum"  value="<%-data[indx].frmacct%>"/>
		<input type="hidden" id="toaccnum"  name="toaccnum"  value="<%-data[indx].toacct%>"/>
		<input type="hidden" id="frequency"  name="frequency"  value="<%-data[indx].frequency%>"/>
		<input type="hidden" id="t24refno" name="t24refno" value="<%-data[indx].t24refno%>"/>
		<input type="hidden" id="currencycode"  name="currencycode"  value="<%-data[indx].currency%>"/>
		<input type="hidden" id="benename"  name="benename"  value="<%-data[indx].beneficiaryname%>"/>
		<input type="hidden" id="benebank"  name="benebank"  value="<%-data[indx].beneficiarybank%>"/>
		<input type="hidden" id="amount"   name="amount"   value="<%-data[indx].amount%>"/>
		<input type="hidden" id="nextdate" name="nextdate" value="<%-data[indx].nextexecutiondate%>"/>
		<input type="hidden" id="frmdate"  name="frmdate"  value="<%-data[indx].frmdate%>"/>
		<input type="hidden" id="todate"   name="todate"   value="<%-data[indx].todate%>"/>
		<input type="hidden" id="sostat"   name="sostat"   value="AUTH"/>
	
	<div class="clearfix"></div>
	<a href="#/siCommonTransferEditOnShow/01" class="btn btn-success btn-block" id="submit"><%-$.i18n.t('app.dateline.edit')%></a>
	<a href="#/siCommonTransferDeleteOnShow/01" class="btn btn-danger btn-block" id="delete"><%-$.i18n.t('app.dateline.delete')%></a>
	<!--<button type="button" id="editbut" name="editbut" class="btn btn-success btn-block"><%-$.i18n.t('app.dateline.edit')%></button>
	<button type="button" id="deletebut" name="deletebut" class="btn btn-success btn-block"><%-$.i18n.t('app.dateline.delete')%></button>-->
	<a href="#/dateline" class="btn btn-primary btn-block"><%-$.i18n.t('app.product.timedeposits.back')%></a>
</form>
</div>
<br/>