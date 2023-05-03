<%
	var els = new EncryptedLocalStorage('secret');
	var isphone = /iPhone|iPad|Android/.test(navigator.userAgent);
	var iOS = /iPhone|iPod/.test( navigator.userAgent );
	//iOS=true;
	//isphone=true;
	var touchApp =els.get("touchAllowedForApp");
	var touchUser =els.get("touchAllowedForUser");
	var touchReg=els.get("touchIdReg");
	var bioFlag=els.get("BiometricType");
	var devicePlatform = els.get("device.platform");
	var registerdDevice = els.get("registerdDevice");
	var appContextPath = els.get('app.context.path');
	var iOSphone = /iPhone/.test(navigator.userAgent);
	if(iOSphone){
        if(bioFlag=="FID"){
			StatusBar.overlaysWebView(true);
			StatusBar.styleDefault();
        }
    }

%>
<div class="pagewrapper">
   <div class="container">
      <h1 class="lgn-logo animation-in">
        <span></span>
      </h1>
	  <p class="text-center" style="font-size:70%;color:#999;margin:0px;">
		<% if(appContextPath.indexOf('https://astha-sit.bracbank.com')!= -1) { %>
			<%-$.i18n.t('app.login.vercodesit')%>
		<% } else if(appContextPath.indexOf('https://astha.bracbank.com/')!= -1) { %>
			<%-$.i18n.t('app.login.vercodeprod')%>
		<% } else if(appContextPath.indexOf('https://astha-uat.bracbank.com')!= -1) { %>
			<%-$.i18n.t('app.login.vercodeuat')%>
		<% } else if(appContextPath.indexOf('https://astha-preprod.bracbank.com')!= -1) { %>
			<%-$.i18n.t('app.login.vercodepreprod')%>
		<% } %>
	 </p>
	  <h3 class="text-center page-title"><small><%-$.i18n.t('app.login.loginto')%></small><br/><%-$.i18n.t('app.login.mobbanking')%></h3>
	  <!--<div class="logWit small">
			<div class="row">
				<div class="col-xs-6 col-sm-6 pr5">
					<a href="javascript:void(0);" id="login_tab" class="username text-center active">
						<span class="menu_icon ico-xs userI"></span>
						<p class="small m0"><%-$.i18n.t('app.login.username')%></p>
					</a>
				</div>
				<div class="col-xs-6 col-sm-6 pl5">
					<a href="javascript:void(0);" id="mpin_tab" class="mPIN text-center">
						<span class="menu_icon ico-xs mPIN"></span>
						<p class="small m0"><%-$.i18n.t('app.login.mpin')%></p>
					</a>
				</div>				
			</div>
		</div> -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form>
					<label for="username"><%-$.i18n.t('app.login.username')%></label>
					<div class="form-group">
						<input id="username" autocomplete="off" name="username" type="text" class="form-control restrictCpyPst alphanumericlengthcontrol" placeholder="<%-$.i18n.t('app.login.usernameplaceholder')%>" />
						<p class="text-right small">
							<a href="javascript:void(0);" id="forgot_username" class="text-link"><%-$.i18n.t('app.login.forgotusrname')%></a>
						</p>
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="usernameError"></p>
			 		</div>
					 <label for="password"><%-$.i18n.t('app.login.password')%></label>
					<div class="form-group passInput">
					  
					  <div class="input-group" >
						<input id="password" autocomplete="off" name="password" maxlength="20" type="password" class="form-control restrictCpyPst" placeholder="<%-$.i18n.t('app.login.pwdplaceholder')%>" />
						<span class="input-group-btn">
							<button class="btn btn-default" type="button" id="login_eye_icon">
								<span class="glyphicon glyphicon-eye-close" aria-hidden="true" style="display:none;"></span>
								<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="display:none;"></span>
							</button>
						</span>
						
					  </div>
					  <p class="text-right small">
							<a href="javascript:void(0);" id="forgot_password" class="text-link"><%-$.i18n.t('app.login.forgotpasswd')%></a>
						</p>
					  </div>
					<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="passwordError"></p>
			 		</div>
					<div class="row">
					  <div class="col-xs-8 col-xs-offset-2">
							<a href="javascript:void(0);" id ="login" class="btn btn-primary btn-block" ><%-$.i18n.t('app.login.login')%></a>
						</div>
					</div>
					<%if(isphone){%>
						<% if(touchUser !="D") { %>
						  <% if(touchReg != "A"){ %>
							 <% if(bioFlag=="TID"){ %>
								<div class="row" style="margin-top:10px;">
									<div class="col-xs-8 col-xs-offset-2">
										<input type="button" class="btn btn-secondary btn-block" name="userloginTouchtmp" id="userloginTouchtmp"  value="<%-$.i18n.t('app.touchid.regTouchId')%>" />
									</div>
								</div>
							 <% } else if(bioFlag=="FID"){ %>
								<div class="row" style="margin-top:10px;">
									<div class="col-xs-8 col-xs-offset-2">
									 <input type="button" class="btn btn-secondary btn-block" name="userloginTouchtmp" id="userloginTouchtmp"  value="<%-$.i18n.t('app.faceid.regFaceId')%>" />
									</div>
								</div>
							 <% } %>
							<% } else { %>
								<% if(bioFlag=="FID") { %>
									<div class="row" style="margin-top:10px;">
									  <div class="col-xs-8 col-xs-offset-2">
											<input type="button" class="btn btn-secondary btn-block" id="login_cancelbtn" value="<%- $.i18n.t('app.faceid.loginFaceId')%>" />
										</div>
									</div>
								<% } else if(bioFlag=="TID") { %>
									<div class="row" style="margin-top:10px;">
									  <div class="col-xs-8 col-xs-offset-2">
											<input type="button" class="btn btn-secondary btn-block" id="login_cancelbtn" value="<%- $.i18n.t('app.faceid.loginTouchId')%>" />
										</div>
									</div>
								<% } %>
							<% } %>
						<% } %>
					<% } %>
					<br/>					
					<!--<div class="dynamic_banner_wrap">
						<img src="images/common/mobile_banner.png" class="img-responsive img-thumbnail" >
					</div>-->
				</form>
			</div>
		</div>
		<br><br><br>
	</div>
	<div class="quickLink">
		<div class="row">
			<div class="col-xs-4 col-sm-4">
				<a href="javascript:void(0);" class="qlink" id="newReg">
					<span class="menu_icon ico-xs newReg"></span>
					<p><%-$.i18n.t('app.login.newuser')%></p>
				</a>
			</div>
			<div class="col-xs-4 col-sm-4">
				<a href="javascript:void(0);" id="locator" class="qlink">
					<span class="menu_icon ico-xs map"></span>
					<p><%-$.i18n.t('app.login.locator')%></p>
				</a>
			</div>
			<div class="col-xs-4 col-sm-4">
			</div>
			<div class="col-xs-4 col-sm-4">
				<a href="#/contact" class="qlink" id="contactlink">
					<span class="menu_icon ico-xs contact"></span>
					<p><%-$.i18n.t('app.login.contactus')%></p>
				</a>
			</div>
		</div>
	</div>
