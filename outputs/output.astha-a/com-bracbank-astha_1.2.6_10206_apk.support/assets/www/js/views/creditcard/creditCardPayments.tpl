<%
var els = new EncryptedLocalStorage('secret'); 
var cccardacctno=els.get("setccdetailsaccno");
var cccardacct=els.get("cccardacctno");
var errorDescription=els.get("errordesc");
var devicePlatform = els.get("device.platform");
els.set("setccdetailsaccno","");
var isKeyPadNeed =els.get("isKeyPadNeed");
var transBene=els.get("transferBene");
var benNo=els.get("accNumber");
var mycreditcards=els.get("tocreditcard");

var fromAccdefaultselection = els.get("fromAccdefaultselection");
%>
 
 <!--Content Starts Here-->
 <a href="#/transfer" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 <ol class="breadcrumb cust_breadcrumb pull-left">
   <li><a href="#/transfer"><%-$.i18n.t('app.creditcard.cashondemandcc.creditcards')%></a></li>
   <li class="active"><%-$.i18n.t('app.creditcard.ccpayments.ccpayment')%></li>
 </ol>
  <div class="clearfix"></div>
 
                    <div class="newWiz">
                                <div class="steps done">
                                    <div>
                                        1
                                        <p><%-$.i18n.t('app.creditcard.ccpayments.input')%></p>
                                    </div>
                                </div>
                                <div class="steps">
                                    <span></span>
                                    <div>
                                        2
                                        <p><%-$.i18n.t('app.creditcard.ccpayments.verify')%></p>
                                    </div>
                                </div>
                                <div class="steps">
                                    <span></span>
                                    <div>
                                        3
                                        <p><%-$.i18n.t('app.creditcard.ccpayments.confirm')%></p>
                                    </div>
                                </div>
                            </div>
 <form>
 <div class="form-group paymentMode">
	<div data-toggle="buttons" class="btn-group btn-group-justified">
	 <%if(transBene=="true"){%>
 <label class="btn btn-default owncard " id="labeloption">
            <input type="radio" value="Account" name="option1" id="option1"><%-$.i18n.t('app.creditcard.ccpayments.owncard')%>
         </label>
         <label class="btn btn-default benecard active">
             <input type="radio" value="cc" name="option3" id="option3"> <%-$.i18n.t('app.creditcard.ccpayments.othercard')%>
         </label>
     <%}else{%>
       <label class="btn btn-default owncard active " id="labeloption">
            <input type="radio" value="Account" name="option1" id="option1"><%-$.i18n.t('app.creditcard.ccpayments.owncard')%>
         </label>
         <label class="btn btn-default benecard">
             <input type="radio" value="cc" name="option3" id="option3"> <%-$.i18n.t('app.creditcard.ccpayments.othercard')%>
         </label>
     <%}%>
     </div>
 </div>
     <br/><br/> 
       <div class="form-group required">
       <div class="dropselect" data-title=" <%-$.i18n.t('app.creditcard.ccpayments.fromaccount')%>" data-setid="fromAccountId">
                         	<% if ( debitCasaAccountList.length > 0 ) {
                         		var idxf = 0;
                         	%>
                         		<input type="hidden" name="casaacctlength" id="casaacctlength" value="<%-myaccounts.length%>" />
	               	   			<% _.each(debitCasaAccountList,function(data){ 
	               	   				if($.i18n.lng() == 'en-US'){
	               	   				if(data.imAccountStatus	=== 'Active'){	%>
                   			          <label class="list-group-item">
                            		        <input type="radio" value="<%-data.accountNumber%>~<%-data.currencyCode%>~<%-data.id%>"  name="frmacc" id="frmacc"/>
                            		        <p><span class="nme"><%-data.productName%></span><small class="cur pull-right"><%-data.currencyCode%></small></p>
            				 	 			<p><small class="text-muted"><%-data.accountNumber%></small><span class="amt  pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
            			     		</label>
            			     	<% }} else	{%>
            			     	<label class="list-group-item">
                            		        <input type="radio" value="<%-data.accountNumber%>~<%-data.currencyCode%>~<%-data.id%>"  name="frmacc" id="frmacc"/>
                            		        <p><span class="nme"><%-data.productName%></span><small class="cur pull-right"><%-data.currencyCode%></small></p>
            				 	 			<p><small class="text-muted"><%-data.accountNumber%></small><span class="amt  pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
            			     		</label>
            			    <% 		}
            			     	idxf++ }); %>
            			     	<%}else{%>
												<h4><%-$.i18n.t('app.product.investment.nodata')%></h4>
				                 <%}%>
                         </div>
                        <div id="errorFromAct" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></font></p>
                        </div>
