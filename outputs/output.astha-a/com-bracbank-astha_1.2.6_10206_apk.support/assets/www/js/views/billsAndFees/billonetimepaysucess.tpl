<%
	var els = new EncryptedLocalStorage('secret');

	
    if(!isNull(dispFormDataBill)){
        var tDataKey = Object.keys(dispFormDataBill);
	    var tDataValue = Object.values(dispFormDataBill);
	
    } else{
        var tDataKey = [];
	    var tDataValue = [];

    }
    els.set("billpayOneOffDispValue",tDataValue);
	
%>
<div class="pagewrapper">
	<aside class="mainnav" id="mnutogglediv">
        <div class="text-center userInfo">
            <div>
              <img src="images/common/user_default1.png" class="profPic img-circle"> 
            </div>
            <div>
              <p class="profilename"></p>
              <p class="small info"> <%-els.get("lastSuccessfulLogin")%></p>
				  <%if(isNull(els.get("lastFailureLogin"))){%>
				  <p class="small info">Last failure login: <%-els.get("lastFailureLogin")%></p>
				  <%}%>
            </div>            
        </div>
		<nav>
			<ul>
      			<li class="active"><a href="#/wealth" id="dashboard"><span class="ico dashboard"></span><%-$.i18n.t('app.wealth.menu')%></a></li>
      			<li class="" data-toggle="collapse" href="#accounts" id="subNav" aria-expanded="false" aria-controls="accounts"><a href="javascript:void(0);"><span class="ico account"></span><%-$.i18n.t('app.menu.products')%></a></li>        
      			<ul class="collapse" id="accounts">
        			<li><a href="javascript:void(0);" id="slide_out_savings"><%-$.i18n.t('app.wealth.accounts')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_deposits"><%-$.i18n.t('app.wealth.termdeposit')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_creditcard"><%-$.i18n.t('app.wealth.creditcard')%></a></li>
				<li><a href="javascript:void(0);" id="slide_out_prepaidcard"><%-$.i18n.t('app.wealth.prepaidcard')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_loan"><%-$.i18n.t('app.wealth.loans')%></a></li>
      			</ul>
      			<li><a href="javascript:void(0);" id="slide_out_statementCertificate"><span class="ico statement_cert"></span>Statement &amp; Certificates</a></li>
      			<li><a href="javascript:void(0);" id="slide_out_transfers"><span class="ico transfer"></span><%-$.i18n.t('app.wealth.transfers')%></a></li>
      			<li class="scan_pay" id="slide_out_qrcode" aria-controls="qrcode"><a href="javascript:void(0);"><span class="ico qrcode"></span><%-$.i18n.t('app.qrcode.scanandpay')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_positivePay"><span class="ico positive_pay"></span>Positive Pay</a></li>
			<li><a href="javascript:void(0);" id="slide_out_billpay"><span class="ico billpay"></span><%-$.i18n.t('app.wealth.billandfee')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_managebene"><span class="ico beneficiary"></span><%-$.i18n.t('app.wealth.benemanagement')%></a></li>
			<li><a href="javascript:void(0);" id="slide_out_transactions"><span class="ico transactions"></span><%-$.i18n.t('app.wealth.transactions')%></a></li>
			<li><a href="javascript:void(0);" id="slide_out_transferlimit"><span class="ico transferLimit"></span><%-$.i18n.t('app.more.general.transferlimit')%></a></li>
      			<!--<li><a href="javascript:void(0);" id="manage_biller"><span class="ico managebiller"></span><%-$.i18n.t('app.wealth.managebillers')%></a></li>-->
      			<li><a href="javascript:void(0);" id="slide_out_services"><span class="ico service"></span><%-$.i18n.t('app.wealth.servicereq')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_user_settings"><span class="ico settings"></span><%-$.i18n.t('app.wealth.usersettings')%></a></li>
      			<!--<li><a href="javascript:void(0);"><span class="ico upcoming"></span><%-$.i18n.t('app.wealth.payreminder')%></a></li>-->
      			<li><a href="javascript:void(0);" id="slideout_more"><span class="ico more"></span><%-$.i18n.t('app.wealth.moreoptions')%></a></li>
				  <li><a href="javascript:void(0);" id="slideout_contact" onclick="postLogRedir()"><span class="ico contacts"></span>Contact Us</a></li>  
      			<li><a href="javascript:void(0);" id="logout" class="btn-logout"><span class="ico logout"></span><%-$.i18n.t('app.wealth.logout')%></a></li>
			</ul>
    	</nav>
	</aside>
	<div class="bodywrapper">
    	<div class="contentwrap">
        	<section class="content">        
            	<div class="dTable-wrap">
                	<div class="dTable-middle">
                    	<div class="container">
                        	<div class="ani-slideup animation-in">
                        		<div class="text-center transLogo_success">
                                    <img src="images/brand/brac_logo_success.svg" width="30%">
                                </div>
                            	<p class="text-center"><%-$.i18n.t('app.transferss.paysuccess')%></p>
                            <!--	<p class="text-center"><%-$.i18n.t('app.transferss.paymentrefnum')%></p>
                            	<p class="text-center">
                                    <strong><%- els.get("transactionReferenceNumber")%></strong>
                                </p>-->

								 <table class="table confirm_table">
                                    <% $.each(tDataKey,function(index,value) { %>
										<% if(tDataKey[index].indexOf("Sequence Number") != -1 || tDataKey[index].indexOf("Token Number") != -1) {
											if(els.get("selectedBillerListName") == "Land Tax") { 
											} else {
												return;
											}
										} %>
										<% if(tDataValue[index].indexOf('\n') != -1) { %>
											<tr>
												<td><label><%- tDataKey[index]%></label></td>
												<% var tDataValueArr = tDataValue[index].split('\n');%>
												<% if(tDataValueArr[0] == "BDT") { %>
													<td class="text-right"><span class="amt"><span class="cur"><%- tDataValueArr[0] %></span><%- tDataValueArr[1] %></span></td>
												<% } else { %>
													<td class="text-right"><%- tDataValueArr[0] %><span class="small accNum"><%- tDataValueArr[1] %></span></td>
												<% } %>
											</tr>
										<% } else { %>
											<tr>
												<td><label><%- tDataKey[index]%></label></td>
												<td class="text-right"><%- tDataValue[index] %></td>
											</tr>
										<% } %>
									<% });%>
                                </table>
								<table class="table confirm_table">
									<% $.each(tDataKey, function(index,value) { %>
										<% if(tDataKey[index]=="Sequence Number(s)") { %> 
											<tr>
												<td><label><%- tDataKey[index]%></label></td>
												<td class="text-right"><%- tDataValue[index] %></td>
											</tr>
										<% } %>
										<% if(tDataKey[index]=="Token Number(s)") { 
											if(tDataValue[index].indexOf(',') != -1) {
												var tokenValue = tDataValue[index].split(',');
												for(var i=0; i<tokenValue.length; i++) { %>
													<tr>
														<td colspan="2" class="lead"><%- tokenValue[i] %></td>
													</tr>
												<% } %>
											<% } else { %>
													<tr>
														<td colspan="2" class="lead"><%- tDataValue[index] %></td>
													</tr>
											<% } %>
										<% } %>
									<% }); %>
								</table>
								<% if(!isNull(els.get("billerDisplayValue"))) { %>
									<div class="alert alert-info small" role="alert">
										<small>
											<i class="fa fa-info-circle" aria-hidden="true"></i>
											Note: <%- els.get("billerDisplayValue") %> <a href="javascript:void(0);" id="bill_onetime_trans" class="small btn btn-xs btn-primary ">Transaction History</a>
										</small>
									</div>
								<% } %>
								<div class="clearfix"></div>
								<div class="row">
									<div class="col-xs-6 pr5">
										<a href="javascript:void(0);" id="billpayOneOffDownload" class="btn btn-primary cancel-btn btn-block"><span class="fa fa-download"></span> Download </a>
									</div>
									<div class="col-xs-6 pl5">
										<a onclick="screenshot()" class="btn btn-primary cancel-btn btn-block"><span class="fa fa-share-alt"></span> Share Receipt </a>
									</div>
                                </div>
                                <div class="clearfix"></div>
                            	<br>
                            	<% if(els.get("selectedBillerListName") != "DESCO" && els.get("selectedBillerListName") != "Land Tax") { %>
                            		<div class="row">
	                                    <div class="col-xs-8 col-xs-offset-2">
	                                        <button type="button" class="btn btn-primary cancel-btn btn-block" id="billPayOneTime_AddAsBene"><%-$.i18n.t('app.transferss.addasbene')%></a>
	                                   		<br/>
	                                    </div>
	                                </div>
                            	<% } else if(els.get("selectedBillerListName") == "DESCO") { %>
                            		<% if(els.get("DESCOOneOffConnType") == "PREPAID") { %>
                            			<div class="row">
		                                    <div class="col-xs-8 col-xs-offset-2">
		                                        <button type="button" class="btn btn-primary cancel-btn btn-block" id="billPayOneTime_AddAsBene"><%-$.i18n.t('app.transferss.addasbene')%></a>
		                                   		<br/>
		                                    </div>
		                                </div>
                            		<% } %>
                            	<% } %>
								<br>                               
				    			<br>
                            
                            	<!--<div class="row">
                                    <div class="col-xs-12 pr5 text-center">
                                    	<button type="button" class="btn btn-default btn-block"><%-$.i18n.t('button.transfer.emailadvice')%></button>
	                                </div>
	                        	</div>-->
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
    <div class="area">
    	<ul class="circles">
        	<li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>
    <div class="footMenu footer_confirm">
	    <!--<a href="javascript:void(0);"  class="mnutoggle" id="mnutoggle"><span class="menu_icon ico-xs menu"></span><%-$.i18n.t('app.wealth.menulabel')%></a> -->  
	    <a href="#/transfer"><span class="menu_icon ico-xs transfer"></span><%-$.i18n.t('app.wealth.fntransfer')%></a>
        <a href="#/billpay" class="active"><span class="menu_icon ico-xs bpay"></span><%-$.i18n.t('app.wealth.billpay')%></a>
	    <a href="#/wealth"><span class="menu_icon ico-xs product"></span><%-$.i18n.t('app.wealth.dashboard')%></a>
	    <a href="#/servicerequest"><span class="menu_icon ico-xs request"></span><%-$.i18n.t('app.wealth.services')%></a>
        <a href="javascript:void(0);" class="scan_pay"><span class="menu_icon ico-xs qrcode"></span><%-$.i18n.t('app.qrcode.scanandpay')%></a>	
    </div>
</div>
