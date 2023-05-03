<%
	var els = new EncryptedLocalStorage('secret'); 
	var MaskMobile = els.get("MaskMobile");
	var devicePlatform = els.get("device.platform");
	var activate_user = els.get("activate_user");
%>

<script src="js/libs/security/crypto-js/md5.js"></script>

<body class="loginbg">
	<div  class="pagewrapper">
		<div class="container">
            <div class="row ">
				<div class="col-sm-6">
					<h1 class="lgn-logo"><span></span></h1>
						<div class="panel panel-default">
		        			  		<div class="panel-heading">
		        			  		
	                						<h3 class="panel-title"><%-$.i18n.t('app.forgotusername.forgotaccessname')%></h3>
	                					
		        			 		</div>
		        			  		<div class="panel-body">
<div class="dtl_view">
	<form role="form" id="loginform">
		<fieldset>
		<div class="smsotp_block"  id="smsDivId">
						<div class="alert alert-info text-center">
							<b><%-$.i18n.t('app.creditcard.ccpayments.authtransaction')%></b><br/>
								<%-$.i18n.t('app.registration.otpmessage')%>
								<% if (typeof(MaskMobile) != "undefined") { %> <%-MaskMobile%> <%}%> 
								<%-$.i18n.t('app.registration.otpmessage1')%>
						</div>
						<div class="form-group">
							<div class="input-group">
							<% if ( devicePlatform == "Android" ) { %>
								<input type="password"  autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrolotpnumval"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.managebills.enterotp')%>">
							<%}else{%>
								<input type="password"  autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrolotpnumval"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.managebills.enterotp')%>">
							<%}%>
								<small class="input-group-btn ">
								<button type="button" id="resendclick" name="resendclick" class="btn btn-success"><%-$.i18n.t('app.creditcard.ccpayments.resend')%></button>
								<button type="button" id="resendtimer" name="resendtimer"  class="btn btn-info small seconds"><i class="glyphicon glyphicon-time"></i> <b class="sec" id="remtime">180</b>&nbsp; <small class="txt_lowercase"><%-$.i18n.t('app.login.second')%></small></button>
								</small>
							</div>
						</div>
					</div>
					<div id="secError">
						<label><strong><font color="red"><span id="showError"></span></font></strong></label>
					</div>
					<input type="hidden" id="hidotp" value=""/>
					
				</div>
				<input type=button id="submitOTP" name="submitOTP" class="btn btn-success btn-block" value="<%-$.i18n.t('app.creditcard.ccpayments.submit')%>" />
			
            <a href="#/login" class="btn btn-primary btn-block"><%-$.i18n.t('app.forgotusername.cancel')%></a>
		</fieldset>
	</form>
</div><br/>

							</div>
						</div>
        			</div>
             	</div><!-- row ends here-->
        	</div>
    	</div> 
</body>


<script src="js/common.js"></script>


<script>

$('#resendclick').hide();
$('#resendtimer').show();
 $(document).ready(function() { 
	startTimer("submitOTP", true);
	
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
