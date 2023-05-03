<%
    var els = new EncryptedLocalStorage('secret'); 
	var ccListArray = "";
	var pcListArray = "";
	var dcListArray = "";
    var myaccounts = getAccountDTO(); 
	var dcListDTO = getDebitCardDTO();
	var ccListDTO = getCreditCardDTO();
	var pcListDTO = getPrepaidCardDTO();

	var qrPaymentMode = els.get("qrPaymentMode");
	
	if(!isNull(ccListDTO)) {
		ccListArray = ccListDTO.filter(function(array) {
			return (array.merchantType != "" && array.qrflag == "Y");	
			
		});
	}	
	
	if(!isNull(pcListDTO)) {
		pcListArray = pcListDTO.filter(function(array) {
			return (array.merchantType != "" && array.qrflag == "Y");
			
		});
	}
	
	if(!isNull(dcListDTO)) {
		dcListArray = dcListDTO.filter(function(array) {
			return (array.merchantType != "" && array.qrflag == "Y");
			
		});
	}

	if(isNull(ccListArray) && isNull(pcListArray) && isNull(dcListArray)) {
		els.set("isAllThreeDTONull","true");
	}
	
	var minimumAmount = els.get("minAmountPerTransaction");
	var dailylimit = els.get("dailyAvailableLimit");
	var monthlylimit = els.get("monthlyTransactionLimit");
	var pertranslimit = els.get("maxAmountPerTransaction");
	var dailyAvailableCount = els.get("dailyAvailableCount");
	var dailyTransactionCount = els.get("dailyTransactionCount");
	var monthlyAvailableLimit = els.get("monthlyAvailableLimit");
	var monthlyAvailableCount = els.get("monthlyAvailableCount");
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
            <a href="#/wealth" class="bacArr">
            <i class="fa fa-angle-left" aria-hidden="true"></i>
            </a>
        </div>
        <div class="headerMiddle">
            <h4 class="p10"><%-$.i18n.t('app.qrcode.qrpaymentdetails')%></h4>
        </div>
        <div class="headerRight">           
        </div>
    </header>
    <div class="bodywrapper">
        <div class="contentwrap">
            <section class="content">
				<form>    
					<div class="media payAcc">
						<div class="media-left">
							<span class="MerchantLogo"></span>
						</div>
						<div class="media-body">
							<p><%- els.get("merName")%></p>
							<p class="small">
							<span class="text-muted small"><%-$.i18n.t('app.qrcode.merchantCategoryCode')%> : </span>
							<span class="text-primary"><%-els.get("merCategoryCode")%></span>
							</p>
							<p class="small text-primary"><%-els.get("merCity")%></p>
							<p class="text-right">
		                        <button class="btn btn-default btn-sm" type="button" data-toggle="modal" data-target="#merchant_detail"><%-$.i18n.t('app.qrcode.moredetails')%></button>
		                    </p>
						</div>
					</div>
					<br/>
					
					<div class="form-group">
						<div class="row">
			                <div class="col-xs-5 pr5">
			                   <label class="m0 mt10" for="qrscan_amount"><%-$.i18n.t('app.qrcode.entertransferamount')%></label>
			                </div>
			                <% if(isNull(els.get("txnAmt"))) { %>
								<div class="col-xs-7 pl5">
									<input id="qrscan_amount" autocomplete='off' type="tel" data-type="currency" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" onkeyup="withoutstartZero(event,'qrscan_amount')" class="form-control numericlengthcontrol decimalClass text-right transferAmountClass" maxlength="7" size="7">
								</div>
							<% } else { %>
								<div class="col-xs-7 pl5">
									<input id="qrscan_amount" autocomplete='off' type="tel" data-type="currency" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" onkeyup="withoutstartZero(event,'qrscan_amount')" class="form-control numericlengthcontrol decimalClass text-right transferAmountClass" maxlength="7" size="7" value="<%-checkAmount($.formatNumber(els.get("txnAmt"), {format:"#,###.00", locale:"us"}))%>" disabled>
								</div>
							<% } %>
			            </div>
						<div class="form-group has-error">
								<p class="help-block error-message has-error" style="color:#a94442" id="transAmountError"></p>
	 						</div>
						<div class="row" id="qr_tips">
			                <div class="col-xs-5 pr5">
			                    <label class="m0" id="qrtips_txt">Tip</label>
			                </div>
			                <div class="col-xs-7 pl5">                    
			                    <input type="tel" autocomplete='off' class="form-control text-right m0 qr_value numericlengthcontrol transferAmountClass" data-type="currency" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" onkeyup="withoutstartZero(event,'qrtips_amount')" id="qrtips_amount" value="">                    
			                </div>
			            </div>
										
						<div class="form-group has-error">
								<p class="help-block error-message has-error" style="color:#a94442" id="tipsAmountError"></p>
	 						</div>
						
			    		
		                <div class="row qr_total">
		                    <div class="col-xs-6">
		                        <p class="small qr_total_left"><%-$.i18n.t('app.qrcode.paymentamount')%></p>
		                    </div>
		                    <div class="col-xs-6 text-right">
		                        <p class="amt m0" id="qrtotamt">
		                            
		                        </p>
		                    </div>
						</div>
							
		    		<div class="form-group">
						<label for="crdaccid"><%-$.i18n.t('app.qrcode.payfromcard')%></label>
						<a style="outline:none;" href="javascript:void(0)" class="acc_link" id="crdaccid"  data-toggle="modal" data-target="#card_account"><div id="seltpayval" style="width:90%;height:5px;"><%-$.i18n.t('app.qrcode.selctcard')%> </div><span class="glyphicon glyphicon-triangle-bottom pull-right" aria-hidden="true"></span></a> 
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="fromAcntNumErr"></p>
	 					</div>
						<p class="small m0" id="qravailBalDiv">
			                <span class="small text-muted"><%-$.i18n.t('app.qrcode.avlbal')%></span>
			                <span id="qravailbalance" class="amt small"> </span>
			            </p> 
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="qrerror_acc"></p>
	 				</div>
					<div class="clearfix"></div>
					<% if(els.get("qrCodeMsg") == "BLK_QR") { %>
						<div class="alert alert-info small" role="alert">
							<small>
								<i class="fa fa-info-circle" aria-hidden="true"></i> 
								<%-$.i18n.t('app.transferss.msg1note')%>
								<div><%-els.get("qrEnableFlg")%></div>
							</small>
						</div>	
					<% } %>
					</div>
					<% if(els.get("addBillNumberFlg") == "E") { %>
						<div class="form-group">
							<label><%-$.i18n.t('app.qrcode.billnumber')%></label>
							<input type="text" class="form-control alphanumericlengthcontrol qrAddInfo" maxlength="25" id="qr_bill_number">
						</div>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="qr_bill_number_err"></p>
						</div>
					<% } %>
		            
					<% if(!isNull(els.get("addMobNo")) && els.get("addMobNo") != "***") { %>
						<div class="row">
		                    <div class="col-xs-6">
		                        <p class="small qr_total_left"><%-$.i18n.t('app.qrcode.mobilenumber')%></p>
		                    </div>
		                    <div class="col-xs-6 text-right">
		                        <p class="amt m0" style="word-wrap: break-word;"><%-els.get("addMobNo")%></p>
		                    </div>
						</div>
                    <%}%>
					
					<% if(!isNull(els.get("qrEmail"))) { %>
						<div class="row">
		                    <div class="col-xs-6">
		                        <p class="small qr_total_left"><%-$.i18n.t('app.qrcode.email')%></p>
		                    </div>
		                    <div class="col-xs-6 text-right">
		                        <p class="amt m0" style="word-wrap: break-word;"><%-els.get("qrEmail")%></p>
		                    </div>
						</div>
					<%}%>
					
					<% if(!isNull(els.get("qrAddress"))) { %>
						<div class="row">
		                    <div class="col-xs-6">
		                        <p class="small qr_total_left"><%-$.i18n.t('app.qrcode.address')%></p>
		                    </div>
		                    <div class="col-xs-6 text-right">
		                        <p class="amt m0" style="word-wrap: break-word;"><%-els.get("qrAddress")%></p>
		                    </div>
						</div>
					<%}%>
							
					<% if(!isNull(els.get("addBillNumber")) && els.get("addBillNumber") != "***") { %>
						<div class="row">
		                    <div class="col-xs-6">
		                        <p class="small qr_total_left"><%-$.i18n.t('app.qrcode.billnumber')%></p>
		                    </div>
		                    <div class="col-xs-6 text-right">
		                        <p class="amt m0" style="word-wrap: break-word;"><%-els.get("addBillNumber")%></p>
		                    </div>
						</div>
					<%}%>
					<% if(els.get("addMobNoFlg") == "E") { %>
						<div class="form-group">
							<label><%-$.i18n.t('app.qrcode.mobilenumber')%></label>
							<input type="text" class="form-control alphanumericlengthcontrol qrAddInfo" maxlength="25" id="qr_mobile_number">
						</div>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="qr_mobile_number_err"></p>
						</div>
					<% } %>
					
					<% if(els.get("addStoreLabelFlg") == "E") { %>
						<div class="form-group">
							<label><%-$.i18n.t('app.qrcode.storelabel')%></label>
							<input type="text" class="form-control alphanumericlengthcontrol qrAddInfo" maxlength="25" id="qr_store_label">
						</div>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="qr_store_label_err"></p>
						</div>
					<% } %>
					
					<% if(els.get("addLoyalNoFlg") == "E") { %>
						<div class="form-group">
							<label><%-$.i18n.t('app.qrcode.loyalitynumber')%></label>
							<input type="text" class="form-control alphanumericlengthcontrol qrAddInfo" maxlength="25" id="qr_loyality">
						</div>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="qr_loyality_err"></p>
						</div>
					<% } %>
					
					<% if(els.get("addRefNoFlg") == "E") { %>
						<div class="form-group">
							<label><%-$.i18n.t('app.qrcode.referencelabel')%></label>
							<input type="text" class="form-control alphanumericlengthcontrol qrAddInfo" maxlength="25" id="qr_reference">
						</div>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="qr_reference_err"></p>
						</div>
					<% } %>
					
					<% if(els.get("addCustomerLabelFlg") == "E") { %>
						<div class="form-group">
							<label><%-$.i18n.t('app.qrcode.customerlabel')%></label>
							<input type="text" class="form-control alphanumericlengthcontrol qrAddInfo" maxlength="25" id="qr_customer_label">
						</div>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="qr_customer_label_err"></p>
						</div>
					<% } %>
					
					<% if(els.get("terminalLabelFlg") == "E") { %>
						<div class="form-group">
							<label><%-$.i18n.t('app.qrcode.terminalnumber')%></label>
							<input type="text" class="form-control alphanumericlengthcontrol qrAddInfo" maxlength="25" id="qr_terminal_number">
						</div>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="qr_terminal_number_err"></p>
						</div>
					<% } %>
					
					<% if(els.get("purposeOfTransactionaFlg") == "E") { %>
						<div class="form-group">
							<label><%-$.i18n.t('app.qrcode.purposeoftransaction')%></label>
							<input type="text" class="form-control alphanumericlengthcontrol qrAddInfo" maxlength="25" id="qr_purpose_transfer">
						</div>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="qr_purpose_transfer_err"></p>
						</div>
					<% } %>
					<div class="clearfix"></div>
					<div id="qrCardPinDiv" class="mt10" style="margin-bottom:20px;"></div>
					<!-- / form-group-->
					<div class="form-group" id="qrscan_auth_mode"></div>
					<!-- / form-group-->
					<div class="clearfix"></div>
					
					<div class="row">
						<div class="col-xs-6 pr5">
							<button type="button" class="btn btn-default btn-block" id="qrscan_cancel"><%-$.i18n.t('app.qrcode.btncancel')%></button>
						</div>
						<div class="col-xs-6 pl5">
							<button type="button" class="btn btn-primary btn-block" id="qrscan_confirm"><%-$.i18n.t('app.qrcode.btnconfirm')%></button>
						</div>
					</div>
				</form>
			</section>
        </div>
        <!-- Modal -->
    <div class="modal fade trans_popup" id="merchant_detail" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="qr_details">
                      <h4><%-$.i18n.t('app.qrcode.merchantdetails')%></h4>
                      <form>

                        <ul class="list-unstyled list-nobrd">
                            <li class="list-group-item">
                                <label><%-$.i18n.t('app.qrcode.merchantname')%></label>
                                <p><%- els.get("merName")%></p>
                            </li>
                            <li class="list-group-item">
                                <label><%-$.i18n.t('app.qrcode.merchantCategoryCode')%></label>
                                <p><%-els.get("merCategoryCode")%></p>
                            </li>
							<li class="list-group-item">
                                <label><%-$.i18n.t('app.qrcode.merchantid')%></label>
								<% if(!isNull(els.get("qrmerchantPan"))) { %>
									<p class="small"><%-$.i18n.t('app.qrcode.npsblabel')%> : <%-els.get("qrmerchantPan")%></p>
								<% } %>
								<% if(!isNull(els.get("visaCard2"))) { %>
									<p class="small"><%-$.i18n.t('app.qrcode.visalabel')%> : <%-els.get("visaCard2")%></p>
								<% } %>
								<% if(!isNull(els.get("visaCard3"))) { %>
									<p class="small"><%-$.i18n.t('app.qrcode.visalabel')%> : <%-els.get("visaCard3")%></p>
								<% } %>
								<% if(!isNull(els.get("masterCard4"))) { %>
									<p class="small"><%-$.i18n.t('app.qrcode.masterlabel')%> : <%-els.get("masterCard4")%></p>
								<% } %>
								<% if(!isNull(els.get("masterCard5"))) { %>
									<p class="small"><%-$.i18n.t('app.qrcode.masterlabel')%> : <%-els.get("masterCard5")%></p>
								<% } %>
                            </li>
							<!--<% if(!isNull(els.get("addBillNumber")) && els.get("addBillNumber") != "***") { %>
								<li class="list-group-item">
									<label><%-$.i18n.t('app.qrcode.billnumber')%></label>
									<p><%-els.get("addBillNumber")%></p>
								</li>
                            <%}%>-->
                            <% if(!isNull(els.get("addMobNo")) && els.get("addMobNo") != "***") { %>
								<li class="list-group-item">
									<label><%-$.i18n.t('app.qrcode.mobilenumber')%></label>
									<p><%-els.get("addMobNo")%></p>
								</li>
                            <%}%>
							<% if(!isNull(els.get("qrEmail"))) { %>
								<li class="list-group-item">
									<label><%-$.i18n.t('app.qrcode.email')%></label>
									<p><%-els.get("qrEmail")%></p>
								</li>
                            <%}%>
							<% if(!isNull(els.get("qrAddress"))) { %>
								<li class="list-group-item">
									<label><%-$.i18n.t('app.qrcode.address')%></label>
									<p><%-els.get("qrAddress")%></p>
								</li>
                            <%}%>
							<% if(!isNull(els.get("addStoreLabel")) && els.get("addStoreLabel") != "***") { %>
								<li class="list-group-item">
									<label><%-$.i18n.t('app.qrcode.storelabel')%></label>
									<p><%-els.get("addStoreLabel")%></p>
								</li>
                            <%}%>
							<% if(!isNull(els.get("addLoyalNo")) && els.get("addLoyalNo") != "***") { %>
								<li class="list-group-item">
									<label><%-$.i18n.t('app.qrcode.loyalitynumber')%></label>
									<p><%-els.get("addLoyalNo")%></p>
								</li>
                            <%}%>
							<% if(!isNull(els.get("addRefNo")) && els.get("addRefNo") != "***") { %>
								<li class="list-group-item">
									<label><%-$.i18n.t('app.qrcode.referencelabel')%></label>
									<p><%-els.get("addRefNo")%></p>
								</li>
                            <%}%>
							<% if(!isNull(els.get("addCustomerLabel")) && els.get("addCustomerLabel") != "***") { %>
								<li class="list-group-item">
									<label><%-$.i18n.t('app.qrcode.customerlabel')%></label>
									<p><%-els.get("addCustomerLabel")%></p>
								</li>
                            <%}%>
                            <% if(!isNull(els.get("terminalLabel")) && els.get("terminalLabel") != "***") { %>
								<li class="list-group-item">
									<label><%-$.i18n.t('app.qrcode.terminalnumber')%></label>
									<p><%-els.get("terminalLabel")%></p>
								</li>
                            <%}%>
                            <% if(!isNull(els.get("purposeOfTransactiona")) && els.get("purposeOfTransactiona") != "***") { %>
								<li class="list-group-item">
									<label><%-$.i18n.t('app.qrcode.purposeoftransaction')%></label>
									<p><%-els.get("purposeOfTransactiona")%></p>
								</li>
                             <%}%>                    
                        </ul>

                      </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal-->
    
    <!-- Modal -->
    <div class="modal fade trans_popup" id="card_account" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="qr_details">
                      <h4>Select Card</h4>
                      
			            <div class="qr_acc_outer">
			              <% if(!isNull(dcListArray)) { %>
			                <h4><%-$.i18n.t('app.qrcode.debitcard')%></h4>
			                <ul class="list-unstyled" >
			                   
			                    <%_.each(dcListArray,function(data,index){%>
			                    
			                    <li class="list-group-item acctypenum" acctype="DC" frName="<%-data.productName%>" merchantType="<%-data.merchantType%>" value="<%- data.id%>" Accide="<%- data.id%>" id="dc-<%- index%>" data="<%- data.currencyCode%>">
			                           <label class="radio-label">
			                            <div class="row">
			                                <div class="col-xs-2 first-col">
			                                 <% if(data.merchantType == "VISA") { %>
			                                    <span class="menu_icon visa"></span>
			                                 <% } else { %>   
			                                 	 <span class="menu_icon mastercard"></span>
			                                 <%}%>
			                                </div>
			                                <div class="col-xs-10">
			                                    <p class="acc_txt"><%- data.productName%></p>
			                                    <p class="acc_cat"> <%-data.merchantType%> | <span class="selectAccNumber"><%-data.accountNumber%></span></p>
			                                </div>
			                            </div>
			                            <input type="radio" name="transfer"> 
			                            <span class="checkmark"></span>
			                        </label>
			                    </li>
			                    
			                    <%});%>
			                    
			                </ul>
			                <%}%>
			                <% if(!isNull(ccListArray)) { %>
			                <h4><%-$.i18n.t('app.qrcode.creditcard')%></h4>
			                <ul class="list-unstyled">
			                    
			                    <%_.each(ccListArray,function(data,index){%>
			                     
			                    <li class="list-group-item acctypenum" acctype="CC" frName="<%-data.productName%>" merchantType="<%-data.merchantType%>" value="<%- data.id%>" Accide="<%- data.id%>" id="cc-<%- index%>" data="<%- data.currencyCode%>">
			                           <label class="radio-label">
			                            <div class="row">
			                                <div class="col-xs-2 first-col">
			                                 <% if(data.merchantType == "VISA" ) { %>
			                                    <span class="menu_icon visa"></span>
			                                 <% } else { %>   
			                                 	 <span class="menu_icon mastercard"></span>
			                                 <%}%>
			                                </div>
			                                <div class="col-xs-10">
			                                    <p class="acc_txt"><%-data.productName%></p>
			                                    <p class="acc_cat"><%-data.merchantType%> | <span class="selectAccNumber"><%-data.accountNumber%></span></p>
			                                </div>
			                            </div>
			                            <input type="radio" name="transfer"> 
			                            <span class="checkmark"></span>
			                        </label>
			                    </li>
			                    
			                    <%});%>
			                    
			                </ul>
			                <%}%>
			                <% if(!isNull(pcListArray )) { %>
			                 <h4><%-$.i18n.t('app.qrcode.prepaidcard')%></h4>
			                <ul class="list-unstyled">
			                    
			                    <%_.each(pcListArray,function(data,index){%>
			                    
			                    <li class="list-group-item acctypenum" acctype="PC" frName="<%-data.productName%>" merchantType="<%-data.merchantType%>" value="<%- data.id%>" Accide="<%- data.id%>" id="pc-<%- index%>" data="<%- data.currencyCode%>">
			                           <label class="radio-label">
			                            <div class="row">
			                                <div class="col-xs-2 first-col">
			                                 <% if(data.merchantType == "VISA" ) { %>
			                                    <span class="menu_icon visa"></span>
			                                 <% } else { %>   
			                                 	 <span class="menu_icon mastercard"></span>
			                                 <%}%>
			                                </div>
			                                <div class="col-xs-10">
			                                    <p class="acc_txt"><%-data.productName%></p>
			                                    <p class="acc_cat"><%-data.merchantType%> | <span class="selectAccNumber"><%-data.accountNumber%></span></p>
			                                </div>
			                            </div>
			                            <input type="radio" name="transfer"> 
			                            <span class="checkmark"></span>
			                        </label>
			                    </li>
			                     
			                    <%});%>
			                    
			                </ul>
			               <%}%>
			            </div>                      

                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- / modal-->
    
    <!-- Modal -->
		<div class="modal fade modernPOP" id="qr_verify" tabindex="-1" role="dialog" aria-labelledby="qr_myModalLabel">
		<div class="modal-dialog" role="document">
			<form>
				<div class="modal-content">
  					<div class="modal-header">
    					<button type="button" class="close" id="qr_close_btn" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    					<h4 class="modal-title" id="qr_myModalLabel"></h4>
  					</div>
  					<div class="modal-body">
	  					<p class="small" id ="qr_titleAuth"></p>
						<p class="small" id="qr_challengeText"></p>
						<div id="authModeOTPDiv">
							<div class="form-group">
			  					<div class="pasCode text-center">
				  					<div class="form-group">
										<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="qr_otp1" name="otp1" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
										<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="qr_otp2" name="otp2" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
										<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="qr_otp3" name="otp3" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
										<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="qr_otp4" name="otp4" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
										<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="qr_otp5" name="otp5" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
										<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="qr_otp6" name="otp6" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
									</div>
			  					</div>
							</div>
						</div>
						<div id="cardPinOTPDiv">
							<div class="form-group">
			  					<div class="pasCode text-center">
				  					<div class="form-group">
										<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="qr_pin1" name="otp1" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
										<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="qr_pin2" name="otp2" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
										<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="qr_pin3" name="otp3" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
										<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="qr_pin4" name="otp4" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
				  					</div>
			  					</div>
							</div>
						</div>
						<div class="form-group has-error" id="qr_otpNullErrorDiv">
							<p class="help-block error-message" style="color:#a94442; text-align:center;" id="qr_otpNullError"></p>
				 		</div>
						<div class="form-group">
							<div id="OTPcontainer1"></div>
						</div>
						<p class="text-center small">
  							<a href="javascript:void(0);" class="resend_button" id="qr_resend_btn"><%- $.i18n.t('app.registration.rensendotp') %></a>
						</p>
  					</div>
  					<div class="modal-footer">
						<div class="row">
						  <div class="col-xs-6 pr5">
							  <button type="button" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal" id="qr_cancel_btn">Cancel</button>
						  </div>
						  <div class="col-xs-6 pr5">
							 <button type="button" id="qr_verifyOTP" class="btn btn-default btn-block"><%- $.i18n.t('button.registration.verify') %></button>
						  </div>
						</div>
  					</div>
				</div>
  			</form>
		</div>
	</div>
    <!-- / Modal-->	
    <!-- Modal -->
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
    <!-- / modal-->	
    </div>