</div>
	<!-- End From account  -->

	<div id="myCards">
	<% if ( mycreditcards.length > 0 ) {  %>
		<div class="form-group required">
		<div class="dropselect" data-title="<%-$.i18n.t('app.creditcard.ccpayments.tocc')%>" data-setid="OwnCreditCardDiv">
 			  <% _.each(mycreditcards,function(data){ %>
                   			          <label class="list-group-item">
                            		        <input type="radio" value="<%-data.accountNumber%>~<%-data.currencyCode%>~<%-data.id%>" name="toacc" id="toacc"/>
                            		        <p><span class="nme"><%-data.productName%></span><small class="cur pull-right"><%-data.currencyCode%></small></p>
            				 	 			<p><small class="text-muted"><%-data.accountNumber%></small><span class="amt  pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
            			     		</label>
            			     	<% idxf++ }); %>
		</div>
		<%}else{%>
			<div class="alert alert-info">
                <span class="msg"><%-$.i18n.t('app.creditcard.ccpayments.nodataccard')%></span>
            </div>
            <!--<a  href="#/applynewcreditcardrequest" class="btn btn-success btn-sm  btn-block" type="button"><%-$.i18n.t('app.product.creditcard.newcardlink')%></a>-->
	    <%}%>
 </div>  
 </div>
 <div id="errorccAct" style="display:none">
                        	<p class="help-block error-message" ><font color="#A94442"><%-$.i18n.t('validation.sadad.selectcc')%></font></p>
                        </div>
   <!-- Own Credit Card Ends-->
   </br>
   <div class="dl" id="benedue" style="display:none">
				<p class="lbl"><%-$.i18n.t('app.sadad.duebillpay.dueamountdot')%>
                        <font color="#A94442"><span id="mindueamt12"></span></font>
            	</p>
			</div>

   
 <!-- Other Credit Card Ends-->

<!--<div id="errorToAct" style="display:none">
        <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.toaccmsg')%></font></p>
   </div>-->

<!-- Other Credit Card Starts-->
<!-- To credit card input field -->

   	<div id="otherCards" style="display:none;" class="form-group required">
        <div data-setid="OtherCreditCardDiv"><%-$.i18n.t('app.creditcard.ccpayments.toccardnum')%></div><br>
        <input type="number" autocomplete='off' value="" maxlength="16" pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  name="othertoacc" id="othertoacc" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.toccardnum')%>" >
     </div><br>
     
     <div id="errorToAct16" style="display:none">
        <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.toaccmsg')%></font></p>
     </div>
      <!-- End input field -->

