<%
var els = new EncryptedLocalStorage('secret');
var backOption = els.get("backReqFromEmail");
var acctNo = els.get("accountNumber");
var ccid = els.get("ccid");
var frmamount =	els.get("frmamount");
var toamount = els.get("toamount");
var loanid = els.get("loanid");
var ftrefnum = els.get("ftrefno");
var responseMesage = els.get("responseMesage");
els.set("currentPage","transferConfirm");
%>
<% if(backOption=="1") { %>
	 <h3><%-$.i18n.t('app.product.accounts.prodacctstatement')%></h3>
<% } else if(backOption=="2") { %>
 	 <h3><%-$.i18n.t('app.product.creditcard.ccstatement')%></h3>
<% } else if(backOption=="3") { %>
	 <h3><%-$.i18n.t('app.product.accounts.proddetailedstatement')%></h3>
<% } else if(backOption=="4") { %>
	 <h3><%-$.i18n.t('app.product.loan.loanstatement')%></h3>	
<% } else if(backOption=="5") { %>
	 <h3><%-$.i18n.t('app.product.accounts.prodtransdetailed')%></h3>	
<% } else if(backOption=="6") { %>
	 <h3><%-$.i18n.t('app.product.accounts.sadadpayments')%></h3>	
<% } else if(backOption=="7") { %>
	 <h3><%-$.i18n.t('app.moi.general.moipayments')%></h3>
<% } else if(backOption=="8") { %>
	 <h3><%-$.i18n.t('app.menu.dateline')%></h3>
<% } else if(backOption=="9") { %>
	 <h3><%-$.i18n.t('app.menu.creditcard')%></h3>
<% } else if(backOption=="10") { %>
	 <h3><%-$.i18n.t('app.product.general.readycashstatement')%></h3>
<% } else{ %>
<% }  %>
				 <div class="alert alert-success text-center">
				 	<h4><%-responseMesage%></h4>
				 </div>
				 
				 <a href="#/wealth" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<!--				 
<% if(backOption=="1") { %>
	 <a href="#/statement/-1" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% } else if(backOption=="2") { %>
	 <a href="#/wealth" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% } else if(backOption=="3") { %>
	 <a href="#/getstatement/<%-acctNo%>/<%-frmamount%>/<%-toamount%>" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% } else if(backOption=="4") { %>
	 <a href="#/loanstatement/<%-loanid%>/<%-acctNo%>" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% } else if(backOption=="5") { %>
	 <a type="button" id="backbut" name="backbut" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% } else if(backOption=="6") { %>
	 <a href="#/sadad" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% } else if(backOption=="7") { %>
	 <a href="#/moiList" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% } else if(backOption=="8") { %>
	 <a href="#/dateline" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% } else if(backOption=="9") { %>
	 <a href="#/creditcard" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% } else if(backOption=="10") { %>
	<a href="#/rpldetails/-1" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% } else { %>		
	 <a href="#/wealth" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% } %>		-->
