<%
	var els = new EncryptedLocalStorage('secret');
	var billerInstruction = els.get("billerInstruction");
	var selectedBillerTypeName = els.get("selectedBillerListName");
	var selectedBillerListId = els.get("selectedBillerListId");
	var selectedBillerDateLabel = els.get("selectedBillerDateLabel");
	var ccListDTO = els.get("ccListDTO");
	var pcListDTO = els.get("pcListDTO");
	var myaccounts = getAccountDTO(); 
	var billerService = els.get("menuList");
	var additionalInfo = els.get("additionalInfo");
	var selectedBillerListName = els.get("selectedBillerListName");
	var minimumAmount = els.get("minAmountPerTransaction");
	var dailylimit = els.get("dailyAvailableLimit");
	var monthlylimit = els.get("monthlyTransactionLimit");
	var pertranslimit = els.get("maxAmountPerTransaction");
	var dailyAvailableCount = els.get("dailyAvailableCount");
	var dailyTransactionCount = els.get("dailyTransactionCount");
	var monthlyAvailableLimit = els.get("monthlyAvailableLimit");
	var monthlyAvailableCount = els.get("monthlyAvailableCount");
	var inputlength;
	if(els.get("selectedBillerTypeName") == "Mobile / Telephone") {
		inputlength = 13; 
	} else if(els.get("selectedBillerListName") == "DPDC") {
		inputlength = 8;
	} else if(els.get("selectedBillerListName") == "DESCO" || els.get("selectedBillerListName") == "NESCO") {
		inputlength = 20;
	} else if(els.get("selectedBillerListName") == "Jalalabad Gas" || els.get("selectedBillerListName")=="WZPDCL") {
		inputlength = 9;
	}else if(els.get("selectedBillerListName") == "Land Tax"){
		inputlength =12;
	}else {
		inputlength = 30;
	}
	var downtimeNotification = els.get("downtimeNotification");
	if(!isNull(downtimeNotification)  && downtimeNotification.length>0 ) {
		var subTransactionType = els.get("subTransType");
		var downtimeNotificationDetail = downtimeNotification[0].downtimeNotificationDetail;
	}
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
			<% if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
				<a href="#/viewbillpaylists" class="bacArr">
			<% }  else { %>
				<% if(els.get("selectedBillerListName") == "Land Tax" || els.get("selectedBillerListName") == "WASA" || els.get("selectedBillerListName") == "DESCO") {%>
					<a href="#/viewbillpaylists" class="bacArr">
				<% } else { %>
					<a href="#/selectbillpayPage" class="bacArr">
				<% } %>
			<% } %>	
				<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10">Pay <%- els.get("selectedBillerListName")%></h4>	
		</div>
		<div class="headerRight">
			<span class="step-badge">2/3</span>
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
		<ul class="step-progress">
			<li class="done"></li>
			<li class="done"></li>
			<li></li>
  		</ul>	
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
			<%if(els.get("selectedBillerListName") != "Land Tax" && els.get("selectedBillerListName") != "WASA" && els.get("selectedBillerListName") != "DESCO"){%>
			<div class="logWit small transfer_option">
			<%if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
	        	<% if(subTransactionType == "REGISTERED") { %>
				    <div class="alertCotainer alert alert-info small">
			            <!--<div class="alertLeft top"><i class="fa fa-info-circle" aria-hidden="true"></i></div>-->
			            <div class="alertRight">
			                <!--<h5>Temporary unavailability of Service</h5>-->
			               	<div id="notificationMessage"></div>
			            </div>
			        </div>
		        <% } %>
        	<% } %>
          <div class="row">
          	 <%if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
	           	<% if(subTransactionType !== "REGISTERED") { %>
		            <div class="col-xs-6 col-sm-6 pr5">
		              <a href="#/selectbillpayPage" class="text-center">
		                <span class="menu_icon ico-xs toBiller"></span>
		                <p class="small m0">To Beneficiary</p>
		              </a>
		            </div>
	            <% } %>
            <% } else { %>
            	<div class="col-xs-6 col-sm-6 pr5">
	              <a href="#/selectbillpayPage" class="text-center">
	                <span class="menu_icon ico-xs toBiller"></span>
	                <p class="small m0">To Beneficiary</p>
	              </a>
	            </div>
            <% } %>
            <div class="col-xs-6 col-sm-6 pl5">
              <a href="#/billpayonetimepay" class="text-center active">
                <span class="menu_icon ico-xs onetimepay"></span>
                <p class="small m0">One Time PAY</p>
              </a>
            </div>
          </div>
       	 </div>
		<%}%>
		 
        
       <div class="form-group">
            <label for="Fromacc">From Account</label>
            <select id="From_billpay_acc" name="Fromacc"class="form-control" onchange="removeVald(this)">
            <option value="" selected="selected" >Select Account Number</option>
            <%_.each(myaccounts,function(data,index){%>
				<% if(data.billflag == "Y") {%>
                 <option acctype="CASA" frName="<%-data.productName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
				<% } %>
			 <%});%>
                <% if(ccListDTO !== "" || ccListDTO !== null || ccListDTO.length > 0) { %>
	              <%_.each(ccListDTO,function(data,index){%>
	                 <% if(data.billflag == "Y") {%>
						<option acctype="CC" frName="<%-data.cardHolderName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"><%-data.accountNumber%></option>
					<% } %>
				<%});%>
            	<% } %>
            	<% if(pcListDTO !== "" || pcListDTO !== null || pcListDTO.length > 0) { %>
	              <%_.each(pcListDTO,function(data,index){%>
	                 <% if(data.billflag == "Y") {%>
						<option acctype="PC" frName="<%-data.cardHolderName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"><%-data.accountNumber%></option>
					<% } %>
				<%});%>
            	<% } %>
            </select>
            <p class="small" id="availBalDiv">
                <span class="small text-muted"><%-$.i18n.t('app.transferss.avlbal')%></span>
                   <span id="availbalance" class="amt small">
                </span>
            </p>
            <div class='form-group has-error'>
				<p class='help-block error-message has-error' style='color:#a94442' id='billerFromAcc'></p>
			</div>
            <% if(els.get("selectedBillerTypeName") == "Mobile / Telephone") { %>
				<label for="bnum">Operator Name</label>
				<div class="form-group">
	                <select id="manageBiller_BillerName" class="form-control">
	                    <option id="<%- els.get('selectedBillerListId')%>" selected><%- els.get("selectedBillerListName")%></option>
	                </select>
	            </div>
			<% } %>
			<% if(els.get("selectedBillerListName") == "DPDC") {%>
				<div id="billerOnOffConnTypeDiv"></div>
				 <div class="form-group has-error">
					<p class="help-block error-message has-error" style="color:#a94442" id="ConnTpeNullError"></p>
				</div>
			<% } %>
			<% if(els.get("selectedBillerListName") == "DESCO" ) { %>
				<div id="billerOnOffConnTypeDiv">
					<label>Select Connection Type</label>
					<div class='row'>
						
						<!--<div class='col-xs-6'>
							<label class='radio-label trans_label'>
								<input type='radio' name='ConnectionType' class='billerConnType' value='PREPAID' checked='checked'>PREPAID
								<span class='checkmark'></span>
							</label>
						</div>-->
						<div class='col-xs-6'>
							<label class='radio-label trans_label'>
								<input type='radio' name='ConnectionType' class='billerConnType' value='POSTPAID' checked='checked'>POSTPAID
								<span class='checkmark'></span>
							</label>
						</div>
					</div>
				</div>
				 <div class="form-group has-error">
					<p class="help-block error-message has-error" style="color:#a94442" id="ConnTpeNullError"></p>
				</div>
			<% }  else if(els.get("selectedBillerListName") == "NESCO") { %>
				<div id="billerOnOffConnTypeDiv">
					<label>Connection Type</label>
					<div class='row'>
						<div class='col-xs-6'>
							<label class='radio-label trans_label'>
								<input type='radio' name='ConnectionType' class='billerConnType' value='POSTPAID' checked='checked'>POSTPAID
								<span class='checkmark'></span>
							</label>
						</div>
						<!--<div class='col-xs-6'>
							<label class='radio-label trans_label'>
								<input type='radio' name='ConnectionType' class='billerConnType' value='PREPAID'>PREPAID
								<span class='checkmark'></span>
							</label>
						</div>-->
				</div>
				 <div class="form-group has-error">
					<p class="help-block error-message has-error" style="color:#a94442" id="ConnTpeNullError"></p>
				</div>
			<% }  else if(els.get("selectedBillerListName") == "Jalalabad Gas") { %>
				<!--<div id="billerOnOffConnTypeDiv">
					<label>Connection Type</label>
					<div class='row'>
						<div class='col-xs-6'>
							<label class='radio-label trans_label'>
								<input type='radio' name='ConnectionType' class='billerConnType' value='POSTPAID' checked='checked'>POSTPAID
								<span class='checkmark'></span>
							</label>
						</div>
						<div class='col-xs-6'>
							<label class='radio-label trans_label'>
								<input type='radio' name='ConnectionType' class='billerConnType' value='PREPAID'>PREPAID
								<span class='checkmark'></span>
							</label>
						</div>
				</div>
				 <div class="form-group has-error">
					<p class="help-block error-message has-error" style="color:#a94442" id="ConnTpeNullError"></p>
				</div>-->
			<% } %>
					<%if(els.get("selectedBillerTypeName") == "Tuition Fees") {%>
						<label for="billerid">Payslip Number</label>
					<% } else if(els.get("selectedBillerTypeName") == "Electricity") {%> 
						<% if(els.get("selectedBillerListName") == "WZPDCL" ) { %>
							<label id="DescoBillerIdLabel" for="billerid">Enter Billing Account Number</label>
						<% }else if(els.get("selectedBillerListName") == "DESCO") { %>
							<label for="billerid" id="DescoBillerIdLabel"></label>
						<% }else if(els.get("selectedBillerListName") == "DPDC") { %>
							<label for="billerid">Enter Customer Number</label>
						<% } else if(els.get("selectedBillerListName") == "NESCO") { %>
							<label for="billerid">Enter Consumer Number</label>
						<% } %>
					<% } else if(els.get("selectedBillerTypeName") == "Water") { %>
						<%if(els.get("selectedBillerListName") == "WASA") { %>
							<label for="billerid">Enter Bill ID</label>
						<% } %>
					<% }  else if(els.get("selectedBillerTypeName") == "Internet") {%> 
						<label for="billerid">Subscriber ID</label>
					<% } else if(els.get("selectedBillerTypeName") == "Insurance") {%> 
						<label for="billerid">Policy Number</label>
					<% } else if(els.get("selectedBillerTypeName") == "Mobile / Telephone") {%> 
						<label for="billerid">Mobile Number</label>
					<% }else if(els.get("selectedBillerListName")=="WZPDCL" ){ %>
						<label for="billerid">Enter Account Number</label>
					<%}else if(els.get("selectedBillerListName")=="Jalalabad Gas"){%>
						<label for="billerid">Billing Account Number</label>
					<%}else if(els.get("selectedBillerListName")=="Land Tax"){%>
						<label for="billerid">Enter Payment Token Number</label>
					<%}%>

					<% if(els.get("selectedBillerListName") == "MetLife") { %>
							<div class="form-group">
								<input type="text" autocomplete='off' class="form-control alphanumericlengthcontrol" pattern="[0-9]*" id="oneTimePay_BillerId" name="billerId" maxLength="<%-inputlength%>">
							</div>
					<% } else if(els.get("selectedBillerTypeName") == "Mobile / Telephone") { %>
							<div class="form-group">
								<div class="input-group">
									<input type="tel" autocomplete='off' class="form-control numericlengthcontrol" pattern="[0-9]*" id="oneTimePay_BillerId" name="billerId" maxLength="<%-inputlength%>">
									<span class="input-group-addon phonebook_ioc_outer">
										<a href="javascript:void(0);" id="billOneTimephonebookbtn" class="phonebook_ioc"></a>
									</span>
								</div>
							</div>
					<% } else { %>
							<div class="form-group">
								<input type="tel" autocomplete='off' class="form-control numericlengthcontrol" pattern="[0-9]*" id="oneTimePay_BillerId" name="billerId" maxLength="<%-inputlength%>">
							</div>
							<% if(els.get("selectedBillerListName") == "Land Tax") { %>
								<p class="small text-muted">
	                				<strong>Note:</strong> To collect your PAYMENT TOKEN, please call 16122 (Land Ministry call center).
	              				</p>
							<% } %>
					<% } %>
		            <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="idNullError"></p>
					</div>
					<div id="billerTypeDiv"></div>
					<div id="billerOneOffMonthlyDiv"></div>
					<div id="billerOneOffBillNumDiv"></div>
					<% if(els.get("selectedBillerTypeName") == "Electricity") { %>
						<% if(els.get("selectedBillerListName") == "WASA") { %>
		 					<div style="display:none" id="oneTimeAddInfo">
								<div class="form-group">
									<label for="waterbill">Water Bill</label>
									<p id="oneTimeWaterBill"></p>	
								</div>
								<div class="form-group">
									<label for="surcharge">Surcharge</label>
									<p id="oneTimeSurcharge"></p>	
								</div>
								<div class="form-group">
									<label for="vat">VAT</label>
									<p id="oneTimeVat"></p>	
								</div>
	                            <div class="form-group">
									<label for="covfee">Sewer Bill</label>
									<p id="oneTimeSewerbill"></p>	
								</div>
								<div class="form-group">
									<label for="covfee">Convenience Fee</label>
									<p id="oneTimeConFee"></p>	
								</div>
							</div>
						<%} else if(els.get("selectedBillerListName") == "DPDC") { %>
							<div id="DPDCOneOffAddInfo"></div>
						<% } else if(els.get("selectedBillerListName") == "DESCO") { %>
							<div id="DESCOOneOffAddInfo"></div>
						<% } else if(els.get("selectedBillerListName") == "NESCO") {  %>
							<div id="NESCOOneOffAddInfo"></div>
						<% }%>
	 				<% } %>
					<%if(els.get("selectedBillerTypeName") == "Tuition Fees") {%>
						<div style="display:none" id="oneTimeTutition" style="display:none;">
							<div class="form-group">
								<label for="studentName">Student Name</label>
								<p id="studentName"></p>	
							</div>
							<div class="form-group">
								<label for="studentID">Student ID</label>
								<p id="studentID"></p>	
							</div>
						</div>
					<%}%>
					<%if(els.get("selectedBillerListName") == "Land Tax") {%>
						<div style="display:none" id="oneTimeLandTax" style="display:none;">
							<div class="form-group">
								<label for="holdingNumber">Holding Number</label>
								<p id="LandTaxHoldingNumber"></p>	
							</div>
							<div class="form-group">
								<label for="VAT">Bill Amount</label>
								<p id="LandTaxBillAmount"></p>	
							</div>
							<div class="form-group">
								<label for="VAT">Late Fee</label>
								<p id="LandTaxLateFee"></p>	
							</div>
							<div class="form-group">
								<label for="VAT">VAT</label>
								<p id="LandTaxHoldingVAT"></p>	
							</div>
						</div>
					<%}%>
					
					<% if(els.get("selectedBillerListName") == "Jalalabad Gas") {  %>
							<div id="JalalabadOneOffAddInfo"></div>
					<% } else if(els.get("selectedBillerListName") == "WZPDCL") { %>
							<div id="WZPDCLOneOffAddInfo"></div>
					<%}%>
		            <div class="row">
            			<div class="col-xs-8 pr5">
							<%if(els.get("selectedBillerTypeName") == "Tuition Fees") {%>
								<label for="amt">Total Fees Amount</label>
							<% }  else if (els.get("selectedBillerListName") == "DPDC") {%>
									<label for="amt" id="DPDCBillAmtLabel"></label>
							<% } else if(els.get("selectedBillerListName") == "Jalalabad Gas"||els.get("selectedBillerListName") == "WZPDCL"||els.get("selectedBillerListName") == "Land Tax" ){%>
								<label for="amt">Total Bill Amount</label>
								<%}else {%>
								<label for="amt"  id="totalBillAmtDesco">Bill Amount</label>
							<% } %>
            			</div>
            			<div class="col-xs-4 pl5">
            				<label for="curr" class="text-right">Currency</label>
            			</div>
            		</div>
            		<div class="form-group">
                		<div class="row">
                    		<div class="col-xs-8 pr5">
								<input type="tel" class="form-control numericlengthcontrol transferAmountClass" data-type="currency" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" onkeyup="withoutstartZero(event,'oneTimePay_BillAmount')" id="oneTimePay_BillAmount" name="billAmount" maxLength="13">
            				</div>
                			<div class="col-xs-4 pl5">
                  				<select name="currency" id="currency" class="form-control">
                    				<option value="BDT">BDT</option>
                    			</select>
                			</div>
                			<div class="col-xs-12">
                    			<div class="row">
                        			<div class="col-xs-5 pr5">
                            			<p class="small">
                                			<a href="javascript:void(0);" class="small text-link" data-toggle="modal" data-target="#TransactionLimit"><%-$.i18n.t('app.transferss.transactionlimits')%></a>
                            			</p>
                        			</div>
                    			</div>
                			</div>
            			</div>
	        			<div class="row">
		        			<div class="col-xs-8 pr5">
		        				<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="billAmountError"></p>
		 						</div>
		 					</div>
		 					<div class="col-xs-4 pl5">
		        				<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="currError"></p>
		 						</div>
		 					</div>
	        			</div>
        			</div>
        			
        			 
        			<div id="showTheguardianceDiv"></div>
        			<%if(els.get("selectedBillerTypeName") == "Insurance") {%>
        			<label> Purpose of Payment </label>
	        			<select name="purposeofpayment" id="toBillerPurposeOfPayment" class="form-control">
	             			<option value=""  selected="selected">Select Purpose of Payment</option>
	             			<%if(els.get("selectedBillerListName") == "Guardian Life") {%>
	             			<option value="1">Premium</option>
	             			<%}else{%>
	             			<option value="1">Premium</option>
	             			<option value="2">Application</option>
	             			<option value="3">Loan Repayment</option>
	             			<option value="4">APL Repayment</option>
	             			<option value="5">Reinstatement</option>
							<option value="6">Balance Premium</option>
							<%}%>
						</select>
	            		<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="purposeError"></p>
 						</div>
            		<% } %>
            		<% if(els.get("selectedBillerTypeName") == "Mobile / Telephone") { %>
            			<label> Select Connection Type </label>
            			<div class="form-group">
			                <select id="billPay_BillerService" class="form-control">
			                    <option id="" value="">Select a connection type</option>
			                    <% _.each(billerService,function(data,index){ %>
			                    	<option id="<%- data.id%>" value="<%- data.code%>"><%- data.description%></option>
			                    <% }); %>
			                </select>
			            </div>
			            <div class='form-group has-error'>
							<p class='help-block error-message has-error' style='color:#a94442' id='billerServiceError'></p>
						</div>
            		<% } %>
            		<% if(els.get("selectedBillerListName") == "Jalalabad Gas") { %>
            			<!--<label> Select Biller Service </label>
            			<div class="form-group">
			                <select id="billPay_BillerService" class="form-control">
			                    <option id="" value="">Select a Biller Service</option>
			                    <% _.each(billerService,function(data,index){ %>
			                    	<option id="<%- data.id%>" value="<%- data.code%>"><%- data.description%></option>
			                    <% }); %>
			                </select>
			            </div>
			            <div class='form-group has-error'>
							<p class='help-block error-message has-error' style='color:#a94442' id='billerServiceError'></p>
						</div>-->
            		<% } %>
				
                   <label for="remarks">Remarks</label>
            		<div class="form-group">
                <input  name="remarks" type="text" id="mobileremark" maxlength="16" class="form-control alphanumericlengthcontrol">
                 </div>
                  <div class='form-group has-error'>
							<p class='help-block error-message has-error' style='color:#a94442' id='mobileremarkError'></p>
						</div>
					<% if(els.get("selectedBillerTypeName") == "Mobile / Telephone") { %>
						<div class="clearfix"></div>
						<div class="alert alert-info small" role="alert" id="billPayOneOffShortNotesUIDiv" style="display:none;">
							<small>
							   <i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.transferss.msg1note')%>
							   <div id="billPayOneOffShortNotesDiv"></div>
							   <!--<ul style="margin-left:-27px;">
								 <li><%-$.i18n.t('app.transferss.mobiletopupmsgnote1')%></li>
								 <li><%-$.i18n.t('app.transferss.mobiletopupmsgnote2')%></li>
								 <li><%-$.i18n.t('app.transferss.mobiletopupmsgnote3')%></li>
								 <li><%-$.i18n.t('app.transferss.mobiletopupmsgnote4')%></li>
								 <li><%-$.i18n.t('app.transferss.mobiletopupmsgnote5')%></li>
							   </ul>-->
							</small>
						</div>
					<% } %>
        			<div class="form-group" id="biller_onetime_transferDiv"></div>
        			<div class="clearfix"></div>
	        			<div class="form-group">
			              <label class="check-label">
			                <input type="checkbox" name="transfer" id="termsand"> I agree to the <a href="javascript:void(0);" id="billPayOneTimeTandCPopup">Terms and Conditions</a>
			                <span class="checkmark1"></span>
			              </label>
			              </div>
			               <div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="tandcErr"></p>
						</div>
						<div class="row">
        				<div class="col-xs-6 pr5">
            				<button type="button" id="oneTimePayInit_CancelBtn" class="btn btn-default btn-block">Cancel</button>
        				</div>
        				<div class="col-xs-6 pl5">
            				<button type="button" class="btn btn-primary btn-block" id="oneTimePay_NextBtn">Next</button>
        				</div>
    				</div>
        			<br>
            	</div>
			
			</div>
			
			</section>	
			<div id="termsAndCondPopup"></div>
			<div class="modal fade modernPOP" id="TransactionLimit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		        <div class="modal-dialog" role="document">
		            <form method="post" action="info.html">
		                <div class="modal-content">
		                    <div class="modal-header">
		                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                            <span aria-hidden="true">&times;</span>
		                        </button>
		                        <h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.transferss.transactionlimit')%></h4>
		                    </div>
		                    <div class="modal-body">
		                        <p class="text-center">
		                            <span class="ico-badge center-block">
		                                <span class="menu_icon ico-3x translimit"></span>
		                            </span>
		                        </p>
		                        <div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-6">
										<p>
											<span class="small"><%-$.i18n.t('app.transferss.minimumamount')%></span>
											<br>
											<span class="amt small">
												<%- checkAmount($.formatNumber(minimumAmount, {format:"#,###.00", locale:"us"}))%>
												<span class="cur"><%-$.i18n.t('app.transferss.bdt')%></span>
											</span>
										</p>
									</div>
									<div class="col-xs-6">
										<p>
											<span class="small"><%-$.i18n.t('app.transferss.dailylimit')%></span>
											<br>
											<span class="amt small">
												<%- checkAmount($.formatNumber(dailylimit, {format:"#,###.00", locale:"us"}))%>
												<span class="cur"><%-$.i18n.t('app.transferss.bdt')%></span>
											</span>
										</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-6">
										<p>
											<span class="small"><%-$.i18n.t('app.transferss.pertransactionlimit')%></span>
											<br>
											<span class="amt small">
												<%- checkAmount($.formatNumber(pertranslimit, {format:"#,###.00", locale:"us"}))%>
												<span class="cur"><%-$.i18n.t('app.transferss.bdt')%></span>
											</span>
										</p>
									</div>
									<div class="col-xs-6">
										<p>
										<span class="small"><%-$.i18n.t('app.transferss.availabletransfercount')%></span>
										<br>
										<span class="amt small"><%- dailyAvailableCount%>
										</span>
									   </p>
									</div>
								</div>
							</div>
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-6">
										<p>
											<span class="small"><%-$.i18n.t('app.transferss.monthavalimit')%></span>
											<br>
											<span class="amt small">
												<%- checkAmount($.formatNumber(monthlyAvailableLimit, {format:"#,###.00", locale:"us"}))%>
												<span class="cur"><%-$.i18n.t('app.transferss.bdt')%></span>
											</span>
										</p>
									</div>
									<div class="col-xs-6">
										 <p>
										<span class="small"><%-$.i18n.t('app.transferss.monthavalcount')%></span>
										<br>
										<span class="amt small"><%- monthlyAvailableCount%>
										</span>
									   </p>
									</div>
								</div>
							</div>
						</div>
		                    </div>
		                </div>
		            </form>
		        </div>
		    </div>
		</div>
	</div>
</div>
<script>
(function ($){
     $.fn.inputnumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          	var allowedTest ="1234567890,";					
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
			if(makelength!=""){
            	if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
                	e.preventDefault();
                	return false;
             	}
          	}
          });
        });
     };
}(jQuery));
$('.numericlengthcontrol').inputnumericlength();

(function ($){
     $.fn.inputalphanumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 ";					
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
			if(makelength!=""){
	             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
	                e.preventDefault();
	               return false;
	             }
	          }
          });
        });
     };
}(jQuery));
$('.alphanumericlengthcontrol').inputalphanumericlength();
</script>
<script>
	$(document).ready(function(){
		
	});

function removeVald(selected){
	console.log(selected.value)
	if(!isNull(selected.value)){
		//$("#availBalDiv").next().remove();
		//$("billerFromAcc").html("");
		$(".help-inline").first().html("");
	}
}
</script>



<script>

// Jquery Dependency

$("input[data-type='currency']").on({
    keyup: function() {
      formatCurrency($(this));
    }
});




</script>

