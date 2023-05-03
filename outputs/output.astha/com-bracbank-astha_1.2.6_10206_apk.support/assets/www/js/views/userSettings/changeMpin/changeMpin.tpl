<div class="pagewrapper" id="appwrapper" >
	<header class="appheader">
  		<div class="headerLeft">
    		<a href="javascript:void(0);" id="backBtn" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<h4><%-$.i18n.t('app.usersettings.changempin.title')%></h4>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="settingChange">
        		<form>
        			<label for="npass"><%-$.i18n.t('app.usersettings.changempin.oldmpinlabel')%></label>
            		<div class="form-group">
				  		<div class="pasCode">
					  		<div class="form-group" id="oldMpin">
								<input type="password" autocomplete="off" pattern="[0-9]*" id="old_mpin1" name="old_mpin1" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="old_mpin2" name="old_mpin2" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="old_mpin3" name="old_mpin3" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="old_mpin4" name="old_mpin4" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="old_mpin5" name="old_mpin5" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="old_mpin6" name="old_mpin6" maxlength="1" class="inputs numericlengthcontrol"/>
					  		</div>
				  		</div>
					</div>
					<label for="npass"><%-$.i18n.t('app.usersettings.changempin.newmpinlabel')%></label>
					<div class="form-group">
				  		<div class="pasCode">
					  		<div class="form-group" id="newMpin">
								<input type="password" autocomplete="off" pattern="[0-9]*" id="new_mpin1" name="new_mpin1" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="new_mpin2" name="new_mpin2" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="new_mpin3" name="new_mpin3" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="new_mpin4" name="new_mpin4" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="new_mpin5" name="new_mpin5" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="new_mpin6" name="new_mpin6" maxlength="1" class="inputs numericlengthcontrol"/>
					  		</div>
				  		</div>
					</div>
					<label for="cnpass"><%-$.i18n.t('app.usersettings.changempin.confmpinlabel')%></label>
					<div class="form-group">
				  		<div class="pasCode">
					  		<div class="form-group" id="confMpin">
								<input type="password" autocomplete="off" pattern="[0-9]*" id="conf_mpin1" name="conf_mpin1" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="conf_mpin2" name="conf_mpin2" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="conf_mpin3" name="conf_mpin3" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="conf_mpin4" name="conf_mpin4" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="conf_mpin5" name="conf_mpin5" maxlength="1" class="inputs numericlengthcontrol"/>
								<input type="password" autocomplete="off" pattern="[0-9]*" id="conf_mpin6" name="conf_mpin6" maxlength="1" class="inputs numericlengthcontrol"/>
					  		</div>
				  		</div>
					</div>
                	<label><%-$.i18n.t('app.usersettings.changepwd.selectauthmode')%></label>
            		<div class="custRadio_pass">
                		<div class="box">
                    		<div class="radio">
                        		<label>
                            		<input type="radio" name="optionsRadios" id="optionsRadios1" value="option2" checked>
                            		<div class="row bg">
                                		<div class="col-xs-12 p0">
                                    		<span class="menu_icon ico-xs sms"></span>
                                    		<span class="small"><%-$.i18n.t('app.usersettings.changepwd.sms')%></span>
                                		</div>
                        			</div>
                        		</label>
                			</div>
                		</div>
                		<div class="box">
                    		<div class="radio">
                        		<label>
                            		<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
                        			<div class="row bg">
	                                    <div class="col-xs-12 p0">
                                			<span class="menu_icon ico-xs mail"></span>
                                			<span class="small"><%-$.i18n.t('app.usersettings.changepwd.mail')%></span>
                            			</div>
                        			</div>
                    			</label>
                			</div>
                		</div>
            			<div class="box">
                    		<div class="radio">
                        		<label>
                            		<input type="radio" name="optionsRadios" id="optionsRadios3" value="option2">
                            		<div class="row bg">
                                		<div class="col-xs-12 p0">
                                			<span class="menu_icon ico-xs fScan"></span>
                                    		<span class="small"><%-$.i18n.t('app.usersettings.changepwd.token')%></span>
                                		</div>
                            		</div>
	                            </label>
                    		</div>
                		</div>
                		<div class="box">
                    		<div class="radio">
                        		<label>
                            		<input type="radio" name="optionsRadios" id="optionsRadios4" value="option2">
                            		<div class="row bg">
                                		<div class="col-xs-12 p0">
                                    		<span class="menu_icon ico-xs esign"></span>
	                                        <span class="small"><%-$.i18n.t('app.usersettings.changepwd.esign')%></span>
                                		</div>
                            		</div>
                        		</label>
                    		</div>
                		</div>
            		</div>
	            	<div class="clearfix"></div>
	            	<br/>
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
	        					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        					<h4 class="modal-title" id="myModalLabel"><%- $.i18n.t('app.registration.verificationlabel') %></h4>
	      					</div>
	      					<div class="modal-body">
			  					<p class="small text-center"><%- $.i18n.t('app.registration.opthelptext') %></p>
								<div class="form-group">
				  					<div class="pasCode text-center">
					  					<div class="form-group" id="otp">
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp1" name="otp1" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp2" name="otp2" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp3" name="otp3" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp4" name="otp4" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp5" name="otp5" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp6" name="otp6" maxlength="1" class="inputs numericlengthcontrol"/>
					  					</div>
				  					</div>
								</div>
								<div class="form-group has-error">
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
										<button type="button" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
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
	
	    	<div class="modal fade modernPOP" id="success" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
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
	                        	<p class="small text-center"><%-$.i18n.t('app.usersettings.changempin.successmsg')%></p>
	                    	</div>
	                    	<div class="modal-footer">
	                        	<button type="button" id="login" class="btn btn-default btn-block"><%-$.i18n.t('button.login.login')%></button>
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
</script>

<script>
	$(document).ready(function() {

		DisableCopyPaste();
		
		
	});
</script>
