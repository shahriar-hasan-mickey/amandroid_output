<%
	var els = new EncryptedLocalStorage('secret'); 
	var creditCardAccountListDTO = els.get("creditCardAccountList");
	var prepaidCardAccountListDTO = els.get("prepaidCardAccountList");
	var otherbene = els.get("localBeneficiaryBeneficiaryInstructionDTOList");
	var toAcntInd = els.get("toAcntInd");
	var selectedAccountDTO = creditCardAccountListDTO[toAcntInd];
	console.log("selectedAccountDTO1234",selectedAccountDTO);
	var minimumAmount = els.get("minAmountPerTransaction");
	var dailylimit = els.get("dailyAvailableLimit");
	var monthlylimit = els.get("monthlyTransactionLimit");
	var pertranslimit = els.get("maxAmountPerTransaction");
	var dailyAvailableCount = els.get("dailyAvailableCount");
	var dailyTransactionCount = els.get("dailyTransactionCount");
	var monthlyAvailableLimit = els.get("monthlyAvailableLimit");
	var monthlyAvailableCount = els.get("monthlyAvailableCount");
	var pullMoneyNotification = els.get("pullMoneyNotification");
	var casaDTO = getAccountDTO();
	var pcListDTO = getPrepaidCardDTO();
	var pcListArray = "";
	var casaListArray = "";
	if(!isNull(pcListDTO)) {
		pcListArray = pcListDTO.filter(function(array) {
			return (array.merchantType != "" && array.cardpymtflag == "Y");
		});
	}
	
	if(!isNull(casaDTO)) {
		casaListArray = casaDTO.filter(function(array) {
			return (array.cardpymtflag == "Y");
		}); 
	}
