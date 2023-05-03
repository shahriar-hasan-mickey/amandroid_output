<%
	var els = new EncryptedLocalStorage('secret'); 
	var basecurr = els.get("basecurr");
	var billdailylmt = els.get("dailylmt");
	var billavaillmt = els.get("availlmt");
	var billtransfees= els.get("transfees");
	var devicePlatform = els.get("device.platform");
	var isKeyPadNeed =els.get("isKeyPadNeed");
	var demon = els.get("demon");
	
	var billerLimit = els.get("billerLimit");
%>

 <a href="#/sadad" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 <!-- Breadcrumb Starts Here -->
 <ol class="breadcrumb cust_breadcrumb pull-left">
         <li><a href="#/sadad"><%-$.i18n.t('app.sadad.general.title')%></a></li>
         <li class="active"><%-$.i18n.t('app.sadad.general.onetimepayment')%></li>
 </ol>
 <div class="clearfix"></div><br/>
 <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
 <div class="newWiz">
           <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.onetimepay.input')%></p></div></div>
           <div class="steps"><span></span><div>2<p><%-$.i18n.t('app.sadad.onetimepay.verify')%></p></div></div>
           <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.onetimepay.confirm')%></p></div></div>
 </div>
<form role="form">

<!-- Biller category -->

	<div class="form-group" placeholder="<%-$.i18n.t('app.sadad.onetimepay.billercategory')%>" id="billercategory">
		   		<%if(billercategory.length>0){%>
		   		<%var i=0;%>
                          <select name="ServiceType"  id="serviceType" class="form-control" placeholder="<%-$.i18n.t('app.moi.moipayments.servicetype')%>">
                            <option value="-1" selected="selected"><%-$.i18n.t('app.sadad.onetimepay.billercategoryselect')%></option>
                            <%_.each(billercategory,function(data){%>
                            	<option id="sertype<%-i%>" value="<%-data.strBillerServiceCode%>" ><%-data.strBillerServiceDesc%></option>
                            <%i++;});%>
                          </select>
                         
               <%}%>
	</div>


 <!--Biller sub category -->

	<!--<div class="form-group" placeholder="<%-$.i18n.t('app.sadad.onetimepay.billercompany')%>" id="billercompany" style="display:none;">
		<select class="form-control" id="billerComp"></select> 
	</div>-->
	
	<span id="dynamicbillercompany" class="dynamicbillercompanyotp" > </span>
	
	
	<input type="hidden" value="" id="hiddenservice" name="hiddenservice"/>

	<input type="hidden" name="BillerType" id="BillerType" />
	<input type="hidden" name="BillerDesclaimer" id="BillerDesclaimer" />
	
	<input type="hidden" name="BillerIdLenMin" id="BillerIdLenMin" />
	<input type="hidden" name="BillerIdLenMax" id="BillerIdLenMax" />
	
	<input type="hidden" name="BillerMobLenMin" id="BillerMobLenMin" />
	<input type="hidden" name="BillerMobLenMax" id="BillerMobLenMax" />
	
	<input type="hidden" name="BillerSubLenMin" id="BillerSubLenMin" />
	<input type="hidden" name="BillerSubLenMax" id="BillerSubLenMax" />
	<input type="hidden" name="strPrepaidStartWith" id="strPrepaidStartWith" />
	<input type="hidden" name="strPostpaidStartWith" id="strPostpaidStartWith" />
	<input type="hidden" name="strPostpaidStartDesEn" id="strPostpaidStartDesEn" />
	<input type="hidden" name="strPrepaidStartDesEn" id="strPrepaidStartDesEn" />
	<input type="hidden" name="strPostpaidStartDesAr" id="strPostpaidStartDesAr" />
	<input type="hidden" name="strPrepaidStartDesAr" id="strPrepaidStartDesAr" />

	<input type="hidden" name="BillerPerServType" id="BillerPerServType" />

	<input type="hidden" name="hidPaymentMode" id="hidPaymentMode" />

	<input type="hidden" name="postAmtDue" id="postAmtDue" />
	<input type="hidden" name="postExactPay" id="postExactPay" />
	<input type="hidden" name="PostDueDate" id="PostDueDate" />

	<input type="hidden" name="BillerSadadOperator" id="BillerSadadOperator" />
	
	

