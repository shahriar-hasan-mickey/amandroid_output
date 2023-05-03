<%
	var els = new EncryptedLocalStorage('secret'); 
	var otherbene = els.get("localBeneficiaryBeneficiaryInstructionDTOList");
	var casaDTO = getAccountDTO();
	var prepaidCardAccountListDTO = els.get("prepaidCardAccountList");
	var otherbene = els.get("localBeneficiaryBeneficiaryInstructionDTOList");
	var toAcntInd = els.get("selectedBeneInd");
	var selectedAccountDTO = otherbene[toAcntInd];
	console.log("selectedAccountDTO1234",selectedAccountDTO);
	var minimumAmount = els.get("minAmountPerTransaction");
	var dailylimit = els.get("dailyAvailableLimit");
	var monthlylimit = els.get("monthlyTransactionLimit");
	var pertranslimit = els.get("maxAmountPerTransaction");
	var dailyAvailableCount = els.get("dailyAvailableCount");
	var dailyTransactionCount = els.get("dailyTransactionCount");
	var monthlyAvailableLimit = els.get("monthlyAvailableLimit");
	var monthlyAvailableCount = els.get("monthlyAvailableCount");
	var downtimeNotification = els.get("downtimeNotification");
	els.set("isNPSBDown","N");
	els.set("isBEFTNDown","N");
	els.set("isRTGSDown","N");
	els.set("isRegisteredOrBoth","N");
	if(!isNull(downtimeNotification)  && downtimeNotification.length>0) {
		_.each(downtimeNotification,function(data,index){
			if(data.code == "NPSB" && (data.subTransactionType == "REGISTERED" || data.subTransactionType == "BOTH")) {
				var isNPSBDown = "Y";
				var isBEFTNDown = els.get("isBEFTNDown");
				var isRTGSDown = els.get("isRTGSDown");
				els.set("isNPSBDown",isNPSBDown);
				els.set("isBEFTNDown",isBEFTNDown);
				els.set("isRTGSDown",isRTGSDown);
			}
			if(data.code == "BEFTN" && (data.subTransactionType == "REGISTERED" || data.subTransactionType == "BOTH")) {
				var isNPSBDown = els.get("isNPSBDown");
				var isBEFTNDown = "Y";
				var isRTGSDown = els.get("isRTGSDown");
				els.set("isNPSBDown",isNPSBDown);
				els.set("isBEFTNDown",isBEFTNDown);
				els.set("isRTGSDown",isRTGSDown);
			}
			if(data.code == "RTGS" && (data.subTransactionType == "REGISTERED" || data.subTransactionType == "BOTH")) {
				var isNPSBDown = els.get("isNPSBDown");
				var isBEFTNDown = els.get("isBEFTNDown");
				var isRTGSDown = "Y";
				els.set("isNPSBDown",isNPSBDown);
				els.set("isBEFTNDown",isBEFTNDown);
				els.set("isRTGSDown",isRTGSDown);
			}
			
			if((data.subTransactionType == "REGISTERED" || data.subTransactionType == "BOTH")) {
				els.set("isRegisteredOrBoth","Y");
			} 	
		});
	}
	console.log(els.get("isNPSBDown"));
	console.log(els.get("isBEFTNDown"));
	console.log(els.get("isRTGSDown"));
	
