<%
	var els = new EncryptedLocalStorage('secret'); 
	var index = els.get("selectedTransIndex");
	var transHistoryDetail = getTransferHistoryDTO();
	console.log("transHistoryDetail",transHistoryDetail);
	var selectedTransIndex = els.get("selectedTransIndex");
	var selecetedTransDetails = transHistoryDetail[selectedTransIndex]; 
	var transHisWalletList = els.get("transHisWalletList");
	var transDetailDTO = JSON.stringify(els.get("transDetailsDTO"));
	var transHistSelectedBillerPaymentType = els.get("transHistSelectedBillerPaymentType");
	if(!isNull(transDetailDTO)){
		var tDataKey = Object.keys($.parseJSON(transDetailDTO));
		var tDataValue = Object.values($.parseJSON(transDetailDTO));
    } else {
        	var tDataKey = [];
	    	var tDataValue = [];
    }
	
	if(!isNull(transQrDispFromData)) {
        var formDataKey = Object.keys(transQrDispFromData);
	    var formDataValue = Object.values(transQrDispFromData);
    } else {
        var formDataKey = [];
	    var formDataValue = [];
    }
	
	if(!isNull(transQrDispBillData)) {
        var bDataKey = Object.keys(transQrDispBillData);
	    var bDataValue = Object.values(transQrDispBillData);
    } else {
        var bDataKey = [];
	    var bDataValue = [];
    }
	
    if(!isNull(transQrDispMerchantData)) {
        var mDataKey = Object.keys(transQrDispMerchantData);
	    var mDataValue = Object.values(transQrDispMerchantData);
    } else {
        var mDataKey = [];
	    var mDataValue = [];
    }
    console.log("tDataKey",tDataKey);
    console.log("tDataValue",tDataValue);
