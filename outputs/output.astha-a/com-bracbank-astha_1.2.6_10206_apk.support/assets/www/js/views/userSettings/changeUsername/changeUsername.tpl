<%
	var els = new EncryptedLocalStorage('secret');
	console.log("loginuser_id",els.get("loginuser_id"));
	
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
			<a href="javascript:void(0);" id="backBtn" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10"><%-$.i18n.t('app.usersettings.changeusername.title')%></h4>	
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="settingChange">
        		<form>


				<label for="opass"><%-$.i18n.t('app.usersettings.changeusername.oldusernamelabel')%></label>
				<div class="form-group passInput">
					<input id="old_username" autocomplete='off' name="old_username" type="text" class="form-control alphanumericlengthcontrol" maxlength="20" value="<%- els.get("loginuser_id")%>" disabled/>
				</div>
					<label for="new_username"><%-$.i18n.t('app.usersettings.changeusername.newusernamelabel')%></label>
					 <i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" data-toggle="modal" data-target="#usernameTips"></i>
					 <div class="form-group passInput">
						  <input id="new_username" autocomplete='off' name="new_username" type="text" class="form-control alphanumericcontrol" maxlength="16" />
					</div>

            		
            		<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="newUsernameError"></p>
			 		</div>

					<label for="cnpass"><%-$.i18n.t('app.usersettings.changeusername.confnewusernamelabel')%></label>
					<div class="form-group passInput">
					  <input id="conf_username" autocomplete='off' name="conf_username" type="text" class="form-control alphanumericcontrol" maxlength="16" />
				  	</div>
            		
            		<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="confUsernameError"></p>
			 		</div>
            		<div class="form-group" id="changeUsername_authmodeDiv"></div>
            		<div class="clearfix"></div>
        			<div class="row">
	                	<div class="col-xs-6 pr5">
		                    <button type="button" class="btn btn-default btn-block" id="cancel"><%-$.i18n.t('button.login.cancel')%></button>
	            		</div>
		                <div class="col-xs-6 pl5">
	                		<button type="button" class="btn btn-primary btn-block" id="submit"><%-$.i18n.t('button.login.submit')%></button>
	                	</div>
	            	</div>
	        	</form>
			</section>
		
		    <div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  			<div class="modal-dialog" role="document">
	  				<form>
	    				<div class="modal-content">
	      					<div class="modal-header">
	        					<button type="button" id="close_btn" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        					<h4 class="modal-title" id="myModalLabel"></h4>
	      					</div>
	      					<div class="modal-body">
							  
                            <p class="small" id="otpHelpText"></p>
							 <p class="small" id="challengeText"></p>
								<div class="form-group">
				  					<div class="pasCode text-center">
					  					<div class="form-group" id="otp">
											<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp1" name="otp1" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp2" name="otp2" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp3" name="otp3" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp4" name="otp4" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp5" name="otp5" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp6" name="otp6" maxlength="1" class="inputs numericlengthcontrol"/>
					  					</div>
				  					</div>
								</div>
								<div class="form-group has-error" id="otpNullErrorDiv">
									<p class="help-block error-message" style="color:#a94442; text-align:center;" id="otpNullError"></p>
						 		</div>
                                <div id="otpContainerDiv"></div>
							</div>
	      					<div class="modal-footer">
								<div class="row">
									<div class="col-xs-6 pr5">
										<button type="button" id="popup_cancel_btn" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
									</div>
									<div class="col-xs-6 pr5">
										<button type="button" id="verifyOTP" class="btn btn-default btn-block"><%- $.i18n.t('button.registration.verify') %></button>
									</div>
								</div>
							</div>
						</div>
		  			</form>
	  			</div>
			</div>
			
			<div class="modal fade modernPOP" id="usernameTips" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        	<div class="modal-dialog" role="document">
            	<form>
                	<div class="modal-content">
                    	<div class="modal-body">
                        	<p class="text-center">
                            	<span class="ico-circle center-block">
                                	<span class="menu_icon ico-2x alert"></span>
                            	</span>
                        	</p>
                        	<h4 class="text-center"><%- $.i18n.t('app.registration.usernamedtiplabel')%></h4>
                        	<ul class="list-unstyled checkstyle">
	                            <li class="list-group-item check">The selected user name should be minimum 8 and maximum 16 characters.</li>
	                            <li class="list-group-item check">The user name can contain Alphabets (a-z/A-Z) and numbers (0-9) only.</li>
	                            <li class="list-group-item check">The user name must start with an Alphabet (a-z/A-Z).</li>
	                            <li class="list-group-item check">User name should contain atleast 1 Alphabet (a-z/A-Z).</li>
                        	</ul>
                    	</div>
                    	<div class="modal-footer">
							<div class="row">
								<div class="col-xs-8 col-xs-offset-2">
									<button type="button" class="btn btn-default btn-block" data-dismiss="modal"><%- $.i18n.t('button.registration.ok')%></button>
								</div>
							</div>
                    	</div>
                	</div>
            	</form>
        	</div>
    	</div>
	
	    	<div class="modal fade modernPOP" id="successPopup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" data-backdrop="static">
	        	<div class="modal-dialog" role="document">
		            <form method="post" action="#">
	                	<div class="modal-content">
	                    	<div class="modal-body">
	                        	<p class="text-center">
	                            	<span class="ico-circle center-block">
	                                	<span class="menu_icon ico-2x check"></span>
	                            	</span>
	                        	</p>
	                        	<h4 class="text-center"><%-$.i18n.t('app.usersettings.changeusername.success')%>!</h4>
	                        	<p class="small text-center"><%-$.i18n.t('app.usersettings.changeusername.successmsg')%></p>
	                    	</div>
	                    	<div class="modal-footer">
	                        	<button type="button" id="OKBtn" class="btn btn-default btn-block"><%-$.i18n.t('button.registration.ok')%></button>
	                    	</div>
	                	</div>
	            	</form>
	        	</div>
	    	</div>
		</div>
	</div>
</div>
<script src="js/library/progressbar.min.js"></script>
<script>
(function ($){
	$.fn.inputalphanumericlength=function() {
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
$('.alphanumericlengthcontrol').inputalphanumericlength();

(function ($){
	$.fn.inputalphanumericlength=function() {
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
$('.alphanumericcontrol').inputalphanumericlength();
</script>
<script>
	$(".inputs").keyup(function (e) {
	    if (this.value.length == this.maxLength) {
	    	$(this).next('.inputs').focus();
	    } else if((e.which == 8 || e.which == 46) && (this.value == "")) { 
	    	$(this).prev('.inputs').focus();
	    }
	});
</script>
<script>
(function ($){
     $.fn.inputnumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('input',function(e) { 
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
$(".numericlengthcontrol").css({'-webkit-text-security': 'disc','-moz-webkit-text-security': 'disc','-moz-text-security': 'disc'});
</script>

<script>
	$(document).ready(function(){
		
		DisableCopyPaste();

	});
</script>
