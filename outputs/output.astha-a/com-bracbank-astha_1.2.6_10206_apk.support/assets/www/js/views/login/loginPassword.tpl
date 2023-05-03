<%
	var els = new EncryptedLocalStorage('secret');
	var iOS = /iPhone|iPod/.test( navigator.userAgent );
	//iOS=true;
	var touchApp =els.get("touchAllowedForApp");
	var touchUser =els.get("touchAllowedForUser");
	var touchReg=els.get("touchIdReg");
	var bioFlag=els.get("BiometricType");
	var useridval = els.get("loginuser_id");
	var devicePlatform = els.get("device.platform");
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
		        			    		<h3 class="panel-title"><%-$.i18n.t('app.login.welcomebank')%></h3>
		        			 		</div>
		        			  		<div class="panel-body">
			        			    		<form>
				                            			<fieldset>
																<div class="form-group required">
															
						    											<input value="<%-useridval%>" type="text" autocomplete='off'   autocorrect="off" class="form-control restrictCpyPst" id="userid" name="userid" placeholder="<%-$.i18n.t('app.login.userid')%>"  autocomplete="off" data-error-style="inline" maxlength="20" readonly />
						    								
						    									</div>
						
															    <div class="form-group required">
															    		<input value="" type="password" autocomplete='off' class="form-control lenthcontrol restrictCpyPst" id="password" name="password" placeholder="<%-$.i18n.t('app.login.Password')%>"  autocomplete="off" data-error-style="inline" maxlength="150"/>
															    </div>
															   
															    <div id="errorlength" style="display:none">
																	<p class="help-block error-message">
																		<font color="#A94442"><%-$.i18n.t('app.login.errlength')%></font>
																	</p>
																</div>
																<div id="erroralpha" style="display:none">
																	<p class="help-block error-message">
																		<font color="#A94442"><%-$.i18n.t('app.login.erralpha')%></font>
																	</p>
																</div>
																<div id="errornum" style="display:none">
																	<p class="help-block error-message">
																		<font color="#A94442"><%-$.i18n.t('app.login.errpassnum')%></font>
																	</p>
																</div>
																<div id="errorusr" style="display:none">
																	<p class="help-block error-message">
																		<font color="#A94442"><%-$.i18n.t('app.login.errusr')%></font>
																	</p>
																</div>
																<br/>
																<p class="pull-left small forgot"><a href="#/forgotpasswordnew"><%-$.i18n.t('app.login.forgotpwd')%></a></p>
																		<br/>
															
																<input type="button" class="btn btn-success btn-block submitpassword" name="secureconfirm" id="secureconfirm"  value="<%-$.i18n.t('app.login.applogin')%>" />
																 
																<!-- <input type="button" class="btn btn-primary btn-block" name="newReg" id="newReg"  value="<%-$.i18n.t('app.login.registration')%>" /> -->
																<br/>
																<!--<p class="pull-left small forgot">
													                          <a href="#/forgotusername">
													                            <%-$.i18n.t('app.login.forgotusername')%>
													                          </a>
													                    </p>-->
																		
																<a href="#/backtohome" class="btn btn-primary btn-block"> <%-$.i18n.t('app.login.backtohome')%></a>	
													</fieldset>
			        			      		</form>
		        			    	</div>
        				  </div>
        			</div>
             	</div><!-- row ends here-->
        	</div>
    	</div>
  <script src="js/pollyfills/jquery.placeholder.min.js"></script>
	<script>
		$(document).ready(function()
		{

			DisableCopyPaste();
			$(".check-hidden:checked").parents(".checkinput").addClass("active");
			$(".loginopt").on("change",function()
			{
				if($(".loginopt").attr("checked"))
				{
					url=$(this).attr("data-url");
					location.href=url;
				}
			});
			$('input[placeholder], textarea[placeholder]').placeholder();
			
			
		});
	</script>
	
<script type="text/javascript">
	/*//===============fix for note 4 login==================
	var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890"; 
	function checkChar(o){
	var orignalValue=o.value;
		for (var i=0;i< orignalValue.length;i++){
			var atchar = orignalValue[i];
	 		if(allowedTest.indexOf(atchar) != -1){	
	 		}else{
	 		var changeTest =orignalValue.substr(0,i);
	 			orignalValue=changeTest;
	 		}
	 	}
	 	$("#userid").val(orignalValue);
	}
	
	function checkChar(o){
  		o.value=o.value.replace(/([^0-9A-Za-z])/g,"");
	}*/
	function changeUpperCase(val){
		val.value=val.value.toUpperCase();
	}

</script>
<script>
  $(document).ready(function()
		{
		$('html').addClass('loginbg');
		});
</script>
</body>
<script src="js/common.js"></script>
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
</script>

<script>
(function ($){
     $.fn.inputlengthuserid=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e){ 
           $(this).val($(this).val().replace(/\s/g, "").toUpperCase());  //script to doesn't allow spaces in user name
          //$(this).val($(this).val().toUpperCase());
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
                e.preventDefault();
               return false;
             }
          });
			
        });
     };
}(jQuery));
$('.lenthcontroluserid').inputlengthuserid();
</script>
<script>
  function Checklanguage(field){
  var els = new EncryptedLocalStorage('secret');
  var langchange = els.get('lang_id');

  if(langchange == 'en-US'){
  var sNewVal = "";
  var sFieldVal = field.value;

  for (var i = 0; i < sFieldVal.length; i++) {

                        var ch = sFieldVal.charAt(i);

                        var c = ch.charCodeAt(0);

                        if (c < 0 || c > 255) {
                            // Discard
                        }
                        else {
                            sNewVal += ch;
                        }
                    }

                    field.value = sNewVal;
                }
                //else if(langchange == 'en-US'){
                else{
                    var sNewVal = "";
                    
                    var sFieldVal = field.value;

                    for (var i = 0; i < sFieldVal.length; i++) {

                        var ch = sFieldVal.charAt(i);;
                        var c = ch.charCodeAt(0);

                        if (c < 1536 || c > 1791) {
                            // Discard
                        }
                        else {
                            sNewVal += ch;
                        }
                    }

                    field.value = sNewVal;
                }
                }
</script>

<script>
$(document).ready(function()
		{
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
