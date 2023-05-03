<% 
	var cardNumberArray = [];
	var els = new EncryptedLocalStorage('secret'); 			
	var devicePlatform = els.get("device.platform");
	var cardNumber = els.get("cardnumber");
	var isInputVisible = els.get("isInputVisible");
	if(isInputVisible==null || isInputVisible==3){
		els.set("isInputVisible", 2);
	} else {
		els.set("isInputVisible", 3);
	}

	for (var i = 0, charsLength=cardNumber.length; i < charsLength; i += 4) {
	   cardNumberArray.push(cardNumber.substring(i, i + 4));
	}
%>
<div class="pagewrapper">
    <div class="container">
		<h1 class="lgn-logo animation-in">
         <span> </span>
		</h1>	
		<div class="panel panel-default">
	   <div class="panel-body">
			<form>
				<% if(els.get("cardType") == "DC") { %>
					<%-$.i18n.t('app.forgotusername.debitcardnumber')%>
					<div class="form-group">
						<%if(els.get("isInputVisible")== 2){%>
							<label for="card">Please enter the second 4 digit of your debit card</label>
						<% } else {%>
							<label for="card">Please enter the third 4 digit of your debit card</label>
						<% } %>
					</div>
				<% } %>
				<% if(els.get("cardType") == "CC") { %>
					<%-$.i18n.t('app.forgotusername.creditcardnumber')%>
					<div class="form-group">
						<%if(els.get("isInputVisible")== 2){%>
							<label for="card">Please enter the second 4 digit of your credit card</label>
						<% } else {%>
							<label for="card">Please enter the third 4 digit of your credit card</label>
						<% } %>
					</div>
				<% } %>
				<div class="CCard">
					<div class="row">
						<div class="col-xs-4 col-sm-4">
							<div class="CCardsim"></div>
						</div>				
						<div class="col-xs-8 col-sm-8">
							<div class="CCardlogo"></div>
						</div>
					</div>						
					<br/><br/>
					<div class="form-group">
						<%if(els.get("isInputVisible")== 2){%>
							<div class="input-group">
								<span class="input-group-addon"><%-cardNumberArray[0]%></span>
								<span>
									<input type="tel" autocomplete="off" id="card_number" class="form-control  numaric" maxlength="4">
								</span>
								<span class="input-group-addon">XXXX</span>
								<span class="input-group-addon"><%-cardNumberArray[3]%></span>
							</div>
						<% } else { %>
							<div class="input-group">
								<span class="input-group-addon"><%-cardNumberArray[0]%></span>
								<span class="input-group-addon">XXXX</span>
								<span>
									<input type="tel" autocomplete="off" id="card_number" class="form-control  numaric" maxlength="4">
								</span>
								<span class="input-group-addon"><%-cardNumberArray[3]%></span>
							</div>
						<% } %>
					</div>
				</div>
				<br>
				<span class="small" id="error_card" style="color:#a94442" ></span>
				<div>
					<label for="pin"><%- $.i18n.t('app.registration.enterpin') %></label>
					<div class="mpinnew">
						<input type="text" id="mpininput" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class=" restrictCpyPst cardpinnumericlengthcontrol"/>
					</div>
				</div>
				<!--<div class="form-group">
				<label for="username"><%-$.i18n.t('app.forgotpassword.selectauthmod')%></label>
                <div class="custRadio_pass">
                  <div class="box">
                    <div class="radio">
                        <label>
                            <input type="radio" name="authmode" id="sms" value="SMS" checked="">
                               <div class="row bg">
                                 <div class="col-xs-12 p0">
                                    <span class="menu_icon ico-xs sms"></span>
                                     <span class="small"><%-$.i18n.t('app.forgotpassword.sms')%></span>
                                </div>
                            </div>
                        </label>
                    </div>
                </div>
                 <!-- / form-group-->
              <div class="form-group" id="Forgot_alert_authmodeDiv"></div>
            <!-- / form-group-->
              <div class="clearfix"></div>
              <div class="row">
				<div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block" id="cancel_btn"><%-$.i18n.t('app.forgotpassword.cancel')%></button></div>
				<div class="col-xs-6 pl5"><button type="button" class="btn btn-primary btn-block" id="next_btn" data-toggle="modal"><%-$.i18n.t('app.forgotusername.next')%></button></div>
			  </div>
		</form>
	</div>
</div> 
         
<div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
   <form method="post">
     <div class="modal-content">
       <div class="modal-header">
         <button type="button" class="close" id="close_btn" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          <h4 class="modal-title" id="myModalLabel"></h4>
      </div>
      <div class="modal-body">
	  <p class="small" id = "titleAuth"></p>
	  <p class="small" id="challengeText"></p>
			<!--<% if(els.get("alertType") == "SMS") { %>-->
				
		<!--	<% } else if(els.get("alertType") == "EMAIL") {%>
				<p class="small"><%-$.i18n.t('app.registration.opthelpemailtext')%> <%- maskEmailID(els.get("emailId"))%></p>
			<% } else if(els.get("alertType") == "TOKEN") {%>
				<p class="small"><%-$.i18n.t('app.registration.opthelptokentext')%></p>
			<% } else if(els.get("alertType") == "ESIGN") {%>
				<p class="small"><%-$.i18n.t('app.registration.otphelpesigntext')%></p>-->
				
			<!--<% } %>-->
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
         <div class="form-group has-error" id="otpNullErrorDiv">
			<p class="help-block error-message" style="color:#a94442; text-align:center;" id="otpNullError"></p>
		</div>
        </div>
		<div class="form-group">
			<div id="OTPcontainer1"></div>
		</div>
		<p class="text-center small">
			<a href="javascript:void(0);" class="resend_button2" id="resend_forgot_btn">Resend OTP</a>
		</p>
     </div>
       <div class="modal-footer">
			<div class="row">
				<div class="col-xs-6 pr5">
					<button type="button" id="popup_cancel_btn" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
				</div>
				<div class="col-xs-6 pr5">
					<button type="button" onclick="javascript:void(0);" id="verify_btn" class="btn btn-default btn-block">Verify</button>
				</div>
			</div>
		</div>
   </form>
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
