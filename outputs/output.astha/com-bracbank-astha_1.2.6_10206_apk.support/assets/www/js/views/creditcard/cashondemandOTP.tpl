 <%
	var els = new EncryptedLocalStorage('secret'); 
	var MaskMobile = els.get("MaskMobile");
	var soft_token = els.get("soft_token");
	var devicePlatform = els.get("device.platform");
%>
 
 
 <a href="#/cashOnDemandCreditCardConfirm/<%-frm%>/<%-to%>/<%-amt%>/<%-date%>/<%-conamt%>" id="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
  <ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.ccpayments.creditcards')%></a></li>
     <li class="active"> <%-$.i18n.t('app.creditcard.cashondemandcc.cod')%></li>
 </ol>

 <div class="clearfix"></div><br/>
 <div class="newWiz">
       <div class="steps done"><div>1<p><%-$.i18n.t('app.creditcard.ccpayments.input')%></p></div></div>
       <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.creditcard.cashondemandcc.verify')%></p></div></div>
       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.creditcard.ccpayments.confirm')%></p></div></div>
  </div>
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
																		<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric" id="otp" name="otp" maxlength="6" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterotp')%>" class="form-control lenthcontrol">
																	<%}%>
																		<span class="input-group-btn hidden">
																			<button type="button" id="resend" name="resend" class="btn btn-success"><%-$.i18n.t('app.creditcard.ccpayments.resend')%></button>
																		</span>
																	</div>
																</div>
														</div>
														<input type="hidden" id="hidotp" value=""/>
														<div class="softTock" style="display: none;" id="softTockId">
															<div class="form-group">
															<% if ( devicePlatform == "Android" ) { %>
																<input type="number" autocomplete='off' pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="8" id="softotp" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterpasscode')%>">
															<%}else{%>
																<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric" maxlength="8" id="softotp" name="softotp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterpasscode')%>" class="form-control lenthcontrol">
															<%}%>
															</div>
														</div>
												</div>
												<!--<input type="hidden" id="frm" name="frm" value="<%-frm%>">
									            <input type="hidden" id="to" name="to" value="<%-to%>">
									            <input type="hidden" id="amount" name="amount" value="<%-amt%>">
									            <input type="hidden" id="rem" name="rem" value="<%-rem%>">
									            <input type="hidden" id="conv" name="conv" value="<%-amt%>">
									            <input type="hidden" id="exrate" name="exrate" value="<%-conamt%>">-->
									            
						                        <a id="submit" name="submit" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.ccpayments.submit')%></a>
						                        <a href="#/cashOnDemandCreditCard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
							        </div>
 </form></div><br/>
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

      });
</script>
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