%>
<!--Appwrapper Starts Here-->
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
			<% if(els.get("isManageBene")== "true") { %>
				<a href="#/otherselectbene" class="bacArr">
			<% } else if(els.get("isManageBene")== "false") { %>
				<a href="#/otherbankselectbeneficiary" class="bacArr">
			<% } %>
				<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p4"><%-$.i18n.t('app.transferss.paymentdetails')%><p class="small"><%-$.i18n.t('app.transferss.paymentran')%></p></h4>	
		</div>
		<div class="headerRight">
			<span class="step-badge">2/3</span>
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
		<ul class="step-progress">
			<li class="done"></li>
           		<li  class="done"></li>
			<li></li>
  		</ul>	
	</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						    <section class="content" id="otherBank">
        <form method="post" action="#">
            <div class="media payAcc">
                <div class="media-left">
                    <img src="images/common/user_default1.png" class="img2x img-circle" />
                </div>
                <div class="media-body">
                    <p><%- selectedAccountDTO.firstName%></p>
                    <p class="small text-primary"><%- selectedAccountDTO.accountNumber%></p>
		   	 		<p class="text-muted small"><%- selectedAccountDTO.bankName%></p>
                    <p class="text-right small">
                        <a href="#/otherbenehistory" class="text-link">
                            <span class="menu_icon ico-xss histry"></span>
                            <small><%-$.i18n.t('app.transferss.viewhistory')%></small>
                        </a>
                    </p>
                </div>
            </div>
            <br/>
            <% if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
            	<% if(els.get("isRegisteredOrBoth") == "Y") { %>
	            	<div class="alertCotainer alert alert-info small">
			            <!--<div class="alertLeft top"><i class="fa fa-info-circle" aria-hidden="true"></i></div>-->
			            <div class="alertRight">
			                 <!--<h5>Temporary unavailability of Service</h5>-->
			            	<div id="notificationMessage"></div>
				        </div>
					</div>
            	<% } %>
		    <% } %>
			<label><%-$.i18n.t('app.transferss.transferchannel')%></label><i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" data-toggle="modal" data-target="#transferchannel"></i>
            <div class="form-group">
					<div class="row">
					<%if(selectedAccountDTO.channelIndicator == "NPSB") { %>
						<div class="col-xs-4">
							<label class="radio-label trans_label">
								<%if(selectedAccountDTO.channelIndicator == "NPSB") { %>
									<input type="radio" name="transfer" class="transType" id="npsb" value="npsb" checked><%-$.i18n.t('app.transfer.managebeneficiary.npsb')%>
								<% } else { %>
									<input type="radio" name="transfer" class="transType" id="npsb" value="npsb"><%-$.i18n.t('app.transfer.managebeneficiary.npsb')%>
								<% } %>
								<span class="checkmark"></span>
							</label>
						</div>
					<% } else { %>
						<% if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
						 	<% if(els.get("isNPSBDown") == "N") { %>
						 		<% if(selectedAccountDTO.npsb_allowed_flag == "Y") { %>
									<div class="col-xs-4">
										<label class="radio-label trans_label">
											<input type="radio" name="transfer" class="transType" id="npsb" value="npsb" checked><%-$.i18n.t('app.transfer.managebeneficiary.npsb')%>
											<span class="checkmark"></span>
										</label>
									</div>
								<% } %>
						 	<% } %>
						 	<% if(els.get("isBEFTNDown") == "N") { %>
						 		<% if(selectedAccountDTO.beftn_allowed_flag == "Y") { %>
									<div class="col-xs-4">
										<label class="radio-label trans_label">
											<%if(selectedAccountDTO.npsb_allowed_flag != "Y") { %>
												<input type="radio"  name="transfer" class="transType" id="beftn" value="beftn" checked><%-$.i18n.t('app.transfer.managebeneficiary.befn')%>
											<% } else { %>
												<input type="radio"  name="transfer" class="transType" id="beftn" value="beftn"><%-$.i18n.t('app.transfer.managebeneficiary.befn')%>
											<% } %>
											<span class="checkmark"></span>
										</label>
									</div>
								<% } %>
						 	<% } %>
						 	<% if(els.get("isRTGSDown") == "N") { %>
						 		<% if(selectedAccountDTO.rtgs_allowed_flag == "Y") { %>
									<div class="col-xs-4">
										<label class="radio-label trans_label">
											<%if(selectedAccountDTO.npsb_allowed_flag != "Y" && selectedAccountDTO.beftn_allowed_flag != "Y") { %>
												<input type="radio"  name="transfer" class="transType" id="rtgs" value="rtgs" checked><%-$.i18n.t('app.transfer.managebeneficiary.rtgs')%>
											<% } else { %>
												<input type="radio"  name="transfer" class="transType" id="rtgs" value="rtgs"><%-$.i18n.t('app.transfer.managebeneficiary.rtgs')%>
											<% } %>
											
											<span class="checkmark"></span>
										</label>
									</div>
								<% } %>
						 	<% } %>
						<% } else { %>
							<% if(selectedAccountDTO.npsb_allowed_flag == "Y") { %>
								<div class="col-xs-4">
									<label class="radio-label trans_label">
										<input type="radio" name="transfer" class="transType" id="npsb" value="npsb" checked><%-$.i18n.t('app.transfer.managebeneficiary.npsb')%>
										<span class="checkmark"></span>
									</label>
								</div>
							<% } %>
							<% if(selectedAccountDTO.beftn_allowed_flag == "Y") { %>
								<div class="col-xs-4">
									<label class="radio-label trans_label">
										<%if(selectedAccountDTO.npsb_allowed_flag != "Y") { %>
											<input type="radio"  name="transfer" class="transType" id="beftn" value="beftn" checked><%-$.i18n.t('app.transfer.managebeneficiary.befn')%>
										<% } else { %>
											<input type="radio"  name="transfer" class="transType" id="beftn" value="beftn"><%-$.i18n.t('app.transfer.managebeneficiary.befn')%>
										<% } %>
										<span class="checkmark"></span>
									</label>
								</div>
							<% } %>
							<% if(selectedAccountDTO.rtgs_allowed_flag == "Y") { %>
								<div class="col-xs-4">
									<label class="radio-label trans_label">
										<%if(selectedAccountDTO.npsb_allowed_flag != "Y" && selectedAccountDTO.beftn_allowed_flag != "Y") { %>
											<input type="radio"  name="transfer" class="transType" id="rtgs" value="rtgs" checked><%-$.i18n.t('app.transfer.managebeneficiary.rtgs')%>
										<% } else { %>
											<input type="radio"  name="transfer" class="transType" id="rtgs" value="rtgs"><%-$.i18n.t('app.transfer.managebeneficiary.rtgs')%>
										<% } %>
										
										<span class="checkmark"></span>
									</label>
								</div>
							<% } %>
						<% } %>
					<% } %>
                </div>
            </div>
            <label for="acc"><%-$.i18n.t('app.transferss.payfromaccountcard')%></label>
            <div class="form-group">
                <select name="fromaccnum" id="fromaccnumdiv" onchange="removeVald(this)" class="form-control">
                </select>
                <p class="small" id="availBalDiv">
                    <span class="small text-muted"><%-$.i18n.t('app.transferss.avlbal')%></span>
                    <span id="availbaldiv" class="amt small"></span>
                </p>
             <span class="small" id="error_accdiv" style="color:#a94442"></span> 
            </div>
            <div id="brancknamdive">
            		<label for="benebranch"><%-$.i18n.t('app.transferss.benebranch')%></label>
	 					<div class="form-group">
	         				<p id="otherbenebranch" class="small"></p>
	           			</div>
	 					<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="branchNullError"></p>
		 				</div>
		 				<div id="RoutingDistDiv">
		 					<label><%-$.i18n.t('app.transfer.managebeneficiary.routingnumber')%></label>
		        			<div class="form-group">
		         				<p id="otherroutingNum" class="small"></p>
		           			</div>
		           			<label><%-$.i18n.t('app.transfer.managebeneficiary.district')%></label>
		       				<div class="form-group">
		             			<p id="otherdist" class="small"></p>
		           			</div>
	           			</div>
            </div>
            <!-- / form-group-->
            <div class="row">
            			<div class="col-xs-8 pr5">
                        <label for="amt"><%-$.i18n.t('app.transferss.entertransferamount')%></label>
            			</div>
            			<div class="col-xs-4 pl5">
            				<label for="curr" class="text-right"><%-$.i18n.t('app.transferss.currency')%></label>
            				
            			</div>
            		</div>
            <div class="form-group">
                <div class="row">
                    <div class="col-xs-8 pr5">
				<input type="tel" autocomplete='off'  class="form-control numericlengthcontrol transferAmountClass"  data-type="currency" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" onkeyup="withoutstartZero(event,'paymentAmountdiv')" id="paymentAmountdiv" name="paymentAmount" maxLength="20">
                     <span class="small" id="error_amountdiv" style="color:#a94442"></span> 
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
                                    <a href="javascript:void(0);" class="small text-link" id="tobene_trans_limit"><%-$.i18n.t('app.transferss.transactionlimits')%></a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
        			<div class="col-xs-8 pr5">
        				<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="transAmountErrordiv"></p>
 						</div>
 					</div>
 					<div class="col-xs-4 pl5">
        				<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="currErrordiv"></p>
 						</div>
 					</div>
 					</div>
 			<!--<label for="reason"><%-$.i18n.t('app.transferss.transferreason')%></label>-->
            <!--<div class="form-group">
               <select name="purposetransfer" id="purposetransferdiv" class="form-control">
               <option value=""  selected="selected"><%-$.i18n.t('app.transferss.seltransfer')%></option>
                     <option value="monthlyswap">Monthly Swap</option>
	                 <option value="rent">Rent</option>
	                 <option value="others">Others</option>
                </select>
              <span class="small" id="error_reasondiv" style="color:#a94442"></span>
            </div>-->
            <div id="othersDiv">
				<label for="OA_otherRemarks">Remarks</label>
				<div class="form-group">
					<input type="text" autocomplete='off' class="form-control alphanumericlengthcontrol" id="OBToBene_OtherRemarks" name="OA_otherRemarks" maxLength="16">
				</div>
				<div class="form-group has-error">
					<p class="help-block error-message has-error" style="color:#a94442" id="otherRemaksNullError"></p>
				</div>
			</div>
            <!-- / form-group-->
            <div class="form-group" id="other_tobene_transferDiv"></div>
            <!-- / form-group-->
            <div class="clearfix"></div>
            <div class="alert alert-info small" role="alert" id="otherBankOneTimeShortNotesDiv" style="display:none;">
                <small>
				   <i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.transferss.msg1note')%>
				   <div id="otherToBeneNPSBShortNotesDiv"></div>
				   <!--<ul id="npsbTonotes" style="display:none; margin-left:-27px;">
					 <li><%-$.i18n.t('app.transferss.nbspmsgnote')%></li>
				   </ul>-->
				   <div id="otherToBeneBEFTNShortNotesDiv"></div>
				   <!--<ul id="beftnTonotes" style="display:none; margin-left:-27px;">
					 <li><%-$.i18n.t('app.transferss.beftnmsgnote1')%></li>
					 <li><%-$.i18n.t('app.transferss.beftnmsgnote2')%></li>
				   </ul>-->
				   <div id="otherToBeneRTGSShortNotesDiv"></div>
				   <!--<ul id="rtgsTonotes" style="display:none; margin-left:-27px;">
					 <li><%-$.i18n.t('app.transferss.beftnmsgnote1')%></li>
					 <li><%-$.i18n.t('app.transferss.beftnmsgnote2')%></li>
				   </ul>-->
				</small>
            </div>
            <div class="form-group">
                <div class="custRadio_pass custRadio_medium">
                    <!--<div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="paymenttype" id="Other_paynowdiv" value="otherpaynow" checked>
                                
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
                                        <span class="menu_icon ico-xs payNow"></span>
                                        <span class="small"><%-$.i18n.t('app.transferss.paynow')%></span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>-->
                    <!--<div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="paymenttype" id="Other_paylaterdiv" value="otherpaylater">
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
                                        <span class="menu_icon ico-xs payLater"></span>
                                        <span class="small"><%-$.i18n.t('app.transferss.paylater')%></span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="paymenttype" id="Other_repeatpaydiv" value="otherrepeatPay">
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
                                        <span class="menu_icon ico-xs schedulePay"></span>
                                        <span class="small"><%-$.i18n.t('app.transferss.repeat')%></span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>-->
                </div>
            </div>
            <!-- / form-group-->
            <div id="otherpayLater" name="payLater" style="display:none;">
                <div class="form-group">
                    <label for="pdate"><%-$.i18n.t('app.transferss.paymentdate')%></label>
                    <input name="payDate" id="payDatediv" type="date" class="form-control">
                </div>
             <span class="small" id="error_greaterdatediv" style="color:#a94442"></span> 
                <!-- / form-group-->
            </div>
            <div id="otherrepeatPay" style="display:none;">
                <div class="form-group">
                    <label for="sdate"><%-$.i18n.t('app.transferss.startdate')%></label>
                    <input id="startDatediv"  name="sdate" type="date" class="form-control">
           
						 <div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="errorstartdatediv"></p>
						</div>    
