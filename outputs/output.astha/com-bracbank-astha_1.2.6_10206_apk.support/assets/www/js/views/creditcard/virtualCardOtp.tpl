 <%
	var els = new EncryptedLocalStorage('secret'); 
	var MaskMobile = els.get("MaskMobile");
	var soft_token = els.get("soft_token");
	var devicePlatform = els.get("device.platform");
	var mycreditcard = els.get("tocreditcard");
var creditCardNoMasked = els.get("creditCardNoMasked");
var ccDetailShortName = els.get("ccDetailShortName");
var mycreditcard = els.get("tocreditcard");
var ccDetailShortName = els.get("ccDetailShortName");
var availableCreditLimit = els.get("availableCreditLimit");
var currencyCode = els.get("currencyCode");
var mycreditcard = els.get("tocreditcard");
var creditCardNoMasked = els.get("creditCardNoMasked");
var ccDetailShortName = els.get("ccDetailShortName");
var indx = els.get("indx");
var expiryDate = mycreditcard[indx].expiryDate
 				var yrval = expiryDate.substring(0,2);
        		var monval = expiryDate.substring(5,7);
        		var dateval = expiryDate.substring(8,10);
        		var exdateval=monval+"/"+yrval;
%>
 
 
 <a href="#/cashOnDemandCreditCardConfirm" id="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
  <ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.ccpayments.creditcards')%></a></li>
     <li class="active"><%-$.i18n.t('app.creditcard.ccdetails.details')%></li>
 </ol>

 <div class="clearfix"></div><br/>
 
                  <!--Step Control Ends Here-->
                     <!--Step Control Ends Here-->
 <div class="dtl_view">
<form role="form" id="formotp">
<input type="hidden" name="isformloaded" id="isformloaded" value="<%-soft_token%>" />
       <!-- OTP Page Starts here-->	  
        <div id="card-fluid" class="card">
                              <div class="front" style="background:url(images/brand/card_bg.png) center 0/100% no-repeat">
                                <span class="cardflip_num"><%-mycreditcard[indx].creditCardNoMasked%></span>
                                <span class="validflip-upto"><small><%-$.i18n.t('app.creditcard.virtualcc.valid')%><br><%-$.i18n.t('app.creditcard.virtualcc.thiru')%></small> XX/XX</span>
                                <p class="cardflip_last_num"><%-(mycreditcard[indx].creditCardNoMasked).substr(-4)%></p>
                                <span class="cardflipholder"><%-mycreditcard[indx].shortName%></span>
                              </div>
                              <div class="back" style="background:url(images/brand/card_bg_back.png) center 0/100% no-repeat">
                                <p class="cvvflip-block"><span class="cvvflip-label">CVV</span><span class="cvv-num">XXX</span></p>
                              </div>
                           </div>
                               <div class="row avail-balance"><div class=" col-xs-6"><%-$.i18n.t('app.creditcard.virtualcc.avbllimit')%></div> <div class="col-xs-6"><div class="amt" ><span class="cur"><%-currencyCode%></span> <span class="num"><%-availableCreditLimit%></span></div></div> </div>
                               <br/>
                            <div class="flip-hand"><%-$.i18n.t('app.creditcard.virtualcc.tapcvv')%></div>
							        <div id="otpId">	
									        	<div class="billpay">
									        	<% if(soft_token=="Y") { %>
														<div class="form-group paymentMode">
															<label><%-$.i18n.t('app.creditcard.ccpayments.authenticate')%></label>
															<div data-toggle="buttons" class="btn-group btn-group-justified">
																<label class="btn btn-default smsotp" id="labeloption">
																	<input type="radio" value="otp" id="option1" name="option1"><%-$.i18n.t('app.creditcard.ccpayments.smsotp')%> 
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
														
														</div>
												</div>
												
						                        <a id="submit" name="submit" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.ccpayments.submit')%></a>
						    					<a href="#/virtualcarddetails" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
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