<%
var els = new EncryptedLocalStorage('secret');
var firstName = els.get("firstName");
var mobilemaskup="";
var mobile = els.get("mobile");
     			for(var x=0;x<mobile.length;x++){
     				if(x<mobile.length-3){
     					mobilemaskup += "X";
     				}else{
     					mobilemaskup += mobile[x];
     				}
     			}
var poboxnumber = els.get("poboxnumber");
var postalnumber = els.get("postalnumber");
var town = els.get("town"); 
var homephone = els.get("homephone");
var offphone = els.get("offphone");
var emailid = els.get("emailid");
var buildingNumber=els.get("buildingNumber");
var streetName=els.get("streetName");
var district=els.get("district");
var unitNumber=els.get("unitNumber");
var city=els.get("city");
var postalCode=els.get("postalCode");
var addtionalNumber=els.get("addtionalNumber");
var devicePlatform = els.get("device.platform");
var fromAddAcc=els.get("fromAddAccOpening");
%>
<!--Content Starts Here-->
                  <a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/preference"><%-$.i18n.t('app.more.preference.preference')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.preference.profileupdation')%></li>
                  </ol>

                    <div class="clearfix"></div>


                    <h3><%-$.i18n.t('app.more.preference.customerprofile')%></h3>   <br/>

                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
                  <div class="steps"><span></span><div>2<P><%-$.i18n.t('app.more.preference.verify')%></P></div></div>
                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p></div></div>
                  </div>
                  <br/>
