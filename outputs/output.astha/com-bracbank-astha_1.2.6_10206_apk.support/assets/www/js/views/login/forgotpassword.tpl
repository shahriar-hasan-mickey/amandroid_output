<div class="pagewrapper">
	<div class="container">
		<h1 class="lgn-logo animation-in">
          <span></span>
		</h1>
        <h3 class="text-center page-title"><%-$.i18n.t('app.forgotpassword.forgotpassword')%></h3>    
        <div class="panel panel-default" >
            <div class="panel-body">
                <form>
					<div class="form-group" id="User_id">
						<label for="username"><%-$.i18n.t('app.forgotpassword.username1')%></label>
                        <input type="text" autocomplete="off" id="username" name="username" class="form-control lenthcontrolnameval restrictCpyPst" maxlength="20">
                        <span class="small" id="error_user" style="color:#a94442"></span>
					</div>
					<div class="form-group">
						<p>
							<label for="username"><%-$.i18n.t('app.forgotpassword.pswmsg1')%></label>
						</p>
						<div class="radiobox clearfix">
							<div class="radio ">
								<label>
									<input type="radio" name="cardType" value="DC" checked="">
									<div class="box">
										<span class="menu_icon ccard"></span>
										<span class="small"><%-$.i18n.t('app.forgotusername.debitcard')%></span>
									</div>
								</label>
							</div>
						<div class="radio">
							<label>
								<input type="radio" name="cardType" value="CC">
								<div class="box">
									<span class="menu_icon dcard"></span>
									<span class="small"><%-$.i18n.t('app.forgotusername.creditcard')%></span>
								</div>
							</label>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				<div class="row">
					<div class="col-xs-6 pr5">
						<button type="button" id="home_btn" class="btn btn-default btn-block"><%-$.i18n.t('app.forgotusername.home')%></button>
					</div>
					<div class="col-xs-6 pl5">
						<a href="javascript:void(0);" id="proced_btn" class="btn btn-primary btn-block" class="text-link"><%-$.i18n.t('app.forgotpassword.proceed')%></a>
					</div>
				</div>
			</form>
        </div>
      </div>
    </div>
 </div>
 <script>
	$(document).ready(function() {

		DisableCopyPaste();
		
		$('input').keypress(function(e) {
			var code = (e.keyCode ? e.keyCode : e.which);
			if ( (code==13) || (code==10)) {
				$(this).blur();
				return false;
			}
		});
	});
</script>
 <script>  
	(function ($){
		$.fn.inputlengthnameval=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
				var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890\"!#$%&'()*+,-./:<=>?@[\]^_`{|}~";
				var allowedaraTest =/[\u0600-\u06FF]/;					
					var orignalValue=$(this).val();
				
					 for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedTest.indexOf(atchar) != -1){
						}else if(allowedaraTest.test(atchar)){
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
	$('.lenthcontrolnameval').inputlengthnameval();
</script>
 <script>
	$(document).ready(function(){
		
	});
</script>
