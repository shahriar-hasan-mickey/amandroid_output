<%
			var els = new EncryptedLocalStorage('secret'); 			
			 var devicePlatform = els.get("device.platform");
%>
 <a href="#/manageBeneAddConfirm/<%-name%>/<%-no%>" id="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
  <ol class="breadcrumb cust_breadcrumb pull-left">
     <li><%-$.i18n.t('app.creditcard.ccpayments.creditcards')%></li>
     <li class="active"> <%-$.i18n.t('app.creditcard.ccpayments.creditcards')%></li>
 </ol>

 <div class="clearfix"></div><br/>
 <div class="newWiz">
       <div class="steps done"><div>1<p><%-$.i18n.t('app.creditcard.ccpayments.input')%></p></div></div>
       <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.creditcard.ccpayments.verify')%></p></div></div>
       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.creditcard.ccpayments.confirm')%></p></div></div>
  </div>
                  <!--Step Control Ends Here-->
                     <!--Step Control Ends Here-->
 <div class="dtl_view">
<form role="form">
       <!-- OTP Page Starts here-->	   
							        <div id="otpId">	
									        	<div class="billpay">
														<div class="form-group paymentMode">
															<label><%-$.i18n.t('app.creditcard.ccpayments.authenticate')%></label>
															<div data-toggle="buttons" class="btn-group btn-group-justified">
																<label class="btn btn-default smsotp" id="option1">
																	<input type="radio" id="option1" name="option1"><%-$.i18n.t('app.creditcard.ccpayments.smsotp')%> 
																</label>
																<label class="btn btn-default softToken" >
																	<input type="radio" id="option2" name="option2"><%-$.i18n.t('app.creditcard.ccpayments.softtoken')%>  
																</label>
															</div>
														</div>
														<div class="smsotp_block" style="display: none;" id="smsDivId">
																<div class="alert alert-info text-center">
																	<b><%-$.i18n.t('app.creditcard.ccpayments.authtransaction')%></b><br/>
																	<%-$.i18n.t('app.creditcard.ccpayments.pwdmsg')%> 
																</div>
																<div class="form-group">
																	<div class="optwrap">
																	<% if ( devicePlatform == "Android" ) { %>
																		<input type="number"  autocomplete='off' pattern="[0-9]*" class="form-control  lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterotp')%>">
																	<%}else{%>
																		<input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" id="otp" name="otp" maxlength="6" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterotp')%>" class="form-control lenthcontrol">
																	<%}%>
																		<span class="input-group-btn hidden">
																			<button type="button" id="resend" name="resend" class="btn btn-success"><%-$.i18n.t('app.creditcard.ccpayments.resend')%></button>
																		</span>
																	</div>
																</div>
														</div>
														<div class="softTock" style="display: none;" id="softTockId">
															<div class="form-group">
															<% if ( devicePlatform == "Android" ) { %>																
																<input type="number"  autocomplete='off'  pattern="[0-9]*" id="softotp" maxlength="8" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterpasscode')%>" class="form-control lenthcontrol">
															<%}else{%>
																<input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" id="softotp" maxlength="8" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterpasscode')%>" class="form-control lenthcontrol">
															<%}%>
															</div>
														</div>
												</div>
												<input type="hidden" id="name" name="name" value="<%-name%>">
									            <input type="hidden" id="no" name="no" value="<%-no%>">
									            
						                        <a id="submit" name="submit" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.ccpayments.submit')%></a>
						                        <a href="#/manageBeneAddConfirm/<%-name%>/<%-no%>" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
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