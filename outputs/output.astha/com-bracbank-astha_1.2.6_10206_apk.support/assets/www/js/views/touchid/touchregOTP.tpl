<%
	var els = new EncryptedLocalStorage('secret'); 
	var MaskMobile = els.get("MaskMobile");
	var soft_token = els.get("soft_token");
	var devicePlatform = els.get("device.platform");
	var touchIdReg=els.get("touchIdReg");
	var bioFlag=els.get("BiometricType");
%>

<script src="js/libs/security/crypto-js/md5.js"></script>

<body class="loginbg">
	<div  class="pagewrapper">
		<div class="container">
            <div class="row ">
				<div class="col-sm-6">
					<h1 class="lgn-logo"><span></span></h1>
						<div class="panel panel-default">
		        			  		<div class="panel-heading">
		        			    		<h3 class="panel-title">
		        			    		<% if(touchIdReg != "A") { %>
			        			    		<% if(bioFlag=="TID"){ %>
		        			    		<%-$.i18n.t('app.touchid.touchRegTitle')%>
								 			<% }else if(bioFlag=="FID"){ %>
								 				<%-$.i18n.t('app.faceid.faceRegTitle')%>
								 			<% } %>
		        			    		<% } else { %>
		        			    		<%-$.i18n.t('app.login.welcomebank')%>
		        			    		<% } %>
		        			    		</h3>
		        			 		</div>
		        			  		<div class="panel-body">
<div class="dtl_view">
	<form role="form" id="loginform">
		<input type="hidden" name="isformloaded" id="isformloaded" value="<%-soft_token%>" />
		<fieldset>
		<% if (typeof(MaskMobile) != "undefined") { %>
				<div id="otpId">
					<% if(soft_token=="Y") { %>
							<div class="ownaccountransferOTP">
								<div class="form-group paymentMode">
									<label><%-$.i18n.t('app.creditcard.ccpayments.authenticate')%></label>
									<div data-toggle="buttons" class="btn-group btn-group-justified">
									<label class="btn btn-default smsotp" id="labeloption">
										<input type="radio" value="otp" id="option1" name="option1"><%-$.i18n.t('app.creditcard.ccpayments.smsotp')%> 
									</label>
									<label class="btn btn-default softToken" >
										<input type="radio" value="softotp" id="option2" name="option2"><%-$.i18n.t('app.creditcard.ccpayments.softtoken')%>  
									</label>
								</div>
							</div>
					<% } %>
					<div id="sms">
					<div class="smsotp_block" style="display: none;" id="smsDivId">
						<div class="alert alert-info text-center">
							<b><%-$.i18n.t('app.creditcard.ccpayments.authtransaction')%></b><br/>
								<%-$.i18n.t('app.registration.otpmessage')%>(
								<% if (typeof(MaskMobile) != "undefined") { %> <%-MaskMobile%> <%}%> )
								<%-$.i18n.t('app.registration.otpmessage1')%>
						</div>
						<div class="form-group">
							<div class="optwrap">
							<% if ( devicePlatform == "Android" ) { %>
								<input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.managebills.enterotp')%>">
							<%}else{%>
								<input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control  lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.managebills.enterotp')%>">
							<%}%>
								<span class="input-group-btn hidden">
									<button type="button" id="resendclick" name="resendclick" class="btn btn-success"><%-$.i18n.t('app.creditcard.ccpayments.resend')%></button>
								</span>
							</div>
						</div>
					</div>
					<div id="secError">
						<label><strong><font color="red"><span id="showError"></span></font></strong></label>
					</div>
					<input type="hidden" id="hidotp" value=""/>
					<div class="softTock" style="display: none;" id="softTockId">
						<div class="form-group">
						<% if ( devicePlatform == "Android" ) { %>
							<input type="number" pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="8" id="softotp" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterpasscode')%>">
						<%}else{%>
							<input type="number" pattern="[0-9]*" inputmode="numeric" class="form-control  lenthcontrol"  maxlength="8" id="softotp" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterpasscode')%>">
							<%}%>
						</div>
					</div>
				</div>
				<input type=button id="loginotpclick" name="loginotpclick" class="btn btn-success btn-block" value="<%-$.i18n.t('app.creditcard.ccpayments.submit')%>" />
			<%}else{%>
				<div class="alert alert-info alert-sm">
					<span><%-$.i18n.t('app.login.otpmobmsg')%></span>
				</div>
			<%}%>
			<input type="button" class="btn btn-primary btn-block" name="cancel" id="cancel"  value="<%-$.i18n.t('app.mpin.cancel')%>" />
		</fieldset>
	</form>
</div><br/>

							</div>
						</div>
        			</div>
             	</div><!-- row ends here-->
        	</div>
    	</div>
  
</body>

<%
if(soft_token!="Y"){
%>
<script>
		$(".smsotp_block").show();
		document.getElementById('smsDivId').style.display='inline';
		$(".softTock").hide();
</script>
<%}else{%>

<%}%>
<script>
(function ($){
     $.fn.inputlength=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keypress',function(e){
           // alert(makelength);
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
               //alert("length shoutnot exceed to"+ +makelength );
                e.preventDefault();
               return false;
             }
              var iOS = /iPad|iPhone|iPod/.test( navigator.userAgent );
            var inputType=$(this).attr("inputmode");
			if(iOS && inputType == "numeric" ){ 
				var old=$(this).val();
            	$(this).val(old+String.fromCharCode(convertNumbers2EnglishLocal(e.keyCode)));
 				e.preventDefault();
            }
            // return true;
          });

        });
     };
}(jQuery));
$('.lenthcontrol').inputlength();
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
		});

</script>
