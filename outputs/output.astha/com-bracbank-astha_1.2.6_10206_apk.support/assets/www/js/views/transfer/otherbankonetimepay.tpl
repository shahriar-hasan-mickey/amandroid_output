<%
	var els = new EncryptedLocalStorage('secret'); 
	var creditCardAccountListDTO = els.get("creditCardAccountList");
	var myaccounts = getAccountDTO(); 
	var prepaidCardAccountListDTO = els.get("prepaidCardAccountList");
	var beneficiaryDTO = els.get("beneficiaryDTO");
	var dailylimit = els.get("dailyAvailableLimit");
	var monthlylimit = els.get("monthlyTransactionLimit");
	var pertranslimit = els.get("maxAmountPerTransaction");
	var BeneBankDTO = els.get("domesticBank");
	var minimumAmount = els.get("minAmountPerTransaction");
	var dailylimit = els.get("dailyAvailableLimit");
	var monthlylimit = els.get("monthlyTransactionLimit");
	var pertranslimit = els.get("maxAmountPerTransaction");
	var dailyAvailableCount = els.get("dailyAvailableCount");
	var dailyTransactionCount = els.get("dailyTransactionCount");
	var monthlyAvailableLimit = els.get("monthlyAvailableLimit");
	var monthlyAvailableCount = els.get("monthlyAvailableCount");
	var downtimeNotification = els.get("downtimeNotification");
	els.set("isNPSBOneOffDown","N");
	els.set("isBEFTNOneOffDown","N");
	els.set("isRTGSOneOffDown","N");
	els.set("isOneOffOrBoth","N");
	if(!isNull(downtimeNotification) && downtimeNotification.length>0) {
		_.each(downtimeNotification,function(data,index){
			if(data.code == "NPSB" && (data.subTransactionType == "ONE-OFF" || data.subTransactionType == "BOTH")) {
				var isNPSBOneOffDown = "Y";
				var isBEFTNOneOffDown = els.get("isBEFTNOneOffDown");
				var isRTGSOneOffDown = els.get("isRTGSOneOffDown");
				els.set("isNPSBOneOffDown",isNPSBOneOffDown);
				els.set("isBEFTNOneOffDown",isBEFTNOneOffDown);
				els.set("isRTGSOneOffDown",isRTGSOneOffDown);
			}
			if(data.code == "BEFTN" && (data.subTransactionType == "ONE-OFF" || data.subTransactionType == "BOTH")) {
				var isNPSBOneOffDown = els.get("isNPSBOneOffDown");
				var isBEFTNOneOffDown = "Y";
				var isRTGSOneOffDown = els.get("isRTGSOneOffDown");
				els.set("isNPSBOneOffDown",isNPSBOneOffDown);
				els.set("isBEFTNOneOffDown",isBEFTNOneOffDown);
				els.set("isRTGSOneOffDown",isRTGSOneOffDown);
			}
			if(data.code == "RTGS" && (data.subTransactionType == "ONE-OFF" || data.subTransactionType == "BOTH")) {
				var isNPSBOneOffDown = els.get("isNPSBOneOffDown");
				var isBEFTNOneOffDown = els.get("isBEFTNOneOffDown");
				var isRTGSOneOffDown = "Y";
				els.set("isNPSBOneOffDown",isNPSBOneOffDown);
				els.set("isBEFTNOneOffDown",isBEFTNOneOffDown);
				els.set("isRTGSOneOffDown",isRTGSOneOffDown);
			}
			
			if((data.subTransactionType == "ONE-OFF" || data.subTransactionType == "BOTH")) {
				els.set("isOneOffOrBoth","Y");
			} 	
		});
	}
	console.log(els.get("isNPSBOneOffDown"));
	console.log(els.get("isBEFTNOneOffDown"));
	console.log(els.get("isRTGSOneOffDown"));
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
			<% if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
				<a href="#/transfer" class="bacArr">
			<% }  else { %>
				<a href="#/otherbankselectbeneficiary" class="bacArr">
			<% } %>
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p4"><%-$.i18n.t('app.transferss.payotherbanks')%><p class="small"><%-$.i18n.t('app.transferss.paymentran')%></p></h4>	
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
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						    <section class="content">
        <form method="post" action="#">
            <div class="logWit small transfer_option">
                <div class="row">
                    <div class="col-xs-6 col-sm-6 pr5">
                         <a href="javascript:void(0);" id="other_bene" class="text-center">
                            <span class="menu_icon ico-xs toBene"></span>
                            <p class="small m0"><%-$.i18n.t('app.transferss.tobene')%></p>
                        </a>
                    </div>
                    <div class="col-xs-6 col-sm-6 pl5">
                        <a href="#/otherbankonetimepay" class="text-center active">
                            <span class="menu_icon ico-xs onetimepay"></span>
                            <p class="small m0"><%-$.i18n.t('app.transferss.onetimepay')%></p>
                        </a>
                    </div>
                </div>
            </div>
            <!-- /logWit -->
             <% if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
            	<% if(els.get("isOneOffOrBoth") == "Y") { %>
	            	<div class="alertCotainer alert alert-info small">
			            <!--<div class="alertLeft top"><i class="fa fa-info-circle" aria-hidden="true"></i></div>-->
			            <div class="alertRight">
			                 <!--<h5>Temporary unavailability of Service</h5>-->
			            	<div id="notificationMessage"></div>
				        </div>
					</div>
            	<% } %>
		    <% } %>
            <div class="form-group">
                <label><%-$.i18n.t('app.transferss.transferchannel')%></label><i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" data-toggle="modal" data-target="#transferchannel"></i>
                <div class="row">
                <% if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
                	<% if(els.get("isNPSBOneOffDown") == "N") { %>
	                    <div class="col-xs-4">
	                        <label class="radio-label trans_label">
	                            <input type="radio" name="transfer" id="npsb" value="npsb" class="transferChannel"> <%-$.i18n.t('app.transfer.managebeneficiary.npsb')%>
	                            <span class="checkmark"></span>
	                        </label>
	                    </div>
                    <% } %>
                	<% if(els.get("isBEFTNOneOffDown") == "N") { %>
	                    <div class="col-xs-4">
	                        <label class="radio-label trans_label">
	                            <input type="radio" name="transfer" id="beftn" value="beftn" class="transferChannel">  <%-$.i18n.t('app.transfer.managebeneficiary.befn')%>
	                            <span class="checkmark"></span>
	                        </label>
	                    </div>
                    <% } %>
                	<% if(els.get("isRTGSOneOffDown") == "N") { %>
	                    <div class="col-xs-4">
	                        <label class="radio-label trans_label">
	                            <input type="radio" name="transfer" value="rtgs" class="transferChannel">  <%-$.i18n.t('app.transfer.managebeneficiary.rtgs')%>
	                            <span class="checkmark"></span>
	                        </label>
	                    </div>
                    <% } %>
                <% } else { %>
                	 <div class="col-xs-4">
                        <label class="radio-label trans_label">
                            <input type="radio" name="transfer" id="npsb" value="npsb" class="transferChannel"> <%-$.i18n.t('app.transfer.managebeneficiary.npsb')%>
                            <span class="checkmark"></span>
                        </label>
                    </div>
                    <div class="col-xs-4">
                        <label class="radio-label trans_label">
                            <input type="radio" name="transfer" id="beftn" value="beftn" class="transferChannel">  <%-$.i18n.t('app.transfer.managebeneficiary.befn')%>
                            <span class="checkmark"></span>
                        </label>
                    </div>
                    <div class="col-xs-4">
                        <label class="radio-label trans_label">
                            <input type="radio" name="transfer" value="rtgs" class="transferChannel">  <%-$.i18n.t('app.transfer.managebeneficiary.rtgs')%>
                            <span class="checkmark"></span>
                        </label>
                    </div>
                <% } %>
                	
                </div>
            </div>
             <label for="acc"><%-$.i18n.t('app.transferss.payfromaccountcard')%></label>
            <div class="form-group">
			<select name="otheronefromaccnum" id="otheronefromaccnum" class="form-control" onchange="removeVald(this)" >
             </select>
              <p class="small" id="availBalDiv">
                    <span class="small text-muted"><%-$.i18n.t('app.transferss.avlbal')%></span>
                    		<span id="otheravailbalance" class="amt small">
                        	<span class="cur"></span>
                    </span>
                </p>
             
         <span class="small" id="error_acc" style="color:#a94442"></span> 
            </div>
            <!-- / form-group-->
            <label><%-$.i18n.t('app.transferss.sebeneficiaryaccounttype')%></label>
            <div class="form-group">
                
                <div class="custRadio_pass custRadio_small">
                    <div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="payaccard" value="account" class="oneTimetype" checked>
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
                                        <span class="menu_icon ico-xs account"></span>
                                        <span class="small"><%-$.i18n.t('app.transferss.account')%></span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                    <div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="payaccard" value="creditcard" class="oneTimetype">
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
                                        <span class="menu_icon ico-xs credit"></span>
                                        <span class="small"><%-$.i18n.t('app.transferss.creditcard')%></span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <label for="acc" id="otherBeneTypeLabel"></label>
            <div class="form-group">
             	<input type="text" name="othertoownaccnumber" id="otheroneaccnumber" maxlength="17" class="form-control inputlengthcontrol">
 			</div>
 			<div class="form-group has-error">
				<p class="help-block error-message has-error" style="color:#a94442" id="accNumError"></p>
 			</div>
 			<label for="accName" id="otherBeneNameLabel"></label>
   			<div class="form-group">
     			<input type="text" autocomplete='off'  id="OB_AccName" name="accName" class="form-control alphanumericlengthcontrol" maxlength="22">
			</div>
			<div class="form-group has-error">
				<p class="help-block error-message has-error" style="color:#a94442" id="accNameError"></p>
			</div>
			
            <!-- / form-group-->
            <label for="acc"><%-$.i18n.t('app.transferss.beneficiarybank')%></label>
            <div class="form-group">
   				<div class="input-group search">
	                <input type="text" class="form-control" id="otherBankName" disabled="true" style="text-indent:10px;">
	                <span class="input-group-btn">
	                	<button class="btn btn-default search_b onetimepopupSearch" id="bankPopup" type="button">
	                    	<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
	                  	</button>
                	</span>
              	</div>
   			</div>
            <div class="form-group has-error">
				<p class="help-block error-message has-error" style="color:#a94442" id="bankNullError"></p>
 			</div>
            <!-- / form-group-->
            <div id="bankInfo">
            	<label for="benebranch">Beneficiary Branch</label>
       			<div class="form-group">
    				<div class="input-group search">
		                <input type="text" class="form-control" id="otherBranchName" disabled="true">
		                <span class="input-group-btn">
		                	<button class="btn btn-default search_b onetimepopupSearch" id="branchPopup" type="button" data-toggle="modal">
		                    	<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
		                  	</button>
	                	</span>
	              	</div>
				</div> 
				<div class="form-group has-error">
					<p class="help-block error-message has-error" style="color:#a94442" id="branchNullError"></p>
 				</div>
 				<div id="otherRoutingDistDiv">
					<label><%-$.i18n.t('app.transfer.managebeneficiary.routingnumber')%></label>
	    			<div class="form-group">
	     				<p id="OB_routingNum" class="small"></p>
	       			</div>
	       			<label>District</label>
	   				<div class="form-group">
	         			<p id="OB_dist" class="small"></p>
	       			</div>
       			</div>
            </div>
			<div class="form-group has-error">
				<p class="help-block error-message has-error" style="color:#a94442" id="routingnum_err"></p>
			</div>
            <div class="row">
    			<div class="col-xs-8 pr5">
    			<div>
                <label for="amt"><%-$.i18n.t('app.transferss.transferamount')%></label>
    				 </div>
    			</div>
    			<div class="col-xs-4 pl5">
    				<label for="currency"><%-$.i18n.t('app.transferss.currency')%></label> 
    			</div>
    		</div>
            <div class="form-group">
                <div class="row">
                    <div class="col-xs-8 pr5">
						<input type="tel" autocomplete='off'   class="form-control numericlengthcontrol transferAmountClass" data-type="currency" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" onkeyup="withoutstartZero(event,'otherpaymentAmount')" id="otherpaymentAmount" name="paymentAmount" maxLength="20">
                    </div>
                    <div class="col-xs-4 pl5">
                         <select name="currency" id="currency" class="form-control">
                            <option val="BDT">BDT</option>
                        </select>
                    </div>
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-5">
                                <p class="small">
                                    <a href="javascript:void(0);" class="small text-link" id="oneTime_trans_limit">Transaction Limits</a>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
				<div class="col-xs-8 pr5">
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="transAmountError"></p>
					</div>
				</div>
				<div class="col-xs-4 pl5">
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="currError"></p>
					</div>
				</div>
			</div>
            <!--<label for="reason"><%-$.i18n.t('app.transferss.transferreason')%></label>-->
            <!--<div class="form-group">
			<select name="purposetransfer" id="otherpurposetransferdiv" class="form-control">
               <option value=""  selected="selected"><%-$.i18n.t('app.transferss.seltransfer')%></option>
                     <option value="monthlyswap">Monthly Swap</option>
	                 <option value="rent">Rent</option>
	                 <option value="others">Others</option>
                </select>
              <span class="small" id="error_reasondiv" style="color:#a94442"></span>
                      </div>-->
              <div id="othersDiv">
				<label for="remarks">Remarks</label>
				<div class="form-group">
					<input type="text" autocomplete='off'  class="form-control alphanumericlengthcontrol" id="OBOneOff_OtherRemarks" name="remarks" maxLength="16">
				</div>
				<div class="form-group has-error">
					<p class="help-block error-message has-error" style="color:#a94442" id="otherRemaksNullError"></p>
				</div>
			</div>
            <div class="form-group" id="other_onetime_transferDiv"></div>
            <!-- / form-group-->
            <div class="clearfix"></div>
            <div class="clearfix"></div>
            <div class="alert alert-info small" role="alert" id="otherBankToBeneShortNotesDiv" style="display:none;">
                <small>
				   <i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.transferss.msg1note')%>
				    <div id="otherOneOffNPSBShortNotesDiv"></div>
				    <div id="otherOneOffBEFTNShortNotesDiv"></div>
				    <div id="otherOneOffRTGSShortNotesDiv"></div>
				   <!--<ul id="npsbOneTimenotes" style="display:none; margin-left:-27px;">
					 <li><%-$.i18n.t('app.transferss.nbspmsgnote')%></li>
				   </ul>
				   <ul id="beftnOneTimenotes" style="display:none; margin-left:-27px;">
					 <li><%-$.i18n.t('app.transferss.beftnmsgnote1')%></li>
					 <li><%-$.i18n.t('app.transferss.beftnmsgnote2')%></li>
				   </ul>
				   <ul id="rtgsOneTimenotes" style="display:none; margin-left:-27px;">
					 <li><%-$.i18n.t('app.transferss.beftnmsgnote1')%></li>
					 <li><%-$.i18n.t('app.transferss.beftnmsgnote2')%></li>
				   </ul>-->
				</small>
            </div>
           
            <div class="clearfix"></div>
             <div class="form-group">
		              <label class="check-label">
		                <input type="checkbox" name="transfer" id="termsand"> I agree to the <a href="javascript:void(0);" id="otherBankTandCPopup">Terms and Conditions</a>
		                <span class="checkmark1"></span>
		              </label>
		              </div>
		               <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="tandcErr"></p>
					</div>
            <div class="row">
                <div class="col-xs-6 pr5">
                    <button type="button" id="othercancelbtn" class="btn btn-default btn-block" ><%-$.i18n.t('app.transferss.cancel')%></button>
                </div>
                <div class="col-xs-6 pl5">
                    <button id="OB_OneTimePay_confirmbtn" type="button" class="btn btn-primary btn-block" ><%-$.i18n.t('app.transferss.paynow')%></button>
                </div>
            </div>
        </form>
    </section>
    <!-- Modal -->
     <div id="termsAndCondPopup"></div>
