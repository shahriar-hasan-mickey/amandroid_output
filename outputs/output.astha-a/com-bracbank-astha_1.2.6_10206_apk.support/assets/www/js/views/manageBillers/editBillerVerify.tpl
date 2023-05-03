<%
	var els = new EncryptedLocalStorage('secret');
	var billerInstruction = els.get("billerInstruction");
	var selectedBillerInd = els.get("selectedBillerInd");
	var selectedBillerInfoDTO = billerInstruction[selectedBillerInd];
	var billBreakdown = els.get("billBreakDown");
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
			<a href="#/editbiller" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
	      </div>
	      <div class="headerMiddle">
  			<h4 class="p10">Edit Biller Review</h4>
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
        		<form>	
                	<div class="veriIconWrap">
                   		<span class="menu_icon2 ico1x verify"></span>					
             		</div>
            		<div class="veriWrap">
                		<div class="media">
                    		<div class="media-left media-middle">
                        		<img class="img-circle" src="images/brand/biller/<%- els.get("selectedBillerListCode")%>.png" width="36" />
                    		</div>
                    		<div class="media-body media-middle">
                        		<%- els.get("selectedBillerListName")%>
                    		</div>
                    		<div class="media-right text-right"></div>
                		</div>
            		</div>    
            		<ul class="list-unstyled list-nobrd">
                		<li class="list-group-item">
							<% if(els.get("selectedBillerTypeName") == "Tuition Fees") { %>
									<label>Payslip Number</label>
							<% } else if(els.get("selectedBillerTypeName") == "Water" || els.get("selectedBillerTypeName") == "Electricity") { %>
									<label>Biller ID / Number</label>
							<% }  else if(els.get("selectedBillerTypeName") == "Internet") { %>
									<label>Subscriber Number</label>
							<% } else { %>
									<label><%- els.get("selectedBillerDateLabel")%></label>
							<% } %>
                    		<p><%- selectedBillerInfoDTO.mobileNumber%></p>
                		</li>
                		
                		<%if(selectedBillerInfoDTO.custName !== null){%>
                		 <%if(els.get("selectedBillerTypeName") == "Internet" || els.get("selectedBillerTypeName") == "Insurance"){%>
	                		<li class="list-group-item">
	                    		<label><%-$.i18n.t('app.sadad.managebills.customername')%></label>
	                    		<p><%- selectedBillerInfoDTO.custName%></p>
	                		</li>
                		   <%}%>
                		<%}%>
                		
                		<li class="list-group-item">
                    		<label><%-$.i18n.t('app.sadad.managebills.billersubcategory')%></label>
                    		<p><%- els.get("selectedBillerTypeName")%></p>
                		</li>
                		<li class="list-group-item">
							<% if(els.get("selectedBillerTypeName") == "Mobile / Telephone") { %>
								<label for="bnum">Operator Name</label>
							<% } else { %>
								<label><%-$.i18n.t('app.sadad.managebills.billerservice')%></label>
							<% } %>
                    		<p><%- selectedBillerInfoDTO.serviceType %></p>
                		</li>
                		<% if(els.get("selectedBillerListName") == "DPDC") { %>
							<li class="list-group-item">
	                    		<label>Connection Type</label>
	                    		<p><%- selectedBillerInfoDTO.serviceInfo%></p>
	                		</li>
						<% } %>
                		<li class="list-group-item">
                    		<label><%-$.i18n.t('app.transfer.managebeneficiary.shortname')%></label>
                    		<p class="small"><%- els.get("editedShortName")%></p>
                		</li>
						<% if(els.get("selectedBillerTypeName") == "Tuition Fees") { %>
							<li class="list-group-item">
	                    		<label>Student ID</label>
	                    		<p><%- selectedBillerInfoDTO.studentId%></p>
	                		</li>
							<li class="list-group-item">
	                    		<label>Student Name</label>
	                    		<p><%- selectedBillerInfoDTO.studentName%></p>
	                		</li>
						<% } %>
						<% if(!isNull(els.get("alertType"))) { %>
							<li class="list-group-item">
								<label><%-$.i18n.t('app.transfer.managebeneficiary.authmode')%></label>
								<p class="small"><%- els.get("alertType")%></p>
							</li>
						<% } %>
            		</ul>
            		<div class="clearfix"></div>
            			<div class="row">
                			<div class="col-xs-6 pr5">
                    			<button type="button" class="btn btn-default btn-block" id="editBillerVerifyCancelBtn"><%-$.i18n.t('app.sadad.managebills.cancel')%></button>
                			</div>
                			<div class="col-xs-6 pl5">
                    			<button type="button" class="btn btn-primary btn-block" id="editBillerVerifyConfirmBtn"><%-$.i18n.t('app.sadad.managebills.confirm')%></button>
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
			                  <button type="button" class="close" id="editBillerOTPCloseBtn" data-dismiss="modal" aria-label="Close">
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
									<% if(els.get("alertType") == "SMS" || els.get("alertType") == "EMAIL") { %>
										<div class="form-group">
											<div id="OTPcontainer1"></div>
										</div>
										<p class="text-center small">
											<a href="javascript:void(0);" class="resend_button" id="resend_btn13"><%-$.i18n.t('app.transfer.managebeneficiary.resendotp')%></a>
										</p>
									<% } %>
			                    </div>
			                    <div class="modal-footer">
			                        <div class="row">
										<div class="col-xs-6 pr5">
											<button type="button" id="editBillerOTPCancel" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
										</div>
										<div class="col-xs-6 pr5">
											<button type="button" class="btn btn-default btn-block otp_done" id="editBillerOTPVerify"><%-$.i18n.t('app.transfer.managebeneficiary.verify')%></button>
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