%>
	<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
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
			<a href="javascript:void(0);" id="OwnCard_Init_BackBtn" class="bacArr">
				<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">
			<h4 class="p10">
				<%-$.i18n.t('app.transferss.payment')%>
				<!--<p class="small"><%-$.i18n.t('app.transferss.pay')%></p>-->
			</h4>	
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
						    <section class="content" id="ownCard">
        <form method="post" action="#">
            <div class="media payAcc">
                <div class="media-left media-middle">
                    <img src="images/common/user_default1.png" class="img2x img-circle" />
                </div>
                       
                <div class="media-body media-middle"  >
        
                    <p><%- selectedAccountDTO.productName%></p>
					<p class="small text-primary"><%- selectedAccountDTO.accountNumber%></p>
					<p class="small text-primary"><%- selectedAccountDTO.outStandingCCAmount%> <%- selectedAccountDTO.currencyCode%></p>
                    <p class="text-right small">
                        <a href="javascript:void(0);" id="transactionbtn" class="text-link">
                            <span class="menu_icon ico-xss histry"></span>
                            <small><%-$.i18n.t('app.transferss.viewhistory')%></small>
                        </a>
                    </p>
                   
                </div>
              
            </div>
            <br/>
            <!--<label for="acc">From Account/Wallet</label>
            <div class="form-group">
                 <select name="fromaccountnum" id="OwnCard_FromAccNum" class="form-control"  onchange="removeVald(this)" >
                 <option value=""  selected="selected">Select a From Account/Wallet</option>
                    <%_.each(casaDTO,function(data,index) { %> 
						<% if(data.cardpymtflag == "Y") { %>
							<% if(index == 0) { %>
								<option selected acctype="CASA" frmname="<%- data.productName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"><%- data.accountNumber%></option>
							<% } else { %>
								<option acctype="CASA" frmname="<%- data.productName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"><%- data.accountNumber%></option>
							<% } %>
						<% } %>
					<% }); %>
                    <% if(prepaidCardAccountListDTO != "" || prepaidCardAccountListDTO != null) { %>
                        <%_.each(prepaidCardAccountListDTO,function(data,index) { %>  
                		    <% if(data.cardpymtflag == "Y") { %>
								<option acctype="PC" frmname="<%- data.cardHolderName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"><%- data.accountNumber%></option>
							<% } %>
						<% }); %>
                    <% } %>
                    <% if(isNull(pullMoneyNotification) || pullMoneyNotification.length == 0) { %>
                    	 <option acctype="bKash" value="bKash">bKash</option>
                    <% } %>
                   
                </select>
                
               <p class="small" id="availBalDiv">
               
                    		<span class="small text-muted">Avl Bal</span>
                    		<span id="availbal" class="amt small">
                    		</span>
                    		
                		</p>
						
            </div>
			<div class="form-group has-error">
				<p class="help-block error-message has-error" style="color:#a94442" id="error_acc"></p>
			</div>-->
			
			<div class="form-group">
				<label for="crdaccid">From Account/Wallet</label>
				<a style="outline:none;" href="javascript:void(0)" class="acc_link" id="OwnCard_FromAccNum"  data-toggle="modal" data-target="#OC_card_account"><div id="seltpayval" style="width:90%;height:5px;">Select Account/Wallet</div><span class="glyphicon glyphicon-triangle-bottom pull-right" aria-hidden="true"></span></a> 
				<div class="form-group has-error">
					<p class="help-block error-message has-error" style="color:#a94442" id="error_acc"></p>
				</div>
			 	<p class="small" id="availBalDiv">
        			<span class="small text-muted">Avl Bal</span>
        				<span id="availbal" class="amt small">
        			</span>
    			</p>
			</div>
               
            <!-- / form-group-->
            <label for="reason"><%-$.i18n.t('app.transferss.paymenttype')%></label>
            <div class="form-group">
                 <select name="paymentType" id="OwnCard_PaymentType" class="form-control">
               <option value="" ><%-$.i18n.t('app.transferss.selpaymenttype')%></option>
                    <option value="miniamt" selected="selected">Pay Minimum Amount Due</option>
                    <option value="statmetbal">Statement Balance</option>
                    <option value="curoutstanding">Current Outstanding</option>
                    <!--<option value="totaloutstanding">Pay Total Outstanding with EMI</option>-->
                    <option value="otheramt">Other Amount</option>
                </select>
              <span class="small" id="error_paytype" style="color:#a94442"></span>
            </div>
            <div class="row">
    			<div class="col-xs-8 pr5">
    			<div>
    				 <label for="paymentAmount"><%-$.i18n.t('app.transferss.entertransferamount')%></label>
    				 </div>
    			</div>
    			<div class="col-xs-4 pl5">
    				<label for="currency"><%-$.i18n.t('app.transferss.currency')%></label> 
    			</div>
    		</div>
            <div class="form-group">
                <div class="row">
                    <div class="col-xs-8 pr5">
						<input type="tel" autocomplete='off'  class="form-control numericlengthcontrol transferAmountClass" data-type="currency" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" onkeyup="withoutstartZero(event,'paymentAmount')" id="paymentAmount" name="paymentAmount" maxLength="20">                    
					</div>
                    <div class="col-xs-4 pl5">
 						<select name="OC_currency" id="currency" class="form-control">
                            <option value=""></option>
                        </select>
                    </div>
                    <div class="col-xs-12">
                        <div class="row">
                            <div class="col-xs-5 pr5">
                                <p class="small">
                                    <a href="#" class="small text-link" data-toggle="modal" data-target="#TransactionLimit"><%-$.i18n.t('app.transferss.tranactionlimits')%></a>
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
			<div class="form-group" id="OC_AuthModeDiv"></div>
            <!--<label for="reason"><%-$.i18n.t('app.transferss.transferreason')%></label>
            <div class="form-group">
                 <select name="purposetransfer" id="purposetransfer" class="form-control">
               <option value=""  selected="selected"><%-$.i18n.t('app.transferss.seltransfer')%></option>
                    <option value="monthlyswap">Monthly Swap</option>
	                 <option value="rent">Rent</option>
	                 <option value="others">Others</option>
                </select>
            </div>
        	<div class="form-group has-error">
				<p class="help-block error-message has-error" style="color:#a94442" id="reasonNullError"></p>
			</div>-->
			<label>Remarks</label>
			<div class="form-group">
				<input type="text" class="form-control alphanumericlengthcontrol" id="OC_OtherRemarks" name="OA_otherRemarks" maxLength="16">
			</div>
			<div class="form-group has-error">
				<p class="help-block error-message has-error" style="color:#a94442" id="otherRemaksNullError"></p>
			</div>
            <!-- / form-group-->
                       <div class="clearfix"></div>
            <div class="form-group">
                <div class="custRadio_pass custRadio_medium">
                    <!--<div class="box">
                        <div class="radio">
                            <label>
                                <input type="radio" name="payType" id="OwnCard_PayNow" value="paynow" checked>
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
                                <input type="radio" name="payType" id="OwnCard_PayLater" value="paylater">
                                <div class="row bg">
                                    <div class="col-xs-12 p0">
                                        <span class="menu_icon ico-xs payLater"></span>
                                        <span class="small"><%-$.i18n.t('app.transferss.paylater')%></span>
                                    </div>
                                </div>
                            </label>
                        </div>
                    </div>-->
                   
                </div>
            </div>
            <!-- / form-group-->
            <div id="payLater" style="display:none;">
                <div class="form-group">
                    <label for="pdate"><%-$.i18n.t('app.transferss.paymentdate')%></label>
                    <input name="payDate" name="payDate" id="payDate" type="date" class="form-control">
           	
                </div>
                <div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="payDateError"></p>
						</div>
                <!-- / form-group-->
            </div>
             <div class="clearfix"></div>
            <div class="alert alert-info small" role="alert" id="ownCardShortNotesUIDiv">
                <small>
                    <i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.transferss.msg1note')%>
                    <div id="ownCardShortNotesDiv"></div>
	                          <!-- <ul>
	                             <li><%-$.i18n.t('app.transferss.msg2note')%></li>
	                             <li><%-$.i18n.t('app.transferss.msg3note')%></li>
	                             <li><%-$.i18n.t('app.transferss.msg4note')%></li>
	                           </ul>-->
                           </small>
            </div>
            <div class="form-group">
		              <label class="check-label">
		                <input type="checkbox" name="transfer" id="termsand"> I agree to the <a href="javascript:void(0);" id="ownCardTandCPopup">Terms and Conditions</a>
		                <span class="checkmark1"></span>
		              </label>
		              </div>
		               <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="tandcErr"></p>
					</div>
           
            <div class="row">
                <div class="col-xs-6 pr5">
                    <button type="button" class="btn btn-default btn-block" id="OwnCard_Init_CancelBtn"><%-$.i18n.t('app.transferss.cancel')%></button>
                </div>
                <div class="col-xs-6 pl5">
                    <button id="OwnCard_Init_TransferBtn" type="button" class="btn btn-primary btn-block"><%-$.i18n.t('app.transferss.next')%></button>
                </div>
            </div>
        </form>
    </section>
    <!-- Modal -->
    <div id="termsAndCondPopup"></div>
    <div id="transactionLimitPopup"></div>
	<div class="modal fade trans_popup" id="OC_card_account" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
				<div class="modal-body">
                    <div class="qr_details">
                      <h4>Select Account/Wallet</h4>
			            <div class="qr_acc_outer">
							
							<% if(!isNull(casaListArray )) { %>
			                 <h4>CASA Account</h4>
			                <ul class="list-unstyled">
			                    
			                    <%_.each(casaListArray,function(data,index){%>
			                    
			                    <li class="list-group-item oc_acccardnumtype" acctype="CASA" accNum="<%- data.accountNumber%>" frName="<%-data.productName%>" value="<%- data.id%>" Accide="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>">
			                           <label class="radio-label">
			                            <div class="row">
			                                <div class="col-xs-2 first-col">
			                                 <span class="menu_icon account"></span>
			                                </div>
			                                <div class="col-xs-10">
			                                    <p class="acc_txt"><%-data.accountShortName%></p>
			                                    <p class="acc_cat"><span class="selectAccNumber"><%-data.accountNumber%></span></p>
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
			                    
			                    <li class="list-group-item oc_acccardnumtype" acctype="PC" accNum="<%- data.accountNumber%>" frName="<%-data.productName%>" merchantType="<%-data.merchantType%>" value="<%- data.id%>" Accide="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>">
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
			               
			               <h4>Wallet</h4>
			                <ul class="list-unstyled">
			                    <li class="list-group-item oc_acccardnumtype" acctype="bKash" accNum="bKash" frName="bKash" merchantType="bKash" value="bKash" Accide="bKash" id="bKash" data="bKash">
			                           <label class="radio-label">
			                            <div class="row">
			                                <div class="col-xs-2 first-col">
			                                	<span>
				                            		<img class="img-circle" src="images/brand/biller/bKash.png" width="36">
			                          			</span>
			                                </div>
			                                <div class="col-xs-10">
			                                    <p class="acc_txt">bKash</p>
			                                </div>
			                            </div>
			                            <input type="radio" name="transfer"> 
			                            <span class="checkmark"></span>
			                        </label>
			                    </li>
			                </ul>
			            </div>                      

                    </div>
                </div>
            </div>
        </div>
    </div>    

    <!-- / modal-->	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
<script>
	$(document).ready(function(){
		
	});
</script>
<script>
$(document).ready(function() {
	$("#paymentType").on("change",function() {
	var paymentypes = $("#paymentType option:selected").val();
		if(paymentypes == "otheramt") {
			els.set("filterBy","OTHER");
			$("#paymentAmount").removeAttr("readonly");
			$("#paymentAmount").attr("type","tel");
		} else {
			$("#paymentAmount").attr("readonly",true);
			$("#paymentAmount").attr("type","tel");
		}
	});
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

function removeVald(selected){
	console.log(selected.value)
	if(!isNull(selected.value)){
	//$("#availBalDiv").next().remove();
	$("#error_acc").html("");
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