<!-- Service Type BOTH starts -->

	<div class="form-group" id="serviceProviderTypeDiv"  style="display:none;">
		<select class="form-control" id="serviceProviderType">
  	  	</select>
	</div>

	<div class="form-group" id="idSubsNoDiv" style="display:none;">

		<input  id="idSubsNo" autocomplete='off'  name="idSubsNo"  type="text" onfocus="(this.type='number')" pattern="[0-9]*" onblur="(this.type='text')" class="form-control lenthcontrol"
		onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )">

		<p class="help-block error-message label label-danger" id="Error_IdSubsNo" style="display: none;"></p>
		<p class="help-block error-message label label-danger" id="Error_IdPattern" style="display: none;"></p>
		<p class="help-block error-message label label-danger" id="invalid_Due_Amt" style="display: none;"><%-$.i18n.t('app.sadad.onetimepay.invalidactno')%></p>
	</div>
	
	<div class="form-group" id="selectidProofdiv" style="display:none;">
		<select class="form-control" id="selectidProof">
    	</select>
	</div>


	<div class="form-group" id="idProofdiv" style="display:none;">
		<div class="optwrap input-group ">
		<% if ( devicePlatform == "Android" ) { %>
		<input  id="idProof" autocomplete='off'  name="idProof"  type="text" onfocus="(this.type='number')" pattern="[0-9]*" onblur="(this.type='text')" class="form-control lenthcontrol"
		onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )">
        <%}else{%>
        	<input  id="idProof" autocomplete='off'  name="idProof" type="number" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"
		onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )">
        <%}%>
        <span class="input-group-btn">
		<button type="button" id="getId" name="getId" class="btn btn-success"><%-$.i18n.t('app.moi.moipayments.getMyId')%></button>
		</span>
        </div>
		<p class="help-block error-message label label-danger" id="Error_IdProof" style="display: none;"></p>
	</div>
	
	<div class="form-group" id="idpreDemonDiv" style="display:none;">
	<select name="demonn" id="demonn"  class="form-control">
	   				
    </select> 
    <p class="help-block error-message label label-danger" id="Error_iddemonAmountPre" style="display: none;"></p>
	</div>
	
	

	<div class="form-group" id="idPayAmountPreDiv" style="display:none;">

		<input type="text" autocomplete='off'  onfocus="(this.type='tel')"   class="form-control lenthcontrol" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"  onBlur="amountFormat()"  onkeypress="return validateFloatKeyPress(this,event);"   id="idPayAmountPre" name="idPayAmountPre" placeholder="<%-$.i18n.t('app.sadad.onetimepay.payamount')%>" maxLength="17">
		
		<p class="help-block error-message label label-danger" id="Error_idPayAmountPre" style="display: none;"></p>
		<p class="help-block error-message label label-danger" id="Error_ValidminmsgPre" 
		style="display: none;">
		</p>
	    <p id="Error_ValidmaxmsgPre" class="help-block error-message label label-danger" 
	    style="display:none">
		</p>
	</div>
	<div id="Min_Paypre" class="alert alert-info alert-sm" role="alert" style="display:none;"> </div>
	<div id="Max_Paypre" class="alert alert-info alert-sm" role="alert" style="display:none;"> </div>
	<div class="form-group" id="idPayAmountPostDiv" style="display:none;">
		<div class="input-group">			
			<% if ( devicePlatform == "Android" ) { %>
			<input type="text" autocomplete='off'  onfocus="(this.type='tel')"   class="form-control lenthcontrol" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"  onBlur="amountFormatpos()"  onkeypress="return validateFloatKeyPress(this,event);"   id="idPayAmountPost" name="idPayAmountPost" placeholder="<%-$.i18n.t('app.sadad.onetimepay.payamount')%>" maxLength="17">
			<%}else{%>
			<% if(isKeyPadNeed) { %>
					<input type="number" autocomplete='off'   pattern="[0-9]*" inputmode="numeric"  onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)" onBlur="amountFormatpos()"  onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol" id="idPayAmountPost" name="idPayAmountPost" placeholder="<%-$.i18n.t('app.sadad.onetimepay.payamount')%>" maxLength="17">
				<% } else { %>
					 <input type="number" autocomplete='off'  inputmode="numeric" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)" onBlur="amountFormatpos()"  onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol" id="idPayAmountPost" name="idPayAmountPost" placeholder="<%-$.i18n.t('app.sadad.onetimepay.payamount')%>" maxLength="17">
				<% } %>			
			
			<%}%>
			<span class="input-group-btn">
				<button class="btn btn-success" type="button" id="enquire" name="enquire"><%-$.i18n.t('app.sadad.onetimepay.inquire')%></button>
			</span>
		</div>
		<p class="help-block error-message label label-danger" id="Error_idPayAmountPost" style="display: none;"></p>
		<p class="help-block error-message label label-danger" id="Error_ValidminmsgPost" 
		style="display: none;">
		</p>
	    <p id="Error_ValidmaxmsgPost" class="help-block error-message label label-danger" 
	    style="display:none">
		</p>
		<p></p>
		<div id="Due_Amt" class="alert alert-info alert-sm" role="alert" style="display:none;"> </div>
		<div id="Due_Date" class="alert alert-info alert-sm" role="alert" style="display:none;"> </div>
		<div id="Exat_Pay" class="alert alert-info alert-sm" role="alert" style="display:none;"> </div>
		<div id="Min_Pay" class="alert alert-info alert-sm" role="alert" style="display:none;"> </div>
		<div id="Max_Pay" class="alert alert-info alert-sm" role="alert" style="display:none;"> </div>
		<p class="help-block error-message label label-danger" id="Error_Common_Neg_Val" style="display: none;"><%-$.i18n.t('validation.sadad.negamountvaldategen')%></p>
		
	</div>

