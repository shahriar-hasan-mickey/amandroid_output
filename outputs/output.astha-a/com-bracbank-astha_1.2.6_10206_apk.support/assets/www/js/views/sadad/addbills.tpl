<%
			var els = new EncryptedLocalStorage('secret'); 			
			 var devicePlatform = els.get("device.platform");
%>
 <a href="#/sadad" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 <!-- Breadcrumb Starts Here -->
 <ol class="breadcrumb cust_breadcrumb pull-left">
         <li><a href="#/managebills"><%-$.i18n.t('app.menu.billpay')%></a></li>
         <li class="active"><%-$.i18n.t('app.sadad.general.managebills')%></li>
 </ol>

 <div class="clearfix"></div><br/>
 <!-- Breadcrumb Ends Here -->
 
 <!--Step Control Starts Here-->
 <div class="newWiz">
           <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.onetimepay.input')%></p></div></div>
           <div class="steps"><span></span><div>2<p><%-$.i18n.t('app.sadad.onetimepay.verify')%></p></div></div>
           <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.onetimepay.confirm')%></p></div></div>
 </div>
 <!--Step Control Ends Here-->	
 
 <!--One Time Billpay Starts Here-->

<form role="form">
  	<div class="form-group" placeholder="<%-$.i18n.t('app.sadad.onetimepay.billercategory')%>" id="billercategory">
	   		<%if(billercategory.length>0){%>
	   				  <%var i=0;%>
                      <select name="serviceType"  id="serviceType" class="form-control" placeholder="<%-$.i18n.t('app.moi.moipayments.servicetype')%>">
                      		<option value="-1" selected="selected" ><%-$.i18n.t('app.sadad.onetimepay.billercategoryselect')%></option>
                            <%_.each(billercategory,function(data){%>
                            	<option id="sertype<%-i%>" value="<%-data.strBillerServiceCode%>" ><%-data.strBillerServiceDesc%></option>
                           <%i++;});%>
                      </select>
                     
           <%}%>
  	</div>
		      
	<input type="hidden" value="" id="hiddenservice" name="hiddenservice"/>  

	<input type="hidden" name="BillerSubLenMin" id="BillerSubLenMin" />
	<input type="hidden" name="BillerSubLenMax" id="BillerSubLenMax" />
	<input type="hidden" name="strPrepaidStartWith" id="strPrepaidStartWith" />
	<input type="hidden" name="strPostpaidStartWith" id="strPostpaidStartWith" />
	<input type="hidden" name="strPostpaidStartDesEn" id="strPostpaidStartDesEn" />
	<input type="hidden" name="strPrepaidStartDesEn" id="strPrepaidStartDesEn" />
	<input type="hidden" name="strPostpaidStartDesAr" id="strPostpaidStartDesAr" />
	<input type="hidden" name="strPrepaidStartDesAr" id="strPrepaidStartDesAr" />
		 
		<span id="dynamicbillercompany" class="dynamicbillercompanyotp" > </span>
	<div class="form-group" id="idSubsNoDiv" style="display:none;">
	<% if ( devicePlatform == "Android" ) { %>
		<input  id="idSubsNo" name="idSubsNo" type="text"  autocomplete='off'  onfocus="(this.type='number')" pattern="[0-9]*"  onblur="(this.type='text')" class="form-control lenthcontrol"
		onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )">
       <%}else{%>
		<input type="text" autocomplete='off'  pattern="[0-9]*" id="idSubsNo" inputmode="numeric" name="idSubsNo"  class="form-control lenthcontrol"/>
       <%}%>
		<p class="help-block error-message label label-danger" id="Error_IdSubsNo" style="display: none;"></p>
		<p class="help-block error-message label label-danger" id="Error_IdPattern" style="display: none;"></p>
	</div>
	

	<div class="form-group" id="idNickNameDiv" style="display:none;">
		<input type="text" autocomplete='off'   maxlength="20" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)"  class="form-control lenthcontrolnick" id="idNicName" name="idNicName" placeholder="<%-$.i18n.t('app.sadad.managebills.nickname')%>" />
		<!--<div class="alert alert-info alert-sm">
    		<p><%-$.i18n.t('app.transfer.internationaltransfer.nicknamealert')%></p>
 		</div>-->
		<p class="help-block error-message label label-danger" id="Error_IdNicName" style="display: none;"><%-$.i18n.t('validation.sadad.nicknamenotnull')%></p>
	</div>

	<div id="buttonDiv" style="display:none;">
		<!-- <a id="confirm" name="confirm" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.onetimepay.submit')%></a> -->
		<input type="button" name="confirm" id="confirm" class="btn btn-success btn-block" value="<%-$.i18n.t('app.sadad.onetimepay.submit')%>" />
		<a href="#/sadad" class="btn btn-primary btn-block" ><%-$.i18n.t('app.sadad.onetimepay.cancel')%></a>
	</div>
	</br>
	<p class="help-block error-message label label-danger" id="Error_Common" style="display: none;"><%-$.i18n.t('validation.sadad.managebillcommon')%></p>

