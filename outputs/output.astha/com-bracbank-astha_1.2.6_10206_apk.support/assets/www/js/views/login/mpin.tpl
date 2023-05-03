<div class="pagewrapper">
   <div class="container">
      <h1 class="lgn-logo animation-in">
        <span>
        </span>
      </h1>
		<h3 class="text-center page-title"><small>Login to</small><br/><%-$.i18n.t('app.forgotpassword.mesg2')%></h3>
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
				<p class="text-center text-muted small"><%-$.i18n.t('app.mpin.enteryourmpin')%></p>
				<form>
      			<div class="form-group">
      			  <div class="pasCode">
      				  <div class="form-group text-center">
      					<input type="password" autocomplete='off' class="inputs numericlengthcontrol" maxlength="1" id="mpin1" value=""/>
      					<input type="password" autocomplete='off' class="inputs numericlengthcontrol" maxlength="1" id="mpin2" value=""/>
      					<input type="password" autocomplete='off' class="inputs numericlengthcontrol" maxlength="1" id="mpin3" value=""/>
      					<input type="password" autocomplete='off' class="inputs numericlengthcontrol" maxlength="1" id="mpin4" value=""/>
      					<input type="password" autocomplete='off' class="inputs numericlengthcontrol" maxlength="1" id="mpin5" value=""/>
      					<input type="password" autocomplete='off' class="inputs numericlengthcontrol" maxlength="1" id="mpin6" value=""/>
      					<div class="clearfix"></div><br/>
      					<div class="form-group has-error">
							<p class="help-block error-message" style="color:#a94442" id="mpinError"></p>
				 		</div>
  					   	<p class="text-right small">
  					    	<a href="javascript:void(0);" id="forgot_Mpin" class="text-link"><%-$.i18n.t('app.forgotmpin.forgotmpin')%></a>
  					    </p>
      				  </div>
      			  </div>
      			</div>
				<a href="javascript:void(0);" id="log_inbtn" class="btn btn-primary btn-block"><%-$.i18n.t('button.login.login')%></a>
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
<script>
	$(".inputs").keyup(function (e) {
	    if (this.value.length == this.maxLength) {
	    	$(this).next('.inputs').focus();
	    } else if((e.which == 8 || e.which == 46) && (this.value == "")) { 
	    	$(this).prev('.inputs').focus();
	    }
	});
</script>
<script>
(function ($){
     $.fn.inputnumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          	var allowedTest ="1234567890";					
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
$('.numericlengthcontrol').inputnumericlength();
</script>