<!-- Service Type BOTH Ends -->


<div id="accard"></div>




</form>

<!--One time Billpay Ends Here-->
<br/>
                  
<script>
		$(function(){
				//$('.telcomPayment,.inquire_link,.creditCard,.fromAcc,.creditCard,#postpaid,#prepaid').hide();
	            //$(".dropselect").dropselect();
				$('.creditCard').hide();
        });
        
        $('#serviceType').on('change',function(){

	            var selVal = $('select option:selected').attr('id');
	            var id=$('#'+selVal).val();
	            $('#hiddenservice').val(id);
		             /*
		             //$('.fromAcc').show();
		        	//$('.creditCard').show();
		            if(selVal == 'sertype0'){
		               //$('.telcomPayment').show();
		            }
		            else{
		                //$('.telcomPayment').hide();
		            }*/
        });
        
        
        
		$("#hidPaymentMode").val("ACCT");
        $('.payAccount').change(function(){
            $('.fromAcc').show();
            $('.creditCard').hide();
            $("#hidPaymentMode").val("ACCT");
            //$("#payAccount").addClass("active").removeClass("ui-btn-active");
        });
        $('.payCard').change(function(){
            $('.fromAcc').hide();
            $('.creditCard').show();
            $("#hidPaymentMode").val("CARD");
            //$("#payAccount").addClass("active").removeClass("ui-btn-active");
            
        });

        $('#billerComp').on('change',function(){
            	var comp = $('#billerComp').val();
		            /*if(comp=='SEC'){
		
		               //$('#servicetype').hide();
		            }
		            else
		            {
		             //$('#servicetype').show(); 
		            }*/
        });
</script>
 <script>
function amountFormat(){
	var amtval = $('#idPayAmountPre').val();
	var vall=0;
	if(amtval > vall){
	$('#idPayAmountPre').val(Number(amtval).toFixed(2));
	}
}
</script>

<script>
function amountFormatpos(){
	var amtval = $('#idPayAmountPost').val();
	var vall=0;
	if(amtval > vall){
	$('#idPayAmountPost').val(Number(amtval).toFixed(2));
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
<script>
function validate(s) {
    var rgx = /^[0-9]*\.?[0-9]*$/;
    return s.matches(rgx);
}
</script>
<script type="text/javascript">
function f(o){
  //o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
  o.value=o.value.replace(/([^0-9.-])/g,"");
}

function g(o){
  if(/[^0-9A-Z]/.test(o.value)){
    o.value=o.value.toUpperCase().replace(/([^0-9A-Z\s])/g,"");
  }
}
</script>
<script>
(function ($){
    $.fn.inputlength=function(){
      // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
       return this.each(function(){
         var makelength=$(this).attr("maxlength");
         $(this).on('keyup',function(e){
         var els = new EncryptedLocalStorage('secret');
	 var devicePlatform = els.get("device.platform");
   if ( devicePlatform == "Android" ) {
            if($(this).val().length>makelength &&  e.keyCode != '8' && e.keyCode != '46' || e.keyCode == '32'){
              var values=$(this).val();
              values=values.substring(0, values.length - 1);
               $(this).val(values).focus();
              e.preventDefault();
            }
}else{
            if($(this).val().length> $(this).attr("maxlength") &&  e.keyCode != '8' && e.keyCode != '46' || e.keyCode == '32'){
              var values=$(this).val();
              values=values.substring(0, values.length - 1);
               $(this).val(values).focus();
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
}
         })

       });
    };
}(jQuery));
$('.lenthcontrol').inputlength();
</script>