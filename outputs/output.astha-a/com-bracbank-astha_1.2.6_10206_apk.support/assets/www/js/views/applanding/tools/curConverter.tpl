<%
			var els = new EncryptedLocalStorage('secret'); 
			var devicePlatform = els.get("device.platform");
			var isKeyPadNeed =els.get("isKeyPadNeed");
%> 

<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>
<a href="#/tools"  class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/tools"><%-$.i18n.t('app.landing.tools')%></a></li>
	<li class="active"><%-$.i18n.t('app.tools.landing.currconvert')%></li>
</ol>
 
<div class="clearfix"></div>
<h3><%-$.i18n.t('app.tools.landing.currconvert')%></h3>
<!--<div class="alert alert-info alert-sm"><p><%-$.i18n.t('app.more.tool.ratesin')%> <strong><%-$.i18n.t('app.more.tool.kwd')%> </strong><%-$.i18n.t('app.more.tool.saudiriyal')%></p></div>-->
 
<form role="form" id="currconamtt">
 	<input type="hidden" id="hiddenfrmcurid" 	name="hiddenfrmcurid">
	<input type="hidden" id="hiddentocurid"  name="hiddentocurid">
 
	<div class="form-group">
	<% if(isKeyPadNeed && devicePlatform != "Android") { %>
					<input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric"  class="form-control" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"  onBlur="amountFormat()"  onkeypress="return validateFloatKeyPress(this,event);"   class="form-control"  id="transAmt" name="transAmt" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.payamt')%>" maxLength="17">
				<% } else { %>
					 <input type="text" autocomplete='off' onfocus="(this.type='tel')"   class="form-control" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"  onBlur="amountFormat()"  onkeypress="return validateFloatKeyPress(this,event);"   class="form-control"  id="transAmt" name="transAmt" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.payamt')%>" maxLength="17">
	<% } %>
       
	</div>
           
			   
			   <div id="errorsame" style="display:none">
		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.tools.currencyconverter.currencysame')%></font></p>
	</div>
			   <div id="errorsar" style="display:none">
		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.tools.currencyconverter.currencysar')%></font></p>
	</div>
	<!-- From Currency Selection -->    
    <div class="dropselect" data-title="<%-$.i18n.t('app.tools.currencyconverter.fromcurrency')%>">
    	<% _.each(intlCurrencyList,function(data){ %>
			<label class="list-group-item">
           		<input type="radio" value="<%-data.code%>" name="fromcurr" id="fromcurr" />
           		<p><span class="exicon" style="background: url(images/common/currency/<%- data.code%>.png)"></span><span class="nme"><%- data.code%></span></p>
        	</label>
        <% }); %>
	</div>
	<div id="errorFromAct" style="display:none">
		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></font></p>
	</div>

	<!-- To Currency Selection -->
  <div class="dropselect" data-title="<%-$.i18n.t('app.tools.currencyconverter.tocurrency')%>" >
	    <% _.each(intlCurrencyList,function(data,indx){ %>
	      	<label class="list-group-item">
	           <input type="radio" value="<%-data.code%>~<%- data.currdesc%>~<%-indx%>" name="tocurr" id="tocurr" />
	           <p>
		           <span class="exicon" style="background: url(images/common/currency/<%- data.code%>.png)"></span>
		           <span class="nme" id="nme<%-indx%>" ><%- data.code%></span>
	           </p>
			</label>
		<% }); %>
	</div>

	<div id="errorToAct" style="display:none">
		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.toaccmsg')%></font></p>
	</div>


	<!-- Converted Amount -->
    <div class="alert alert-success text-center" id="examt" style="display:none;">
    	<!-- <h4> 100 KWD = 26.65USD</h4>-->
    </div>
    
    <!-- ExchangeRate Amount -->
    <div class="alert alert-success text-center" id="exrate" style="display:none;">
    	
    </div>
    
    <!-- Buttons -->
    <button type="button" id="currencyconvert" class="btn btn-success btn-block" data-i18n="button.tools.convert"> </button>
    <a href="#/tools" class="btn btn-primary btn-block" data-i18n="button.tools.back"></a>
	<br/>
</form>

<br/>

<script>
    $(document).ready(function(){
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
	var r={'special':/[\W]/g}
	function valid(o,w)
	{
	o.value = o.value.replace(r[w],'');
	}
</script>


<script>
	function amountFormat(){
		var amtval = $('#transAmt').val();
		var vall=0;
		if(amtval > vall){
		$('#transAmt').val(Number(amtval).toFixed(2));
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
	  o.value=o.value.replace(/([^0-9.])/g,"");
	}
	function g(o){
		if(/[^0-9A-Z]/.test(o.value)){
			o.value=o.value.toUpperCase().replace(/([^0-9A-Z\s])/g,"");
		}
	}
</script>
