<%
	var els = new EncryptedLocalStorage('secret'); 			
	var devicePlatform = els.get("device.platform");
%>
<div class="pagewrapper">
   <div class="container">
      <h1 class="lgn-logo animation-in">
        <span></span>
      </h1>
		<h3 class="text-center page-title"><%-$.i18n.t('app.forgotpassword.forgotpassword')%></h3>
		<div class="panel panel-default">
			<div class="panel-body">
				<form>
                    <div class="radiobox clearfix">
                      <div class="radio ">
                        <label>
                          <input type="radio" name="choice" value="DC" checked="" class="forgotPassword_cardoptions">
                          <div class="box">
                            <span class="menu_icon ccard"></span>
                            <span class="small"><%-$.i18n.t('app.forgotusername.debitcard')%></span>
                          </div>
                        </label>
                      </div>
                      <div class="radio">
                        <label>
                          <input type="radio" name="choice" value="CC" class="forgotPassword_cardoptions">
                          <div class="box">
                            <span class="menu_icon dcard"></span>
                            <span class="small"><%-$.i18n.t('app.forgotusername.creditcard')%></span>
                          </div>
                        </label>
                      </div>
					  <div class="radio">
                        <label>
                          <input type="radio" name="choice" value="account" class="forgotPassword_cardoptions">
                          <div class="box">
                            <span class="menu_icon account"></span>
                            <span class="small"><%-$.i18n.t('app.forgotusername.account')%></span>
                          </div>
                        </label>
                      </div>
                    </div>
					<br/>
					<div id="cardNumberDiv">
						<label for="card" id="forgotPasswordLabel"></label>
                        <div class="form-group">
                        	<div class="row">
                            	<div class="col-xs-3"><input type="tel" style="text-align:center;" autocomplete="off" id="first" name="first"  maxlength="4" class="form-control  numericlengthcontrol cardinputs"/></div>
                            	<div class="col-xs-3"><input type="tel" style="text-align:center;" autocomplete="off" id="second" name="second" maxlength="4" class="form-control  numericlengthcontrol cardinputs"/></div>
                            	<div class="col-xs-3"><input type="tel" style="text-align:center;" autocomplete="off" id="third" name="third" maxlength="4" class="form-control  numericlengthcontrol cardinputs"/></div>
                            	<div class="col-xs-3"><input type="tel" style="text-align:center;" autocomplete="off" id="fourth" name="fourth" maxlength="4" class="form-control  numericlengthcontrol cardinputs"/></div>
                        	</div>
    				  	</div>
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="forgotPassword_cardNumNullError"></p>
			 		</div>
					<div id="cardPinDiv">
						<div class="form-group">
							<label for="pin">Enter your card PIN</label>
							<div class="mpinnew">
								<input type="text" id="cardPinInput" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="cardpinnumericlengthcontrol restrictCpyPst">
							</div>
						</div>
					</div>
					<div id="accNumDiv">
						<label for="card"><%- $.i18n.t('app.registration.registerenteraccnum') %></label>
						<input type="tel" class="form-control numericlengthcontrol" id="forgotUsernameAccNum" maxlength="16">
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="forgotUsernameAccNumError"></p>
					</div>
					<div id="mobNumDiv">
						<div class="form-group">
                            <label><%- $.i18n.t('app.registration.registerentermobnum') %></label>
                            <input type="tel" class="form-control numericlengthcontrol" id="forgotUsernameMobNum" maxlength="16">
                        </div>
                        <div class="form-group has-error">
                            <p class="help-block error-message has-error" style="color:#a94442" id="forgotUsernameMobNumError"></p>
                        </div>
					</div>
					<div class="row">
						<div class="col-xs-6 pr5"><button type="button" id="forgotPasswordCancelBtn" class="btn btn-default btn-block"><%-$.i18n.t('button.login.cancel')%></button></div>
						<div class="col-xs-6 pl5"><button type="button" id="forgotPasswordNextBtn" class="btn btn-primary btn-block"><%-$.i18n.t('app.forgotusername.next')%></button></div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<form>
				<div class="modal-content">
  					<div class="modal-header">
    					<button type="button" class="close" id="close_btn" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    					<h4 class="modal-title" id="myModalLabel"></h4>
  					</div>
  					<div class="modal-body">
	  					<p class="small" id = "titleAuth"></p>
						<p class="small" id="challengeText"></p>
						<div class="form-group">
		  					<div class="pasCode text-center">
			  					<div class="form-group">
									<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="otp1" name="otp1" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
									<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="otp2" name="otp2" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
									<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="otp3" name="otp3" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
									<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="otp4" name="otp4" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
									<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="otp5" name="otp5" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
									<input type="tel" autocomplete="off" inputmode="numeric" pattern="[0-9]*" id="otp6" name="otp6" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
			  					</div>
		  					</div>
						</div>
						<div class="form-group has-error" id="otpNullErrorDiv">
							<p class="help-block error-message" style="color:#a94442; text-align:center;" id="otpNullError"></p>
				 		</div>
						<div class="form-group">
							<div id="OTPcontainer1"></div>
						</div>
						<p class="text-center small">
  							<a href="javascript:void(0);" class="resend_button" id="resend_btn1"><%- $.i18n.t('app.registration.rensendotp') %></a>
						</p>
  					</div>
  					<div class="modal-footer">
						<div class="row">
						  <div class="col-xs-6 pr5">
							  <button type="button" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal" id="cancel_btn">Cancel</button>
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
<script src="js/library/progressbar.min.js"></script>
<script src="js/libs/bootstrap/bootstrap-pincode-input.js"></script>
<script>
	$(document).ready(function() {
		$('#cardPinInput').pincodeInput({complete:function(value, e){  	
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
<script>
	$(document).ready(function(){
		
	});
</script>