</div>
<script src="js/library/progressbar.min.js"></script>
<script src="js/libs/bootstrap/bootstrap-pincode-input.js"></script>
<script>
	$(".cardinputs").keyup(function (e) {
	    if (this.value.length == this.maxLength) {
	    	$(this).parent().next().find('.cardinputs').focus();  
	    } else if((e.which == 8 || e.which == 46) && (this.value == "")) {
	    	$(this).parent().prev().find('.cardinputs').focus();  
	    }
	});
	
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
<script>
	(function ($){
		 $.fn.numericlength=function() {
			return this.each(function() {
			  var makelength=$(this).attr("maxlength");
			  $(this).on('keyup',function(e) { 
			  var allowedTest ="1234567890,.";					
			  var orignalValue=$(this).val();
			  for(var i=0;i<orignalValue.length;i++) {
				var atchar = orignalValue[i];
				if(allowedTest.indexOf(atchar) != -1) {
				} else {
					var changeTest = orignalValue.substr(0,i);
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
</script>
<script>
$("input[data-type='currency']").on({
    keyup: function() {
      formatCurrency($(this));
    }
});
</script>
<script>
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
</script>
<script>
$( '.decimalClass' ).on('input', function() {
    var amtval = $(this).val()
        // remove bad characters and multiple points
        .replace(/[^\d.]|\.(?=.*\.)/, '')
        // remove any excess of 5 integer digits
        .replace(/^(\d{7})\d+/, '$1')
        // remove any excess of 2 decimal digits
        .replace(/(\.\d\d).+/, '$1');
    if (amtval !== $(this).val()) {
        // Only if something had to be fixed, update
        $(this).val(amtval);
    }
    var pointPos = amtval.indexOf('.');
    // Determine max size depending on presence of point
    var size = amtval.indexOf('.')>1 ? 9 : 7;
    // Use prop instead of attr
    $('.decimalClass').prop('size',size);
    $('.decimalClass').prop('maxlength',size);
});
</script>