<div class="modal fade modernPOP" id="OneTimeTransactionLimit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <form method="post" action="info.html">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="modalLabel"><%-$.i18n.t('app.transferss.transactionlimit')%></h4>
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
											<span class="amt small" id="oneTimeMinAmount"></span>
										</p>
									</div>
									<div class="col-xs-6">
										<p>
											<span class="small"><%-$.i18n.t('app.transferss.dailylimit')%></span>
											<br>
											<span class="amt small" id="oneTimeDailyLimit"></span>
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
											<span class="amt small" id="oneTimePerTransLimit"></span>
										</p>
									</div>
									<div class="col-xs-6">
										<p>
										<span class="small"><%-$.i18n.t('app.transferss.availabletransfercount')%></span>
										<br>
										<span class="amt small" id="oneTimeDailyAvailCount"></span>
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
											<span class="amt small" id="oneTimeMonthlyAvailLimit">
											</span>
										</p>
									</div>
									<div class="col-xs-6">
										 <p>
										<span class="small"><%-$.i18n.t('app.transferss.monthavalcount')%></span>
										<br>
										<span class="amt small" id="oneTimeMonthlyAvailCount">
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
    <div class="modal fade modernPOP selectBank" id="bankBranchPopup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
    		<form>
        		<div class="modal-content">
            		<div class="modal-header">
                		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    		<span aria-hidden="true">&times;</span>
                		</button>
                		<h4 class="modal-title" id="myModalHeaderLabel"></h4>
            		</div>
            		<div class="modal-body">                        
                		<div class="form-group">
                  			<div class="input-group search">
                    			<input type="text" class="form-control" id="searchTab" style="text-indent:10px">
                        		<span class="input-group-addon"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></span>
                  			</div>
                		</div> 
              			<div class="form-group" id="bankBranchList"></div>
						<div class="nodata" style="text-align:center; display:none">No records found</div>
        			</div>
        		</div>
    		</form>
		</div>
	</div>
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
	<script>

	
function removeVald(selected){
	console.log(selected.value)
	if(!isNull(selected.value)){
	//$("#error_acc").next().remove();
	//$("#error_acc").html("");
	$(".help-inline").first().html("");
	}
}



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
					$(this).val($(this).val().substr(0, makelength));
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

(function ($){
     $.fn.inputalphanumericlen=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890\- ";					
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
	               $(this).val($(this).val().substr(0, makelength));
				   e.preventDefault();
	               return false;
	             }
	          }
          });
        });
     };
}(jQuery));

$('.alphanumericlencontrol').inputalphanumericlen();
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

(function ($){
     $.fn.inputalphanumericlen=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890\"!#$%&'()*+,-./:<=>?@[\]^_`{|}~";					
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
$('.inputlengthcontrol').inputalphanumericlen();


</script>

