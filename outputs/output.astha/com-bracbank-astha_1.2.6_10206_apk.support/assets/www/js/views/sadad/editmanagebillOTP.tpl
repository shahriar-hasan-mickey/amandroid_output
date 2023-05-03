 <%
	var els = new EncryptedLocalStorage('secret'); 
	var beneeditbeneCode = els.get("beneeditbeneCode");
	var beneeditbenStatus = els.get("beneeditbenStatus");
	var devicePlatform = els.get("device.platform");
%>
 
 <a href="#/managebills" id="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
  <ol class="breadcrumb cust_breadcrumb pull-left">
      <li><a href="#/sadad"><%-$.i18n.t('app.sadad.general.title')%></a></li>
      <li class="active"><%-$.i18n.t('app.sadad.general.managebills')%></li>
 </ol>

   <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
 <div class="newWiz">
       <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.managebills.input')%></p></div></div>
       <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.sadad.managebills.verify')%></p></div></div>
       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.managebills.confirm')%></p></div></div>
  </div>
                  <!--Step Control Ends Here-->
                     <!--Step Control Ends Here-->
 <div class="dtl_view">
<form>
							        <div id="otpId">	
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
														<div class="smsotp_block" style="display: none;" id="smsDivId">
																<div class="alert alert-info text-center">
																	<b><%-$.i18n.t('app.creditcard.ccpayments.authtransaction')%></b><br/>
																	<%-$.i18n.t('app.registration.otpmessage')%>(
																	<% if (typeof(MaskMobile) != "undefined") { %> <%-MaskMobile%> <%}%> )
																	<%-$.i18n.t('app.registration.otpmessage1')%>
																</div>
																<div class="form-group">
																	<div class="input-group">
																	<% if ( devicePlatform == "Android" ) { %>
																		<input type="number" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.managebills.enterotp')%>">
																	<%}else{%>
																		<input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.managebills.enterotp')%>">
																	<%}%>
																		<span class="input-group-btn">
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
						                        <button type="button" id="submit" name="submit" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.ccpayments.submit')%></button>
						                        <a href="#/managebills" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
							        </div>

 </form></div><br/>
 <script>
		$(document).ready(function(){
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
<script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
         specialKeys.push(9); //TAB
        $(function () {
            $("input").bind("keypress", function (e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                return ret;
            });
            $("input").bind("paste", function (e) {
                return false;
            });
            $("input").bind("drop", function (e) {
                return false;
            });
        });
       
</script>
<script>
      $(document).ready(function()
      {
       	   //$(".smsotp_block,.softTock").hide();
	       $(".smsotp").click(function()
	       {
	      		//alert("SMS");
	      		$(".smsotp_block").show();
	      		$("#hidotp").val("otp");
	      		document.getElementById('smsDivId').style.display='inline';
		        $(".softTock").hide();
		        $('.smsotp').addClass('active');
				$('.softToken').removeClass('active');
		        
		   });

	       $(".softToken").click(function()
	       {
	   		  //alert("SOFT");
	   		  $(".smsotp_block").hide();
	   		  $("#hidotp").val("softotp");
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
