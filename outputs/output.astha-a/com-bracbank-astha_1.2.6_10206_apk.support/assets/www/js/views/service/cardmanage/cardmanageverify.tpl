<%
	var els = new EncryptedLocalStorage('secret');
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
			<a href="#/cardmanage" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10">Card Management Review</h4>	
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">    
        		<form method="post">	
	                <div class="veriIconWrap">
                   		<span class="menu_icon2 ico1x verify"></span>					
             		</div>
            		<ul class="list-unstyled list-nobrd">
						<% if(!isNull(els.get("requestType"))) {%>
                		<li class="list-group-item">
                    		<label>Request Type</label>
                    		<p><%- els.get("requestType")%></p>
                		</li>
                		<% } %>
            			<li class="list-group-item">
                    		<label>Card Type</label>
                    		<p><%- els.get("cardManage_cardType")%></p>
                		</li>
						
                		<% if(!isNull(els.get("cardManage_MaskedX_CardNumber"))) {%>
                		<li class="list-group-item">
                    		<label>Card Number</label>
                    		<p><%- els.get("cardManage_MaskedX_CardNumber")%></p>
                		</li>
                		<% } %>
						
                		<% if(!isNull(els.get("cardManage_CardStatus"))) {%>
	                		<% if(els.get("cardManage_CardStatus") == "NEW_INACTIVE") { %>
	                			<li class="list-group-item">
		                    		<label>Card Status</label>
		                    		<p>NEW INACTIVE</p>
		                		</li>
	                		<% } else { %>
	                			<li class="list-group-item">
		                    		<label>Card Status</label>
		                    		<p><%- els.get("cardManage_CardStatus")%></p>
		                		</li>
	                		<% } %>
                		<% } %>
                		<% if(!isNull(els.get("currentForeignStatus"))) { %>
                			<li class="list-group-item">
	                    		<label>Current Status</label>
	                    		<p><%- els.get("currentForeignStatus")%></p>
	                		</li>
                		<% } %>
						<% if(!isNull(els.get("changeStatus"))) {%>
                		<li class="list-group-item">
                    		<label>Change Status</label>
                    		<p><%- els.get("changeStatus")%></p>
                		</li>
                		<% } %>
                		<% if(!isNull(els.get("changeRequest"))) {%>
                		<li class="list-group-item">
                    		<label>Reason For Request</label>
                    		<p><%- els.get("changeRequest")%></p>
                		</li>
                		<% } %>
                		<% if(!isNull(els.get("cardManage_FromAccNumber"))) {%>
                		<%if(els.get("changeRequest") == "Forgot PIN/Generate New PIN") { %>
                			<li class="list-group-item">
	                    		<label>From Account Number</label>
	                    		<p><%- els.get("cardManage_FromAccNumber")%></p>
	                		</li>
                		<% } %>
                		<% } %>
                		<% if((!isNull(els.get("cardMangae_ExpMonth"))) && (!isNull(els.get("cardMangae_ExpYear")))) {%>
                		<li class="list-group-item">
                    		<label>Expiry Date</label>
                    		<p><%- els.get("cardMangae_ExpMonth")%> / <%- els.get("cardMangae_ExpYear")%></p>
                		</li>
                		<% } %>
                		
                		<% if(els.get("changeRequest") == "Foreign E-commerce") { %>
                			
                			<% if(!isNull("usdPGT_CurrentStatus")) { %>
            					<li class="list-group-item">
		                    		<label>Change Status</label>
		                    		<p><%- els.get("usdPGT_CurrentStatus")%></p>
		                		</li>
                			<% } %>
                			
                			<% if(!isNull(els.get("usdPGTRemarks"))) { %>
            					<li class="list-group-item">
		                    		<label>Remarks</label>
		                    		<p><%- els.get("usdPGTRemarks")%></p>
		                		</li>
                			<% } %>
                			
                			<% if(!isNull(els.get("usdPGTFromDate"))) { %>
                				<li class="list-group-item">
		                    		<label>From Date</label>
		                    		<p><%- els.get("usdPGTFromDate")%></p>
		                		</li>
                			<% } %>
                			<% if(!isNull(els.get("usdPGTToDate"))) { %>
                				<li class="list-group-item">
		                    		<label>To Date</label>
		                    		<p><%- els.get("usdPGTToDate")%></p>
		                		</li>
                			<% } %>
                			<% if(!isNull(els.get("usdPGTFromDate"))) { %>
                				<li class="list-group-item">
		                    		<label>From Time</label>
		                    		<p><%- els.get("usdPGTFromTime")%></p>
		                		</li>
                			<% } %>
                			<% if(!isNull(els.get("usdPGTFromDate"))) { %>
                				<li class="list-group-item">
		                    		<label>To Time</label>
		                    		<p><%- els.get("usdPGTToTime")%></p>
		                		</li>
                			<% } %>
                		<% } %>
                		
                		<% if(!isNull(els.get("cardManage_authMode"))) {%>
                		<li class="list-group-item">
                    		<label>Authorization Mode</label>
                    		<p><%- els.get("cardManage_authMode")%></p>
                		</li>
                		<% } %>
                		<% if((!isNull(els.get("cardManage_authMode"))) && els.get("TempBlck")=="on") {%>
	                		<li class="list-group-item">
	                    		<label>Temporarily  Block</label>
	                    		<p>Temporarily  Block</p>
	                		</li>
                		<% } %>
                		<% if(!isNull(els.get("reasonTempBlck"))) {%>
	                		<li class="list-group-item">
	                    		<label>Remarks</label>
	                    		<p><%- els.get("reasonTempBlck")%></p>
	                		</li>
                		<% } %>
                		<% if(!isNull(els.get("requestreason"))) {%>
	                		<li class="list-group-item">
	                    		<label>Replacement Required</label>
	                    		<p><%- els.get("requestreason")%></p>
	                		</li>
                		<% } %>
	                		<!--<li class="list-group-item">
	                    		<label>Block Reason</label>
	                    		<p><%- els.get("reasonTempBlckrpl")%></p>
	                		</li>-->
                		
            		</ul>    
            		<div class="clearfix"></div>
        			<div class="row">
                		<div class="col-xs-6 pr5">
                    		<button type="button" class="btn btn-default btn-block" id="cardManageCancelBtn">Cancel</button>
                		</div>
                		<div class="col-xs-6 pl5">
                    		<button type="button" class="btn btn-primary btn-block" id="cancelManageConfirmBtn">Confirm</button>
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
		                        <button type="button" class="close" id="cardManageOTPCloseBtn" data-dismiss="modal" aria-label="Close">
		                            <span aria-hidden="true">&times;</span>
		                        </button>
		                       <% if(els.get("cardManage_authMode") == "TOKEN") { %>
		                			<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.registration.otptokenheadertext')%></h4>
		                    	<% }  else {%>
		                    		<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.transferss.verfici')%></h4>
		                    	<% } %>
		                    </div>
		                    <div class="modal-body">
								<% if(els.get("cardManage_authMode") == "SMS") { %>
									<p class="small"><%-$.i18n.t('app.registration.opthelptext')%> <%- maskMobile(els.get("contactNumber"))%></p>
								<% } else if(els.get("cardManage_authMode") == "EMAIL") {%>
									<p class="small"><%-$.i18n.t('app.registration.opthelpemailtext')%> <%- maskEmailID(els.get("emailId"))%></p>
								<% }  else if(els.get("cardManage_authMode") == "TOKEN") {%>
									<p class="small"><%-$.i18n.t('app.registration.opthelptokentext')%></p>
								<% } else if(els.get("cardManage_authMode") == "ESIGN") {%>
									<p class="small"><%-$.i18n.t('app.registration.otphelpesigntext')%></p>
									<p class="small" id="challengeText"></p>
								<% } %>	          
		                        <div class="form-group">
		                            <div class="pasCode text-center">
		                                <div class="form-group">
											<input type="tel" autocomplete="off" pattern="[0-9]*" id="otp1" name="otp1" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" id="otp2" name="otp2" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" id="otp3" name="otp3" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" id="otp4" name="otp4" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" id="otp5" name="otp5" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" id="otp6" name="otp6" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
					  					</div>
		                            </div>
									<div class="form-group has-error" id="otpNullErrorDiv">
										<p class="help-block error-message" style="color:#a94442; text-align:center;" id="otpNullError"></p>
									</div>
		                        </div>
		                        <!-- / form-group-->
								<% if(els.get("cardManage_authMode") == "SMS" || els.get("cardManage_authMode") == "EMAIL") { %>
									<div class="form-group">
										<div id="OTPcontainer1"></div>
									</div>
									<p class="text-center small">
										<a href="javascript:void(0);" class="resend_button" id="resend_btn15"><%-$.i18n.t('app.transfer.managebeneficiary.resendotp')%></a>
									</p>
								<% } %>
		                    </div>
		                    <div class="modal-footer">
		                        <div class="row">
									<div class="col-xs-6 pr5">
										<button type="button" id="cardManageOTPCancel" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
									</div>
									<div class="col-xs-6 pr5">
										<button type="button" class="btn btn-default btn-block otp_done" id="cardManageOTPVerify"><%-$.i18n.t('app.transfer.managebeneficiary.verify')%></button>
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
