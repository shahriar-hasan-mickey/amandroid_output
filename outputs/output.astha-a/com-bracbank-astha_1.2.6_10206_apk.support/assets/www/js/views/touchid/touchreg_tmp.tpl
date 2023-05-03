 <%
	var els = new EncryptedLocalStorage('secret'); 
    var langchange = els.get('lang_id');
    var bioFlag=els.get("BiometricType");
    console.log("bioFlag",bioFlag);
%>
<body class="loginbg">
	<div  class="pagewrapper">
		<div class="container">
			<h1 class="lgn-logo"><span></span></h1>
				<div class="panel panel-default">
					<div class="panel-heading" style="background:#0072bc; color:#fff;">
						<% if(bioFlag=="TID"){ %>
							<h3 class=	"panel-title"><%-$.i18n.t('app.touchid.touchRegTitle')%></h3>
						<% }else if(bioFlag=="FID"){ %>
							<h3 class="panel-title"><%-$.i18n.t('app.faceid.faceRegTitle')%></h3>
						<% } %>
					</div>
		        	<div class="panel-body">
						<form>														
							<div id="userLogin">
								<fieldset>														
									<div class="form-group" id="userLoginBtn" >
									  <div class="btn-group btn-group-justified custTab" role="group">
											<div class="btn-group" role="group">
													<!-- <input type="button" id="log" class="btn btn-default" value="<%-$.i18n.t('app.mpin.useridpwd')%>"> -->
													<button type="button" id="logTouch" class="btn btn-default active"><%-$.i18n.t('app.login.useridpwd')%></button>
											</div>
											<div class="btn-group" role="group">
													<!-- <input type="button" class="btn btn-default active" value="<%-$.i18n.t('app.mpin.mpin')%>"> -->
													<button type="button" id="mpinTouch" class="btn btn-default"><%-$.i18n.t('app.login.mpin')%></button>
											</div>
										</div>
									</div>
									<div class="form-group required">
										<input value="" type="text"   autocorrect="off" class="form-control restrictCpyPst alphanumericlengthcontrol" id="username" name="username" placeholder="<%-$.i18n.t('app.login.usernameplaceholder')%>"  autocomplete="off" data-error-style="inline" maxlength="30"/>
									</div>
									

										<div class="form-group required passInput">
					  
					  <div class="input-group" >
						<input id="password" name="password" type="password" class="form-control restrictCpyPst" placeholder="<%-$.i18n.t('app.login.pwdplaceholder')%>" />
						<span class="input-group-btn">
							<button class="btn btn-default" type="button" id="touch_reg_eye_icon">
								<span class="glyphicon glyphicon-eye-close" aria-hidden="true" style="display:none;"></span>
								<span class="glyphicon glyphicon-eye-open" aria-hidden="true" style="display:none;"></span>
							</button>
						</span>
						
					  </div>
					  
					  </div>
									<!--<div class="form-group">
										<label class="checkinput small  pull-left">
											 <input type="checkbox" class="check-hidden" id="iagreeeUser" name="iagreeeUser" />
											 <% if(bioFlag == "FID") { %>
											 <%-$.i18n.t('app.registration.iagreeeFace')%>
											 <% } else { %>
											 <%-$.i18n.t('app.registration.iagreeeTouch')%>
											 <% } %>
											 <a onclick= "openUrl(this); return false;" ><%-$.i18n.t('app.registration.termscond')%></a>
											<% if(langchange != 'en-US'){ %>
											<% if(bioFlag == "FID") { %>
												<%-$.i18n.t('app.touchid.iagreee11')%>
											<% } else { %>
												<%-$.i18n.t('app.touchid.iagreee1')%>
											<% } %>
											<% } %>		                        
										 </label>
									</div>-->
									<div class="form-group">
						              <label class="check-label">
						                <input type="checkbox" name="transfer" id="termsand"> I agree to the <a href="javascript:void(0);" id="tAndCPopup">Terms and Conditions</a>
						                <span class="checkmark1"></span>
						              </label>
						              </div>
						               <div class="form-group has-error">
										<p class="help-block error-message has-error" style="color:#a94442" id="tandcErr"></p>
									</div>	
									</br>
								   <!--<div class="clearfix"></div>
									<div id="errortermscondUser" style="display:none">
									 <p class="help-block error-message" style="font-size:14px;"><font color="#A94442"><%-$.i18n.t('validation.newregistration.iagreee')%></font></p>
									</div>-->
									</br>
									<input type="button" class="btn btn-primary btn-block" name="userTouchReg" id="userTouchReg"  value="<%-$.i18n.t('app.mpin.submit')%>" />
									<a href="#/login" class="btn btn-default btn-block"><%-$.i18n.t('app.mpin.cancel')%></a>
									<br/>	
								</fieldset>									                  				                             	
							</div>					
						</form>
					</div>
					<div id="termsAndCondPopup"></div>
        		</div>
        	</div>
    	</div>
<script src="js/pollyfills/jquery.placeholder.min.js"></script>
<script>
	$(document).ready(function() {
	var els = new EncryptedLocalStorage('secret');
	DisableCopyPaste();
		$("#userLogin").show();
		$("#userLoginBtn").hide();
		$(".check-hidden:checked").parents(".checkinput").addClass("active");			
		$('input[placeholder], textarea[placeholder]').placeholder();
		
	});
</script>
<script>
	$(document).ready(function() {
		$('html').addClass('loginbg');		
	});
</script>
</body>



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
$(document).ready(function()
		{
			$('input').keypress(function(e) {
        var code = (e.keyCode ? e.keyCode : e.which);
        if ( (code==13) || (code==10))
            {
            $(this).blur();
            return false;
            }
    });

		$("#password").keyup(function() {
			var len = $("#password").val().length;
			if(len > 0) {
				if($("#touch_reg_eye_icon > .glyphicon-eye-open").is(":visible")) {
					$("#touch_reg_eye_icon > .glyphicon-eye-open").show();
					$("#touch_reg_eye_icon > .glyphicon-eye-close").hide();
				} else {
					$("#touch_reg_eye_icon > .glyphicon-eye-close").show();
				}
			} else {
				$("#touch_reg_eye_icon > .glyphicon-eye-open").hide();
				$("#touch_reg_eye_icon > .glyphicon-eye-close").hide();
				$("#password").prop("type", "password");
			}
		});
		
		$("#touch_reg_eye_icon").click(function() {
			var passlen = $("#password").val().length;
			if(passlen < 1) {
				return;
			}
			if($("#touch_reg_eye_icon > .glyphicon-eye-close").is(":visible")) {
				$("#touch_reg_eye_icon > .glyphicon-eye-open").show();
				$("#touch_reg_eye_icon > .glyphicon-eye-close").hide();
				$("#password").prop("type", "text");  
			} else {
				$("#touch_reg_eye_icon > .glyphicon-eye-open").hide();
				$("#touch_reg_eye_icon > .glyphicon-eye-close").show();
				$("#password").prop("type", "password");  
			}
		});
		});
		function openUrl(url) {
		var els = new EncryptedLocalStorage('secret');
		var responseurlData = els.get("responseurlData");
		var i=0;
		_.each(responseurlData,function(datalink,index){
		var codelink = datalink.code;
	    //alert("codelink"+codelink);
	    if(codelink=="TID"){
	    	//url = els.get("generallink");
	    	if($.i18n.lng() == 'en-US'){
					url = datalink.description;
			}else if($.i18n.lng() == 'en-AR'){
					url = datalink.descriptionAr;
			}
	    }
	    });
	      //alert("open url: " + url);
	    
      window.open(url, '_system', 'location=yes');
    }

</script>