</div>
<script src="js/library/progressbar.min.js"></script>
<script>

$('#contactlink').on( "click", function() {
	els.set('contactUSFrm',"PRE");
});
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
		
		DisableCopyPaste();
		$("#password").keyup(function() {
			var len = $("#password").val().length;
			if(len > 0) {
				if($("#login_eye_icon > .glyphicon-eye-open").is(":visible")) {
					$("#login_eye_icon > .glyphicon-eye-open").show();
					$("#login_eye_icon > .glyphicon-eye-close").hide();
				} else {
					$("#login_eye_icon > .glyphicon-eye-close").show();
				}
			} else {
				$("#login_eye_icon > .glyphicon-eye-open").hide();
				$("#login_eye_icon > .glyphicon-eye-close").hide();
				$("#password").prop("type", "password");
			}
		});
		
		$("#login_eye_icon").click(function() {
			var passLen = $("#password").val().length;
			if(passLen < 1) {
				return;
			}
			
			if($("#login_eye_icon > .glyphicon-eye-close").is(":visible")) {
				$("#login_eye_icon > .glyphicon-eye-open").show();
				$("#login_eye_icon > .glyphicon-eye-close").hide();
				$("#password").prop("type", "text");  
			} else {
				$("#login_eye_icon > .glyphicon-eye-open").hide();
				$("#login_eye_icon > .glyphicon-eye-close").show();
				$("#password").prop("type", "password");  
			}
		});
	});
</script>
