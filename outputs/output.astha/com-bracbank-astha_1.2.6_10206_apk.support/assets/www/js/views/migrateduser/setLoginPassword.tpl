<%
	var pwdpolicy = els.get("pwdpolicy");
%>
<div class="pagewrapper">
	<div class="container">
    	<h1 class="lgn-logo animation-in">
	        <span>
	        </span>
    	</h1>
	    <h3 class="text-center page-title"><%- $.i18n.t('app.login.loginpassword') %>
	    </h3>
		<div class="panel panel-default">
        	<div class="panel-body">
            	<form>
            		<label for="migrated_username"><%- $.i18n.t('app.registration.username') %></label>
                	<div class="form-group">
                    	<input id="migrated_username" name="migrated_username" autocomplete='off' type="text" class="form-control alphanumericlengthcontrol" maxlength="20" placeholder="<%- $.i18n.t('app.registration.usernameplaceholder')%>" disabled/>
                	</div>
                	<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="migratedusernameError"></p>
			 		</div>
			 		
                	

					<label for="migrated_login_password"><%- $.i18n.t('app.registration.password')%></label>
					<i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" data-toggle="modal" data-target="#usernameTips"></i>
					<div class="form-group passInput">
					  
					  <div class="input-group" >
						
	                    <input id="migrated_login_password" name="migrated_login_password" autocomplete='off' type="password" maxlength="20" class="form-control" placeholder="<%- $.i18n.t('app.registration.passwordplaceholder')%>"/>
						<span class="input-group-btn">
						  <button class="btn btn-default" type="button" id="mig_login_new_eye_icon">
								<span class="glyphicon glyphicon-eye-close" aria-hidden="true" style="display:none;"></span>
								<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="display:none;"></span>
							</button>
						</span>
						
					  </div>
					  
					  </div>



                	<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="migratedpasswordError"></p>
			 		</div>

					 	 <label for="migrated_login_confpassword"><%- $.i18n.t('app.registration.confirmpassowrd')%></label>
						 <div class="form-group passInput">
					 
					  <div class="input-group" >
						<input id="migrated_login_confpassword" name="migrated_login_confpassword" autocomplete='off' type="password" maxlength="20" class="form-control" placeholder="<%- $.i18n.t('app.registration.confirmpasswordplaceholder')%>"/>
						<span class="input-group-btn">
						 <button class="btn btn-default" type="button" id="mig_login_conf_eye_icon">
								<span class="glyphicon glyphicon-eye-close" aria-hidden="true" style="display:none;"></span>
								<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="display:none;"></span>
							</button>
						</span>
						
					  </div>
					  
					  </div>

			 		
	                
	                <div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="migratedconfirmPasswordError"></p>
			 		</div>
					<div class="row">
						<div class="col-xs-8 col-xs-offset-2">
							<button type="button" class="btn btn-primary btn-block" id="migrated_login_gotoPwdSuccess"><%- $.i18n.t('button.login.submit')%></button>
							<button type="button" class="btn btn-default btn-block" id="migrated_login_cancelbtn"><%- $.i18n.t('button.login.cancel')%></button>
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
	</div>
</div>
<script>
	$(document).ready(function() {
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
	$(document).ready(function(){
		


			$("#migrated_login_password").keyup(function() {
			var len = $("#migrated_login_password").val().length;
			if(len > 0) {
				if($("#mig_login_new_eye_icon > .glyphicon-eye-open").is(":visible")) {
					$("#mig_login_new_eye_icon > .glyphicon-eye-open").show();
					$("#mig_login_new_eye_icon > .glyphicon-eye-close").hide();
				} else {
					$("#mig_login_new_eye_icon > .glyphicon-eye-close").show();
				}
			} else {
				$("#mig_login_new_eye_icon > .glyphicon-eye-open").hide();
				$("#mig_login_new_eye_icon > .glyphicon-eye-close").hide();
				$("#migrated_login_password").prop("type", "password");
			}
		});
		
		$("#mig_login_new_eye_icon").click(function() {
			var confpasslen = $("#migrated_login_password").val().length;
			if(confpasslen < 1) {
				return;
			}
			if($("#mig_login_new_eye_icon > .glyphicon-eye-close").is(":visible")) {
				$("#mig_login_new_eye_icon > .glyphicon-eye-open").show();
				$("#mig_login_new_eye_icon > .glyphicon-eye-close").hide();
				$("#migrated_login_password").prop("type", "text");  
			} else {
				$("#mig_login_new_eye_icon > .glyphicon-eye-open").hide();
				$("#mig_login_new_eye_icon > .glyphicon-eye-close").show();
				$("#migrated_login_password").prop("type", "password");  
			}
		});
		
		
		$("#migrated_login_confpassword").keyup(function() {
			var len = $("#migrated_login_confpassword").val().length;
			if(len > 0) {
				if($("#mig_login_conf_eye_icon > .glyphicon-eye-open").is(":visible")) {
					$("#mig_login_conf_eye_icon > .glyphicon-eye-open").show();
					$("#mig_login_conf_eye_icon > .glyphicon-eye-close").hide();
				} else {
					$("#mig_login_conf_eye_icon > .glyphicon-eye-close").show();
				}
			} else {
				$("#mig_login_conf_eye_icon > .glyphicon-eye-open").hide();
				$("#mig_login_conf_eye_icon > .glyphicon-eye-close").hide();
				$("#migrated_login_confpassword").prop("type", "password");
			}
		});
		
		$("#mig_login_conf_eye_icon").click(function() {
			var confpasslen = $("#migrated_login_confpassword").val().length;
			if(confpasslen < 1) {
				return;
			}
			if($("#mig_login_conf_eye_icon > .glyphicon-eye-close").is(":visible")) {
				$("#mig_login_conf_eye_icon > .glyphicon-eye-open").show();
				$("#mig_login_conf_eye_icon > .glyphicon-eye-close").hide();
				$("#migrated_login_confpassword").prop("type", "text");  
			} else {
				$("#mig_login_conf_eye_icon > .glyphicon-eye-open").hide();
				$("#mig_login_conf_eye_icon > .glyphicon-eye-close").show();
				$("#migrated_login_confpassword").prop("type", "password");  
			}
		});

	});
</script>