<!--
      <div class="form-group required">
           <input type="text" class="form-control lenthcontrol" id="payRemarks" name="payRemarks" maxlength="35" onkeydown="f(this)" onkeyup="f(this)" onblur="f(this)" onclick="f(this)"  placeholder=" <%-$.i18n.t('app.creditcard.ccpayments.paymentremarks')%>">
    </div>
      <div class="infoCont">
            <ul>
                <li>
	                <p class="lbl"> <%-$.i18n.t('app.creditcard.ccpayments.convertedamount')%></p>
	                <p class="amt" id="displayamt"></p>
                 </li>
            </ul>
      </div>
      
        <div class="form-group required">
		<% if ( devicePlatform == "Android" ) { %>   
      			<input type="text" onfocus="(this.type='tel')"   class="form-control" pattern="\d+(\.\d*)?" onkeydown="checkCardAmount(this)" onkeyup="checkCardAmount(this)" onclick="checkCardAmount(this)"  onBlur="amountFormat()"  onkeypress="return validateFloatKeyPress(this,event);"   id="transAmt" name="transAmt" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.payamt')%>" maxLength="17">
		 <%}else{%>
     		 	<input type="text"  class="form-control" pattern="\d+(\.\d*)?" onfocus="(this.type='number')" onkeydown="checkCardAmount(this)" onkeyup="checkCardAmount(this)" onclick="checkCardAmount(this)"  onBlur="amountFormat()"  onkeypress="return validateFloatKeyPress(this,event);"   id="transAmt" name="transAmt" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.payamt')%>" maxLength="17">
		 <%}%> 
      </div>
      -->
      <!--<div class="form-group  has-feedback">
			<input type="text" class="form-control nativedatepicker" id="payDate" name="payDate" placeholder="<%-$.i18n.t('app.creditcard.cashondemandcc.paymentdate')%>">
			<span class="glyphicon glyphicon-calendar form-control-feedback"></span>
		</div>-->
		         
						  <div class="row">
							  <div class="col-xs-4 col-sm-5 col-md-5 col-lg-5">
							   <select class="form-control" id='curval' disabled>
							   <% if ( mycreditcards.length > 0 ) { %>   
								  <% _.each(mycreditcards,function(data){ %>
									  <option value="KWD"  selected>KWD</option>
									   <%});%>
								  <%}else{%>	
								     <option value="KWD"  selected>KWD</option>
								   <%}%>  
								  </select>							  
								</div>
							 
						  <div class="col-xs-8 col-sm-7 col-md-7 col-lg-7">
							<div class="form-group required">
								
								<% if ( devicePlatform == "Android" ) { %>
                          	  <input type="text" autocomplete='off' onfocus="(this.type='tel')"   class="form-control paymentAmount" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   onkeypress="return validateFloatKeyPress(this,event);"   class="form-control lenthcontrol"  id="transAmt" name="transAmt" placeholder="<%-$.i18n.t('app.transfer.general.penteramt')%>" maxLength="17">
							  <%}else{%>
								<% if(isKeyPadNeed) { %>
								<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric"  onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"    onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol" id="transAmt" name="transAmt" placeholder="<%-$.i18n.t('app.transfer.general.penteramt')%>" maxLength="17">
							<% } else { %>
								 <input type="text" autocomplete='off' onfocus="(this.type='number')" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol paymentAmount" id="transAmt" name="transAmt" placeholder="<%-$.i18n.t('app.transfer.general.penteramt')%>" maxLength="17">
							<% } %>
			                          	  
							  <%}%>
								
                            </div>
                             <div id="errorAmount" style="display:none">
             <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.ccpayments.selectamt')%></font></p>
     	</div>
     	<div id="amountvalidation" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.sadad.amtgreaterthanzero')%></font></p>
                        </div>	
                        <div id="limitminamt" style="display:none">
                        		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.charitytransfer.mintransamt')%></font></p>
                        	</div>	
                        	<div id="limitmaxamt" style="display:none">
                        		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.charitytransfer.maxtransamt')%></font></p>
                        	</div>	
                        	<div id="limitdailyamt" style="display:none">
                        		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.charitytransfer.excdailylimit')%></font></p>
                        	</div>		  
                           </div>	
                          </div>
                        
		
		
		
     	
     	 <!--<div id="errorAmount1" style="display:none">
				             <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.ccpayments.selectamt1')%></font></p>
				    	 </div>-->
     	<!--<div id="errorAvailBal" style="display:none">
                        		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.transfer.availablebal')%></font></p>
							</div>-->
		 <div class="form-group required">
           <input type="text" autocomplete='off' class="form-control lenthcontrolnameval" id="payRemarks" name="payRemarks" maxlength="35"  placeholder=" <%-$.i18n.t('app.creditcard.ccpayments.paymentremarks')%>">
   		 </div>
     	<div id="errremarks" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.errremarks')%></font></p>
                        </div>
     	
	<!--<div class="infoCont">
            <ul>
                <li>
	                <p class="lbl"> <%-$.i18n.t('app.creditcard.ccpayments.convertedamount')%></p>
	                <p class="amt" id="displayamt"></p>
                 </li>
            </ul>
      </div>-->
      
       <div class="amt2" style="display:none" id="convDivId">
            <span class="hdr"><%-$.i18n.t('app.transfer.ownaccount.convertamt')%></span>
       		<span id="displayamt"> </span>
	   </div>
      <input type="hidden" id="hiddenfrmcurid" 	name="hiddenfrmcurid">
      <input type="hidden" id="hiddentocurid"  name="hiddentocurid">
      <input type="hidden" id="hiddentoaccdue" name="hiddentoaccdue" />
       <div class="clearfix"></div>
     <!--Related information-->
     <div id="info">
      
	<!--<div class="infoCont">-->
	<!--<h4><%-$.i18n.t('app.transfer.general.relatedinfo')%></h4>-->
		<!--<ul>-->
        	<!--<li class="dl" id="dueamt">
            	<p class="lbl"><%-$.i18n.t('app.sadad.duebillpay.dueamount')%></p>
                <p class="amt" id="fulldue">
                	<% if ( mycreditcards.length > 0) { %>
                        <span><%-mycreditcards[0].currencyCode%>&nbsp;<%- checkAmount($.formatNumber(mycreditcards[_.size(mycreditcards)-1].cctotalbilledamt, {format:"#,###.000", locale:"us"}))%></span>
	             		<input type="hidden" name="dueamountcode" id="dueamountcode" value="<%-mycreditcards[0].currencyCode%>"/>
	             		<input type="hidden" name="dueamt" id="dueamt" value="<%- checkAmount($.formatNumber(mycreditcards[_.size(mycreditcards)-1].cctotalbilledamt, {format:"#,###.000", locale:"us"}))%>"/>
	             	<% }else{%>
	             		<span class="nme"></span>
	            	<%}%>
            	</p>
			</li>-->
          	<!--<li class="dl" id="benedue">
				<p class="lbl"> <%-$.i18n.t('app.creditcard.ccpayments.mindueamt')%></p>
                <p class="amt" id="mindueamt">
                	<% if ( mycreditcards.length > 0) { %>
                        <span><%-mycreditcards[0].currencyCode%>&nbsp;<%- checkAmount($.formatNumber(mycreditcards[_.size(mycreditcards)-1].minimumAmountDue, {format:"#,###.000", locale:"us"}))%></span>
	             		<input type="hidden" name="dueamountcode" id="dueamountcode" value="<%-mycreditcards[0].currencyCode%>"/>
	             		<input type="hidden" name="dueamount" id="dueamount" value="<%- checkAmount($.formatNumber(mycreditcards[_.size(mycreditcards)-1].minimumAmountDue, {format:"#,###.000", locale:"us"}))%>"/>
	             	<% }else{%>
	             		<span class="nme"></span>
	            	<%}%>
            	</p>
			</li>-->
          	<!--
          	<li class="ex" id="outstanamt">
                   <p class="lbl"> <%-$.i18n.t('app.creditcard.ccpayments.totaloutstanding')%></p>
                   <p class="amt" id="exchangerate">1.00</p>
                   <p id="exchangerate" class="amt"> <% if ( mycreditcards.length > 0) { %> <span><%-mycreditcards[0].currencyCode%>&nbsp;<%- checkAmount($.formatNumber(mycreditcards[0].currentBalance, {format:"#,###.000", locale:"us"}))%></span> </p>
                  
            	 <% }else{%>
	             		<span class="nme"></span>
	             <%}%>
               </li>
               -->
               
                
           <!--Related information-->
                     
                      <div class="infoCont" id="infoCont" style="display:none">
                     	<h4><%-$.i18n.t('app.transfer.charitytransfer.translimit')%></h4>
                     	<ul>
                     		<li class="ma" >
                                  <p class="lbl"><%-$.i18n.t('app.transfer.charitytransfer.minamt')%></p>
                                  <p class="text-right" id="minamt"></p>
                             </li>
                             
                     		<li class="dl">
                                  <p class="lbl"><%-$.i18n.t('app.transfer.charitytransfer.pertrans')%> </p> 
                                  <p class="text-right" id="maxamt"></p>
                             </li>
                             <li class="al">
                                  <p class="lbl"><%-$.i18n.t('app.transfer.charitytransfer.dailyavaillimit')%></p> 
                                  <p class="text-right" id="dailylimit"></p>
                             </li>
                              <li class="al">
                                  <p class="lbl"><%-$.i18n.t('app.transfer.charitytransfer.dailyavailcount')%></p> 
                                  <p class="text-right" id="dailycount"></p>
                             </li>
                             
                     	</ul>
                     </div>
                
          <!--</ul>-->
     </div> <br/>
     </div>
     <div id="errorAvaillmt" style="display:none">
           <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.sadad.availablelimit')%></font></p>
	</div>
	<div id="errorDaillmt" style="display:none">
             <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.sadad.dailylimit')%></font></p>
	</div>
	 <input type="button" id="validateCardPin" name="validateCardPin" class="btn btn-success btn-block" value="<%-$.i18n.t('app.creditcard.ccpayments.submit')%>"></input>
     <a href="#/transfer" class="btn btn-primary btn-block"> <%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
 </form>
  <br/>
  <br/>
				
               