</div>
                <!-- / form-group-->
                <div class="form-group">
                    <label for="fre"><%-$.i18n.t('app.transferss.freq')%></label>
                    <select  name="freqList" id="freqListdiv" class="form-control">
                    <option value=""  selected="selected"><%-$.i18n.t('app.transferss.selfreq')%></option>                   
					<option value="">Select a repeat frequency</option>
        			<option value="daily">Daily</option>
        			<option value="weekly">Weekly</option>
            		<option value="monthly">Monthly</option>
            		<option value="quaterly">Quarterly</option>
            		<option value="semiAnnually">Semi-Annually</option>
            		<option value="Annually">Annually</option>
                    </select>
					 <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="errorfrrequencydiv"></p>
					</div>
                </div>
                <!-- / form-group-->
                <div class="form-group">
                    <label for="not"><%-$.i18n.t('app.transferss.numberoftimes')%></label>
                   <select name="nooftimes" id="nooftimesdiv" class="form-control">
                     <option value=""  selected="selected"><%-$.i18n.t('app.transferss.seltnumtim')%></option>                
 						<option>3</option>
                        <option>6</option>
                        <option>9</option>
                        <option>12</option>
                    </select>
					 <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="errornoftimesdiv"></p>
					</div> 
                </div>
                <!-- / form-group-->
            </div>
            <div class="clearfix"></div>
            <div class="form-group">
		              <label class="check-label">
		                <input type="checkbox" name="transfer" id="termsand"> I agree to the <a href="javascript:void(0);" id="otherBankToBeneTandCPopup">Terms and Conditions</a>
		                <span class="checkmark1"></span>
		              </label>
		              </div>
		               <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="tandcErr"></p>
					</div>
            <div class="row">
                <div class="col-xs-6 pr5">
                    <button type="button" id="cancelbtndiv" class="btn btn-default btn-block" ><%-$.i18n.t('app.transferss.cancel')%></button>
                </div>
                <div class="col-xs-6 pl5">
                    <button id="confirmbtndiv" type="button" class="btn btn-primary btn-block"><%-$.i18n.t('app.transferss.confirm')%></button>
                </div>
            </div>
        </form>
    </section>
    <!-- Modal -->
    <div id="termsAndCondPopup"></div>
