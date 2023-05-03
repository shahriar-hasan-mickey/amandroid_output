 <%
var els = new EncryptedLocalStorage('secret'); 
var cccardacctno=els.get("cccardacctno");
var errorDescription=els.get("errordesc");
var devicePlatform = els.get("device.platform");
var cancelfromcampaign=els.get("cancelfromcampaign");
%>
 
 
 <!--Content Starts Here-->
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
     <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.cclimit.creditcards')%></a></li>
     <li class="active"><%-$.i18n.t('app.creditcard.general.parmanentlimit')%></li>
</ol>
<div class="clearfix"></div>
<% if ( mycreditcards.length > 0){%>   
                   <!--Step Control Starts Here-->
                    <div class="newWiz">
                                <div class="steps done">
                                    <div>
                                        1
                                        <p><%-$.i18n.t('app.creditcard.cclimit.input')%></p>
                                    </div>
                                </div>
                                <div class="steps">
                                    <span></span>
                                    <div>
                                        2
                                        <p><%-$.i18n.t('app.creditcard.cclimit.verify')%></p>
                                    </div>
                                </div>
                                <div class="steps">
                                    <span></span>
                                    <div>
                                        3
                                        <p><%-$.i18n.t('app.creditcard.cclimit.confirm')%></p>
                                    </div>
                                </div>
                            </div>
                            <!--Step Control Ends Here-->
                  <!--Breadcrumb Ends Here-->

      <div class="dropselect" data-title="<%-$.i18n.t('app.creditcard.cclimit.select')%>" data-setid="limitdiv">
			   <% _.each(mycreditcards,function(data){ %>
                   <label class="list-group-item">
                         <%if(data.accountNumber== cccardacctno) {%>
                          		 <input type="radio" checked="checked" value="<%-data.creditCardNoMasked%>~<%-data.totalCreditLimit%>~<%-data.currencyCode%>~<%-data.ccmaxlimit%>" name="frmacno" id="frmacno"/>
						 <%}else{%>
						 		 <input type="radio" value="<%-data.creditCardNoMasked%>~<%-data.totalCreditLimit%>~<%-data.currencyCode%>~<%-data.ccmaxlimit%>" name="frmacno" id="frmacno"/>
						 <%}%>
                         
							<p>
								<%if(typeof(data.shortName)!="undefined"){%>
								<span class="nme"><%-data.shortName%></span>
								<%}else{%>
								<span class="nme"></span>
								<%}%>
								
								<!--
								<%if(typeof(data.currencyCode)!="undefined"){%>
								<small class="cur pull-right"><%-data.currencyCode%></small>
								<%}else{%>
								<span class="nme"></span>
								<%}%>
								-->
						   </p>
							<p>
								<%if(typeof(data.accountNumber)!="undefined"){%>
								<small class="text-muted"><%-data.creditCardNoMasked%>
								</small>
								<%}else{%>
								<span class="nme"></span>
								<%}%>
								<!--<%if(typeof(data.availableBalance)!="undefined"){%>
								<span class="amt pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span>
								<%}%>-->
							</p>

					</label>
					<%});%>
		 </div>			
			
			
     <div id="errorFromAct" style="display:none">
          <p class="help-block error-message">
          	<font color="#A94442"><%-$.i18n.t('app.creditcard.general.fromaccmsg')%></font>
          </p>
     </div>
   <!--<div class="form-group">
          <label for="increaseLimit"><%-$.i18n.t('app.creditcard.cclimit.limitincreasetype')%></label>
                 <select class="form-control" id="increaseLimit" name="increaseLimit"  placeholder="<%-$.i18n.t('app.creditcard.cclimit.selectincreasetype')%>">
   					  <option value=""><%-$.i18n.t( 'app.creditcard.cclimit.selectincreasetype')%></option>
                      <option value="Permanent"><%-$.i18n.t('app.creditcard.cclimit.permanent')%></option>
                      <option value="Temporary"><%-$.i18n.t('app.creditcard.cclimit.temporary')%></option>
                  </select>
   </div>
 <div id="errincreaseLimit" style="display:none">
          <p class="help-block error-message">
          	<font color="#A94442"><%-$.i18n.t('validation.cclimit.increaselimitTypenotnull')%></font>
          </p>
          </div>-->
    <div class="infoCont" id="defalutAmtId">
          <ul>
              <li>
                   <p class="lbl"><%-$.i18n.t('app.creditcard.cclimit.currentlimit')%></p> 
                     <%if((typeof(mycreditcards)!="undefined")||(typeof(mycreditcards)!="")){%>
		                   <%if((typeof(mycreditcards[0].totalCreditLimit)!="undefined")){%>
			               		<p class="amt" id="currentlimit1"><%-mycreditcards[0].currencyCode%>    
			               			<%- checkAmount($.formatNumber(mycreditcards[0].totalCreditLimit, {format:"#,###.000", locale:"us"}))%>
			               		</p>
			               		<input type="hidden" name="currentlimit" id="currentlimit" value="<%-mycreditcards[0].totalCreditLimit%>"/>
			               <%}%>
			           <%}%>      
               </li>
           </ul>
     </div>
     <div class="infoCont" id="limitamtId" style="display:none">
          <ul>
              <li>
                   <p class="lbl"><%-$.i18n.t('app.creditcard.cclimit.currentlimit')%></p> 
	               <p class="amt"><span id="currentlimitcode"></span>    <small id="curtlimitamt"></small></p>
               </li>
           </ul>
	</div>
	<div class="clearfix"></div>
	<form role="form"> 
    <div class="form-group required" id="newLimitDiv">
	<% if ( devicePlatform == "Android" ) { %>	
		<input type="text" autocomplete='off' maxlength="16" onfocus="(this.type='tel')" pattern="\d+(\.\d*)?"  onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"  onBlur="amountFormat()" onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol" id="newlimit" name="newlimit" placeholder="<%-$.i18n.t('app.creditcard.cclimit.enterlimit')%>" />
	<%}else{%>
            <input type="number" autocomplete='off' maxlength="16" inputmode="numeric" pattern="\d+(\.\d*)?"  onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol" id="newlimit" name="newlimit" placeholder="<%-$.i18n.t('app.creditcard.cclimit.enterlimit')%>" />
	<%}%>
		<p id="limitRequired" style="display:none" class="help-block error-message"><%-$.i18n.t('validation.cclimit.limitnotnull')%></p>
	</div>
	<div id="errorLimitIncrease" style="display:none">
		<p class="help-block error-message">
			<font color="#A94442"><%-$.i18n.t('app.creditcard.general.errorlimitincrease')%></font>
		</p>
     </div>
     <div class="clearfix"></div>
	<!--<div class="form-group required">
      <% if ( devicePlatform == "Android" ) { %>
		<input type="text" class="form-control " maxlength="35" id="reason" name="reason" placeholder="<%-$.i18n.t('app.creditcard.cclimit.enterreason')%>"/>
      <%}else{%>
             <input type="text" class="form-control lenthcontrol" maxlength="35" id="reason" name="reason" placeholder="<%-$.i18n.t('app.creditcard.cclimit.enterreason')%>"/>
      <%}%>
	</div>-->
	<div id="errorLimit" style="display:none">
        <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.cclimit.limitamtcheck')%></font></p>
	</div>
	</form>
	<input type="button" class="btn btn-success btn-block" id="validateCardPin"  value="<%-$.i18n.t('app.creditcard.cclimit.submit')%>" />
	<% if ( cancelfromcampaign == "4" ) { %>
          <a href="#/dateline" class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.readycash.cancel')%></a>
	<%}else {%>
	<a href="#/creditcard"  class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.cclimit.cancel')%></a>
	<%}%>

 <br/>
 <br/>
<%}else if ( mycreditcards.length == 0 ){%>
				<div class="alert alert-info">
					<span class="msg"><%-$.i18n.t('app.product.creditcard.nodata')%></span>
			    </div>
					<a  href="#/applynewcreditcardrequest" class="btn btn-success btn-sm  btn-block" type="button"><%-$.i18n.t('app.product.creditcard.newcardlink')%></a>
 			<%}else{%>
				<div class="alert alert-info">
            		 <span class="msg"><%-errorDescription%></span>
       			</div>
 			<%}%>		

                 
             
               <!--Content Ends Here-->
<script>
  $(document).ready(function(){
         $("#cclimitdiv").show();
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
         $("#errorFromAct").hide();
         $("#limitamtId").hide();
         
    });

</script>
<script>
  $(document).ready(function(){
         $("#limitdiv").show();
    });
</script>
 <script>
function amountFormat(){
	var amtval = $('#newlimit').val();
	var vall=0;
	if(amtval > vall){
		$('#newlimit').val(Number(amtval).toFixed(2));
	}
	
}

function f(o){
  //o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
  o.value=o.value.replace(/([^0-9.])/g,"");
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
 $(".content").animate({ scrollTop: 0 }, "fast");
</script>