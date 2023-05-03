<%
	var els = new EncryptedLocalStorage('secret');
	var casaDTO = getAccountDTO();
	var ccListDTO = els.get("ccListDTO");
	var pcListDTO = els.get("pcListDTO");
	var billerInstruction = els.get("billerInstruction");
	var selectedBillPayIndex = els.get("selectBillIndex");
	var selectedBillerInfo = billerInstruction[selectedBillPayIndex];
	var additionalInfo = els.get("additionalInfo");
	var minimumAmount = els.get("minAmountPerTransaction");
	var dailylimit = els.get("dailyAvailableLimit");
	var monthlylimit = els.get("monthlyTransactionLimit");
	var pertranslimit = els.get("maxAmountPerTransaction");
	var dailyAvailableCount = els.get("dailyAvailableCount");
	var dailyTransactionCount = els.get("dailyTransactionCount");
	var monthlyAvailableLimit = els.get("monthlyAvailableLimit");
	var monthlyAvailableCount = els.get("monthlyAvailableCount");
	var billBreakdown = els.get("billBreakDown");
	var billerTypeList = els.get("billerTypeList");
	var selectid = els.get("selectedBillerListId");
	var selectedBillerListCode = els.get("selectedBillerListCode");
	console.log("selectedBillerListName",els.get("selectedBillerListName"));
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
			<% if(els.get("isManageBene") == "true") {%>
				<a href="#/selectbiller" class="bacArr">
			<% } else if(els.get("isManageBene") == "false") {%>
				<a href="#/selectbillpayPage" class="bacArr">
			<% } %>			
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p4"><%-$.i18n.t('app.transferss.paymentdetails')%><p class="small">(Bill Pay)</p></h4>	
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
        		<form>    
            		<div class="media payAcc">
                		<div class="media-left">
                    		<img src="images/common/user_default1.png" class="img2x img-circle" />
                		</div>
                		<div class="media-body">
                    		<p><%- selectedBillerInfo.shortName%></p>
                    		<p class="small text-primary"><%- selectedBillerInfo.mobileNumber%></p>
                    		<p><%- els.get("selectedBillerListName")%></p>
                    		<p class="text-right small">
                        		<a href="#/billpaytransferhistory" class="text-link">
                            		<span class="menu_icon ico-xss histry"></span>
                    				<small><%-$.i18n.t('app.transferss.viewhistory')%></small>
                    			</a>
                    		</p>
                		</div>
            		</div>
            		<br/>
            		<label for="acc"><%-$.i18n.t('app.transferss.fromaccount')%></label>
            		<div class="form-group">
                 		<select name="fromaccnum" id="toBillerFromAccount" class="form-control" onchange="removeVald(this)">
                 			<option value=""  selected="selected"><%-$.i18n.t('app.transferss.selaccnum')%></option>
                 			<%_.each(casaDTO,function(data,index){%>
				                 <% if(data.billflag == "Y") {%>
									<option acctype="CASA" accName="<%- data.accountShortName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
								<% } %>
							<%});%>
						 	<% if(ccListDTO !== null || ccListDTO !== "" || ccListDTO.length > 0) {%>
			                      <%_.each(ccListDTO,function(data,index){%>
			                         <% if(data.billflag == "Y") {%>
										<option acctype="CC" accName="<%- data.cardHolderName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
									<% } %>
								<%});%>
			                <% } %>
			                <% if(pcListDTO !== null || pcListDTO !== "" || pcListDTO.length > 0) {%>
			                      <%_.each(pcListDTO,function(data,index){%>
			                         <% if(data.billflag == "Y") {%>
										<option acctype="PC" accName="<%- data.cardHolderName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
									<% } %>
								<%});%>
			                <% } %>
                		</select>
                		<p class="small" id="availBalDiv">
                    		<span class="small text-muted">Avl Bal</span>
                    		<span id="availbal" class="amt small">
                    		</span>
                		</p>
            		</div>
            		<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="acntNumErr"></p>
	 				</div>
	 				<% if(els.get("selectedBillerTypeName") == "Water") { %>
	 					<% if( els.get("selectedBillerListName") == "WASA") { %>
		 					<div class="form-group">
								<label for="beneWaterBill">Water Bill</label>
								<p id="beneWaterBill"></p>	
							</div>
							<div class="form-group">
								<label for="beneSurcharge">Surcharge</label>
								<p id="beneSurcharge"></p>	
							</div>
							<div class="form-group">
								<label for="beneVAT">VAT</label>
								<p id="beneVAT"></p>	
							</div>
							<div class="form-group">
								<label for="beneConFee">Sewer Bill</label>
								<p id="sewerbill"></p>	
							</div>
	                        <div class="form-group">
								<label for="beneConFee">Convenience Fee</label>
								<p id="beneConFee"></p>	
							</div>
							<% }%>
						<% } %>	
						<% if(els.get("selectedBillerTypeName") == "Electricity") { %>
						<% if(els.get("selectedBillerListName") == "DPDC") { %>
							<% if(els.get("selectBillConnectionType") == "PREPAID") { %> 
								<div id="toBeneDPDC" style="display:none">
									<div class="form-group">
										<label for="beneCustNum">Customer Number</label>
										<p id="beneCustNum"></p>	
									</div>
									<div class="form-group">
										<label for="beneCustName">Customer Name</label>
										<p id="beneCustName"></p>	
									</div>
									<div class="form-group">
										<label for="beneMeterNum">Meter Number</label>
										<p id="beneMeterNum"></p>	
									</div>
									<div class="form-group">
										<label for="beneMeterType">Meter Type</label>
										<p id="beneMeterType"></p>	
									</div>
									<div class="form-group">
										<label for="beneTariffProg">Tariff</label>
										<p id="beneTraiff"></p>	
									</div>
									<div class="form-group">
										<label for="beneMobNum">Mobile Number</label>
										<p id="beneMobNum"></p>	
									</div>
								</div>	
							<% } %>
						<% } %>
						<% if((els.get("selectedBillerListName") == "DESCO" && els.get("selectBillConnectionType") == "POSTPAID")|| (els.get("selectedBillerListName") == "NESCO" && els.get("selectBillConnectionType") == "POSTPAID") || (els.get("selectedBillerListName") == "DPDC" && els.get("selectBillConnectionType") == "POSTPAID")) { %>
							<% if((els.get("selectedBillerListName") == "DESCO" && els.get("selectBillConnectionType") == "POSTPAID") || (els.get("selectedBillerListName") == "DPDC" && els.get("selectBillConnectionType") == "POSTPAID")) { %>
								<label> Bill Type </label>
								<% if(els.get("selectedBillerListName") == "DESCO") { %>
									<select name="desco_billerType" id="toBillerBillerType" class="form-control">
				             			<option value=""  selected="selected">Select a Bill Type</option>
				             			<%_.each(billerTypeList,function(data,index){%>
				             				<option value="<%- data.code%>" id="<%- index%>" > <%-data.values%></option>
										<%});%>
									</select>
								<% } else if (els.get("selectedBillerListName") == "DPDC") { %>
									<select name="desco_billerType" id="toBillerBillerType" class="form-control" disabled>
				             			<option value=""  selected="selected">Select a Bill Type</option>
					             			<%_.each(billerTypeList,function(data,index){%>
						             			<% if(data.code == "Energy") { %>
													<option value="<%- data.code%>" id="<%- index%>" selected> <%-data.values%></option>				             			
						             			<% } %>
											<%});%>
									</select>
								<% } %>
								<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="toBillerBillerTypeError"></p>
		 						</div>
	 						<% } %>
	 						<div id="monthlyBillerType"></div>
	 						<% if(els.get("selectedBillerListName") == "DESCO") { %>
		 						<div id="billNumberDiv">
									<label>Bill Number</label>
			 						<div class="form-group">
										<input type="tel" autocomplete='off' class="form-control inputnumericlengthcontrol" id="toBillerBillNumber" name="billNumber" maxLength="20">
									</div>
									<div class="form-group has-error">
										<p class="help-block error-message has-error" style="color:#a94442" id="toBillerBillNumberErr"></p>
			 						</div>	 						
		 						</div>
							<% } %>
						<% } %>
	 				<% } %>
	 				<% if(els.get("selectedBillerListName") == "DESCO" && els.get("selectBillConnectionType") == "POSTPAID") {%>
	 					<div id="toBeneDESCOPostpaid" style="display:none">
								<div class="form-group">
									<label>Customer Name</label>
									<p id="beneDescoName"></p>	
								</div>
								<div class="form-group">
									<label>Account Number</label>
									<p id="beneDescoAccNum"></p>	
								</div>
								<div id="descoPostpaidBillNum"></div>
								<div class="form-group">
									<label>Department Details</label>
									<p id="beneDescoDeptDetails"></p>	
								</div>
								<div class="form-group">
									<label>Tariff</label>
									<p id="beneDescoTariff"></p>	
								</div>
								<div class="form-group">
									<label>Bill Due Date</label>
									<p id="beneDescoDueDate"></p>	
								</div>
								<!--<div class="form-group">
									<label>Energy Cost</label>
									<p id="beneDescoEnergyCost"></p>	
								</div>
								<div class="form-group" id="DescoLPCDiv">
									<label>Late Payment Charges</label>
									<p id="beneDescoLPC"></p>	
								</div>
								<div class="form-group">
									<label>VAT Amount</label>
									<p id="beneDescoVAT"></p>	
								</div>-->
								<!--<div class="form-group">
									<label>Total Bill Amount</label>
									<p id="beneDescoTotalBillAmount"></p>	
								</div>-->
							</div>
	 				<% } else if(els.get("selectedBillerListName") == "DESCO" && els.get("selectBillConnectionType") == "PREPAID") { %>
	 						<div id="toBeneDESCOPrepaid" style="display:none">
	 							<div class="form-group">
									<label>Customer Name</label>
									<p id="beneDescoPreCusName"></p>	
								</div>
								<div class="form-group">
									<label>Account Number</label>
									<p id="beneDescoPreCusNum"></p>	
								</div>
								<div class="form-group">
									<label>Meter Number</label>
									<p id="beneDescoPreMeterNum"></p>	
								</div>
								<div class="form-group">
									<label>Tariff</label>
									<p id="beneDescoPreTariff"></p>	
								</div>
								<div class="form-group">
									<label>Energy Cost</label>
									<p id="beneDescoPreEnergyCost"></p>	
								</div>
								<div class="form-group">
									<label>VAT Amount</label>
									<p id="beneDescoPreVAT"></p>	
								</div>
								<div id="descoPrepaidAddtionalInfoDiv"></div>
								<!--<div class="form-group">
									<label>Total Amount</label>
									<p id="beneDescoPreTotalAmt"></p>	
								</div>-->
							</div>
	 				<% }  else if((els.get("selectedBillerListName") == "DPDC") && (els.get("selectBillConnectionType") == "POSTPAID")) { %>
	 						<div id="toBeneDPDC" style="display:none">
								<div class="form-group">
									<label>Customer Name</label>
									<p id="benePostCustName"></p>	
								</div>
								<div class="form-group">
									<label>Customer Number</label>
									<p id="benePostCusNum"></p>	
								</div>
								<div class="form-group">
									<label>Bill Number</label>
									<p id="benePostBillNum"></p>	
								</div>
								<div class="form-group">
									<label>Connection Type</label>
									<p id="benePostConnType"></p>	
								</div>
								<div class="form-group">
									<label>Bill Due Date</label>
									<p id="benePostBillDue"></p>	
								</div>
								<div class="form-group">
									<label>Energy Cost</label>
									<p id="benePostTotalDPDCAmt"></p>	
								</div>
								<div class="form-group">
									<label>VAT Amount</label>
									<p id="benePostVATAmnt"></p>	
								</div>
								<!--<div class="form-group">
									<label>Total Bill Amount</label>
									<p id="benePostTotalBillAmt"></p>	
								</div>-->
							</div>
	 				<% } else if(els.get("selectedBillerListName") == "NESCO" && els.get("selectBillConnectionType") == "POSTPAID") {%>
	 					<div id="toBeneNESCOPostpaid" style="display:none">
								<div class="form-group">
									<label>Consumer Name</label>
									<p id="beneNescoCusName"></p>	
								</div>
								<div class="form-group">
									<label>Consumer Number</label>
									<p id="beneNescoCusNumber"></p>	
								</div>
								<div class="form-group">
									<label>Bill Number</label>
									<p id="beneNescoBillNumber"></p>	
								</div>
								<div class="form-group">
									<label>Bill Due Date </label>
									<p id="beneNescoBillDueDate"></p>	
								</div>
								<div class="form-group">
									<label>Energy Cost</label>
									<p id="beneNescoEnergyCost"></p>	
								</div>
								<div class="form-group" id="NescoLPCDiv">
									<label>Late Payment Charges</label>
									<p id="beneNescoLatePayCharges"></p>	
								</div>
								<div class="form-group">
									<label>VAT Amount</label>
									<p id="beneNescoVat"></p>	
								</div>
								<!--<div class="form-group">
									<label>Total Bill Amount</label>
									<p id="beneNescoTotalBillAmt"></p>	
								</div>-->
							</div>
					<% } %>
					<%if(els.get("selectedBillerListName") == "Jalalabad Gas") { %>
								<div class="form-group">
									<label>Connection Type</label>
									<p id="beneJalalabadConnectionType"></p>	
								</div>
								<div class="form-group">
									<label>Mobile Number</label>
									<p id="beneJalalabadMobileNumber"></p>	
								</div>
								<div class="form-group">
									<label>Bill Amount</label>
									<p id="beneJalalabadBillAmount"></p>	
								</div>
								<div class="form-group">
									<label>VAT</label>
									<p id="beneJalalabadVat"></p>	
								</div>
								<div class="form-group">
									<label>Late Fee</label>
									<p id="beneJalalabadLateFee"></p>	
								</div>
					<%}%>
					<%if(els.get("selectedBillerListName") == "WZPDCL") { %>
								<div class="form-group">
									<label>Address</label>
									<p id="beneWZPDCLAddress"></p>	
								</div>
								<div class="form-group">
									<label>Bill Number</label>
									<p id="beneWZPDCLBillNumber"></p>	
								</div>
								<div class="form-group">
									<label>Location Code</label>
									<p id="beneWZPDCLLocationCode"></p>	
								</div>
								<div class="form-group">
									<label>Bill Due Date</label>
									<p id="beneWZPDCLBillDueDate"></p>	
								</div>
								<div class="form-group">
									<label>Bill Amount</label>
									<p id="beneWZPDCLBillAmount"></p>	
								</div>
								<div class="form-group">
									<label>VAT</label>
									<p id="beneWZPDCLVat"></p>	
								</div>
								<div class="form-group">
									<label>Late Fee</label>
									<p id="beneWZPDCLFee"></p>	
								</div>
					<%}%>
					<%if(els.get("selectedBillerTypeName") == "Tuition Fees") {%>
						<div id="tobebetuition" style="display:none">
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
	 				<div class="row">
            			<div class="col-xs-8 pr5">
            			<% if(els.get("selectBillConnectionType") == "PREPAID") { %>
            				<label for="amt">Pay Amount</label>
        				<% } else if(els.get("selectedBillerListName") == "Jalalabad Gas" || els.get("selectedBillerListName") == "WZPDCL" ) {%>
        					<label for="amt">Total Bill Amount</label>
						<%}else {%>
        					<label for="amt">Bill Amount</label>
        				<% } %>	
            			</div>
            			<div class="col-xs-4 pl5">
            				<label for="curr" class="text-right">Currency</label>
            			</div>
            		</div>
            		<div class="form-group">
                		<div class="row">
                    		<div class="col-xs-8 pr5">
								<input type="tel" autocomplete='off' class="form-control numericlengthcontrol transferAmountClass" data-type="currency" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" onkeyup="withoutstartZero(event,'toBillerBillAmount')" id="toBillerBillAmount" name="billAmount" maxLength="13">
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
        			</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="transfermountError"></p>
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
        			
        		<%if(els.get("selectedBillerTypeName") == "Insurance") {%>	
        			<%if(els.get("selectedBillerListName") == "Guardian Life") {%>	
        				<div class="form-group">
            				<label>Commencement Date</label>
        					<div class="clearfix"></div>
        					<span class="small"><%-additionalInfo.commencementDate%></span>
          				</div>
         				<div class="form-group">
            				<label>Due Date</label>
            				<div class="clearfix"></div>
            				<span class="small"><%-additionalInfo.dueDate%></span>
         				</div>
         				<div class="form-group">
            				<label>Policy Status</label>
            				<div class="clearfix"></div>
            				<span class="small"><%-additionalInfo.policyStatus%></span>
         				</div>
     				<%}%>
         		<%}%>
         
      
          <label for="remarks">Remarks</label>
            		<div class="form-group">
                <input  name="remarks" type="text" id="mobileremark" maxlength="16" class="form-control alphanumericlengthcontrol">
                 </div>
               <div class='form-group has-error'>
							<p class='help-block error-message has-error' style='color:#a94442' id='mobileremarkError'></p>
						</div>
        
        			
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
							<div class="clearfix"></div>
							<div class="alert alert-info small" role="alert" id="billPayToBillerShortNotesUIDiv" style="display:none;">
								<small>
								   <i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.transferss.msg1note')%>
								   <div id="billPayToBillerShortNotesDiv"></div>
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
						<div class="form-group" id="biller_tobene_transferDiv"></div>
            		<div class="clearfix"></div>
	            		<div class="form-group">
			              <label class="check-label">
			                <input type="checkbox" name="transfer" id="termsand"> I agree to the <a href="javascript:void(0);" id="billPayToBillerTandCPopup">Terms and Conditions</a>
			                <span class="checkmark1"></span>
			              </label>
			            </div>
			            <div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="tandcErr"></p>
						</div>
            		<div class="clearfix"></div>
        			<div class="row">
            			<div class="col-xs-6 pr5">
                			<button type="button" class="btn btn-default btn-block" id="billPayInitBackBtn"><%-$.i18n.t('app.transferss.cancel')%></button>
            			</div>
            			<div class="col-xs-6 pl5">
                			<button id="billPayInitConfirmBtn" type="button" class="btn btn-primary btn-block">Next</button>
            			</div>
        			</div>
    			</form>
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
	$(document).ready(function(){
		
	});
</script>
<script>
(function ($){
		 $.fn.numericlength=function() {
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

(function ($){
		 $.fn.inputnumericlength=function() {
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
	$('.inputnumericlengthcontrol').inputnumericlength();

function removeVald(selected){
	console.log(selected.value)
	if(!isNull(selected.value)){
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