<div class="modal fade modernPOP" id="TransactionLimitdiv" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
											<span class="amt small" id="toBeneMinAmount"></span>
										</p>
									</div>
									<div class="col-xs-6">
										<p>
											<span class="small"><%-$.i18n.t('app.transferss.dailylimit')%></span>
											<br>
											<span class="amt small" id="toBeneDailyLimit"></span>
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
											<span class="amt small" id="toBenePerTransLimit"></span>
										</p>
									</div>
									<div class="col-xs-6">
										<p>
										<span class="small"><%-$.i18n.t('app.transferss.availabletransfercount')%></span>
										<br>
										<span class="amt small" id="toBeneDailyAvailCount"></span>
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
											<span class="amt small" id="toBeneMonthlyAvailLimit">
												
											</span>
										</p>
									</div>
									<div class="col-xs-6">
										 <p>
										<span class="small"><%-$.i18n.t('app.transferss.monthavalcount')%></span>
										<br>
										<span class="amt small" id="toBeneMonthlyAvailCount">
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
    <!-- / modal-->

    <!-- Modal -->
    <div class="modal fade modernPOP" id="transferchannel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <form method="post" action="#">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel">Transfer Channel</h4>
                    </div>
                      <div class="modal-body">
                        <h4> Instant Transfer (NPSB) </h4>
                        <ul style="margin-left:-27px;">
	                        <li>Instant Transfer(NPSB) is generally use for instant fund transfers.</li>
	                        <li>Fees not required for Internet Banking Fund Transfer transactions.</li>
                        </ul>
                        <h4> Regular Transfer (BEFTN) </h4>
                        <ul style="margin-left:-27px;">
	                        <li>Regular Transfer (BEFTN) is generally use for regular fund transfers.</li>
	                        <li>Regular Transfer (BEFTN) system provides fast, convenient, reliable and secure domestic payment and collection of funds.</li>
	                        <li>Fees not required.</li>
                        </ul>
                        <h4>High Value Transfer (RTGS)</h4>
                        <ul style="margin-left:-27px;">
                        <li>High Value Transfer (RTGS) is generally use for large-value interbank funds transfers & transactions are settled as soon as they are executed.</li>
                        <li>Safe, secured and efficient interbank payment system.</li>
                        </ul>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default btn-block" data-dismiss="modal">Ok</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- / modal-->	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
