<%
	var els = new EncryptedLocalStorage('secret');
	var mpincheck = els.get("mpintype"); 
	var devicePlatform = els.get("device.platform"); 
	var agreeForWatch=els.get("agreeForWatch");
	var iOS = /iPad|iPhone|iPod/.test( navigator.userAgent );
    var langchange = els.get('lang_id');
   
%>
		<script src="js/libs/security/crypto-js/md5.js"></script>
			<!--pagewrapper Starts here-->
			<div  class="pagewrapper">
					<!--Container Starts here-->
		      		<div class="container">
      						<!-- Row Starts here-->
        					<div class="row">
							        <!-- Coloumn Starts here-->
							          <div class="col-sm-6">
								            <h1 class="lgn-logo">
										              <span>
										              </span>
								            </h1>
								            <!-- Panel Starts here-->
								            <div class="panel panel-default"> 
										            <!-- Panel head Starts here-->
													<div class="panel-heading">
														<% if(mpincheck=="NEWMPIN"){ %>
															<h3 class="panel-title"><%-$.i18n.t('app.mpin.creatempin')%></h3>
														<%}else if(mpincheck=="forceMPIN"){%>
				              	                            <h3 class="panel-title"><%-$.i18n.t('app.mpin.changempin')%></h3>	
														<%}else{%>
															<h3 class="panel-title"><%-$.i18n.t('app.mpin.forgotmpin')%></h3>
														<%}%>
													</div>
										            <!-- Panel head ends here-->
                     								 <div class="panel-body">
									                      <!-- form Starts here-->
									                          <form method="post" id="sub1"> 
											                          <!-- fieldset Starts here-->
											                              <fieldset> 
																					<div id="commonError" style="display:none">
																						<div class="form-group">
																							<label><strong><font color="red"><span id="commonErrorMsg"><%-$.i18n.t('validation.creatempin.notsame')%></span></font></strong></label>
																						</div>
																					</div>
																					<div id="commonMpinError" style="display:none">
																						<div class="form-group">
																							<label><strong><font color="red"><span id="commonErrorMsg"><%-$.i18n.t('validation.creatempin.mpinvalidno')%></span></font></strong></label>
																						</div>
																					</div>
																					<div id="errorconseq" style="display:none">
																						<p class="help-block error-message">
																							<font color="#A94442"><%-$.i18n.t('app.login.errconseq')%></font>
																						</p>
																					</div>
																					<div id="errorcon" style="display:none">
																						<p class="help-block error-message">
																							<font color="#A94442"><%-$.i18n.t('app.login.errcon')%></font>
																						</p>
																					</div>
											                              
													                              <div class="form-group required" method="">
													                              <% if ( devicePlatform == "Android" ) { %>
																						<input type="tel" autocomplete='off' pattern="[0-9]*"  inputmode="numeric" class="form-control lenthcontrolotpnumval"  maxlength="6" id="newpin" name="newpin" placeholder="<%-$.i18n.t('app.mpin.newpin')%>">
																				<%}else{%>
													                               	<input type="password" autocomplete='off' pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrolotpnumval" maxlength="6" id="newpin" name="newpin" placeholder="<%-$.i18n.t('app.mpin.newpin')%>">
																				<%}%>
													                               </div>
													                              <div class="form-group required">
													                              <% if ( devicePlatform == "Android" ) { %>
																	    				<input type="tel" autocomplete='off' pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrolotpnumval"   maxlength="6" id="conpin" name="conpin" placeholder="<%-$.i18n.t('app.mpin.conpin')%>">
																	    		<%}else{%>
													                                    <input type="password" autocomplete='off' pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrolotpnumval" maxlength="6" id="conpin" name="conpin" placeholder="<%-$.i18n.t('app.mpin.conpin')%>">
																				<%}%>
													                              </div>
													                              
													                              <div id="minValidError" style="display:none">
																						<div class="form-group">
																							<label><strong><font color="red"><span id="minValidErrorMsg"><%-$.i18n.t('validation.creatempin.minvalid')%></span></font></strong></label>
																						</div>
																					</div>
																					<% if(agreeForWatch !="Y" && iOS){ %>
																			<!--
													                              <div class="form-group">
                          															<label class="checkinput small  pull-left">
                          															<input type="checkbox" name="agreeeForWatch" id="agreeeForWatch" class="check-hidden" ><%-$.i18n.t('app.registration.iagreee')%>
                          															<a href="javascript:void(0);" id="termandcondition" name="termandcondition"><%-$.i18n.t('app.registration.termscond')%></a>
                                                                                    <% if(langchange != 'en-US'){ %>
                                                                                    <%-$.i18n.t('app.registration.iagreee1')%>
                                                                                    <% } %>
                        															</label>
                      																</div>
                      																-->
                      															<% } %>
                      															<div class="clearfix"></div>
                      															<div id="errorWatch" style="display:none">
                        															<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.newregistration.iagreee')%></font></p>
                          														</div> 
																					</br>
																					
													                               <!--<a  href="" id="newpassword" class="btn btn-success btn-block"><%-$.i18n.t('app.mpin.submit')%></a>-->
													                               <input type="button" id="submitresult" class="btn btn-success btn-block submitforgotMPINmsg"  value="<%-$.i18n.t('app.mpin.submit')%>" />
													                               <a href="#/login" class="btn btn-primary btn-block"><%-$.i18n.t('app.mpin.cancel')%></a>
                            											</fieldset>
                            											<!-- Fieldset Ends here-->
                        										</form>
                        										<!-- form ends here-->
                      								 </div>
                 					  </div>
                 						<!-- Panel Ends here-->
              						</div>
              						<!-- Coloumn Ends here-->
           					</div>
           					<!-- row ends here-->
      				</div>
      				<!--Container Ends here-->
  			</div>
  			<!--pagewrapper Ends here-->

  <script>
  

 /*   $(document).ready(function()
      {
      $(".loginopt").on("change",function(){
            if($(".loginopt").attr("checked"))
            {
              url=$(this).attr("data-url");
              location.href=url;

            }
          });
      $('input[placeholder], textarea[placeholder]').placeholder();
      });
*/
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
$(".masknumpwd").masknumpwd();
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
   
		     $("#newpin").css({'-webkit-text-security': 'disc','-moz-webkit-text-security': 'disc','-moz-text-security': 'disc'});
    $("#conpin").css({'-webkit-text-security': 'disc','-moz-webkit-text-security': 'disc','-moz-text-security': 'disc'});
		});

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
