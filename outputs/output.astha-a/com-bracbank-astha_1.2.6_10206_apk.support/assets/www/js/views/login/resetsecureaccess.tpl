<%
	var els = new EncryptedLocalStorage('secret');
	var iOS = /iPhone|iPod/.test( navigator.userAgent );
	//iOS=true;
	var touchApp =els.get("touchAllowedForApp");
	var touchUser =els.get("touchAllowedForUser");
	var touchReg=els.get("touchIdReg");
	var bioFlag=els.get("BiometricType");
	var devicePlatform = els.get("device.platform");
    var useridval = els.get("loginuser_id");
    var resetsecureaccessflag = els.get("resetsecureaccessflag");
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
			        			    		<form method="post" id="loginform" name="loginform" action="#">
				                            			<fieldset>
																
						
																<div class="form-group">
													<%if(resetsecureaccessflag=='Y'){%>
															<% if ( devicePlatform == "Android" ) { %>
						    											<input value="<%-useridval%>" type="text"  autocomplete='off'    autocorrect="off" class="form-control " id="userid" name="userid" placeholder="<%-$.i18n.t('app.login.userid')%>"  autocomplete="off" data-error-style="inline" maxlength="30" readonly />
						    								<%}else{%>
					                           							<input value="<%-useridval%>" type="text"   autocomplete='off'  autocorrect="off" maxlength="30" class="form-control " id="userid" name="userid" placeholder="<%-$.i18n.t('app.login.userid')%>" autocomplete="off" data-error-style="inline" readonly />
					                           				<%}%>
					                           		<%}else{%>
					                           				<% if ( devicePlatform == "Android" ) { %>
						    											<input value="" type="text"  autocomplete='off'   autocorrect="off" class="form-control " id="userid" name="userid" placeholder="<%-$.i18n.t('app.login.userid')%>"  autocomplete="off" data-error-style="inline" maxlength="30"  />
						    								<%}else{%>
					                           							<input value="" type="text"  autocomplete='off'  onkeydown="call2(event)" autocorrect="off" maxlength="30" class="form-control " id="userid" name="userid" placeholder="<%-$.i18n.t('app.login.userid')%>" autocomplete="off" data-error-style="inline"  />
					                           				<%}%>
					                           		<%}%>
						    									</div>
						    									<div id="errorlengthusr" style="display:none">
																		 <p class="help-block error-message">
																		 <font color="#A94442"><%-$.i18n.t('app.login.errlengthusr')%></font>
																		 </p>
																 </div>
						
															    <div id="secErrorfirst">
																	<strong><span id="showErrorfirst" class="text-danger"></span></strong>
																</div>
																<div id="secErrorlast">
																	<strong><span id="showErrorlast" class="text-danger"></span></strong>
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
													            <%if(resetsecureaccessflag=='Y'){%>
																<input type="button" class="btn btn-success btn-block" name="resetsecureaccessOTP" id="resetsecureaccessOTP"  value="<%-$.i18n.t('app.creditcard.ccpayments.submit')%>" />
																<%}else{%>
																<input type="button" class="btn btn-success btn-block submituser" name="resetsecureaccessprelogin" id="resetsecureaccessprelogin"  value="<%-$.i18n.t('app.creditcard.ccpayments.submit')%>" />
																<%}%> 
																<!-- <input type="button" class="btn btn-primary btn-block" name="newReg" id="newReg"  value="<%-$.i18n.t('app.login.registration')%>" /> -->
																
																		<!--<p class="pull-right small forgot"><a href="#/forgotpasswordnew"><%-$.i18n.t('app.login.forgotpwd')%></a></p>-->
																		<br/>
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
                else {
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
	(function ($){
		$.fn.inputlengthusernameval=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
				var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890-_ ";
				var allowedaraTest =/[\u0600-\u06FF]/;
					var orignalValue=$(this).val();
					 for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedTest.indexOf(atchar) != -1){
						}else if(allowedaraTest.test(atchar)){
							/*var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;*/
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
	$('.lenthcontroluserval').inputlengthusernameval();
	function call2(e) {
        if (document.getElementById('userid').value.length == 0) {
            if (e.keyCode == 32) {
                e.preventDefault();
            }
        }else{
        var userid = $('#userid').val();
        	for (var i=0;i< userid.length;i++){
  	          		var atchar = userid[i];
  	          		var atcharnxt = userid[i+1];
  						if(atchar === atcharnxt){
  							if(atchar === userid[i+2]){
		            		 if (e.keyCode == 32) {
					                e.preventDefault();
					                return false;
					            }
		              		return false;
		            		}
  						}
  				}
        }
}
</script>
