<%
	var els = new EncryptedLocalStorage('secret'); 
	var MaskMobile = els.get("MaskMobile");
	var soft_token = els.get("soft_token");
	var devicePlatform = els.get("device.platform");
%>
 
  <a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.chequebookreq.confcanrequest')%></li>
                  </ol>
				  

 <div class="clearfix"></div><br/>
 <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.chequebookreq.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.chequebookreq.verify')%></P></div></div>
                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.chequebookreq.confirm')%></p></div></div>
              </div>
 <div class="dtl_view">
<form role="form" id="formotp">
							        <div id="otpId">	
									        	<div class="ownaccountransferOTP">
									        	<div class="smsotp_block"  id="smsDivId">
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
																	<div class="input-group">
																	<% if ( devicePlatform == "Android" ) { %>
																		<input type="password" autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrolotpnumval"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.managebills.enterotp')%>">
																	<%}else{%>
																		<input type="password" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrolotpnumval"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.managebills.enterotp')%>">
																	<%}%>
																		<small class="input-group-btn ">
																		<button type="button" id="resendclick" name="resendclick" class="btn btn-success"><%-$.i18n.t('app.creditcard.ccpayments.resend')%></button>
																		<button type="button" id="resendtimer" name="resendtimer"  class="btn btn-info small seconds"><i class="glyphicon glyphicon-time"></i> <b class="sec" id="remtime">180</b>&nbsp; <small class="txt_lowercase"><%-$.i18n.t('app.login.second')%></small></button>
																		</small>
																	</div>
																</div>
														</div>
														<!--<div id="secError">
														        	<label><strong><font color="red"><span id="showError"></span></font></strong></label>
															</div>-->
														<input type="hidden" id="hidotp" value=""/>
														
												</div>
						                        <a id="submit" name="submit" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.ccpayments.submit')%></a>
						                        <a href="#/servicerequestmenu" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
							        </div>
							        
							        
 </form></div><br/>
<script src="js/common.js"></script>
<script>

$('#resendclick').hide();
$('#resendtimer').show();
 $(document).ready(function() { 
	startTimer("submit", true);
	
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
            // return true;
          });

        });
     };
}(jQuery));
$('.lenthcontrol').inputlength();
$(".content").animate({ scrollTop: 0 }, "fast");
</script>
<script>  
	(function ($){
		$.fn.inputlengthotpnumval=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
				var allowedNumber ="1234567890";
				var allowedaraTest =/[\u0600-\u06FF]/;
					var orignalValue=$(this).val();
					 for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedNumber.indexOf(atchar) != -1){
						}else if(allowedaraTest.test(atchar)){
							var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;
						}else{
							var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;
						}
					}
					 $(this).val(orignalValue);
	            	 if($(this).val().length>makelength &&  e.keyCode != '8' && e.keyCode != '46' || e.keyCode == '32'){
	            		var values=$(this).val();
						if(e.keyCode != '32') {
			            	values=values.substring(0, values.length - 1);
				      	}
	           			$(this).val(values).focus();
	              		e.preventDefault();
	            	}
	     		});
	     		
	     		
	   		});
		};
	}(jQuery));
	$('.lenthcontrolotpnumval').inputlengthotpnumval();
</script>
