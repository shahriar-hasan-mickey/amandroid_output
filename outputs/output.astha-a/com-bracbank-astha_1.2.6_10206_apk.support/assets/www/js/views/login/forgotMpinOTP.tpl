<%
	var els = new EncryptedLocalStorage('secret'); 
	var MaskMobile = els.get("MaskMobile");
	var mpincheck = els.get("mpintype");
	var soft_token = els.get("soft_token");
	var devicePlatform = els.get("device.platform");
%>
		<!--pagewrapper Starts here-->
		<div  class="pagewrapper">
				<!--Container Starts here-->
     		 <div class="container">
     		 		<!-- Row Starts here-->
        			<div class="row">
        				<!-- Coloumn Starts here-->
          				<div class="col-sm-6">
				            <h1 class="lgn-logo">
				              <span>
				              </span>
				            </h1>
				             <!-- Panel Starts here-->
            				<div class="panel panel-default">
            					<!-- Panel head Starts here-->
              					<div class="panel-heading">
									<% if(mpincheck=="NEWMPIN"){ %>
										<h3 class="panel-title"><%-$.i18n.t('app.mpin.creatempin')%></h3>
									<%}else{%>
										<h3 class="panel-title"><%-$.i18n.t('app.mpin.forgotmpin')%></h3>
									<%}%>
								</div>
              					<!-- Panel head ends here-->
              					<div class="panel-body">
<!-- form Starts here-->
              							



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
								<input type="number" autocomplete='off' pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.managebills.enterotp')%>">
							<%}else{%>
								<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric"  class="form-control lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.managebills.enterotp')%>">
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
							<input type="number" autocomplete='off' pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="8" id="softotp" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterpasscode')%>">
						<%}else{%>
							<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric"  class="form-control lenthcontrol"  maxlength="8" id="softotp" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterpasscode')%>">
							<%}%>
						</div>
					</div>
				</div>
				<input type=button id="submitOTP" name="submitOTP" class="btn btn-success btn-block" value="<%-$.i18n.t('app.creditcard.ccpayments.submit')%>" />
			<%}else{%>
				<div class="alert alert-info alert-sm">
					<span><%-$.i18n.t('app.login.otpmobmsg')%></span>
				</div>
			<%}%>
            <a href="#/forgotmpin" class="btn btn-primary btn-block"><%-$.i18n.t('app.forgotusername.cancel')%></a>
		</fieldset>
	</form>          							
              							
              							
              							
                   				
<!-- form ends here-->

                     			</div>
                 			</div>
                 			<!-- panel Ends here-->
              			</div>
              			<!-- Coloumn Ends here-->
          		 </div>
          		 <!-- row ends here-->
      		</div>
      		<!--Container Ends here-->
  		</div>
  		<!--pagewrapper Ends here-->

  		
 
<script type="text/javascript">
	var specialKeys = new Array();
	specialKeys.push(8); //Backspace
	specialKeys.push(9); //TAB
</script>
<script>
$(document).ready(function()
{
	//$(".smsotp_block,.softTock").hide();
	$(".smsotp").click(function()
	{
		//alert("SMS");
		$("#hidotp").val("otp");
		$(".smsotp_block").show();
		document.getElementById('smsDivId').style.display='inline';
		$(".softTock").hide();
		$('.smsotp').addClass('active');
		$('.softToken').removeClass('active');
		
	});

	$(".softToken").click(function()
	{
		//alert("SOFT");
		$("#hidotp").val("softotp");
		$(".smsotp_block").hide();
		document.getElementById('softTockId').style.display='inline';
		$(".softTock").show();
		$('.softToken').addClass('active');
		$('.smsotp').removeClass('active');
	});
	

		    
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
