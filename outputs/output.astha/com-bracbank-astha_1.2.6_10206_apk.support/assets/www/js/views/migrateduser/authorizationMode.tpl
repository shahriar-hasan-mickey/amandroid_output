<%
	var els = new EncryptedLocalStorage('secret');
	var email = (isNull(els.get("emailId"))) ? "Not Available" : els.get("emailId");
%>
<div class="pagewrapper">
    <div class="container">
		<h1 class="lgn-logo animation-in">
			<span>
			</span>
		</h1>
		<h3 class="text-center page-title"><%- $.i18n.t('app.login.modeofauth') %></h3>
		<div class="panel panel-default">
      		<div class="panel-body">
				<p class="small"><%-$.i18n.t('app.login.migrateuserauthmodelabel')%></p>
				<form>
					<div class="custRadio">
						<div class="radio">
							<label>
								<input type="radio" name="authmode" id="smsOrEmail" value="SMS" checked>
								<div class="row bg">
									<div class="col-xs-3 col-sm-3 pl5 pr5">
										<img src="images/common/smsOTP.jpg" class="img-thumbnail">
									</div>
									<% if(els.get("preloginAuthMode") == "TOKEN") { %>
										<div class="col-xs-9 col-sm-9 pl5">
											<%-$.i18n.t('app.login.migrateusersmsoremailortokenlabel')%> (<%-$.i18n.t('app.login.default')%>)
											<p class="small">
												<%-$.i18n.t('app.login.onetimepwd')%>
												<%-$.i18n.t('app.login.migrateusersmsoremailortokentext')%> (<%-$.i18n.t('app.login.feeinfo')%>)
											</p>
										</div>
									<% } else { %>
										<div class="col-xs-9 col-sm-9 pl5">
											<%-$.i18n.t('app.login.smsoremaillabel')%> (<%-$.i18n.t('app.login.default')%>)
											<p class="small">
												<%-$.i18n.t('app.login.onetimepwd')%>
												<%-$.i18n.t('app.login.migrateusersmsoremailtext')%> (<%-$.i18n.t('app.login.feeinfo')%>)
											</p>
										</div>
									<% } %>
								</div>
							</label>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<label for="email_auth"><%-$.i18n.t('app.login.emailid')%></label>
							<div class="row">
								<div class="col-xs-8">
									<span style="color:#999999;" id="email_auth"><%- email%></span>
									<!--<input autocomplete='off' class="form-control" style="border-bottom: none !important;" id="email_auth" name="email_auth" type="email" value="MEHEDI004_EWU@YAHOO.COM" readonly="readonly" placeholder="<%-$.i18n.t('app.login.enteremail')%>">-->
								</div>
								<!--<div class="col-xs-4">
									<button class="btn btn-primary btn-block" id="migrate_auth_edit" type="button" style="display: inline-block; font-size: 11px;"><%-$.i18n.t('button.login.edit')%></button>
									<button class="btn btn-primary btn-block" id="migrate_auth_save" type="button" style="display: none; font-size: 11px;"><%-$.i18n.t('button.login.confirm')%></button>
								</div>-->
							</div>
							<div class="form-group has-error">
								<p class="help-block error-message" style="color:#a94442" id="emailNullError"></p>
							</div>
						</div>
					</div>
					<br>
					<!--<h4><%-$.i18n.t('app.login.othermodes')%>(<%-$.i18n.t('app.login.chrgeapplicable')%>)</h4>
					<div class="custRadio">
						<div class="radio">
							<label>
								<input type="radio" name="authmode" id="softtoken" value="SOFT">
								<div class="row bg">
									<div class="col-xs-3 col-sm-3 pl5 pr5">
										<img src="images/common/softToken.jpg" class="img-thumbnail">
									</div>
									<div class="col-xs-9 col-sm-9 pl5"><%-$.i18n.t('app.login.softwaretokenlabel')%>
										<p class="small"><%-$.i18n.t('app.login.tokentext1')%>(<%-$.i18n.t('app.login.otp')%>)(<%-$.i18n.t('app.login.recommendtxt')%>) <%-$.i18n.t('app.login.tokentext2')%></p>
									</div>
								</div>
							</label>
						</div>
						<div class="radio">
							<label>
								<input type="radio" name="authmode" id="hardtoken" value="HARD">
								<div class="row bg">
									<div class="col-xs-3 col-sm-3 pl5 pr5">
										<img src="images/common/hardToken.jpg" class="img-thumbnail">
									</div>
									<div class="col-xs-9 col-sm-9 pl5"><%-$.i18n.t('app.login.hardwaretokenlabel')%>
										<p class="small"><%-$.i18n.t('app.login.tokentext1')%>(<%-$.i18n.t('app.login.otp')%>)(<%-$.i18n.t('app.login.recommendtxt')%>) <%-$.i18n.t('app.login.tokentext2')%></p>
									</div>
								</div>
							</label>
						</div>
					</div>-->
					<div class="row">
						<div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block" id="migrate_auth_cancel_btn"><%-$.i18n.t('button.login.cancel')%></button></div>
						<div class="col-xs-6 pl5"><button type="button" class="btn btn-primary btn-block" id="migrate_auth_next_btn" data-toggle="modal"><%-$.i18n.t('button.registration.next')%></button></div>
					</div>
				</form>
            </div>
        </div>

        <div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        	<div class="modal-dialog" role="document">
            	<form>
                	<div class="modal-content">
                    	<div class="modal-header">
	                    	<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    		<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.registration.verificationlabel')%></h4>
                		</div>
                		<div class="modal-body">
	                        <p class="small"><%- $.i18n.t('app.registration.opthelptext') %></p>                        
                        	<div class="form-group">
                            	<div class="pasCode text-center">
                                	<div class="form-group">
                                		<input type="tel" autocomplete="off" pattern="[0-9]*" id="otp1" name="otp1" maxlength="1" class="cardpinnumericlengthcontrol inputs"/>
										<input type="tel" autocomplete="off" pattern="[0-9]*" id="otp2" name="otp2" maxlength="1" class="cardpinnumericlengthcontrol inputs"/>
										<input type="tel" autocomplete="off" pattern="[0-9]*" id="otp3" name="otp3" maxlength="1" class="cardpinnumericlengthcontrol inputs"/>
										<input type="tel" autocomplete="off" pattern="[0-9]*" id="otp4" name="otp4" maxlength="1" class="cardpinnumericlengthcontrol inputs"/>
										<input type="tel" autocomplete="off" pattern="[0-9]*" id="otp5" name="otp5" maxlength="1" class="cardpinnumericlengthcontrol inputs"/>
										<input type="tel" autocomplete="off" pattern="[0-9]*" id="otp6" name="otp6" maxlength="1" class="cardpinnumericlengthcontrol inputs"/>
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
                            	<a href="javascript:void(0);" class="resend_button" id="resend_btn"><%- $.i18n.t('app.registration.rensendotp') %></a>
                        	</p>			  
                    	</div>
                    	<div class="modal-footer">
                    		<button type="button" class="btn btn-default btn-block otp_done" id="migrate_auth_verify_btn"><%- $.i18n.t('button.registration.verify') %></button>
                    	</div>
                	</div>
                </form>	
            </div>
		</div>
	</div>
</div>
<script src="js/library/progressbar.min.js"></script>
<script>
	$(document).ready(function() {

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
</script>
  <script>
	$(document).ready(function(){
		
	});
</script>
