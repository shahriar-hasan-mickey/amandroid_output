<%
	var els = new EncryptedLocalStorage('secret');
	var accountCardNum = els.get("accountCard");
	var cardtype = els.get("cardtype");
	var benename2=els.get("benename_bene");
	var shortname= els.get("nickname");
	var email= els.get("emailID");
	if(cardtype=="cards"){
		var cardtype="Credit Card";
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
			<a href="javascript:void(0);" id="backBtn" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10"><%-$.i18n.t('app.usersettings.changepwd.title')%></h4>	
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


				<label for="opass"><%-$.i18n.t('app.usersettings.changepwd.oldpwdlabel')%></label>
				<div class="form-group passInput">
					  
					  <div class="input-group" >
						<input type="password"  autocomplete='off' id="oldpassword" name="oldpwd" maxlength="20" class="form-control restrictCpyPst">
						<span class="input-group-btn">
						  	<button class="btn btn-default" type="button" id="change_pwd_old_eye_icon">
								<span class="glyphicon glyphicon-eye-close" aria-hidden="true" style="display:none;"></span>
								<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="display:none;"></span>
							</button>
						</span>
						
					</div>
					  
				</div>
            		
            		<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="oldpasswordError"></p>
			 		</div>

					
					<label for="npass"><%-$.i18n.t('app.usersettings.changepwd.newpwdlabel')%></label>
					 <div class="form-group passInput">
					  
					  <div class="input-group" >
						<input type="password" autocomplete='off'  id="password" name="newpass" maxlength="20" class="form-control restrictCpyPst">
						<span class="input-group-btn">
						  <button class="btn btn-default" type="button" id="change_pwd_new_eye_icon">
								<span class="glyphicon glyphicon-eye-close" aria-hidden="true" style="display:none;"></span>
								<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="display:none;"></span>
							</button>
						</span>
						
					</div>
					  
				</div>

            		
            		<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="passwordError"></p>
			 		</div>

					<label for="cnpass"><%-$.i18n.t('app.usersettings.changepwd.confnewpwdlabel')%></label>
					<div class="form-group passInput">
					  
					  <div class="input-group" >
						<input type="password" autocomplete='off'  id="confpassword" maxlength="20" class="form-control restrictCpyPst">
						<span class="input-group-btn">
						  <button class="btn btn-default" type="button" id="change_pwd_conf_eye_icon">
								<span class="glyphicon glyphicon-eye-close" aria-hidden="true" style="display:none;"></span>
								<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="display:none;"></span>
							</button>
						</span>
						
					  </div>
					  
					  </div>
            		
            		<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="confirmPasswordError"></p>
			 		</div>
            		<div class="form-group" id="changepassword_authmodeDiv"></div>
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
	
	    	<div class="modal fade modernPOP" id="successPopup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	        	<div class="modal-dialog" role="document">
		            <form method="post" action="#">
	                	<div class="modal-content">
	                    	<div class="modal-body">
	                        	<p class="text-center">
	                            	<span class="ico-circle center-block">
	                                	<span class="menu_icon ico-2x check"></span>
	                            	</span>
	                        	</p>
	                        	<h4 class="text-center"><%-$.i18n.t('app.usersettings.changepwd.success')%>!</h4>
	                        	<p class="small text-center"><%-$.i18n.t('app.usersettings.changepwd.successmsg')%></p>
	                    	</div>
	                    	<div class="modal-footer">
	                        	<button type="button" id="login" class="btn btn-default btn-block"><%-$.i18n.t('button.registration.ok')%></button>
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
$('.inputalphanumericlengthcontrol').inputalphanumericlen();
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
		
		$("#oldpassword").keyup(function() {
			var len = $("#oldpassword").val().length;
			if(len > 0) {
				if($("#change_pwd_old_eye_icon > .glyphicon-eye-open").is(":visible")) {
					$("#change_pwd_old_eye_icon > .glyphicon-eye-open").show();
					$("#change_pwd_old_eye_icon > .glyphicon-eye-close").hide();
				} else {
					$("#change_pwd_old_eye_icon > .glyphicon-eye-close").show();
				}
			} else {
				$("#change_pwd_old_eye_icon > .glyphicon-eye-open").hide();
				$("#change_pwd_old_eye_icon > .glyphicon-eye-close").hide();
				$("#oldpassword").prop("type", "password");
			}
		});
		
		$("#change_pwd_old_eye_icon").click(function() {
			var oldpasslen = $("#oldpassword").val().length;
			if(oldpasslen < 1) {
				return;
			}
			if($("#change_pwd_old_eye_icon > .glyphicon-eye-close").is(":visible")) {
				$("#change_pwd_old_eye_icon > .glyphicon-eye-open").show();
				$("#change_pwd_old_eye_icon > .glyphicon-eye-close").hide();
				$("#oldpassword").prop("type", "text");  
			} else {
				$("#change_pwd_old_eye_icon > .glyphicon-eye-open").hide();
				$("#change_pwd_old_eye_icon > .glyphicon-eye-close").show();
				$("#oldpassword").prop("type", "password");  
			}
		});
		
		
		$("#password").keyup(function() {
			var len = $("#password").val().length;
			if(len > 0) {
				if($("#change_pwd_new_eye_icon > .glyphicon-eye-open").is(":visible")) {
					$("#change_pwd_new_eye_icon > .glyphicon-eye-open").show();
					$("#change_pwd_new_eye_icon > .glyphicon-eye-close").hide();
				} else {
					$("#change_pwd_new_eye_icon > .glyphicon-eye-close").show();
				}
			} else {
				$("#change_pwd_new_eye_icon > .glyphicon-eye-open").hide();
				$("#change_pwd_new_eye_icon > .glyphicon-eye-close").hide();
				$("#password").prop("type", "password");
			}
		});
		
		$("#change_pwd_new_eye_icon").click(function() {
			var passlen = $("#password").val().length;
			if(passlen < 1) {
				return;
			}
			if($("#change_pwd_new_eye_icon > .glyphicon-eye-close").is(":visible")) {
				$("#change_pwd_new_eye_icon > .glyphicon-eye-open").show();
				$("#change_pwd_new_eye_icon > .glyphicon-eye-close").hide();
				$("#password").prop("type", "text");  
			} else {
				$("#change_pwd_new_eye_icon > .glyphicon-eye-open").hide();
				$("#change_pwd_new_eye_icon > .glyphicon-eye-close").show();
				$("#password").prop("type", "password");  
			}
		});
		
		
		$("#confpassword").keyup(function() {
			var len = $("#confpassword").val().length;
			if(len > 0) {
				if($("#change_pwd_conf_eye_icon > .glyphicon-eye-open").is(":visible")) {
					$("#change_pwd_conf_eye_icon > .glyphicon-eye-open").show();
					$("#change_pwd_conf_eye_icon > .glyphicon-eye-close").hide();
				} else {
					$("#change_pwd_conf_eye_icon > .glyphicon-eye-close").show();
				}
			} else {
				$("#change_pwd_conf_eye_icon > .glyphicon-eye-open").hide();
				$("#change_pwd_conf_eye_icon > .glyphicon-eye-close").hide();
				$("#confpassword").prop("type", "password");
			}
		});
		
		$("#change_pwd_conf_eye_icon").click(function() {
			var confPasslen = $("#confpassword").val().length;
			if(confPasslen < 1) {
				return;
			}
			if($("#change_pwd_conf_eye_icon > .glyphicon-eye-close").is(":visible")) {
				$("#change_pwd_conf_eye_icon > .glyphicon-eye-open").show();
				$("#change_pwd_conf_eye_icon > .glyphicon-eye-close").hide();
				$("#confpassword").prop("type", "text");  
			} else {
				$("#change_pwd_conf_eye_icon > .glyphicon-eye-open").hide();
				$("#change_pwd_conf_eye_icon > .glyphicon-eye-close").show();
				$("#confpassword").prop("type", "password");  
			}
		});

	});
</script>
