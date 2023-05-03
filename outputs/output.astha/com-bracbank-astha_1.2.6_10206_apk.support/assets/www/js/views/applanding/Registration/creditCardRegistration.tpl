<%
	var els = new EncryptedLocalStorage('secret'); 			
	var devicePlatform = els.get("device.platform");
%>
<div class="pagewrapper">
	<nav class="clearfix">
		<ol class="cd-breadcrumb triangle custom-icons">
			<li class="done"><a href="javascript:void(0);"><span class="clr">1</span></a></li>
			<li class="current"><a href="javascript:void(0);"><span class="clr">2</span><%- $.i18n.t('app.registration.carddetailsheader') %> </a></li>
			<li><span class="clr">3</span></li>
		</ol>
	</nav>
	<div class="container">
		<h1 class="lgn-logo animation-in">
        	<span>
        	</span>
      	</h1>
		<h3 class="text-center page-title"><%- $.i18n.t('app.registration.validatecarddetails') %></h3>
		<div class="panel panel-default">
			<div class="panel-body">
				<form>
					<div>
						<% if(els.get("cardType") == "debitCard") { %>
							<label for="card"><%- $.i18n.t('app.registration.registerentercreditcardnum') %></label>
                        <% } else {%>
							<label for="card"><%- $.i18n.t('app.registration.registerenterdebitcardnum') %></label>
						<% } %>
						<div class="form-group">
                        	<div class="row">
                            	<div class="col-xs-3"><input type="tel" style="text-align:center;" autocomplete="off" id="first" name="first"  maxlength="4" class="form-control numericlengthcontrol  cardinputs"/></div>
                            	<div class="col-xs-3"><input type="tel" style="text-align:center;" autocomplete="off" id="second" name="second" maxlength="4" class="form-control numericlengthcontrol  cardinputs"/></div>
                            	<div class="col-xs-3"><input type="tel" style="text-align:center;" autocomplete="off" id="third" name="third" maxlength="4" class="form-control numericlengthcontrol  cardinputs"/></div>
                            	<div class="col-xs-3"><input type="tel" style="text-align:center;" autocomplete="off" id="fourth" name="fourth" maxlength="4" class="form-control numericlengthcontrol  cardinputs"/></div>
                        	</div>
    				  	</div>
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="cardNumNullError"></p>
			 		</div>
        			<div>
        			  	<div class="form-group">
							<label for="pin"><%- $.i18n.t('app.registration.enterpin') %></label>
							<div class="mpinnew">
								<input type="text" id="mpininput" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="cardpinnumericlengthcontrol restrictCpyPst">
							</div>
						</div>
        			</div>
					<div class="row">
						<div class="col-xs-8 col-xs-offset-2">
							<button type="button" class="btn btn-primary btn-block" id="validate" ><%- $.i18n.t('button.registration.validate') %></button>
							<button type="button" id="cancelbtn" class="btn btn-default btn-block"><%- $.i18n.t('button.login.cancel') %></button>	
						</div>
					</div>
				</form>
			</div>
		</div>
		
		<div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  			<div class="modal-dialog" role="document">
  				<form method="post" action="info.html">
    				<div class="modal-content">
      					<div class="modal-header">
        					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        					<h4 class="modal-title" id="myModalLabel"><%- $.i18n.t('app.registration.verificationlabel') %></h4>
      					</div>
      					<div class="modal-body">
		  					<p class="small text-center"><%- $.i18n.t('app.registration.opthelptext')%> <%- maskMobile(els.get("mobileNo"))%></p>
							<div class="form-group">
			  					<div class="pasCode text-center">
				  					<div class="form-group" id="otp">
										<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp1" name="otp1" maxlength="1" class="cardpinnumericlengthcontrol inputs"/>
										<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp2" name="otp2" maxlength="1" class="cardpinnumericlengthcontrol inputs"/>
										<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp3" name="otp3" maxlength="1" class="cardpinnumericlengthcontrol inputs"/>
										<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp4" name="otp4" maxlength="1" class="cardpinnumericlengthcontrol inputs"/>
										<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp5" name="otp5" maxlength="1" class="cardpinnumericlengthcontrol inputs"/>
										<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp6" name="otp6" maxlength="1" class="cardpinnumericlengthcontrol inputs"/>
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
        					<button type="button" id="verifyOTP" class="btn btn-default btn-block"><%- $.i18n.t('button.registration.verify') %></button>
      					</div>
    				</div>
	  			</form>
  			</div>
		</div>
		
		<div class="modal fade modernPOP" id="verifysuccess" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  			<div class="modal-dialog" role="document">
  				<form method="post" action="#">
    				<div class="modal-content">
      					<div class="modal-body">
		  					<p class="text-center">
			  					<span class="ico-circle center-block">
				  					<span class="menu_icon ico-2x check"></span>
			  					</span>
		  					</p>
		  					<h4 class="text-center"><%- $.i18n.t('app.registration.regvalidated') %></h4>
		  					<p class="small text-center"><%- $.i18n.t('app.registration.regsuccessmsg') %></p>
      					</div>
	      				<div class="modal-footer">
	        				<button type="button" id="gotoSetPassword" class="btn btn-default btn-block"><%- $.i18n.t('button.registration.setpassword') %></button>
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
        },
		

		});

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