%>
<div class="pagewrapper" id="appwrapper" >
    <aside class="mainnav" id="mnutogglediv">
        <div class="text-center userInfo">
            <div>
              <img src="images/common/user_default1.png" class="profPic img-circle"> 
            </div>
            <div>
              <p class="profilename"></p>
              <p class="small info" >Last login: <span id="lastlogin"></span></p>
			<p class="small info fail" >Last failure login: <span id="lastfaillogin"></span></p>
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
	<div id="ovrlay"></div>
	<!--<header class="appheader">
		<div class="headerLeft">
			<button type="button" id="mnutoggle" class="btn btn-default mnutoggle">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>			
			<a href="javascript:void(0);" id="transDetailsBackBtn" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
		</div>
	      <div class="headerMiddle">
  			<h4  class="p10"><%-$.i18n.t('app.more.transhistory.transdetails')%></h4>
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
	</header>-->
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
								<p class="text-center">Transaction Details</p>
								<% if(selecetedTransDetails.paymentType == "Scan to pay" || selecetedTransDetails.paymentType == "BKASH QR" || selecetedTransDetails.paymentType == "BKASH_QR" || selecetedTransDetails.paymentType == "Bkash QR" || selecetedTransDetails.paymentType == "bKash QR" || selecetedTransDetails.paymentType == "Bkash_QR" || selecetedTransDetails.paymentType == "bKash_QR") { %>
									<div class="panel-group qr_confirm_accordion" id="accordions" role="tablist" aria-multiselectable="true">
                                        <div class="panel panel-default">
                                            <div class="panel-heading" role="tab" id="headingOnes">
                                                <h4 class="panel-title">
                                                    <span class="glyphicon glyphicon-chevron-down"></span>
                                                    <a role="button" data-toggle="collapse" data-parent="#accordions" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">                                                           
														<p><%- mDataValue[0]%></p>
														<p class="small">
															<span class="small"><%- mDataKey[1]%>: </span>
															<span><%- mDataValue[1]%></span>
														</p>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="collapseOne" class="collapsePanel panel-collapse collapse" role="tabpanel" aria-labelledby="headingOnes">
                                                <div class="panel-body">
													<table class="table confirm_table">
														<% $.each(mDataKey,function(index,value) { %>
															<% if(mDataValue[index].indexOf('\n') != -1) { %>
																<tr>
																	<td><label><%- mDataKey[index]%></label></td>
																	<% var mDataValueArr = mDataValue[index].split('\n');%>
																	<% if(mDataKey[index] == "Amount" ) { %>
																		<td class="text-right"><span class="amt"><span class="cur"><%- mDataValueArr[0] %></span><%- mDataValueArr[1] %></span></td>
																	<% } else { %>
																		<td class="text-right"><%- mDataValueArr[0] %><span class="small accNum"><%- mDataValueArr[1] %></span></td>
																	<% } %>
																</tr>
															<% } else { %>
																<tr>
																	<td><label><%- mDataKey[index]%></label></td>
																	<td class="text-right"><%- mDataValue[index] %></td>
																</tr>
															<% } %>
														<% });%>
													</table>
					                                <% if(!isNull(transQrDispBillData) && transQrDispBillData.length > 0 ){ %>                                                  
														<h5>Bill Detail</h5>                                                     
                                                        <table class="table confirm_table">
					                                        <% $.each(bDataKey,function(index,value) { %>
																<% if(bDataValue[index].indexOf('\n') != -1) { %>
																	<tr>
																		<td><label><%- bDataKey[index]%></label></td>
																		<% var bDataValueArr = bDataValue[index].split('\n');%>
																		<% if(bDataKey[index] == "Amount") { %>
																			<td class="text-right"><span class="amt"><span class="cur"><%- bDataValueArr[0] %></span><%- bDataValueArr[1] %></span></td>
																		<% } else { %>
																			<td class="text-right"><%- bDataValueArr[0] %><span class="small accNum"><%- bDataValueArr[1] %></span></td>
																		<% } %>
																	</tr>
																<% } else { %>
																	<tr>
																		<td><label><%- bDataKey[index]%></label></td>
																		<td class="text-right"><%- bDataValue[index] %></td>
																	</tr>
																<% } %>
															<% });%>
					                                	</table>
					                                <% } %>
                                                </div>
                                            </div>
                                        </div>
                                    </div>       
                                    <table class="table confirm_table">
                                        <% $.each(formDataKey,function(index,value) { %>
											<% if(formDataValue[index].indexOf('\n') != -1) { %>
												<tr>
													<td><label><%- formDataKey[index]%></label></td>
													<% var tDataValueArr = formDataValue[index].split('\n');%>
													<% if(formDataKey[index] == "Amount") { %>
														<td class="text-right"><span class="amt"><span class="cur"><%- tDataValueArr[0] %></span><%- tDataValueArr[1] %></span></td>
													<% } else { %>
														<td class="text-right"><%- tDataValueArr[0] %><span class="small accNum"><%- tDataValueArr[1] %></span></td>
													<% } %>
												</tr>
											<% } else { %>
												<tr>
													<td><label><%- formDataKey[index]%></label></td>
													<td class="text-right"><%- formDataValue[index] %></td>
												</tr>
											<% } %>
										<% });%>
                                	</table>
								<% } else { %>
									<table class="table confirm_table">
										<% $.each(tDataKey,function(index,value) { %>
											<% if(tDataKey[index].indexOf("Sequence Number") != -1 || tDataKey[index].indexOf("Token Number") != -1) {
												if(selecetedTransDetails.paymentType == "LAND_TAX" || selecetedTransDetails.paymentType == "LAND_TAX_ONE_OFF" || selecetedTransDetails.beneficaryName == "Land Tax") { 
												} else {
													return;
												}
											} %>
											<% if(tDataValue[index].indexOf('\n') != -1) { %>
												<tr>
													<td><label><%- tDataKey[index]%></label></td>
													<% var tDataValueArr = tDataValue[index].split('\n');%>
													<% if(tDataKey[index] == "Amount" || tDataValueArr[0] == "BDT") { %>
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
											<% if(tDataKey[index]=="Token Number(s)") { %> 
												<tr>
													<td><label><%- tDataKey[index]%></label></td>
												</tr>
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
											<% } %>
										<% }); %>
									</table>
								<% } %>
								<div class="clearfix"></div><br>
								<% if(selecetedTransDetails.paymentType == "DP" || selecetedTransDetails.paymentType == "RTP") { %>
									<div class="row">
	                            		<div class="col-xs-6 pr5">
											<!--<a href="javascript:void(0);" id="transHistDetailDownload" class="btn btn-primary cancel-btn btn-block"><span class="fa fa-download"></span> Download </a>-->
											<a href="javascript:void(0);" class="btn btn-primary cancel-btn btn-block" id="transDetailsBackBtn"><span class="fa fa-chevron-left"></span> Back </a>
	                            		</div>
	                            		<div class="col-xs-6 pr5">
											<a href="javascript:void(0);" class="btn btn-primary cancel-btn btn-block" onclick="screenshot()"><span class="fa fa-share-alt"></span> Share </a>
	                        			</div>
									</div>
									<div class="clearfix"></div>
									<div class="spacer20"></div>
									<!--<div class="row">                                    
										<div class="col-xs-6 col-xs-offset-3 text-center">
											<a href="javascript:void(0);" class="btn btn-primary cancel-btn btn-block" id="transDetailsBackBtn"><span class="fa fa-chevron-left"></span> Back </a>
										</div>
						 			</div>-->
									<div class="clearfix"></div> 
								<% } else { %>
									<div class="row">
	                            		<div class="col-xs-6 pr5">
											<a href="javascript:void(0);" id="transHistDetailDownload" class="btn btn-primary cancel-btn btn-block"><span class="fa fa-download"></span> Download </a>
	                            		</div>
	                            		<div class="col-xs-6 pr5">
											<a href="javascript:void(0);" class="btn btn-primary cancel-btn btn-block" onclick="screenshot()"><span class="fa fa-share-alt"></span> Share </a>
	                        			</div>
									</div>
									<div class="clearfix"></div>
									<div class="spacer20"></div>
										<div class="row">                                    
											<div class="col-xs-6 col-xs-offset-3 text-center">
												<a href="javascript:void(0);" class="btn btn-primary cancel-btn btn-block" id="transDetailsBackBtn"><span class="fa fa-chevron-left"></span> Back </a>
											</div>
							 			</div>
									<div class="clearfix"></div> 
								<% } %>
								
								<br/>
								<div class="clearfix"></div>
								<div class="spacer20"></div>
								<div class="clearfix"></div> 
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
        <a href="#/billpay"><span class="menu_icon ico-xs bpay"></span><%-$.i18n.t('app.wealth.billpay')%></a>
        <a href="#/wealth"><span class="menu_icon ico-xs product"></span><%-$.i18n.t('app.wealth.dashboard')%></a>
        
        <a href="#/servicerequest"><span class="menu_icon ico-xs request"></span><%-$.i18n.t('app.wealth.services')%></a>
        <a href="javascript:void(0);" class="scan_pay"><span class="menu_icon ico-xs qrcode"></span><%-$.i18n.t('app.qrcode.scanandpay')%></a>
    </div>
</div>
