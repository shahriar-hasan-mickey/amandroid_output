<%
	var els = new EncryptedLocalStorage('secret'); 
	var MaskMobile = els.get("MaskMobile");
	var soft_token = els.get("soft_token");
	var devicePlatform = els.get("device.platform");
%>
 
  <a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.blkdebitcard.blkdebitcard')%></li>
                  </ol>

 <div class="clearfix"></div><br/>
 <div class="newWiz">
       <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.billinquiry.input')%></p></div></div>
       <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.sadad.billinquiry.verify')%></p></div></div>
       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.billinquiry.confirm')%></p></div></div>
  </div>
 <div class="dtl_view">
<form role="form" id="formotp">
<input type="hidden" name="isformloaded" id="isformloaded" value="<%-soft_token%>" />
							        <div id="otpId">	
									        	<div class="ownaccountransferOTP">
									        		<% if(soft_token=="Y") { %>
														<div class="form-group paymentMode">
															<label><%-$.i18n.t('app.creditcard.ccpayments.authenticate')%></label>
															<div data-toggle="buttons" class="btn-group btn-group-justified">
																<label class="btn btn-default smsotp" id="labeloption">
																	<input type="radio" value="otp" id="option1" name="option1"><%-$.i18n.t('app.creditcard.resetpincc.smsotp')%> 
																</label>
																<label class="btn btn-default softToken" >
																	<input type="radio" id="option2" name="option2"><%-$.i18n.t('app.creditcard.ccpayments.softtoken')%>  
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
																<div class="form-group">
																	<div class="optwrap">
																	<% if ( devicePlatform == "Android" ) { %>
																		<input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.managebills.enterotp')%>">
																	<%}else{%>
																		<input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.managebills.enterotp')%>">
																	<%}%>
																		<span class="input-group-btn hidden">
																			<button type="button" id="resend" name="resend" class="btn btn-success"><%-$.i18n.t('app.creditcard.ccpayments.resend')%></button>
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
																<input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="8" id="softotp" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterpasscode')%>">
															<%}else{%>
																<input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="8" id="softotp" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterpasscode')%>">
															<%}%>
															</div>
														</div>
												</div>
						                        <a id="submit" name="submit" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.ccpayments.submit')%></a>
						                        <a href="#/blockdebitcardconfirmrequest" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
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
</script>