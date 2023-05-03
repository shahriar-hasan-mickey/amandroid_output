<%
	var els = new EncryptedLocalStorage('secret'); 
	var pwdpolicy = els.get("pwdpolicy");
%>
<div class="pagewrapper">
    <div class="container">
		<h1 class="lgn-logo animation-in">
			<span></span>
		</h1>
		<h3 class="text-center page-title"><%-$.i18n.t('app.forgotpassword.setaccountpswtitle')%><br/>
			<small><%-$.i18n.t('app.forgotpassword.securemsg1')%></small>
		</h3>
		<div class="panel panel-default">
			<div class="panel-body">					
				<form>


				<label for="password"><%-$.i18n.t('app.forgotpassword.password')%></label>
					<i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" data-toggle="modal" data-target="#paswodTips"></i>
				<div class="form-group passInput">
					  
					  <div class="input-group" >
					
                    	<input id="password" autocomplete='off' type="password" name="password" class="form-control restrictCpyPst" placeholder="<%-$.i18n.t('app.forgotpassword.enterpassword')%>">
						<span class="input-group-btn">
						  <button class="btn btn-default" type="button" id="fpwd_new_eye_icon">
								<span class="glyphicon glyphicon-eye-close" aria-hidden="true" style="display:none;"></span>
								<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="display:none;"></span>
							</button>
						</span>
						
					  </div>
					  
					  </div>
					  
                  	<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="passwordError"></p>
			 		</div>


					<label for="confpassword"><%-$.i18n.t('app.forgotpassword.confirmpassword')%></label>
					 	<div class="form-group passInput">
					  
					  <div class="input-group" >
						<input id="confpassword" autocomplete='off' type="password" name="confpassword" class="form-control restrictCpyPst" placeholder="<%-$.i18n.t('app.forgotpassword.enterconfirmpass')%>">
						<span class="input-group-btn">
						  <button class="btn btn-default" type="button" id="fpwd_conf_eye_icon">
								<span class="glyphicon glyphicon-eye-close" aria-hidden="true" style="display:none;"></span>
								<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="display:none;"></span>
							</button>
						</span>
						
					  </div>
					  
					  </div>


			 		
                  	<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="confirmPasswordError"></p>
			 		</div>
                  	
                  	<div class="row">
	                    <div class="col-xs-6 pr5"><button type="button" id="cancel_btn" class="btn btn-default btn-block" onClick="javascript:void(0);"><%-$.i18n.t('app.forgotusername.cancel')%></button></div>
	                	<div class="col-xs-6 pl5"><button type="button" id="next_btn" class="btn btn-primary btn-block"><%-$.i18n.t('button.login.submit')%></button></div>
                  	</div>				  
			    </form>
			</div>
		</div>
		
		 <!--password-->
    	<div class="modal fade modernPOP" id="paswodTips" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        	<div class="modal-dialog" role="document">
            	<form>
                	<div class="modal-content">
                    	<div class="modal-body">
                        	<p class="text-center">
                            	<span class="ico-circle center-block">
                                	<span class="menu_icon ico-2x alert"></span>
                            	</span>
                        	</p>
                        	<h4 class="text-center"><%- $.i18n.t('app.registration.passwordtiplabel')%></h4>
                        	<ul class="list-unstyled checkstyle">
	                            	<% if(pwdpolicy.firstCharacterValue == "U"){ %>
							   <li class="list-group-item check">Start with Upper case Alphabet(A-Z)</li>
							   <% } else if(pwdpolicy.firstCharacterValue === 'L'){%>
									<li class="list-group-item check">Start with Lower case Alphabet(a-z)</li>
							   <% } else if(pwdpolicy.firstCharacterValue === 'N'){%>
									<li class="list-group-item check">Start with Numeric character(0-9)</li>	
							   <% } else if(pwdpolicy.firstCharacterValue === 'S'){%>
									<li class="list-group-item check">Start with Special Character(!@#$%^&*()-_+~.)</li>
								<% } else if(pwdpolicy.firstCharacterValue === 'A'){%>
									<li class="list-group-item check">Start with any case alphabet (a-z or A-Z)</li>
								<% } else if(pwdpolicy.firstCharacterValue === 'C'){%>
									<li class="list-group-item check">Start with any character</li>
								<% } %>
	                           <li class="list-group-item check">Minimum Password length must be <%- pwdpolicy.minimumLength %> characters long</li>
							   <li class="list-group-item check">Maximum Password length must be <%- pwdpolicy.maximumLength %> characters long</li>
							   <% if(pwdpolicy.numeralsMandatory == "Y"){ %>
							   <li class="list-group-item check">Password Should contain atleast 1 Numeric character</li>
							   <% } %>
							    <% if(pwdpolicy.uppercaseMandatory == "Y"){ %>
							  <li class="list-group-item check">Password Should contain atleast 1 Upper case character</li>
							   
							   <% } %>
							    <% if(pwdpolicy.lowercaseMandatory == "Y"){ %>
							   <li class="list-group-item check">Password Should contain atleast 1 Lower case character</li>
							   
							   <% } %>
							    <% if(pwdpolicy.repeatingValueAllowedInPwd == "Y"){ %>
							   <li class="list-group-item check">Repeating Numbers or Character  are Allowed</li>
							  
							   <% } %>
							    <% if(pwdpolicy.repeatingValueAllowedInPwd == "N"){ %>
							   <li class="list-group-item check">Repeating Numbers or Character  are not Allowed</li>
							  
							   <% } %>
							    <% if(pwdpolicy.seqValueAllowedInPwd == "Y"){ %>
							   <li class="list-group-item check">Sequence Numbers or Character  are Allowed</li>
							  
							   <% } %>
							   <% if(pwdpolicy.seqValueAllowedInPwd == "N"){ %>
							   <li class="list-group-item check">Sequence Numbers or Character  are not Allowed</li>
							  
							   <% } %>
							    <% if(pwdpolicy.specialCharactersMandatory == "Y"){ %>
							   <li class="list-group-item check">Password Should contain atleast 1 Special letter character</li>
							   <% } %>
							   <% if(!isNull(pwdpolicy.disallowedCharacters)) { %>
							   	<li class="list-group-item check">Disallowed characters (<%- pwdpolicy.disallowedCharacters%>)</li>
							   <% } %>
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
    	
		
		<div class="modal fade modernPOP" id="success" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			<div class="modal-dialog" role="document">
				<form>
					<div class="modal-content">
						<div class="modal-body">
							<p class="text-center">
								<span class="ico-circle center-block">
									<span class="menu_icon ico-2x check"></span>
								</span>
							</p>
							<h4 class="text-center"><%- $.i18n.t('app.registration.regsuccess')%></h4>
							<p class="small text-center"><%- $.i18n.t('app.forgotpassword.yourpasswordreset')%></p>
						</div>
					<div class="modal-footer">
						<div class="row">
							<div class="col-xs-8 col-xs-offset-2">
								<button type="button" onClick="javascript:void(0);" id="login_btn" class="btn btn-default btn-block"><%-$.i18n.t('app.login.login')%></button>
							</div>
						</div>
					</div>
				</div>
			</form>	
		</div>
	</div>	
</div></div>
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
	$(document).ready(function(){
		

		$("#password").keyup(function() {
			var len = $("#password").val().length;
			if(len > 0) {
				if($("#fpwd_new_eye_icon > .glyphicon-eye-open").is(":visible")) {
					$("#fpwd_new_eye_icon > .glyphicon-eye-open").show();
					$("#fpwd_new_eye_icon > .glyphicon-eye-close").hide();
				} else {
					$("#fpwd_new_eye_icon > .glyphicon-eye-close").show();
				}
			} else {
				$("#fpwd_new_eye_icon > .glyphicon-eye-open").hide();
				$("#fpwd_new_eye_icon > .glyphicon-eye-close").hide();
				$("#password").prop("type", "password");
			}
		});
		
		$("#fpwd_new_eye_icon").click(function() {
			var passLen = $("#password").val().length;
			if(passLen < 1) {
				return;
			}
			if($("#fpwd_new_eye_icon > .glyphicon-eye-close").is(":visible")) {
				$("#fpwd_new_eye_icon > .glyphicon-eye-open").show();
				$("#fpwd_new_eye_icon > .glyphicon-eye-close").hide();
				$("#password").prop("type", "text");  
			} else {
				$("#fpwd_new_eye_icon > .glyphicon-eye-open").hide();
				$("#fpwd_new_eye_icon > .glyphicon-eye-close").show();
				$("#password").prop("type", "password");  
			}
		});
		
		
		$("#confpassword").keyup(function() {
			var len = $("#confpassword").val().length;
			if(len > 0) {
				if($("#fpwd_conf_eye_icon > .glyphicon-eye-open").is(":visible")) {
					$("#fpwd_conf_eye_icon > .glyphicon-eye-open").show();
					$("#fpwd_conf_eye_icon > .glyphicon-eye-close").hide();
				} else {
					$("#fpwd_conf_eye_icon > .glyphicon-eye-close").show();
				}
			} else {
				$("#fpwd_conf_eye_icon > .glyphicon-eye-open").hide();
				$("#fpwd_conf_eye_icon > .glyphicon-eye-close").hide();
				$("#confpassword").prop("type", "password");
			}
		});
		
		$("#fpwd_conf_eye_icon").click(function() {
			var confpassLen = $("#confpassword").val().length;
			if(confpassLen < 1) {
				return;
			}
			if($("#fpwd_conf_eye_icon > .glyphicon-eye-close").is(":visible")) {
				$("#fpwd_conf_eye_icon > .glyphicon-eye-open").show();
				$("#fpwd_conf_eye_icon > .glyphicon-eye-close").hide();
				$("#confpassword").prop("type", "text");  
			} else {
				$("#fpwd_conf_eye_icon > .glyphicon-eye-open").hide();
				$("#fpwd_conf_eye_icon > .glyphicon-eye-close").show();
				$("#confpassword").prop("type", "password");  
			}
		});

	});
</script>