<script>
var r={'special':/[\W]/g}
function valid(o,w)
{
o.value = o.value.replace(r[w],'');
}
</script>
<script>
var trandateDate = new Date();
var d = trandateDate.getDate();
var m = trandateDate.getMonth()+1;
var y = trandateDate.getFullYear();
//var myDate = '' +  (m <= 9 ? '0' + m : m) + '/'+ (d <= 9 ? '0' + d : d) + '/' + y;
var myDate = '' +  (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;
//$("#payDate").val(myDate);	


function removeVald(selected){
console.log(selected.value)
if(!isNull(selected.value)){
//$("#error_accdiv").next().remove();
//$("#error_accdiv").html("");
$(".help-inline").first().html("");
}

}
</script>
<script>  
	(function ($){
		$.fn.inputlengthnameval=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
				var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 ";
				var allowedaraTest =/[\u0600-\u06FF]/;					
					var orignalValue=$(this).val();
				
					 for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedTest.indexOf(atchar) != -1){
						}else if(allowedaraTest.test(atchar)){
						}else{
							var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;
						}
					}
					/*for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedaraTest.test(atchar)){
						}else{
						var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;
						}
					}*/
					 $(this).val(orignalValue);
	            	 if($(this).val().length>makelength &&  e.keyCode != '8' && e.keyCode != '46' || e.keyCode == '32'){
	            		var values=$(this).val();
						if(e.keyCode != '32') {
			            	values=values.substring(0, values.length - 1);
				      	}
	           			$(this).val(values).focus();
	              		e.preventDefault();
	            	}
	     		});
	   		});
		};
	}(jQuery));
	$('.lenthcontrolnameval').inputlengthnameval();
</script> 

 <script>
      $(document).ready(function()
      {
       $(".payNow_block, .payLater_block, .rePeat_block").hide();

       $(".payNow").click(function()
	   {
		$(".payNow_block").show();
		$(".payLater_block, .rePeat_block").hide();
		$("#paydatehide").hide();
  		$("#sirepeat").hide();
		});

		$(".payLater").click(function()		  
		  {
		$(".payLater_block").show();
		$(".payNow_block, .rePeat_block").hide();
		$("#paydatehide").show();
  		$("#sirepeat").hide();
		});
		  
		$(".rePeat").click(function()		  
		  {
		$(".rePeat_block").show();
		$(".payNow_block, .payLater_block").hide();
		$("#paydatehide").hide();
  		$("#sirepeat").show();
		});		  
      });
      </script>
      <script>
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
     $.fn.inputalphanumericlength=function() {
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
$('.numericlengthcontrol').inputalphanumericlength();
</script>
<script>
	$(document).ready(function(){
		
	});
</script>


<script>

// Jquery Dependency

$("input[data-type='currency']").on({
    keyup: function() {
      formatCurrency($(this));
    }
});





</script>