<script>
var fromAccdefaultselection = "";
	
				   var els = new EncryptedLocalStorage('secret'); 
					   
				      $(".dropselect").dropselect();
	$('input[placeholder], textarea[placeholder]').placeholder();
</script>
<script>
var trandateDate = new Date();
var d = trandateDate.getDate();
var m = trandateDate.getMonth()+1;
var y = trandateDate.getFullYear();
//var myDate = '' +  (m <= 9 ? '0' + m : m) + '/'+ (d <= 9 ? '0' + d : d) + '/' + y;
var myDate = '' +  (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;
//$("#payDate").val(myDate);					
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
		$('#transAmt').val(Number(amtval).toFixed(3));
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
    if( caratPos > dotPos && dotPos>-1 && (number[1].length > 2)){
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
<script>
function calldial(){
			//document.location.href = 'tel:+1-8001243000';
		//	document.location.href = 'tel:920013323';
		}
</script>
<script>
//$(document).ready(function(){
function swipeactiveReady(){
	$(".activeswipelable").swipe( {
		allowPageScroll: 'vertical',
		swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
			
				if ($('.activeswipe').css('display') == 'none' || $('.activeswipe').css('display') == 'undefind') {
					if(direction=="left" || direction=="right"){
						$(this).append($(".activeswipe").css("position", "absolute"));
						//$(".activeswipe").show();
						$(this).find(".activeswipe").show();
                       /********* align the buttons vertically middle programatically ************/
                        var overlayheight=$(this).find(".overlay").height();
                        var btnheight=	$(this).find(".overlay p").height();
                       $(this).find(".overlay p").css({"position":"absolute", "margin":"0px", "padding":"0px", top: overlayheight/2 - btnheight/2});
                       /*****************************************************************/
						
						
					}else{
						event.stopPropagation();
					}
					
				}else{
					
					$(".activeswipe").hide();
					//$(this).find('.swipeoverlay').remove();
				}
		},
		//Default is 75px, set to 0 for demo so any distance triggers swipe
	   threshold:0
	});
//});
}
swipeactiveReady();
</script>

<script type="text/javascript">
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
