<%
	var els = new EncryptedLocalStorage('secret');
	var casaDTO = getAccountDTO();
	var prepaidCardListDTO = els.get("prepaidCardAccountList");
	var billerInstruction = els.get("billerInstruction");
	var selectedBillPayIndex = els.get("selectBillIndex");
	var selectedBillerInfo = billerInstruction[selectedBillPayIndex];
	var billBreakdown = els.get("billBreakDown");
	var additionalInfo = els.get("additionalInfo");
	var totalDebitAmount = els.get("totalDebitAmount");
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
	<header class="appheader">
		<div class="headerLeft">
			<button type="button" id="mnutoggle" class="btn btn-default mnutoggle">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>			
			<a href="#/billpaytobillerinit" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p4"><%- els.get("selectedBillerListName")%> Pay Review<p class="small">(Bill Pay)</p></h4>	
		</div>
		<div class="headerRight">
			<span class="step-badge">3/3</span>		
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
		<ul class="step-progress">
    		<li class="done"></li>
    		<li class="done"></li>
			<li class="done"></li>
  		</ul>			
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
    			<form>	
            		<div class="veriIconWrap">
              			<span class="menu_icon2 ico1x verify"></span>					
            		</div>
        			<div class="veriWrap">
            			<div class="media">
                			<div class="media-left media-middle">
                    			<img class="img-circle" src="images/common/user_default1.png" width="36" />
                			</div>
                			<div class="media-body media-middle">
                    			<%- els.get("toBillerFromAccName")%>
                    			<p class="small text-muted"><%- els.get("toBillerFromAccNumber")%></p>
                			</div>
                			<div class="media-right text-right media-middle">
                    			<span class="cur small text-muted"><%- els.get("toBillerFromCurrency")%></span>
                			</div>
            			</div>
            			<div class="media">
                			<div class="media-left media-middle">
                    			<span class="downArAni"></span>
                			</div>
                			<div class="media-body media-middle">
                    			<span class="amt small">
                    				<%- checkAmount($.formatNumber(els.get("transactionAmount"), {format:"#,###.00", locale:"us"}))%>
                        			<span class="cur"><%- els.get("toBiller_BillCurrency")%></span>
                    			</span>
                    			<p class="small"><%- els.get("amountInWords")%></p>
                			</div>
            			</div>
            			<div class="media">
                			<div class="media-left media-middle">
                    			<img class="img-circle" src="images/brand/biller/<%- els.get("selectedBillerListCode")%>.png" width="36" />
                			</div>
                			<div class="media-body media-middle">
                				<% if((els.get("selectedBillerListName") == "DPDC") && (els.get("selectBillConnectionType") == "POSTPAID")) { %>
                					<%- additionalInfo.CUSTOMER_NAME %>
                    				<p class="small text-muted"><%- additionalInfo.CUSTOMER_NO %></p>
                				<% } else if((els.get("selectedBillerListName") == "NESCO") && (els.get("selectBillConnectionType") == "POSTPAID")) { %>
            						<%- additionalInfo.customer_name %>
            						<p class="small text-muted"><%- additionalInfo.account_number %></p>
        						<% } else if((els.get("selectedBillerListName") == "DESCO") && (els.get("selectBillConnectionType") == "POSTPAID")) { %>
            						<%- additionalInfo.NAME %>
            						<p class="small text-muted"><%- additionalInfo.ACCOUNT_NO %></p>
        						<% } else if((els.get("selectedBillerListName") == "DESCO") && (els.get("selectBillConnectionType") == "PREPAID")) { %>
            						<%- additionalInfo.customerName %>
            						<p class="small text-muted"><%- additionalInfo.accountNo %></p>
                				<% }else if(els.get("selectedBillerListName") == "Jalalabad Gas"){%>
									<%- els.get("selectedBillerListName")%>
									<p class="small text-muted"><%- additionalInfo.bllr_accno %></p>
								<%} else if(els.get("selectedBillerListName") == "WZPDCL"){%>
									<%- els.get("selectedBillerListName")%>
									<p class="small text-muted"><%- additionalInfo.bll_no %></p>
								<%}else { %>
                					<%- els.get("selectedBillerListName")%>
                    				<p class="small text-muted"><%- selectedBillerInfo.mobileNumber%></p>
                				<% } %>
                			</div>
                			<!--<div class="media-right text-right media-middle">
                    			<span class="cur small text-muted"><%- els.get("toBillerToCurrency")%></span>
                			</div>-->
		            	</div>
        			</div>
        			<ul class="list-unstyled list-nobrd">
 						<% if(els.get("selectedBillerTypeName") == "Water") { %>
 							<% if(els.get("selectedBillerListName") == "WASA") {%>
			 					<li class="list-group-item">
									<label for="waterbill">Water Bill</label>
									<p><%- checkAmount($.formatNumber(billBreakdown[4].value, {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
								</li>
								<li class="list-group-item">
									<label for="surcharge">Surcharge</label>
									<p><%- checkAmount($.formatNumber(billBreakdown[1].value, {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
								</li>
								<li class="list-group-item">
									<label for="vat">VAT</label>
									<p><%- checkAmount($.formatNumber(billBreakdown[0].value, {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
								</li>
								<li class="list-group-item">
									<label for="covfee">Convenience Fee</label>
									<p><%- checkAmount($.formatNumber(els.get("convenienceFee"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
								</li>
								<li class="list-group-item">
									<label for="sewerbill">Sewer Bill</label>
									<p><%- checkAmount($.formatNumber(billBreakdown[5].value, {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
								</li>
								<li class="list-group-item">
									<label><%-$.i18n.t('app.transferss.totaldebitamount')%></label>
									<p>
										<%- checkAmount($.formatNumber(els.get("totalDebitAmount"), {format:"#,###.00", locale:"us"}))%> BDT
									</p>
								</li>
							<% } %>
							<% if(els.get("selectedBillerTypeName") == "Electricity") { %>
							<% } else if(els.get("selectedBillerListName") == "DPDC") { %> 
								<% if(els.get("selectBillConnectionType") == "PREPAID") { %>
									<li class="list-group-item">
										<label for="custNum">Customer Number</label>
										<p><%- additionalInfo.CustomerNo%></p>	
									</li>
									<li class="list-group-item">
										<label for="custName">Customer Name</label>
										<p><%- additionalInfo.CustomerName%></p>	
									</li>
									<li class="list-group-item">
										<label for="meterNum">Meter Number</label>
										<p><%- additionalInfo.MeterNo%></p>	
									</li>
									<li class="list-group-item">
										<label for="meterType">Meter type</label>
										<p><%- additionalInfo.MeterType%></p>	
									</li>
									<li class="list-group-item">
										<label for="tariffType">Tariff</label>
										<p><%- additionalInfo.TariffProgram %></p>	
									</li>
									<li class="list-group-item">
										<label for="meterNum">Mobile Number</label>
										<p><%- additionalInfo.Mobile%></p>	
									</li>
								<% } else if(els.get("selectBillConnectionType") == "POSTPAID") { %>
									<!--<li class="list-group-item">
										<label for="custName">Customer Name</label>
										<p><%- additionalInfo.CUSTOMER_NAME%></p>	
									</li>
									<li class="list-group-item">
										<label>Customer Number</label>
										<p><%- additionalInfo.CUSTOMER_NO%></p>	
									</li>-->
									<li class="list-group-item">
										<label>Bill Number</label>
										<p><%- additionalInfo.BILL_NUMBER%></p>	
									</li>
									<li class="list-group-item">
										<label>Connection Type</label>
										<p>POSTPAID</p>	
									</li>
									<!--<li class="list-group-item">
										<label>Location Name</label>
										<p><%- additionalInfo.location_code%></p>	
									</li>-->
									<li class="list-group-item">
										<label>Bill Due Date</label>
										<p><%- additionalInfo.LAST_PAY_DATE%></p>	
									</li>
									<li class="list-group-item">
										<label>Energy Cost</label>
										<p><%- checkAmount($.formatNumber(els.get("DPDCPostpaidTotalDPDCAmt"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
									</li>
									<li class="list-group-item">
										<label>VAT Amount</label>
										<p><%- checkAmount($.formatNumber(els.get("DPDCPostpaidVATAmt"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
									</li>
									<li class="list-group-item">
										<label>Total Bill Amount</label>
										<p><%- checkAmount($.formatNumber(els.get("transactionAmount"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
									</li>
								<% } %>
							<% } else if(els.get("selectedBillerListName") == "DESCO") { %>
								<% if(els.get("selectBillConnectionType") == "POSTPAID") { %>
									<!--<li class="list-group-item">
										<label>Customer Name</label>
										<p><%- additionalInfo.NAME %></p>	
									</li>
									<li class="list-group-item">
										<label>Account Number</label>
										<p><%- additionalInfo.ACCOUNT_NO %></p>	
									</li>-->
									<li class="list-group-item">
										<label>Bill Number</label>
										<p><%- additionalInfo.BILL_NO %></p>	
									</li>
									<li class="list-group-item">
										<label>Department Details</label>
										<p><%- additionalInfo.DEPT_ID %></p>	
									</li>
									<li class="list-group-item">
										<label>Tariff</label>
										<p><%- additionalInfo.TARIFF %></p>	
									</li>
									<li class="list-group-item">
										<label>Bill Due Date</label>
										<p><%- additionalInfo.DUE_DATE %></p>	
									</li>
									<!--<li class="list-group-item">
										<label>Energy Cost</label>
										<p><%- checkAmount($.formatNumber(billBreakdown[2].value, {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
									</li>-->
									<% if(!isNull(billBreakdown[1].value) && billBreakdown[1].value != "0") { %>
										<!--<li class="list-group-item">
											<label>Late Payment Charges</label>
											<p><%- checkAmount($.formatNumber(billBreakdown[1].value, {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
										</li>-->
									<% } %>
									<!--<li class="list-group-item">
										<label>VAT Amount</label>
										<p><%- checkAmount($.formatNumber(billBreakdown[0].value, {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
									</li>-->
									<li class="list-group-item">
										<label>Total Bill Amount</label>
										<p><%- checkAmount($.formatNumber(billBreakdown[3].value, {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
									</li>
								<% } else if(els.get("selectBillConnectionType") == "PREPAID") { %>
									<!--<li class="list-group-item">
										<label>Customer Name</label>
										<p><%- additionalInfo.customerName %></p>	
									</li>
									<li class="list-group-item">
										<label>Account Number</label>
										<p><%- additionalInfo.accountNo %></p>	
									</li>-->
									<li class="list-group-item">
										<label>Meter Number</label>
										<p><%- additionalInfo.meterNo %></p>	
									</li>
									<li class="list-group-item">
										<label>Tariff</label>
										<p><%- additionalInfo.tariff %></p>	
									</li>
									<li class="list-group-item">
										<label>Energy Cost</label>
										<p><%- checkAmount($.formatNumber(els.get("DESCOPreEnergyCost"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>
									</li>
									<li class="list-group-item">
										<label>VAT Amount</label>
										<p><%- checkAmount($.formatNumber(els.get("DESCOPreVAT"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>
									</li>
									<div id="descoPrepaidAdditionalInfoDIV"></div>
									<li class="list-group-item">
										<label>Total Amount</label>
										<p><%- checkAmount($.formatNumber(els.get("transactionAmount"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>
									</li>
								<% } %>
							<% } else if(els.get("selectedBillerListName") == "NESCO") {  %>
								<% if(els.get("selectBillConnectionType") == "POSTPAID") { %>
									<!--<li class="list-group-item">
										<label>Consumer Name</label>
										<p><%- additionalInfo.customer_name %></p>	
									</li>
									<li class="list-group-item">
										<label>Consumer Number</label>
										<p><%- additionalInfo.account_number %></p>	
									</li>-->
									<li class="list-group-item">
										<label>Bill Number</label>
										<p><%- additionalInfo.bill_number %></p>	
									</li>
									<li class="list-group-item">
										<label>Bill Due Date</label>
										<p><%- additionalInfo.due_date %></p>	
									</li>
									<li class="list-group-item">
										<label>Energy Cost</label>
										<p><%- checkAmount($.formatNumber(els.get("NESCOEnergyCost"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>
									</li>
									<% if(!isNull(els.get("NESCOLatePayCharges")) && els.get("NESCOLatePayCharges") != "0") { %>
										<li class="list-group-item">
											<label>Late Payment Charges</label>
											<p><%- checkAmount($.formatNumber(els.get("NESCOLatePayCharges"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>
										</li>
									<% } %>
									<li class="list-group-item">
										<label>VAT Amount</label>
										<p><%- checkAmount($.formatNumber(els.get("NESCOVat"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>
									</li>
									<li class="list-group-item">
										<label>Total Bill Amount</label>
										<p><%- checkAmount($.formatNumber(els.get("transactionAmount"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>
									</li>
								<% } %>
							<% } %>
	 					<% } %>
						<% if(els.get("selectedBillerTypeName") == "Tuition Fees") {%>
							<li class="list-group-item">
								<label for="covfee">Student Name</label>
								<p><%- additionalInfo.studentName%></p>	
							</li>
							<li class="list-group-item">
								<label for="covfee">Student ID</label>
								<p><%- additionalInfo.studentId%></p>	
							</li>
							<li class="list-group-item">
								<label for="covfee">Transaction Fees</label>
								<p><%- checkAmount($.formatNumber(els.get("fee"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
							</li>
							<li class="list-group-item">
								<label><%-$.i18n.t('app.transferss.totaldebitamount')%></label>
								<p>
									<%- checkAmount($.formatNumber(els.get("totalDebitAmount"), {format:"#,###.00", locale:"us"}))%> BDT
								</p>
							</li>
						<% } %>
						 <% if(els.get("selectedBillerListName") == "Jalalabad Gas") { %>
						 <li class="list-group-item">
	 						<label for="covfee">Connection Type</label>
	 						<p> POSTPAID</p>	
	 					</li>
	 					<li class="list-group-item">
	 						<label for="covfee">Mobile Number</label>
	 						<p> <%- additionalInfo.bll_mobno%></p>	
	 					</li>
 						<li class="list-group-item">
	 						<label for="covfee">Bill Amount</label>
	 						<p> <%- checkAmount($.formatNumber(billBreakdown[0].value, {format:"#,###.00", locale:"us"}))%><span class="cur">BDT</span></p>	
	 					</li>
	 					<li class="list-group-item">
							<label>Late Fee</label>
							<p>
								<%- checkAmount($.formatNumber(billBreakdown[2].value, {format:"#,###.00", locale:"us"}))%> BDT
							</p>
						</li>
						<li class="list-group-item">
							<label>VAT</label>
							<p>
								<%- checkAmount($.formatNumber(billBreakdown[1].value, {format:"#,###.00", locale:"us"}))%> BDT
							</p>
						</li>
						<li class="list-group-item">
							<label>Total Bill Amount</label>
							<p>
								<%- checkAmount($.formatNumber(billBreakdown[4].value, {format:"#,###.00", locale:"us"}))%> BDT
							</p>
						</li>
 					<% } %>
					 <% if(els.get("selectedBillerListName") == "WZPDCL") { %>
 						<li class="list-group-item">
	 						<label for="covfee">Address</label>
	 						<p><%-additionalInfo['bll_add']%></p>	
	 					</li>
						 <li class="list-group-item">
	 						<label for="covfee">Bill Number</label>
	 						<p><%-additionalInfo['bll_no']%></p>	
	 					</li>
						  <li class="list-group-item">
	 						<label for="covfee">Location Code</label>
	 						<p><%-additionalInfo["bll_loc_cd"]%></p>	
	 					</li>
						<li class="list-group-item">
	 						<label for="covfee">Bill Due Date</label>
	 						<p><%-additionalInfo["bll_dt_due"]%></p>	
	 					</li>
 						<li class="list-group-item">
	 						<label for="covfee">Bill Amount</label>
	 						<p> <%- checkAmount($.formatNumber(billBreakdown[0].value, {format:"#,###.00", locale:"us"}))%><span class="cur">BDT</span></p>	
	 					</li>
	 					<li class="list-group-item">
							<label>Late Fee</label>
							<p>
								<%- checkAmount($.formatNumber(billBreakdown[2].value, {format:"#,###.00", locale:"us"}))%> BDT
							</p>
						</li>
						<li class="list-group-item">
							<label>VAT</label>
							<p>
								<%- checkAmount($.formatNumber(billBreakdown[1].value, {format:"#,###.00", locale:"us"}))%> BDT
							</p>
						</li>
						<li class="list-group-item">
							<label>Total Bill Amount</label>
							<p>
								<%- checkAmount($.formatNumber(billBreakdown[3].value, {format:"#,###.00", locale:"us"}))%> BDT
							</p>
						</li>
 					<% } %>
						<% if(els.get("selectedBillerTypeName") == "Mobile / Telephone") { %>
	 						<li class="list-group-item">
		 						<label for="covfee">Connection Fee</label>
		 						<p><%- checkAmount($.formatNumber(els.get("fee"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
		 					</li>
		 					<li class="list-group-item">
								<label><%-$.i18n.t('app.transferss.totaldebitamount')%></label>
								<p>
									<%- checkAmount($.formatNumber(els.get("totalDebitAmount"), {format:"#,###.00", locale:"us"}))%> BDT
								</p>
							</li>
	 					<% } else if(els.get("selectedBillerTypeName") == "Internet") {%>
	 						<li class="list-group-item">
		 						<label for="covfee">Bill Amount</label>
		 						<p><%- checkAmount($.formatNumber(billBreakdown[0].value, {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
		 					</li>
							<li class="list-group-item">
		 						<label for="covfee">Other Fees</label>
		 						<p><%- checkAmount($.formatNumber(els.get("fee"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
		 					</li>
		 					<li class="list-group-item">
								<label><%-$.i18n.t('app.transferss.totaldebitamount')%></label>
								<p>
									<%- checkAmount($.formatNumber(els.get("totalDebitAmount"), {format:"#,###.00", locale:"us"}))%> BDT
								</p>
							</li>
						<% } %>
						<% if(els.get("selectedBillerTypeName") == "Mobile / Telephone") { %>
							<li class="list-group-item">
								<label for="authmode">Connection Type</label>
								<p><%- els.get("toBiller_BillerConnectionType")%></p>	
							</li>
						<% } %>
	 					<% if(els.get("selectedBillerListName") == "GuardianLife") {%>
							<li class="list-group-item">
								<label for="authmode">Policy Status</label>
								<p><%- additionalInfo.policyStatus%></p>	
							</li>
							<li class="list-group-item">
								<label for="authmode">Commencement Date</label>
								<p><%- additionalInfo.commencementDate%></p>	
							</li>
							<li class="list-group-item">
								<label for="authmode">Due Date</label>
								<p><%- additionalInfo.dueDate%></p>	
							</li>
							<li class="list-group-item">
								<label for="covfee">Transaction Fees</label>
								<p><%- checkAmount($.formatNumber(els.get("fee"), {format:"#,###.00", locale:"us"}))%> <span class="cur">BDT</span></p>	
							</li>
							<li class="list-group-item">
								<label><%-$.i18n.t('app.transferss.totaldebitamount')%></label>
								<p>
									<%- checkAmount($.formatNumber(els.get("totalDebitAmount"), {format:"#,###.00", locale:"us"}))%> BDT
								</p>
							</li>
	 					<% } %>
						<% if(els.get("selectedBillerTypeName") == "Insurance") {%>
							<li class="list-group-item">
								<label for="authmode">Purpose of Payment</label>
								<p><%- els.get("toBiller_BillPurpose")%></p>	
							</li>
						<% } %>
						<% if(els.get("toBillerFromCurrency") !== els.get("toBillerToCurrency")) {%>
							<% if(els.get("toBillerFromCurrency") == "BDT" || els.get("toBillerToCurrency") == "BDT") {%>
								<% if(els.get("fromExchangeRate") != null && els.get("fromExchangeRate") > 0) { %>
									<li class="list-group-item">
										<label><%-$.i18n.t('app.transferss.exchangeratelabel')%></label>
										<p>
											<%- checkAmount($.formatNumber(els.get("fromExchangeRate"), {format:"#,###.00", locale:"us"}))%> BDT
										</p>
									</li>
								<% } %>
								<li class="list-group-item">
									<label><%-$.i18n.t('app.transferss.totalconvertedamount')%></label>
									<p>
										<%- checkAmount($.formatNumber(totalDebitAmount, {format:"#,###.00", locale:"us"}))%> BDT
									</p>
								</li>
							<% } %>
						<% } %>
						<% if(!isNull(els.get("RemarkS"))) { %>
							<li class="list-group-item">
								<label for="remarks">Remarks</label>
								<p><%- els.get("RemarkS")%></p>	
							</li>
						<% } %>
						<% if(!isNull(els.get("alertType"))) {%>
							<li class="list-group-item">
								<label for="authmode"><%-$.i18n.t('app.transfer.managebeneficiary.authmode')%></label>
								<p><%- els.get("alertType")%></p>	
							</li>
						<% } %>
        			</ul>
			        <div class="clearfix"></div>
			        <div class="row">
			            <div class="col-xs-6 pr5">
			                <button type="button" class="btn btn-default btn-block" id="toBillerVerifyCancelBtn">Cancel</button>
			            </div>
			            <div class="col-xs-6 pl5">
			                <button type="button" class="btn btn-primary btn-block" id="toBillerVerifyConfirmBtn">Confirm</button>
			            </div>
			        </div>
			        <br>
			    </form>
			</section>
			<div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			    <div class="modal-dialog" role="document">
			        <form method="post" action="#">
			            <div class="modal-content">
			                <div class="modal-header">
			                  <button type="button" class="close" id="toBillerOTPCloseBtn" data-dismiss="modal" aria-label="Close">
			 						<span aria-hidden="true">&times;</span>
			                    </button>
			                    <% if(els.get("alertType") == "TOKEN") { %>
		                			<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.registration.otptokenheadertext')%></h4>
		                    	<% }  else {%>
		                    		<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.transferss.verfici')%></h4>
		                    	<% } %>
			                </div>
			                <div class="modal-body">
			                    <% if(els.get("alertType") == "SMS") { %>
									<p class="small"><%-$.i18n.t('app.registration.opthelptext')%> <%- maskMobile(els.get("contactNumber"))%></p>
								<% } else if(els.get("alertType") == "EMAIL") {%>
									<p class="small"><%-$.i18n.t('app.registration.opthelpemailtext')%> <%- maskEmailID(els.get("emailId"))%></p>
								<% } else if(els.get("alertType") == "TOKEN") {%>
									<p class="small"><%-$.i18n.t('app.registration.opthelptokentext')%></p>
								<% } else if(els.get("alertType") == "ESIGN") {%>
									<p class="small"><%-$.i18n.t('app.registration.otphelpesigntext')%></p>
									<p class="small" id="challengeText"></p>
								<% } %>
			                    <div class="form-group">
			                        <div class="pasCode text-center">
			                            <div class="form-group">
												<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp1" name="otp1" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
												<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp2" name="otp2" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
												<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp3" name="otp3" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
												<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp4" name="otp4" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
												<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp5" name="otp5" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
												<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp6" name="otp6" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
						  					</div>
			                            </div>
										<div class="form-group has-error" id="otpNullErrorDiv">
											<p class="help-block error-message" style="color:#a94442; text-align:center;" id="otpNullError"></p>
										</div>
			                        </div>
			                        <!-- / form-group-->
									<% if(els.get("alertType") == "SMS" || els.get("alertType") == "EMAIL") { %>
										<div class="form-group">
											<div id="OTPcontainer1"></div>
										</div>
										<p class="text-center small">
											<a href="javascript:void(0);" class="resend_button" id="resend_btn14"><%-$.i18n.t('app.transfer.managebeneficiary.resendotp')%></a>
										</p>
									<% } %>
			                    </div>
			                    <div class="modal-footer">
			                        <div class="row">
										<div class="col-xs-6 pr5">
											<button type="button" id="toBillerVerifyOTPCancel" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
										</div>
										<div class="col-xs-6 pr5">
											<button type="button" class="btn btn-default btn-block otp_done" id="toBillerOTPVerify"><%-$.i18n.t('app.transfer.managebeneficiary.verify')%></button>
										</div>
									</div>
			                    </div>
			                   
			                </div>
			            </form>
			        </div>
			    </div>
				<div class="modal fade modernPOP" id="billPaymentInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
					<div class="modal-dialog" role="document">
						<form>
							<div class="modal-content">
								<div class="modal-body">
									<p class="text-center">
										<span class="ico-circle center-block">
											<span class="menu_icon ico-2x alert"></span>
										</span>
									</p>
									<ul class="list-unstyled checkstyle">
										<li class="list-group-item"><%- els.get("errordesc") %></li>
									</ul>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-default btn-block" id="btn_to_billpayment_info"><%-$.i18n.t('app.accounts.ok')%></button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="js/library/progressbar.min.js"></script>
<script src="js/libs/bootstrap/bootstrap-pincode-input.js"></script>
<script>
	$(document).ready(function() {
		$('#mpininput').pincodeInput({complete:function(value, e){  	
        }});
		
		DisableCopyPaste();
		
		$('input').keypress(function(e) {
			var code = (e.keyCode ? e.keyCode : e.which);
			if ( (code==13) || (code==10)) {
				$(this).blur();
				return false;
			}
		});
	});
</script>
<script>
	$(".cardinputs").keyup(function (e) {
	    if (this.value.length == this.maxLength) {
	    	$(this).parent().next().find('.cardinputs').focus();  
	    } else if((e.which == 8 || e.which == 46) && (this.value == "")) {
	    	$(this).parent().prev().find('.cardinputs').focus();  
	    }
	});
	
	(function ($){
		 $.fn.numericlength=function() {
			return this.each(function() {
			  var makelength=$(this).attr("maxlength");
			  $(this).on('keyup',function(e) { 
			  var allowedTest ="1234567890";					
			  var orignalValue=$(this).val();
			  for(var i=0;i<orignalValue.length;i++) {
				var atchar = orignalValue[i];
				if(allowedTest.indexOf(atchar) != -1) {
				} else {
					var changeTest =orignalValue.substr(0,i);
					orignalValue=changeTest;
				}
			   }
				$(this).val(orignalValue);
				 if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
					e.preventDefault();
				   return false;
				 }
			  });
			});
		 };
	}(jQuery));
	$('.numericlengthcontrol').numericlength();

(function ($){
		 $.fn.cardpinnumericlength=function() {
			return this.each(function() {
			  var makelength=$(this).attr("maxlength");
			  $(this).on('input ',function(e) { 
			  var allowedTest ="1234567890";					
			  var orignalValue=$(this).val();
			 
			  for(var i=0;i<orignalValue.length;i++) {
				var atchar = orignalValue[i];
				if(allowedTest.indexOf(atchar) != -1) {
					$(this).next('.inputs').focus();
				} else {
					var changeTest =orignalValue.substr(0,i);
					orignalValue=changeTest;
				}
			   }
				$(this).val(orignalValue);
				 if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
					e.preventDefault();
				   return false;
				 }
			  });
			   $(this).on('keyup',function(e) { 
				    if((e.which == 8 || e.which == 46) && (this.value == "")) { 
				$(this).prev('.inputs').focus();
				return false;
			  }
			   });
			});
		 };
	}(jQuery));
	$('.cardpinnumericlengthcontrol').cardpinnumericlength();
	$(".cardpinnumericlengthcontrol").css({'-webkit-text-security': 'disc','-moz-webkit-text-security': 'disc','-moz-text-security': 'disc'});
</script>
		
