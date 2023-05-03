<%
var els = new EncryptedLocalStorage('secret'); 
var errorDescription=els.get("errordesc");
var devicePlatform = els.get("device.platform");
var isKeyPadNeed =els.get("isKeyPadNeed");
%>

<!--Content Starts Here-->
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<ol class="breadcrumb cust_breadcrumb pull-left">
   <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.cashondemandcc.creditcards')%></a></li>
   <li class="active"><%-$.i18n.t('app.creditcard.cashondemandcc.cod')%></li>
</ol>
 <div class="clearfix"></div>
<% if ( beneList.length > 0 ) {  %>
	<div class="newWiz">
	            <div class="steps done">
	                <div>
	                    1
	                    <p><%-$.i18n.t('app.creditcard.cashondemandcc.input')%></p>
	                </div>
	            </div>
	            <div class="steps">
	                <span></span>
	                <div>
	                    2
	                    <p><%-$.i18n.t('app.creditcard.cashondemandcc.verify')%></p>
	                </div>
	            </div>
	            <div class="steps">
	                <span></span>
	                <div>
	                    3
	                    <p><%-$.i18n.t('app.creditcard.cashondemandcc.confirm')%></p>
	                </div>
	            </div>
	</div>

	<form name="cashondemand" id="cashondemand">
	
		<!-- Credit card Number list(From Acct) -->
		<div class="dropselect" data-title="<%-$.i18n.t('app.creditcard.cashondemandcc.fromcc')%>">
			<% _.each(beneList,function(data){ %>
				<label class="list-group-item">
					<input type="radio" value="<%-data.accountNumber%>~<%-data.creditCardNoMasked%>~<%-data.currencyCode%>~<%-data.cclinkedt24accountnumber%>~<%-data.availableCashLimit%>~<%-data.cardType%>~<%-data.ccislamicstatus%>~<%-data.creditCardActNo%>~<%-data.cctypecode%>" name="frmacno" id="frmacno" checked/>
			 		<p>
						<%if(typeof(data.shortName)!="undefined"){%>
							<span class="nme"><%-data.shortName%></span>
						<%}else{%>
							<span class="nme"></span>
						<%}%>
						<%if(typeof(data.currencyCode)!="undefined"){%>
							<small class="cur pull-right"><%-data.currencyCode%></small>
						<%}else{%>
							<span class="nme"></span>
						<%}%>
					</p>
					<p>
						<%if(typeof(data.creditCardNoMasked)!="undefined"){%>
							<small class="text-muted"><%-data.creditCardNoMasked%></small>
						<%}else{%>
							<span class="nme"></span>
			 			<%}%>
		    			<%if(typeof(data.availableCashLimit)!="undefined"){%>
					 		<span class="amt  pull-right"><%- checkAmount($.formatNumber(data.availableCashLimit, {format:"#,###.000", locale:"us"}))%></span>
						<%}%>
				 	</p>

				</label>
			<%});%>
		</div>
      
      	<div id="errorFromAct" style="display:none">
			<!--<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></font></p>-->
			<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.cashondemandcc.selectcc')%></font></p>
		</div>
        
        
        <!-- CASA list(Credit Acct) -->
		<!--<% 
			if ( ownaccounts.length > 0 ) {
				var indx_to = 0;
		%>
			<div class="dropselect" data-title="<%-$.i18n.t('app.creditcard.cashondemandcc.toaccount')%>" >
				<% _.each(ownaccounts,function(data){ %>
					<label class="list-group-item" id="CasaAcctLabelList-<%-indx_to%>"  >
						<input type="radio" value="<%-data.accountNumber%>~<%-data.accountNumberMasked%>~<%-data.currency.code%>" name="toacc" id="toacc" />
						<p>
							<%if(typeof(data.accountShortName)!="undefined"){%>
								<span class="nme"><%-data.accountShortName%></span>
							<%}else{%>
								<span class="nme"></span>
							<%}%>
							<%if(typeof(data.currency.code)!="undefined"){%>
								<small class="cur pull-right"><%-data.currency.code%></small>
							<%}else{%>
								<span class="nme"></span>
							<%}%>
						</p>
						<p>
							<%if(typeof(data.accountNumberMasked)!="undefined"){%>
								<small class="text-muted"><%-data.accountNumberMasked%></small>
							 <%}else{%>
								<span class="nme"></span>
							 <%}%>
							<%if(typeof(data.availableBalance)!="undefined"){%>
								<span class="amt pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span>
							<%}%>
						</p>
					</label>
				<%
					indx_to++;
					});
				%>
			</div>
		<%}%>
	<div id="errorAccTo" style="display:none">
			 <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.toaccmsg')%></font></p> 
			<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.cashondemandcc.toaccmsg')%></font></p> 
		</div>
		<div id="errorToAct" style="display:none">
		 <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.toaccmsg')%></font></p> 
			<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.cashondemandcc.toacctcc')%></font></p> 
		</div>-->
	
	  
		<div id="toacc" style="display: block;" class="amt2">
			<span class="hdr"><%-$.i18n.t('app.creditcard.cashondemandcc.toaccount')%></span>
			<span style="display: inline-block;" class="cur" id="CasaAcctLabelList"></span> 
			<br/><h5>
			<p class="text-muted small pull-left description">*<%-$.i18n.t('app.creditcard.cashondemandcc.codmsg')%></p></h5><!--<span-->
			<div class="clearfix"></div>
			</span>
		</div>
	
		<div class="form-group required">
       
		     <input type="text" autocomplete='off' class="form-control lenthcontrolnameval" maxlength="35" id="remarks" name="remarks" placeholder="<%-$.i18n.t('app.creditcard.cashondemandcc.paymentremarks')%>">
	     
		</div>
		<div id="errremarks" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.errremarks')%></font></p>
                        </div>
	
		<div class="form-group  has-feedback">
        <% if ( devicePlatform == "Android" ) { %>
			<input type="text" autocomplete='off' class="form-control nativedatepicker" id="payDate" name="payDate" placeholder="<%-$.i18n.t('app.creditcard.cashondemandcc.paymentdate')%>" readonly>
        <%}else{%>
                <input type="text" autocomplete='off' class="form-control nativedatepicker" id="payDate" name="payDate" placeholder="<%-$.i18n.t('app.creditcard.cashondemandcc.paymentdate')%>" readonly>
        <%}%>
			<span class="glyphicon glyphicon-calendar form-control-feedback"></span>
		</div>
		
		<div class="form-group required">
           <% if ( devicePlatform == "Android" ) { %>
			<input type="text" autocomplete='off' onfocus="(this.type='tel')"   class="form-control currency" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"  onBlur="amountFormat()"  onkeypress="return validateFloatKeyPress(this,event);"  id="currency" name="currency" placeholder="<%-$.i18n.t('app.creditcard.cashondemandcc.payamount')%>" maxLength="17">
             <%}else{%>
				<% if(isKeyPadNeed) { %>
					<input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric"  onBlur="amountFormat()"  onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol"  maxlength="17" id="currency" name="currency" placeholder=" <%-$.i18n.t('app.creditcard.cashondemandcc.payamount')%>" >
				<% } else { %>
					<input type="text" autocomplete='off' onfocus="(this.type='number')" pattern="\d+(\.\d*)?" onBlur="amountFormat()"  onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol currency"  maxlength="17" id="currency" name="currency" placeholder=" <%-$.i18n.t('app.creditcard.cashondemandcc.payamount')%>" >
				<% } %>
				
	     <%}%>
		</div>
		
		<div id="payAmount" style="display:none">
			<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.cashondemandcc.payamterror')%></font></p> 
		</div>
		<div id="errorAmount" style="display:none">
             <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.ccpayments.selectamt')%></font></p>
     	</div>
<!--
        <div class="infoCont">
             <ul>
                <li>
                        <p class="lbl"><%-$.i18n.t('app.creditcard.cashondemandcc.convamt')%></p>
                        <p class="amt" id="displayamt"></p>
                 </li>
            </ul>
		</div></br>	
        <div class="infoCont">
            <ul>
                  <li class="tf">
                        <p class="lbl"><%-$.i18n.t('app.creditcard.cashondemandcc.txnfee')%></p>
                        <p class="text-right"><span></span></p>
                   </li>
              </ul>
		</div>
		</br>
-->

		<input type="hidden" id="hiddenfrmcurid" 	name="hiddenfrmcurid">
       	<input type="hidden" id="hiddentocurid"  	name="hiddentocurid">

		<!--<a id="validateCardPin" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.cashondemandcc.submit')%></a>-->
		<input type="button" class="btn btn-success btn-block" name="validateCardPin" id="validateCardPin"  value="<%-$.i18n.t('app.creditcard.cashondemandcc.submit')%>" />
		<a href="#/creditcard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.cashondemandcc.cancel')%></a>
	</form>
	<br/>
	<br/>
<%}else if ( beneList.length == 0 ){%>
				<div class="alert alert-info">
					<span class="msg"><%-$.i18n.t('app.product.creditcard.nodata')%></span>
			    </div>
					<a  href="#/applynewcreditcardrequest" class="btn btn-success btn-sm  btn-block" type="button"><%-$.i18n.t('app.product.creditcard.newcardlink')%></a>
 			<%}else{%>
				<div class="alert alert-info">
            		 <span class="msg"><%-errorDescription%></span>
       			</div>
 			<%}%>			
   
               
<script>
$(document).ready(function(){
         $("#toacc").hide();
         $("#CasaAcctLabelList").hide();
         $('input[placeholder], textarea[placeholder]').placeholder();
});

</script>
<script>
var trandateDate = new Date();
var d = trandateDate.getDate();
var m = trandateDate.getMonth()+1;
var y = trandateDate.getFullYear();
//var myDate = '' +  (m <= 9 ? '0' + m : m) + '/'+ (d <= 9 ? '0' + d : d) + '/' + y;
var myDate = '' +  (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;
$("#payDate").val(myDate);					
</script>
<!-----   ---------->
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
var r={'special':/[\W]/g}
function valid(o,w)
{
o.value = o.value.replace(r[w],'');
}
</script>
<script>
function amountFormat(){
	var amtval = $('#currency').val();
	var vall=0;
	if(amtval > vall){
	$('#currency').val(Number(amtval).toFixed(2));
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
$(".content").animate({ scrollTop: 0 }, "fast");
</script>
<script>  
	(function ($){
		$.fn.inputlengthnameval=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
				var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 ";
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



