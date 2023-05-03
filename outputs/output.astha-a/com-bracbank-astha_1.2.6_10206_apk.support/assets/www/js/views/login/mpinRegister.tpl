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
            	<form>				
                	<div class="form-group">
                  		<label for="pin"><%-$.i18n.t('app.login.newmpinlabel')%></label>
              			<div class="pasCode">
                    		<div class="form-group">
		                      <input type="password" autocomplete='off' id="new_mpin1" class="numericlengthcontrol inputs" maxlength="1"/>
		                      <input type="password" autocomplete='off' id="new_mpin2" class="numericlengthcontrol inputs" maxlength="1"/>
		                      <input type="password" autocomplete='off' id="new_mpin3" class="numericlengthcontrol inputs" maxlength="1"/>
		                      <input type="password" autocomplete='off' id="new_mpin4" class="numericlengthcontrol inputs" maxlength="1"/>
		                      <input type="password" autocomplete='off' id="new_mpin5" class="numericlengthcontrol inputs" maxlength="1"/>
		                      <input type="password" autocomplete='off' id="new_mpin6" class="numericlengthcontrol inputs" maxlength="1"/>
                    		</div>
                		</div>	 						
              		</div>
              		<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="newMpinNullError"></p>
			 		</div>
              		<div class="form-group">
                		<label for="pin">Confirm New MPIN</label>
                		<div class="pasCode">
                  			<div class="form-group">
                    			<input type="password" autocomplete='off' id="conf_mpin1" class="numericlengthcontrol inputs" maxlength="1"/>
			                    <input type="password"  autocomplete='off'  id="conf_mpin2" class="numericlengthcontrol inputs" maxlength="1"/>
			                    <input type="password"  autocomplete='off'  id="conf_mpin3" class="numericlengthcontrol inputs" maxlength="1"/>
			                    <input type="password" autocomplete='off'  id="conf_mpin4" class="numericlengthcontrol inputs" maxlength="1"/>
			                    <input type="password"  autocomplete='off' id="conf_mpin5" class="numericlengthcontrol inputs" maxlength="1"/>
			                    <input type="password" autocomplete='off'  id="conf_mpin6" class="numericlengthcontrol inputs" maxlength="1"/>
                  			</div>
              			</div>	 						
            		</div>
            		<div class="form-group has-error">
						<p class="help-block error-message" style="color:#a94442" id="confMpinNullError"></p>
			 		</div>
		            <div class="row">
		              <div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block" id="back_btn"><%-$.i18n.t('button.login.home')%></button></div>
		              <div class="col-xs-6 pl5"><button type="button" class="btn btn-primary btn-block" id="submit_btn"><%-$.i18n.t('button.login.submit')%></button></div>
		            </div>
          		</form>
          	</div>
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
		
		<div class="modal fade modernPOP" id="success" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        	<div class="modal-dialog" role="document">
        		<form>
          			<div class="modal-content">
            			<div class="modal-body">
                			<p class="text-center">
                    			<span class="ico-circle center-block">
                        			<span class="menu_icon ico-2x check"></span>
                    			</span>
                			</p>
                			<h4 class="text-center"><%-$.i18n.t('app.login.mpinsuccess')%>!</h4>
            				<p class="small text-center"><%-$.i18n.t('app.login.mpinsuccessmsg')%></p>
            			</div>
            			<div class="modal-footer">
              				<button type="button" id="back_login_btn" class="btn btn-default btn-block"><%-$.i18n.t('button.registration.login')%></button>
            			</div>
          			</div>
        		</form>	
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
