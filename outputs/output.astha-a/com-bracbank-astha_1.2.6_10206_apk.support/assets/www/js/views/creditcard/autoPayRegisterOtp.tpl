  <%
	var els = new EncryptedLocalStorage('secret'); 
			 var devicePlatform = els.get("device.platform");
	var MaskMobile = els.get("MaskMobile");
	var soft_token = els.get("soft_token");
%>
  <!--Content Starts Here-->
                  <a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
                     <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.cclimit.creditcards')%></a></li>
                     <li class="active"><%-$.i18n.t('app.creditcard.general.autopayregister')%></li>
                  </ol>
                  <div class="clearfix"></div>
                   <!--Step Control Starts Here-->
                    <div class="newWiz">
                         <div class="steps done"><div>1<p><%-$.i18n.t('app.creditcard.cclimit.input')%></p></div></div>
                         <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.creditcard.cclimit.verify')%></p></div></div>
                         <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.creditcard.cclimit.confirm')%></p></div></div>
                    </div>
         
      <!--Step Control Ends Here-->
        <!--Breadcrumb Ends Here-->
              <div class="dtl_view">
	<form role="form" id="loginform">
		<input type="hidden" name="isformloaded" id="isformloaded" value="<%-soft_token%>" />
		<fieldset>
		<% if (typeof(MaskMobile) != "undefined") { %>
				<div id="otpId">
					<div class="billpay">
							<% if(soft_token=="Y") { %>								
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
														<%}%>
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
																		<input type="number" autocomplete='off' pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterotp')%>">
																		<%}else{%>
																		<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterotp')%>">
																		<%}%>
																		<span class="input-group-btn hidden">
																			<button type="button" id="resend" name="resend" class="btn btn-success"><%-$.i18n.t('app.creditcard.ccpayments.resend')%></button>
																		</span>
																	</div>
																</div>
														</div>
														<input type="hidden" id="hidotp" value=""/>
														<div class="softTock" style="display: none;" id="softTockId">
															<div class="form-group ">
															<% if ( devicePlatform == "Android" ) { %>
																<input type="number" autocomplete='off' pattern="[0-9]*" class="form-control lenthcontrol "  maxlength="8" id="softotp" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterpasscode')%>">
																<%}else{%>
																<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="8" id="softotp" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterpasscode')%>">
																		<%}%>
															</div>
														</div>
												</div>
				<input type=button id="submit" name="submit" class="btn btn-success btn-block" value="<%-$.i18n.t('app.creditcard.ccpayments.submit')%>" />
			<%}else{%>
				<div class="alert alert-info alert-sm">
					<span><%-$.i18n.t('app.login.otpmobmsg')%></span>
				</div>
			<%}%>
			<!--<input type="button" class="btn btn-primary btn-block" name="cancel" id="cancel"  value="<%-$.i18n.t('app.mpin.cancel')%>" />-->
			<a href="#/autopayregisterconfirm" class="btn btn-primary btn-block " id="cancel"><%-$.i18n.t( 'app.mpin.cancel')%></a></div>
		</fieldset>
	</form>
</div><br/>
                  <br/>
               
               <!--Content Ends Here-->
 <script type="text/javascript">
	var specialKeys = new Array();
	specialKeys.push(8); //Backspace
	specialKeys.push(9); //TAB
</script>


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