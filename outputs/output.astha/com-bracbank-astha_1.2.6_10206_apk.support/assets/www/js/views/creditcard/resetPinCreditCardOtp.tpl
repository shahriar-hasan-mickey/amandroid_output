<%
	var els = new EncryptedLocalStorage('secret'); 
	var MaskMobile = els.get("MaskMobile");
	var soft_token = els.get("soft_token");
	var devicePlatform = els.get("device.platform");
%>

 <a href="#/resetPinCreditCard" id="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
  <ol class="breadcrumb cust_breadcrumb pull-left">
     <li>
     <a href="#/creditcard"><%-$.i18n.t('app.creditcard.resetpincc.creditcards')%></a>
     </li>
     <li class="active"> <%-$.i18n.t('app.creditcard.resetpincc.reset')%></li>
 </ol>

 <div class="clearfix"></div><br/>
                  <!--Step Control Ends Here-->
                     <!--Step Control Ends Here-->
 <div class="dtl_view">
<form role="form" id="formotp">
<input type="hidden" name="isformloaded" id="isformloaded" value="<%-soft_token%>" />
       <!-- OTP Page Starts here-->	   
							        <div id="otpId">	
									        	<div class="billpay">
									        	<% if(soft_token=="Y") { %>
														<div class="form-group paymentMode">
															<label><%-$.i18n.t('app.creditcard.resetpincc.authenticate')%></label>
															<div data-toggle="buttons" class="btn-group btn-group-justified">
																<label class="btn btn-default smsotp" id="labeloption">
																	<input type="radio" value="otp" id="option1" name="option1"><%-$.i18n.t('app.creditcard.resetpincc.smsotp')%> 
																</label>
																<label class="btn btn-default softToken" >
																	<input type="radio" value="softotp" id="option2" name="option2"><%-$.i18n.t('app.creditcard.resetpincc.softtoken')%>  
																</label>
															</div>
														</div>
																<% } %>	
														<div class="smsotp_block" style="display: none;" id="smsDivId">
																<div class="alert alert-info text-center">
																	<b><%-$.i18n.t('app.creditcard.resetpincc.authtransaction')%></b><br/>
																	<%-$.i18n.t('app.creditcard.resetpincc.pwdmsg')%> 
																	<% if (typeof(MaskMobile) != "undefined") { %>
																        	<span><%-MaskMobile%></span>
																            <%}else{%>
																            <span> </span>
																		<%}%>
																	<%-$.i18n.t('app.creditcard.resetpincc.pwdmsg1')%> 
																</div>
																<div id="secError">
														        	<label><strong><font color="red"><span id="showError"></span></font></strong></label>
															</div>
																<div class="form-group">
																	<div class="optwrap">
																	<% if ( devicePlatform == "Android" ) { %>
																		<input type="number" autocomplete='off' pattern="[0-9]*" id="otp" name="otp" maxlength="6" placeholder="<%-$.i18n.t('app.creditcard.resetpincc.enterotp')%>" class="form-control lenthcontrol">
																	<%}else{%>
																		<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric" id="otp" name="otp" maxlength="6" placeholder="<%-$.i18n.t('app.creditcard.resetpincc.enterotp')%>" class="form-control lenthcontrol">
																	<%}%>
																		<span class="input-group-btn hidden">
																			<button type="button" id="resend" name="resend" class="btn btn-success"><%-$.i18n.t('app.creditcard.resetpincc.resend')%></button>
																		</span>
																	</div>
																</div>
														</div>
														<div class="softTock" style="display: none;" id="softTockId">
															<div class="form-group">
															<% if ( devicePlatform == "Android" ) { %>
																<input type="number" autocomplete='off' pattern="[0-9]*" id="softotp" name="softotp" maxlength="8" placeholder="<%-$.i18n.t('app.creditcard.resetpincc.enterpasscode')%>" class="form-control lenthcontrol">
															<%}else{%>
																<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric"  id="softotp" name="softotp" maxlength="8" placeholder="<%-$.i18n.t('app.creditcard.resetpincc.enterpasscode')%>" class="form-control lenthcontrol">
															<%}%>
															</div>
														</div>
												</div>
												<input type="hidden" id="pinflag" name="pinflag" value="<%-pinflag%>"/>
												<input type="hidden" id="hidotp" name="hidotp" value=""/>
												<input type="hidden" id="acno" name="acno" value="<%-acno%>">
												<input type="hidden" id="cardpin" name="cardpin" value="<%-cardpin%>">
						                        <a id="submit" name="submit" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.resetpincc.submit')%></a>
						                        <a href="#/resetPinCreditCard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.resetpincc.cancel')%></a>
							        </div>
 </form></div><br/>

<%
if(soft_token!="Y"){
%>
<script>
		$(".smsotp_block").show();
		document.getElementById('smsDivId').style.display='inline';
		$(".softTock").hide();
		$("#hidotp").val("otp");
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
$(".content").animate({ scrollTop: 0 }, "fast");
</script>
