 <%
	var els = new EncryptedLocalStorage('secret'); 
    var langchange = els.get('lang_id');
    var bioFlag=els.get("BiometricType");
    console.log("bioFlag",bioFlag);
    var useridval = els.get("loginuser_id");
    console.log("useridval",useridval);
	
%>
<body class="loginbg">
	<div  class="pagewrapper">
		<div class="container">
            <div class="row ">
				<div class="col-sm-6">
					<h1 class="lgn-logo"><span></span></h1>
						<div class="panel panel-default">
		        			  		<div class="panel-heading" style="background:#0072bc; color:#fff;">
		        			  		<% if(bioFlag=="TID"){ %>
		        			    		<h3 class="panel-title"><%-$.i18n.t('app.touchid.touchRegTitle')%></h3>
						 			<% }else if(bioFlag=="FID"){ %>
						 				<h3 class="panel-title"><%-$.i18n.t('app.faceid.faceRegTitle')%></h3>
						 			<% } %>
		        			 		</div>
		        			  		<div class="panel-body">
			        			    		<form>
				                            								                            			
															<div id="userLogin">
															<fieldset>														
															<!-- User Login  -->
															
															<div class="form-group" id="userLoginBtn" >
			                 					  <div class="btn-group btn-group-justified custTab" role="group">
														<div class="btn-group" role="group">
																<!-- <input type="button" id="log" class="btn btn-default" value="<%-$.i18n.t('app.mpin.useridpwd')%>"> -->
																<button type="button" id="logTouch" class="btn btn-default active"><%-$.i18n.t('app.login.useridpwd')%></button>
														</div>
														<div class="btn-group" role="group">
			                       								<!-- <input type="button" class="btn btn-default active" value="<%-$.i18n.t('app.mpin.mpin')%>"> -->
			                       								<button type="button" id="mpinTouch" class="btn btn-default"><%-$.i18n.t('app.login.mpin')%></button>
														</div>
													</div>
							                  </div>
							                  
															
																<div class="form-group required">
															
						    											<input value="<%-useridval%>" autocomplete='off'  type="text"   autocorrect="off" class="form-control restrictCpyPst" id="userid" name="userid" placeholder="<%-$.i18n.t('app.login.userid')%>"  autocomplete="off" data-error-style="inline" maxlength="20" readonly />
						    								
						    									</div>
						
															    <div class="form-group required">
															    		<input value="" type="password"  autocomplete='off'  class="form-control lenthcontrol restrictCpyPst" id="password" name="password" placeholder="<%-$.i18n.t('app.login.Password')%>"  autocomplete="off" data-error-style="inline" maxlength="150"/>
															    </div>
															   
															   		
															    <% if(bioFlag=="TID"){ %>
															     <div id="touchAlter" class="alert alert-info alert-sm">
	                        										<p><%-$.i18n.t('app.touchid.touchSecure')%></p>
	                     		  								</div>		
	                     		  								<% } else { %>
		                            							<div id="touchAlter" class="alert alert-info alert-sm">
	                        										<p><%-$.i18n.t('app.touchid.faceSecure')%></p>
	                     		  								</div>
		                            							<% } %>												    
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
																 <div class="form-group">
	                        										<label class="checkinput small  pull-left">
		                       											 <input type="checkbox" class="check-hidden" id="iagreeeUser" name="iagreeeUser" />
		                       											 <% if(bioFlag == "FID") { %>
		                       											 <%-$.i18n.t('app.registration.iagreeeFace')%>
		                       											 <% } else { %>
		                       											 <%-$.i18n.t('app.registration.iagreeeTouch')%>
		                       											 <% } %>
		                       											 <a onclick= "openUrl(this); return false;" ><%-$.i18n.t('app.registration.termscond')%></a>
																		<% if(langchange != 'en-US'){ %>
																		<% if(bioFlag == "FID") { %>
																			<%-$.i18n.t('app.touchid.iagreee11')%>
																		<% } else { %>
		                            										<%-$.i18n.t('app.touchid.iagreee1')%>
		                            									<% } %>
		                        										<% } %>		                        
	                       											 </label>
	                      										</div>
															   <div class="clearfix"></div>
	                     										 <div id="errortermscondUser" style="display:none">
                        										 <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.newregistration.iagreee')%></font></p>
                          									  </div>
																<input type="button" class="btn btn-primary btn-block" name="userTouchRegconfirm" id="userTouchRegconfirm"  value="<%-$.i18n.t('app.mpin.submit')%>" />
																<a href="#/backtohome" class="btn btn-default btn-block"><%-$.i18n.t('app.mpin.cancel')%></a>
																<br/>	
														</fieldset>									                  				                             
															<!-- User Login -->		
															</div>	
													
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
		var els = new EncryptedLocalStorage('secret');
		
		DisableCopyPaste();
		
		$("#userLogin").show();
		$("#userLoginBtn").hide();
			$(".check-hidden:checked").parents(".checkinput").addClass("active");			
			$('input[placeholder], textarea[placeholder]').placeholder();
		});
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
function openUrl(url) {
		var els = new EncryptedLocalStorage('secret');
		var responseurlData = els.get("responseurlData");
		var i=0;
		_.each(responseurlData,function(datalink,index){
		var codelink = datalink.code;
	    //alert("codelink"+codelink);
	    if(codelink=="TID"){
	    	//url = els.get("generallink");
	    	if($.i18n.lng() == 'en-US'){
					url = datalink.description;
			}else if($.i18n.lng() == 'en-AR'){
					url = datalink.descriptionAr;
			}
	    }
	    });
	      //alert("open url: " + url);
	    
      window.open(url, '_system', 'location=yes');
    }
</script>
