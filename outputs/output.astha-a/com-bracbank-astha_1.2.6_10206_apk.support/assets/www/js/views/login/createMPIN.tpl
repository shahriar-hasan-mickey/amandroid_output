<div class="pagewrapper">
   	<div class="container">
      <h1 class="lgn-logo animation-in">
        <span>
        </span>
      </h1>
		<h3 class="text-center page-title"><small><%-$.i18n.t('app.login.loginto')%></small><br/><%-$.i18n.t('app.forgotpassword.mesg2')%></h3>
		<div class="logWit small">
			<div class="row">
				<div class="col-xs-6 col-sm-6 pr5">
					<a href="javascript:void(0);" id="login_tab" class="username text-center ">
						<span class="menu_icon ico-xs userI"></span>
						<p class="small m0"><%-$.i18n.t('app.forgotpassword.username1')%></p>
					</a>
				</div>
				<div class="col-xs-6 col-sm-6 pl5">
					<a href="javascript:void(0);" id="mpin_tab" class="mPIN text-center active">
						<span class="menu_icon ico-xs mPIN"></span>
						<p class="small m0"><%-$.i18n.t('app.registration.mpin')%></p>
					</a>
				</div>				
			</div>
		</div>
		<div class="panel panel-default">
			<div class="panel-body">
				<form>
					<label for="username"><%-$.i18n.t('app.login.username')%></label>
					<div class="form-group">
						<input id="username" autocomplete="off" name="username" type="text" class="form-control restrictCpyPst alphanumericlengthcontrol" placeholder="<%-$.i18n.t('app.login.usernameplaceholder')%>" />
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="usernameError"></p>
			 		</div>
					<label for="password"><%-$.i18n.t('app.login.password')%></label>
					<div class="form-group">
						<input id="password" autocomplete="off" name="password" type="password" class="form-control restrictCpyPst inputalphanumericlengthcontrol" placeholder="<%-$.i18n.t('app.login.pwdplaceholder')%>" />
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="passwordError"></p>
			 		</div>
					<button type="button" class="btn btn-primary btn-block" id="continue"><%-$.i18n.t('button.registration.continue')%></button>
					<!--<a href="index.html" class="btn btn-secondary btn-block">Back to home</a>-->
				</form>
			</div>
		</div>	
		<br><br><br>
		</div>
        <div class="quickLink">
			<div class="row">
				<div class="col-xs-4 col-sm-4">
					<a href="register.html" class="qlink">
						<span class="menu_icon ico-xs newReg"></span>
						<p><%-$.i18n.t('app.login.newuser')%></p>
					</a>
				</div>
				<div class="col-xs-4 col-sm-4">
					<a href="locator.html" class="qlink">
						<span class="menu_icon ico-xs map"></span>
						<p><%-$.i18n.t('app.login.locator')%></p>
					</a>
				</div>
				<div class="col-xs-4 col-sm-4">
					<a href="contactus.html" class="qlink">
						<span class="menu_icon ico-xs contact"></span>
						<p><%-$.i18n.t('app.login.contactus')%></p>
					</a>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
(function ($){
     $.fn.inputalphanumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890\"!#$%&'()*+,-./:<=>?@[\]^_`{|}~";					
		  var orignalValue=$(this).val();
		  for(var i=0;i<orignalValue.length;i++) {
		  	var atchar = orignalValue[i];
			if(allowedTest.indexOf(atchar) != -1) {
			} else {
				var changeTest =orignalValue.substr(0,i);
				orignalValue=changeTest;
			}
		   }
			$(this).val(orignalValue);
			if(makelength!=""){
	             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
	                e.preventDefault();
	               return false;
	             }
	          }
          });
        });
     };
}(jQuery));
$('.alphanumericlengthcontrol').inputalphanumericlength();
(function ($){
     $.fn.inputalphanumericlen=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890\"!#$%&'()*+,-./:<=>?@[\]^_`{|}~";					
		  var orignalValue=$(this).val();
		  for(var i=0;i<orignalValue.length;i++) {
		  	var atchar = orignalValue[i];
			if(allowedTest.indexOf(atchar) != -1) {
			} else {
				var changeTest =orignalValue.substr(0,i);
				orignalValue=changeTest;
			}
		   }
			$(this).val(orignalValue);
			if(makelength!=""){
	             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
	                e.preventDefault();
	               return false;
	             }
	          }
          });
        });
     };
}(jQuery));
$('.inputalphanumericlengthcontrol').inputalphanumericlen();


$(document).ready(function(){
		
		DisableCopyPaste();
});
</script>