</form>
                  
<script>
        $(function(){
            	//$('.telcomPayment,.inquire_link,.creditCard,#postpaid,#prepaid').hide();
            	//$(".dropselect").dropselect();
        });
        $('#serviceType').on('change',function(){
            	var selVal = $('select option:selected').attr('id');
            	var id=$('#'+selVal).val();
            	$('#hiddenservice').val(id);
	            
	            /*if(selVal == 'sertype0'){
	               //$('.telcomPayment').show();
	            }else{
	                //$('.telcomPayment').hide();
	            }*/
        });

/*
        $('#feetype').on('change',function(){
			var selType = $('#feetype option:selected').attr('id');
            if(selType == 'feetyp1'){
               	$('#prepaid').hide();
               	$('#postpaid').show();
            }else{
              	$('#prepaid').show();
              	$('#postpaid').hide();
            }
        });

        $('.payAccount').change(function(){
            $('.fromAcc').show();
            $('.creditCard').hide();
        });
        
        $('.payCard').change(function(){
            $('.fromAcc').hide();
            $('.creditCard').show();
        });
*/
/*
        $('#billerComp').on('change',function(){
            var comp = $('#billerComp').val();
            if(comp=='SEC'){
                $('#servicetype').hide();
            }else{
             	$('#servicetype').show(); 
            }
        });
*/
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
function nospaces(t){
if(t.value.match(/\s/g)){
t.value=t.value.replace(/\s/g,'');
}
}
	function f(o){
	  //o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
	  //o.value=o.value.replace(/([^0-9.]),"");
	  //o.value=o.value.replace(/^[a-zA-Z-,]+(\s{0,1}[a-zA-Z-, ])*$/,"");
	}
	
	function g(o){
	  if(/[^0-9A-Z]/.test(o.value)){
	    o.value=o.value.toUpperCase().replace(/([^0-9A-Z\s])/g,"");
	  }
	}
</script>
<script>
function b(o){
  //o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
  //o.value=o.value.replace(/([^0-9A-Za-z\s])/g,"");
}
</script>
<script>
	(function ($){
	    $.fn.inputlength=function(){
	      // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
	       return this.each(function(){
	         var makelength=$(this).attr("maxlength");
	         $(this).on('keyup',function(e){
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
	            }		   
	            }
	         })
	
	       });
	    };
	}(jQuery));
	$('.lenthcontrol').inputlength();
</script>


<script>
	(function ($){
	    $.fn.inputlengthnick=function(){
	      // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
	       return this.each(function(){
	         var makelength=$(this).attr("maxlength");
	         $(this).on('keyup',function(e){
		 var devicePlatform = els.get("device.platform");
		 if ( devicePlatform == "Android" ) {
	            if($(this).val().length> $(this).attr("maxlength") &&  e.keyCode != '8' && e.keyCode != '46'){
	              var values=$(this).val();
	              values=values.substring(0, values.length - 1);
	               $(this).val(values).focus();
	              e.preventDefault();
	            }
		    }else{		    
		    if($(this).val().length>makelength &&  e.keyCode != '8' && e.keyCode != '46'){
	              var values=$(this).val();
	              values=values.substring(0, values.length - 1);
	               $(this).val(values).focus();
	              e.preventDefault();
	            }
		    }
	         })
	
	       });
	    };
	}(jQuery));
	$('.lenthcontrolnick').inputlengthnick();
</script>


<script>
function call(e) {
        if (document.getElementById('idNicName').value.length == 0) {
            if (e.keyCode == 32) {
                e.preventDefault();
            }
        }
}
</script>

<script>
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
