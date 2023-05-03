<%
var els = new EncryptedLocalStorage('secret'); 
var errorDescription=els.get("errordesc");
var devicePlatform = els.get("device.platform");
%>
 <!--Content Starts Here-->
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.resetpincc.creditcards')%></a></li>
<li class="active"><%-$.i18n.t('app.creditcard.resetpincc.reset')%></li>
</ol>
<div class="clearfix"></div>

                  <br/>

  <% if (mycreditcards.length > 0 ) {  %>                           
                  <!--Breadcrumb Ends Here-->
<!--<div class="form-group">
     <div class="btn-group payMode" data-toggle="buttons">

          <label class="btn btn-default active">
               <input type="radio" value="cPin" name="coptions" checked="checked" > <%-$.i18n.t('app.creditcard.resetpincc.createnew')%>
          </label>
          <label class="btn btn-default">
                 <input type="radio" value="rPin" name="coptions"> <%-$.i18n.t('app.creditcard.resetpincc.resetpin')%>
          </label>
     </div>
</div>-->
<form name="resetpin" name="resetpin">
      <div class="dropselect" data-title="<%-$.i18n.t('app.creditcard.resetpincc.select')%>" >
			     <% _.each(mycreditcards,function(data){ %>
			                
                  <label class="list-group-item">
                      <input type="radio" value="<%-data.accountNumber%>~<%-data.expiryDate%>~<%-data.acctProduct.code%>" name="frmacno" id="frmacno"/>
					   <p>
						<%if(typeof(data.shortName)!="undefined"){%>
					  <span class="nme"><%-data.shortName%></span>
						<%}else{%>
					  <span class="nme"></span>
						<%}%>
					    <!--<%if(typeof(data.currencyCode)!="undefined"){%>
					  <small class="cur pull-right"><%-data.currencyCode%></small>
						 <%}else{%>
						 <span class="nme"></span>
							 <%}%>-->
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
	 
	 <div id="cardTypeDiv" >
	 <table class="table table-striped">
       <tr>
              <td><%-$.i18n.t('app.creditcard.blockcc.cardtype')%></td>
              <%if((typeof(mycreditcards[0])!="undefined")||(typeof(mycreditcards[0])!="")){%>
              		<td id="ctype" name="ctype"><%-mycreditcards[0].acctProduct.code%></td>
              <%}%>
        </tr>
	</table>
	 </div>
		
	<label for="payAmt"><%-$.i18n.t('app.creditcard.resetpincc.expiryperiod')%></label>
     <div class="row">
            <div class="col-xs-6">
            
                  <div class="form-group required">
                  <% if ( devicePlatform == "Android" ) { %>
                         <input type="text" autocomplete='off'  onfocus="(this.type='number')" onblur="(this.type='text')" class="form-control lenthcontrol"  maxlength="2" id="month" name="month" placeholder="<%-$.i18n.t('app.creditcard.resetpincc.mm')%>"
						onkeydown="return ( event.ctrlKey || event.altKey 
	                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
	                    || (95<event.keyCode && event.keyCode<106)
	                    || (event.keyCode==8) || (event.keyCode==9) 
	                    || (event.keyCode>34 && event.keyCode<40) 
	                    || (event.keyCode==46) )">
	               <%}else{%>
                         <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric"  class="form-control lenthcontrol"  maxlength="2" id="month" name="month" placeholder="<%-$.i18n.t('app.creditcard.resetpincc.mm')%>"
						onkeydown="return ( event.ctrlKey || event.altKey 
	                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
	                    || (95<event.keyCode && event.keyCode<106)
	                    || (event.keyCode==8) || (event.keyCode==9) 
	                    || (event.keyCode>34 && event.keyCode<40) 
	                    || (event.keyCode==46) )">
	               <%}%>

                   </div>
              </div>
              <div class="col-xs-6">
                    <div class="form-group required">
                    <% if ( devicePlatform == "Android" ) { %>
                           <input type="text" autocomplete='off' onfocus="(this.type='number')" onblur="(this.type='text')" class="form-control lenthcontrol"  maxlength="2" id="year" name="year" placeholder="<%-$.i18n.t('app.creditcard.resetpincc.yy')%>"
							onkeydown="return ( event.ctrlKey || event.altKey 
		                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
		                    || (95<event.keyCode && event.keyCode<106)
		                    || (event.keyCode==8) || (event.keyCode==9) 
		                    || (event.keyCode>34 && event.keyCode<40) 
		                    || (event.keyCode==46) )">
		              <%}else{%>
                           <input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="2" id="year" name="year" placeholder="<%-$.i18n.t('app.creditcard.resetpincc.yy')%>"
							onkeydown="return ( event.ctrlKey || event.altKey 
		                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
		                    || (95<event.keyCode && event.keyCode<106)
		                    || (event.keyCode==8) || (event.keyCode==9) 
		                    || (event.keyCode>34 && event.keyCode<40) 
		                    || (event.keyCode==46) )">
		              <%}%>
                     </div>
               </div>
               <div id="errorFromDate" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.resetpincc.invalidmonyr')%></font></p>
                        </div>

      </div>
      
      <div id="secError"  style="display:none">
			<label><strong><font color="red"><span id="showError"></span></font></strong></label>
	 </div>
	 
	 <div class="row">
				  <div class="col-xs-6">
						<div id="errorMonth" style="display:none">
		            		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.activatecc.monthval')%></font></p>
		     		 	</div>
     		  		</div>
     		      <div class="col-xs-6">
		     		 <div id="errorYear" style="display:none">
		            	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.activatecc.yearval')%></font></p>
		      		 </div>
      		 	</div>
      </div>
      	   
	 <label for="remarks"><%-$.i18n.t('app.creditcard.resetpincc.newccpin')%></label>
      <div class="form-group required">           
       <% if ( devicePlatform == "Android" ) { %>          
				    <input type="number" autocomplete='off' pattern="[0-9]*" class="form-control masknumpwd"  maxlength="4" id="cardpin" name="cardpin" placeholder="<%-$.i18n.t('app.creditcard.resetpincc.enternewcardpin')%>">
       <%}else{%>
           <input type="password" autocomplete='off' maxlength="4" pattern="[0-9]*" inputmode="numeric" id="cardpin" name="cardpin" class="form-control lenthcontrol" placeholder="<%-$.i18n.t('app.creditcard.resetpincc.enternewcardpin')%>">
			<%}%>
      </div>
	 <label for="confirmpin"><%-$.i18n.t('app.creditcard.resetpincc.confirmnewccpin')%></label>
      <div class="form-group required">           
      <% if ( devicePlatform == "Android" ) { %>           
				    <input type="number" autocomplete='off' pattern="[0-9]*" class="form-control masknumpwd"  maxlength="4" id="confirmpin" name="confirmpin" placeholder="<%-$.i18n.t('app.creditcard.resetpincc.confirmnewccpin')%>">
      <%}else{%>
				    <input type="password" autocomplete='off' pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="4" id="confirmpin" name="confirmpin" placeholder="<%-$.i18n.t('app.creditcard.resetpincc.confirmnewccpin')%>">
			<%}%>
      </div>
	 <div id="commonErrorCardPin" style="display:none">
		<div class="form-group">
			<label><strong><font color="red"><span id="commonErrorMsg"><%-$.i18n.t('validation.activatecc.cardpinerror')%></span></font></strong></label>
		</div>
	</div>

              <a  href="javascript:void(0)" id="validateCardPin" name="validateCardPin" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.resetpincc.submit')%></a>
              <a href="#/creditcard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.resetpincc.cancel')%></a>
</form>
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
                  <br/>
                  <br/>
              
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });
</script>
<script>
$(".masknumpwd").masknumpwd();
</script>

<script>
/*if(document.getElementById('#month').value.length <= 12){
}*/

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