<!--Step Control Ends Here-->
                     <!--One Time Billpay Starts Here-->
                     <form role="form">
                        <div class="dtl_view">
                        <input type="hidden" id="hiddenfirstName" 	name="hiddenfirstName" value="<%-firstName%>">
                     <input type="hidden" id="hiddenmobile"  	name="hiddenmobile" value="<%-mobile%>">
                     <input type="hidden" id="hiddenpoboxnumber" name="hiddenpoboxnumber" value="<%-poboxnumber%>">
                     <input type="hidden" id="hiddenpostalnumber" name="hiddenpostalnumber" value="<%-postalnumber%>">
                     <input type="hidden" id="hiddentown"name="hiddentown" value="<%-town%>">
                     <input type="hidden" id="hiddenhomephone" 	name="hiddenhomephone">
                     <input type="hidden" id="hiddenoffphone" 	name="hiddenoffphone">
                     <input type="hidden" id="hiddenemailid" 	name="hiddenemailid">
                      <input type="hidden" id="hiddenmobilemask"  	name="hiddenmobilemask" value="<%-mobilemaskup%>">
                           <table class="table ">
                              <tbody>
                                  <tr>
                                      <td><%-$.i18n.t('app.more.preference.name')%></td>
                                      <td><%-firstName%> </td>
                                  </tr>
                                  <tr>
                                      <td><%-$.i18n.t('app.more.preference.mobilenumber')%></td>
                                      <td><%-mobilemaskup%></td>
                                  </tr>
             
                                </tbody>
                            </table>
                         </div>
                         <h3 class="header"><%-$.i18n.t('app.more.preference.contactinfo')%></h3>
                          <div class="form-group required">
                            <label><%-$.i18n.t('app.more.preference.email')%></label>
                            <input type="email"  autocomplete='off'  class="form-control lenthcontrol" maxlength="30" value="<%-emailid%>" placeholder="<%-$.i18n.t('app.more.preference.enteremail')%>" id="email" name="email">
                          </div>

                          <div class="form-group required">
                            <label><%-$.i18n.t('app.more.preference.homephonenumber')%></label>
                             <% if ( devicePlatform == "Android" ) { %>
                            <input type="number"  autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol" maxlength="15"  placeholder="<%-$.i18n.t('app.more.preference.enterphonenumber')%>" value="<%-homephone%>" id="phonenumber" name="phonenumber">
                            <%}else{%>
                            <input type="number"  autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" maxlength="15"  placeholder="<%-$.i18n.t('app.more.preference.enterphonenumber')%>" value="<%-homephone%>" id="phonenumber" name="phonenumber">
                            <%}%>
                          </div>
 
                          <div class="form-group required">
                            <label><%-$.i18n.t('app.more.preference.officetelephonenumber')%></label>
                            <% if ( devicePlatform == "Android" ) { %>
                            <input type="number"  autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol" maxlength="15" value="<%-offphone%>" placeholder="<%-$.i18n.t('app.more.preference.enterofficetelephonenumber')%>" id="telephonenumber" name="telephonenumber">
                          <%}else{%>
                            <input type="number"  autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" maxlength="15" value="<%-offphone%>" placeholder="<%-$.i18n.t('app.more.preference.enterofficetelephonenumber')%>" id="telephonenumber" name="telephonenumber">
                            <%}%>
                          </div>

                         <div class="form-group required">
                           <label><%-$.i18n.t('app.more.preference.pobox')%></label>
                           <% if ( devicePlatform == "Android" ) { %>
                                   <input type="number"  autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol" maxlength="15" placeholder="<%-$.i18n.t('app.more.preference.enterpost')%>" value="<%-poboxnumber%>" id="poboxnumber" name="poboxnumber">
					<%}else{%>
                                   <input type="number"  autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" maxlength="15" placeholder="<%-$.i18n.t('app.more.preference.enterpost')%>" value="<%-poboxnumber%>" id="poboxnumber" name="poboxnumber">
					<%}%>
                         </div>                       
                         
                         <div class="form-group required">
                           <label><%-$.i18n.t('app.more.preference.postalcode')%></label>
                           <% if ( devicePlatform == "Android" ) { %>
                                   <input type="number"  autocomplete='off'  pattern="[0-9]*" class="form-control lenthcontrol" maxlength="15" placeholder="<%-$.i18n.t('app.more.preference.postalnumber')%>" value="<%-postalnumber%>" id="postalnumber" name="postalnumber">
					<%}else{%>
                                   <input type="number"  autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" maxlength="15" placeholder="<%-$.i18n.t('app.more.preference.postalnumber')%>" value="<%-postalnumber%>" id="postalnumber" name="postalnumber">
					<%}%>
                         </div>
                         
                         <div class="form-group required">
                           <label><%-$.i18n.t('app.more.preference.city')%></label>
                           <input type="text"  autocomplete='off'  class="form-control lenthcontrolbeneemp" maxlength="30" value="<%-town%>" placeholder="<%-$.i18n.t('app.more.preference.town')%>" id="town" name="town">
                         </div>
                         <div class="form-group import-link">
                         <h3 class="header"><%-$.i18n.t('app.more.preference.nationalinfo')%></h3>
                           <label><%-$.i18n.t('app.more.preference.uselink')%></label><br/>
                           <a href="javascript:void(0);" id="termandcondition" name="termandcondition"><%-$.i18n.t('app.more.preference.checknat')%> <span class="glyphicon glyphicon-link"></span></a>
                           <a href="javascript:void(0);" id="termandcondition1" name="termandcondition1"><%-$.i18n.t('app.more.preference.regnat')%> <span class="glyphicon glyphicon-link"></span></a>
                         </div>
                         <div class="form-group required">
                            <label><%-$.i18n.t('app.more.preference.buildnum')%></label>
                            <% if ( devicePlatform == "Android" ) { %>
						                                	<input type="text"  autocomplete='off'  onfocus="(this.type='tel')"   class="form-control" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"     placeholder="<%-$.i18n.t('app.more.preference.buildnum')%>" value="<%-buildingNumber%>" id="buildingnumber" name="buildingnumber" maxLength="4">
										<%}else{%>
						                                   <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"     class="form-control lenthcontrol" maxlength="4" placeholder="<%-$.i18n.t('app.more.preference.buildnum')%>" value="<%-buildingNumber%>" id="buildingnumber" name="buildingnumber">
										<%}%>
                          </div>
                          <div class="form-group required">
                            <label><%-$.i18n.t('app.more.preference.street')%></label>
                            <input type="text" autocomplete='off'  class="form-control lenthcontrolbeneemp" maxlength="35" value="<%-streetName%>" placeholder="<%-$.i18n.t('app.more.preference.street')%>" id="street" name="street">
                          </div>
                          <div class="form-group required">
                            <label><%-$.i18n.t('app.more.preference.district')%></label>
                            <input type="text" autocomplete='off'  class="form-control lenthcontrolbeneemp" maxlength="35" value="<%-district%>" placeholder="<%-$.i18n.t('app.more.preference.district')%>" id="district" name="district">
                          </div>
                          <div class="form-group">
                            <label><%-$.i18n.t('app.more.preference.unitnum')%></label>
                            <% if ( devicePlatform == "Android" ) { %>
						                                	<input type="text" autocomplete='off'  onfocus="(this.type='tel')"   class="form-control" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"     placeholder="<%-$.i18n.t('app.more.preference.unitnum')%>" value="<%-unitNumber%>" id="unitnumber" name="unitnumber" maxLength="3">
										<%}else{%>
						                                   <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"     class="form-control lenthcontrol" maxlength="3" placeholder="<%-$.i18n.t('app.more.preference.unitnum')%>" value="<%-unitNumber%>" id="unitnumber" name="unitnumber">
										<%}%>
                          </div>
                          <div class="form-group required">
                            <label><%-$.i18n.t('app.more.preference.city')%></label>
                            <input type="text" autocomplete='off'  class="form-control lenthcontrolbeneemp" maxlength="35" value="<%-city%>" placeholder="<%-$.i18n.t('app.more.preference.city')%>" id="city" name="city">
                          </div>
                          <div class="form-group required">
                            <label><%-$.i18n.t('app.more.preference.postcode')%></label>
                            <% if ( devicePlatform == "Android" ) { %>
						                                	<input type="text" autocomplete='off'  onfocus="(this.type='tel')"   class="form-control" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"    placeholder="<%-$.i18n.t('app.more.preference.postalnumber')%>" value="<%-postalCode%>" id="postalcode" name="postalcode" maxLength="5">
										<%}else{%>
						                                   <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"    class="form-control lenthcontrol" maxlength="5" placeholder="<%-$.i18n.t('app.more.preference.postalnumber')%>" value="<%-postalCode%>" id="postalcode" name="postalcode">
										<%}%>
                          </div>
                          <div class="form-group">
                            <label><%-$.i18n.t('app.more.preference.addnum')%></label>
                            <% if ( devicePlatform == "Android" ) { %>
						                                	<input type="text" autocomplete='off'  onfocus="(this.type='tel')"   class="form-control" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   placeholder="<%-$.i18n.t('app.more.preference.addnum')%>" value="<%-addtionalNumber%>" id="additionalnumber" name="additionalnumber" maxLength="4">
										<%}else{%>
						                                   <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"     class="form-control lenthcontrol" maxlength="4" placeholder="<%-$.i18n.t('app.more.preference.addnum')%>" value="<%-addtionalNumber%>" id="additionalnumber" name="additionalnumber">
										<%}%>
                          </div>
                         
                         
                         <a id="submit" name="submit" class="btn btn-success btn-block"><%-$.i18n.t('app.more.preference.submit')%></a>
                         <a id="cancel" name="cancel" class="btn btn-primary btn-block" ><%-$.i18n.t('app.more.preference.cancel')%></a>
                     
                  <!--One time Billpay Ends Here-->
                  <br/>
                         <div class="alert alert-info" role="alert">
                        <small>
                         <ul>
                         	<li class="al">
                         		<%-$.i18n.t('app.more.preference.notemsg')%>
                         	</li>                         	
                         </ul>
                         </small>
                     </div>
                     </form>
                  <!--One time Billpay Ends Here-->
                  <br/>
                  <script>
                  function validateFloatKeyPress(el, evt) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    var number = el.value.split('.');
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    //get the carat position
    var caratPos = getSelectionStart(el);
    var dotPos = el.value.indexOf(".");
    if( caratPos > dotPos && dotPos>-1 && (number[1].length > 1)){
        return false;
    }    
    return true;
}
function getSelectionStart(o) {
	if (o.createTextRange) {
		var r = document.selection.createRange().duplicate()
		r.moveEnd('character', o.value.length)
		if (r.text == '') return o.value.length
		return o.value.lastIndexOf(r.text)
	} else return o.selectionStart
}
function f(o){
  //o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
  o.value=o.value.replace(/([^0-9])/g,"");
}
                  
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
		$.fn.inputlengthnameval=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
				var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";
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
					/*for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedaraTest.test(atchar)){
						}else{
						var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;
						}
					}*/
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
	(function ($){
	    $.fn.inputlengthremarks=function(){
	      // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
	       return this.each(function(){
	         var makelength=$(this).attr("maxlength");
	         $(this).on('keyup',function(e){
	         	$(this).val($(this).val().replace(/([^A-Za-z\s])/g,""));
	            if($(this).val().length>makelength &&  e.keyCode != '8' && e.keyCode != '46' || e.keyCode == '32'){
	              var values=$(this).val();
	              if(e.keyCode != '32'){
	              values=values.substring(0, values.length - 1);
	              }
	               $(this).val(values).focus();
	              e.preventDefault();
	            }
	         })
	
	       });
	    };
	}(jQuery));
	$('.lenthcontrolremarks').inputlengthremarks();
	
</script>
<script>  
	(function ($){
		$.fn.inputlengthbeneemp=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
					//$(this).val($(this).val().replace(/([^A-Za-z\s])/g,""));
					
					var notallowed ="!@#$%^&*()_+=-{};:\"?><|\/,'[].";
					var notallowednumber ="0123456789";
					var orignalValue=$(this).val();
					for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
					 		if(notallowed.indexOf(atchar) != -1){
					 			var changeTest =orignalValue.substr(0,i);
					 			orignalValue=changeTest;
					 		}else{
					 		}
					 }
					 for (var i=0;i<= 1;i++){
						var atchar = orignalValue[i];
					 		if(notallowednumber.indexOf(atchar) != -1){
					 			var changeTest =orignalValue.substr(0,i);
					 			orignalValue=changeTest;
					 		}else{
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
	$('.lenthcontrolbeneemp').inputlengthbeneemp();
	$(document).ready(function(){
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
