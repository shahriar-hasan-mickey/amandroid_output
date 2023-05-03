<%
var els = new EncryptedLocalStorage('secret');
var pwdpolicy = els.get("pwdpolicy");
%>


<a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/preference" ><%-$.i18n.t('app.more.preference.preference')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.preference.changepassword')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
                  <div class="steps"><span></span><div>2<P><%-$.i18n.t('app.more.preference.verify')%></P></div></div>
                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p></div></div>
                  </div>
                  <!--Step Control Ends Here-->
                     <!--One Time Billpay Starts Here-->
                     <form role="form">
                        <div class="telcomPayment">
                        <div id="commonErrorPass" style="display:none">
					       <div class="form-group">
								<label><strong><font color="red"><span id="commonErrorMsgPass"><%-$.i18n.t('app.more.preference.passnotsame')%></span></font></strong></label>
					       </div>
					   </div>
                           <div class="form-group required">
                              <input type="password"  autocomplete='off'  id="oldpassword" name="oldpassword" class="form-control lenthcontrolpswdval restrictCpyPst" minlength="<%-pwdpolicy.minimumLength%>" maxlength="<%-pwdpolicy.maximumLength%>" placeholder="<%-$.i18n.t('app.more.preference.enteroldpass')%>">
                           </div>
                         <!--  <div class="form-group">
                              <input type="password" id="username" name="username" class="form-control lenthcontrolpswdval" minlength="<%-pwdpolicy.minimumLength%>" maxlength="<%-pwdpolicy.maximumLength%>" placeholder="<%-$.i18n.t('app.more.preference.username')%>">
                           </div>-->
                           <div class="form-group required">
                              <input type="password" autocomplete='off'  id="newpassword" name="newpassword" class="form-control lenthcontrolpswdval restrictCpyPst" minlength="<%-pwdpolicy.minimumLength%>" maxlength="<%-pwdpolicy.maximumLength%>" placeholder="<%-$.i18n.t('app.more.preference.enternewpass')%>">
                           </div>
                           <div id="errorlength" style="display:none">
								 <p class="help-block error-message">
								 <font color="#A94442"><%-$.i18n.t('app.login.errlength11')%>&nbsp;<%-pwdpolicy.minimumLength%>&nbsp;<%-$.i18n.t('app.login.errlength12')%>&nbsp;<%-pwdpolicy.maximumLength%>&nbsp;<%-$.i18n.t('app.login.errlength13')%>&nbsp;</font>
								 </p>
						 </div>
						 <div id="erroralpha" style="display:none">
								 <p class="help-block error-message">
									 <font color="#A94442"><%-$.i18n.t('app.login.erralpha')%></font>
								 </p>
						 </div>
						 <div id="errornum" style="display:none">
								 <p class="help-block error-message">
									 <font color="#A94442"><%-$.i18n.t('app.login.errnum')%></font>
								 </p>
						 </div>
						 <div id="errorusr" style="display:none">
								 <p class="help-block error-message">
									 <font color="#A94442"><%-$.i18n.t('app.login.errpwd')%></font>
								 </p>
					   </div>
					    <div id="errorusrsame" style="display:none">
								 <p class="help-block error-message">
									 <font color="#A94442"><%-$.i18n.t('app.login.errusr')%></font>
								 </p>
					   </div>
					   <div id="errorlwr" style="display:none">
								<p class="help-block error-message">
									<font color="#A94442"><%-$.i18n.t('app.login.errlwr')%></font>
								</p>
						</div>
						<div id="errorupr" style="display:none">
								<p class="help-block error-message">
									<font color="#A94442"><%-$.i18n.t('app.login.errupr')%></font>
								</p>
						</div>
						<div id="errorspc" style="display:none">
							<p class="help-block error-message">
							<font color="#A94442"><%-$.i18n.t('app.login.errspc')%></font>
							</p>
						</div>
						<div id="errnumber" style="display:none">
							<p class="help-block error-message">
								<font color="#A94442"><%-$.i18n.t('app.login.errnumber')%></font>
							</p>
						</div>
						<div id="errorcon" style="display:none">
							<p class="help-block error-message">
								<font color="#A94442"><%-$.i18n.t('app.login.errcon')%></font>
							</p>
						</div>
                           <div class="form-group required">
                              <input type="password" autocomplete='off'  id="confirmpassword" name="confirmpassword" class="form-control restrictCpyPst lenthcontrolpswdval" maxlength="14" placeholder="<%-$.i18n.t('app.more.preference.enterconfirmpass')%>">
                           </div>
                        
                                    <button type="button" id="review" name="review" class="btn btn-success btn-block" ><%-$.i18n.t('app.more.preference.submit')%></button>
                                   <button type="button" class="btn btn-primary btn-block" id="cancel" name="cancel"><%-$.i18n.t('app.more.preference.cancel')%></button>
                      
                        </div>
                        

                     </form>
                     
<script>
	function hasArabic(o){
		o.value=o.value.replace(/([^0-9A-Za-z!@#$%^&*()-_+~|.])/g,"");
	}
</script>
<script>  
	(function ($){
		$.fn.inputlengthnameval=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
				var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890:;<=>?@ !#$%&()*+,-./[]^_{|}~";
				var allowedaraTest =/[\u0621-\u064A\u0660-\u0669]/;
					var orignalValue=$(this).val();
					 for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedTest.indexOf(atchar) != -1){
						}else if(allowedaraTest.indexOf(atchar) != -1){
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
	$('.lenthcontrolpswdval').inputlengthnameval();
</script>

<script>
$(document).ready(function()
		{
		    
		    DisableCopyPaste();
		
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
