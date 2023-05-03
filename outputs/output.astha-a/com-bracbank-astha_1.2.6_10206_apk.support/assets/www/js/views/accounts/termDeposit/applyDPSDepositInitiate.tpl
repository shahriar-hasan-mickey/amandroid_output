<%
	var els = new EncryptedLocalStorage('secret');
	var casaDTOList = getAccountDTO();
	
	var casaDTO = "";
	if(!isNull(casaDTOList)) {
		casaDTO = casaDTOList.filter(function(array) {
			return array.currencyCode == "BDT";
		});
	}	
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
			<a href="javascript:void(0);" id="backButon" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">			
			<h4 class="p10"><%-$.i18n.t('app.product.termdeposits.dpsaccount')%></h4>
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>			
	</header>	
			
					<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
							<section class="content">
	<form>
			<div class="panel panel-info">
				<div class="panel-heading"><%-$.i18n.t('app.product.termdeposits.applicantdetails')%></div>
				<div class="panel-body">
					<div class="form-group">
						<label><%-$.i18n.t('app.product.termdeposits.sourceaccount')%></label>
						<select class="form-control" id="DPSSelectAcc">
							<option value=""  selected="selected"><%-$.i18n.t('app.product.termdeposits.selectacc')%></option>
                 			<%_.each(casaDTO,function(data,index){%>
				                 	<option acctype="CASA" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>" accstatus="<%- data.imAccountStatus%>"> <%-data.accountNumber%></option>
							<%});%>
						</select>
						<p class="small m0" id="availBalDiv">
			                <span class="small text-muted"><%-$.i18n.t('app.product.termdeposits.availbalance')%></span>
			                <span id="availbalance" class="amt small"> </span>
			            </p>     
						<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="accError"></p>
	 							</div>                         
					</div>
					<div class="form-group">
						 <label for="acc"><%-$.i18n.t('app.product.termdeposits.dpsprodtype')%></label>
						 <select class="form-control" id="DPSProductTypeSelect">
						 </select>
						 <div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="prodTypeError"></p>
	 						</div>
					   </div>
					<div class="form-group">
						<label for="amt"><%-$.i18n.t('app.product.termdeposits.monthlyinstamt')%></label>
						<div class="row">
							<div class="col-xs-8 pr5">
								<input type="tel" autocomplete='off' class="form-control numericlengthcontrol" data-type="currency" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" onkeyup="withoutstartZero(event,'dpsamt')" maxlength="20" id="dpsamt">
								<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="transAmutError"></p>
	 							</div>
							</div>
							<div class="col-xs-4 pl5">
								<select id="curr" class="form-control" readonly="" disabled>
									<%_.each(casaDTO,function(data,index){%>
				               			<option value="<%- data.id%>" id="<%- index%>"> <%-data.currencyCode%></option>
									<%});%>
								</select>
							</div>
						</div>
					</div>
					
					<div class="form-group">
						 <label for="acc"><%-$.i18n.t('app.product.termdeposits.tenure')%></label>
						 <select class="form-control" id="tenure">
						 </select>
						 <div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="tenorError"></p>
	 							</div>
					   </div>
					   <div class="form-group">
						 <label for="acc"><%-$.i18n.t('app.product.termdeposits.totprinamt')%></label>
						 <input type="text" class="form-control" id="tpamt" readonly="">
						 <p class="small" id="roitext"><span class="small text-muted"><%-$.i18n.t('app.product.termdeposits.rateinterest')%> </span><span class="small text-muted" id="roiValue"></span> </p>
					   </div>
					   <div class="form-group" >
						 <label for="acc"><%-$.i18n.t('app.product.termdeposits.matureamt')%></label>
						 <input type="text" class="form-control" value="" readonly="" id="maturitAmt">

					   </div>
					   
					   <div class="form-group">
						 <label><%-$.i18n.t('app.product.termdeposits.creditacc')%></label>
						 <select class="form-control" disabled="" id="credAccontSelt">
						  <option value=""  selected="selected"><%-$.i18n.t('app.product.termdeposits.selectacc')%></option>
                 			<%_.each(casaDTO,function(data,index){%>
				              		<option acctype="CASA" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
							<%});%>
						 </select>
					   </div>
					
				<div class="form-group" id="nomine_Relation">
					<ul class="list-unstyled" id="nomine_Details">
												
					</ul>
					<div class="alert alert-info small" role="alert">
						<small><i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.product.termdeposits.changenomineedetails')%></small>
					</div>
				</div>
				<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="nomineeError"></p>
	 							</div>
					
					<!-- / form-group-->
					<div class="form-group" id="fd_auth_mode"></div>		  
					<div class="form-group">
					  <label class="check-label">
						<input type="checkbox" name="transfer" id="tc_check" /> <%-$.i18n.t('app.product.termdeposits.iagree')%> <a href="javascript:void(0);" id ="addDepositTandCPopup" ><%-$.i18n.t('app.product.termdeposits.termcon')%></a>
						<span class="checkmark1"></span>
					  </label>
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="tcError"></p>
	 				</div>
				</div>
			</div>                     
            <div class="row">
                <div class="col-xs-6"><button type="button" class="btn btn-default btn-block" id="applyDPSdepositcancel"><%-$.i18n.t('app.product.termdeposits.cancel')%></button></div>
                <div class="col-xs-6"><button type="button" class="btn btn-primary btn-block" id="applyDPSdepositverify"><%-$.i18n.t('app.product.termdeposits.submit')%></button></div>
            </div>
			<div class="spacer5"></div>
        </form>	
			
</section>
<!-- Modal -->
<div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <form method="post" action="#">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" id="FD_CloseBtn" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="dps_myModalLabel"></h4>
                </div>
                <div class="modal-body">
                    <p class="small" id ="fd_titleAuth"></p>
					<p class="small" id="fd_challengeText"></p>
                    <div class="form-group">
                        <div class="pasCode text-center">
                            <div class="form-group">
                                <input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="fd_otp1" name="otp1" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
								<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="fd_otp2" name="otp2" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
								<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="fd_otp3" name="otp3" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
								<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="fd_otp4" name="otp4" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
								<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="fd_otp5" name="otp5" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
								<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="fd_otp6" name="otp6" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
                            </div>
                        </div>
                    </div>
					<div class="form-group has-error" id="fd_otpNullErrorDiv">
							<p class="help-block error-message" style="color:#a94442; text-align:center;" id="fd_otpNullError"></p>
				 		</div>
                    <!-- / form-group-->
                    <div class="form-group">
                        <div id="OTPcontainer1"></div>
                    </div>
                    <p class="text-center small">
                        <a href="javascript:void(0);" class="resend_button" id="fd_resend_btn"><%- $.i18n.t('app.registration.rensendotp') %></a>
                    </p>
                </div>
                <div class="modal-footer">
                  <div class="row">
                      <div class="col-xs-6 pr5">
                          <button type="button" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal" id="fd_cancel_btn">Cancel</button>
                      </div>
                      <div class="col-xs-6 pl5">
                        <button type="button" class="btn btn-default btn-block otp_done" id="applydepositconfirm"><%- $.i18n.t('button.registration.verify') %></button>
                    </div>
                  </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- / modal-->	
<!-- Terms and Condtions -->
			<div id="termsAndCondPopup"></div>	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
		
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
</script>
<script>
$("input[data-type='currency']").on({
    keyup: function() {
      formatCurrency($(this));
    }
});
</script>
