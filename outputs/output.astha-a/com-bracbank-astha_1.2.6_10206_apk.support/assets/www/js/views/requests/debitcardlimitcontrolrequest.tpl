<%
	var els = new EncryptedLocalStorage('secret');
	var userprofile=els.get("LoginProfile");
 var username=userprofile[0];
 var usermobile=els.get("usermobile");
 var birthdate=userprofile[8];
 var devicePlatform = els.get("device.platform");
 var cancelfromcampaign=els.get("cancelfromcampaign");
 var campaigntype=els.get("campaigntype");
 var totalCampign=els.get("totalCampign");
 var campsummarycount= els.get("campsummarycount");
 var currentlimit = els.get("currentlimit");
 var segmentlimit = els.get("segmentlimit");
 var isKeyPadNeed =els.get("isKeyPadNeed");
%>
                                 <a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
    <li class="active"><%-$.i18n.t('app.requests.landing.debitcardlimitcontrol')%></li> 
	</ol>
<div class="clearfix"></div>
<!-- Breadcrumb Ends Here -->

<!--Step Control Starts Here-->
	<div class="newWiz">
                  <div class="steps done"><div>1 <p><%-$.i18n.t('app.tedallalrewards.input')%></p></div></div>
                  <div class="steps"><span></span><div>2<P><%-$.i18n.t('app.tedallalrewards.verify')%></P></div></div>
                  <div class="steps"><span ></span><div>3<p><%-$.i18n.t('app.tedallalrewards.confirm')%></p> </div></div>
	</div>
<!--Step Control Ends Here-->

	<!--<h3><%-$.i18n.t('app.tedallalrewards.redemptionofpoints')%></h3>-->
<form>
		<div class="form-group" placeholder="<%-$.i18n.t('app.sadad.onetimepay.billercategory')%>" id="atmCardDTO" required>
						<%if(atmCardDTO.length>0){%>
						<%var i=0;%>
								  <select name="serviceType"  id="serviceType" class="form-control" >
									<option value="" selected="selected"><%-$.i18n.t('app.requests.debitcardpos.selectcardno')%></option>
									<%_.each(atmCardDTO,function(data){%>	
										<%if(data.atmstatus == "1" || data.atmstatus == "9" && data.block == "FALSE"){%>
										<option id="sertype<%-i%>" value="<%-data.atmcardnumberencry%>~<%-data.cardexpirydate%>~<%-data.formatedExpiryDate%>~<%-data.cardSeqNbr%>"><%-data.atmcardnumbermasked%></option>
										<%}%>
									<%i++;});%>
								  </select>
						<%}else{%>
							<select name="serviceType"  id="serviceType" class="form-control" >
									<option value="" selected="selected"><%-$.i18n.t('app.requests.debitcardpos.selectcardno')%></option>
								</select>	
					   <%}%>
				</div>
			<div id="erroratmCardDTO" style="display:none">
                      		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.debitcardpos.debitcardnonull')%></font></p>
					  		</div> 
			<div class="amt2" style="display:none" id="convDivId">
							 <span class="hdr"><%-$.i18n.t('app.requests.debitcardpos.currentposlimit')%></span>
							 <span class="cur" id="displayamt"></span>
							 </div>
             
    
                      <div class="form-group required">
					  <% if(isKeyPadNeed && devicePlatform != "Android") { %>
						<input type="number" autocomplete='off'   pattern="[0-9]*" inputmode="numeric" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"    onkeypress="return validateFloatKeyPress(this,event);"   class="form-control"  id="newposlimit" name="newposlimit" placeholder="<%-$.i18n.t('app.requests.debitcardpos.poslimit')%>" maxLength="17">  
						<% } else { %>
					<input type="text" autocomplete='off'  onfocus="(this.type='tel')"  pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"    onkeypress="return validateFloatKeyPress(this,event);"   class="form-control"  id="newposlimit" name="newposlimit" placeholder="<%-$.i18n.t('app.requests.debitcardpos.poslimit')%>" maxLength="17">  
						<% } %>
						   
                      </div>
                      <div id="errorlimitamtcheck" style="display:none">
                      		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.debitcardpos.limitamtcheck')%></font></p>
					  </div>
					  <div id="errorMinAmount" style="display:none">
								<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.debitcardpos.minAmountForTransfer')%></font></p>
							</div>
							<div id="errorlimitsamecheck" style="display:none">
								<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.debitcardpos.limitsamecheck')%></font></p>
							</div>
                      
                      <div class="infoCont">
                     <h4><%-$.i18n.t('app.transfer.general.relatedinfo')%></h4>
                         
							
							 <ul>
                            <li class="ex">
                                  <p class="lbl"><%-$.i18n.t('app.requests.debitcardpos.maxlimit')%></p>
                                  <p class="text-right"><span>KWD</span>&nbsp;<%- checkAmount($.formatNumber(segmentlimit, {format:"#,###.000", locale:"us"}))%></p>
								  <input type="hidden" id="currentposlimit" value="<%-segmentlimit%>">
                             </li>
                             </ul>
							 
                             </div>
							 
                     
                      <br/>
	
	<button id="validatePoints" name="validatePoints" type="button" class="btn btn-success btn-block"><%-$.i18n.t('app.tedallalrewards.submit')%></button> 
	<a href="#/servicerequestmenu" class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.homefinance.cancel')%></a>
	
</form>
<br/>
<!--Content Ends Here-->

<script>
        $(function(){
            $(".dropselect").dropselect();
        });
        
</script>
 
 
 <script>
(function ($){
     $.fn.inputlength=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keypress',function(e){
           // alert(makelength);
             $(this).val($(this).val().replace(/([^0-9])/g,""));
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
 $(".content").animate({ scrollTop: 0 }, "fast");
</script>

<script>
(function ($){
     $.fn.inputlengthname=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e){
           $(this).val($(this).val().replace(/([^A-Za-z\s])/g,""));
         // $(this).val($(this).val().toUpperCase());
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
                e.preventDefault();
               return false;
             }
          });
			
        });
     };
}(jQuery));
$('.lenthcontrolname').inputlengthname();
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
	
</script>
<script>
function amountFormat(){
	var amtval = $('#newposlimit').val();
	var vall=0;
	if(amtval > vall){
	$('#newposlimit').val(Number(amtval).toFixed(2));
	}
}
</script>


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
</script>