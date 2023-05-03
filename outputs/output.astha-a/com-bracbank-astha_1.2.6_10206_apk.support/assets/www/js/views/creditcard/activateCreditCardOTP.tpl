<%
	var els = new EncryptedLocalStorage('secret'); 
	var MaskMobile = els.get("MaskMobile");
	var soft_token = els.get("soft_token");
	var devicePlatform = els.get("device.platform");
%>

 <a href="#/activatecreditcard" id="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
  <ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.activatecc.creditcards')%></a></li>
     <li class="active"> <%-$.i18n.t('app.creditcard.activatecc.activate')%></li>
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
															<label><%-$.i18n.t('app.creditcard.activatecc.authenticate')%></label>
															<div data-toggle="buttons" class="btn-group btn-group-justified">
																<label class="btn btn-default smsotp" id="labeloption">
																	<input type="radio" id="option1" name="option1"><%-$.i18n.t('app.creditcard.activatecc.smsotp')%> 
																</label>
																<label class="btn btn-default softToken" >
																	<input type="radio" id="option2" name="option2" ><%-$.i18n.t('app.creditcard.activatecc.softtoken')%>  
																</label>
															</div>
														</div>
														<% } %>	
														<div class="smsotp_block" style="display: none;" id="smsDivId">
																<div class="alert alert-info text-center">
																	<b><%-$.i18n.t('app.creditcard.activatecc.authtransaction')%></b><br/>
																	<%-$.i18n.t('app.creditcard.activatecc.pwdmsg')%> 
																	<% if (typeof(MaskMobile) != "undefined") { %>
																        	<span>( <%-MaskMobile%> ) </span>
																            <%}else{%>
																            <span> </span>
																		<%}%>
																	<%-$.i18n.t('app.creditcard.activatecc.pwdmsg1')%> 
																</div>
																<div id="secError">
														        	<label><strong><font color="red"><span id="showError"></span></font></strong></label>
															    </div>
																<div class="form-group">
																	<div class="optwrap">																	
																	<% if ( devicePlatform == "Android" ) { %>																	
																		<input type="number" autocomplete='off' pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.creditcard.activatecc.enterotp')%>">
																		<%}else{%>
																		<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric" id="otp" name="otp" maxlength="6" placeholder="<%-$.i18n.t('app.creditcard.activatecc.enterotp')%>" class="form-control lenthcontrol">
																		<%}%>
																		<span class="input-group-btn hidden">
																			<button type="button" id="resend" name="resend" class="btn btn-success"><%-$.i18n.t('app.creditcard.activatecc.resend')%></button>
																		</span>
																	</div>
																</div>
														</div>
														<div class="softTock" style="display: none;" id="softTockId">
															<div class="form-group">															
															<% if ( devicePlatform == "Android" ) { %>																
																<input type="number" autocomplete='off' pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="8" id="softotp" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.activatecc.enterpasscode')%>">
																<%}else{%>
																<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric"  id="softotp" name="softotp" maxlength="8" placeholder="<%-$.i18n.t('app.creditcard.activatecc.enterpasscode')%>" class="form-control lenthcontrol">
															<%}%>
															</div>
														</div>
												</div>
												<input type="hidden" id="hidotp" name="hidotp" value="">
												
						                        <a id="submit" name="submit" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.activatecc.submit')%></a>
						                        <a href="#/activatecreditcard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.activatecc.cancel')%></a>
							        </div>
 </form></div><br/>

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

<%
if(soft_token!="Y"){
%>
<script>
		$(".smsotp_block").show();
		document.getElementById('smsDivId').style.display='inline';
		$(".softTock").hide();
		$("#hidotp").val("otp");
		$(".content").animate({ scrollTop: 0 }, "fast");
</script>
<%}else{%>

<%}%>
