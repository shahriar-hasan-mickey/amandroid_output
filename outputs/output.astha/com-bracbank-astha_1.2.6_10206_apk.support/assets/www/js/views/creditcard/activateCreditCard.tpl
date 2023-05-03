<%
var els = new EncryptedLocalStorage('secret'); 
var errorDescription=els.get("errordesc");
var devicePlatform = els.get("device.platform");
%>

<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
                  
                  <!--Breadcrumb Starts Here-->
<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.activatecc.creditcards')%></a></li>
 <li class="active"><%-$.i18n.t('app.creditcard.activatecc.activate')%></li>
</ol>
                  	<div class="clearfix"></div>
                  <!--Breadcrumb Ends Here-->
                  
<form name="activate"><br>
<% if ( mycreditcards.length > 0 ) {  %>
      <div class="dropselect" data-title="<%-$.i18n.t('app.creditcard.activatecc.select')%>" data-setid="activediv">
			        <% _.each(mycreditcards,function(data){ %>
                       	<label class="list-group-item">
                                   <input type="radio" value="<%-data.creditCardNoMasked%>~<%-data.accountNumber%>~<%-data.shortName%>" name="frmacno" id="frmacno"/>
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
													<%if(typeof(data.accountNumber)!="undefined"){%>
														<small class="text-muted"><%-data.creditCardNoMasked%>
													</small>
													<%}else{%>
														<span class="nme"></span>
													<%}%>
													<%if(typeof(data.availableBalance)!="undefined"){%>
														<span class="amt pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span>
													<%}%>
											</p>

							</label>
						<%});%>
						</div>
					
  	<div id="errorFromAct" style="display:none">
          <p class="help-block error-message">
          	<font color="#A94442"><%-$.i18n.t('app.creditcard.general.fromaccmsg')%></font>
          </p>
     </div>				
       <label for="payAmt"><%-$.i18n.t('app.creditcard.activatecc.expiryperiod')%></label>	
           <div class="row">
            <div class="col-xs-6">
          
                  <div class="form-group required">
                  <% if ( devicePlatform == "Android" ) { %>
                         <input type="text" autocomplete='off'  onfocus="(this.type='number')" onblur="(this.type='text')" class="form-control lenthcontrol"  maxlength="2" id="month" name="month" placeholder="<%-$.i18n.t('app.creditcard.activatecc.mm')%>"
					onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )">
                    <%}else{%>
					<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric"  class="form-control lenthcontrol"  maxlength="2" id="month" name="month" placeholder="<%-$.i18n.t('app.creditcard.activatecc.mm')%>"
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
                           <input type="text" autocomplete='off' onfocus="(this.type='number')" onblur="(this.type='text')"  class="form-control lenthcontrol"  maxlength="2" id="year" name="year" placeholder="<%-$.i18n.t('app.creditcard.activatecc.yy')%>"
					onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )">
					<%}else{%>
					<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric"  class="form-control lenthcontrol"  maxlength="2" id="year" name="year" placeholder="<%-$.i18n.t('app.creditcard.activatecc.yy')%>"
					onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )">
					<%}%>
                     </div>
               </div>

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
      
				<input type="button" class="btn btn-success btn-block"  id="validateCardPin" name="validateCardPin"   value="<%-$.i18n.t('app.creditcard.activatecc.submit')%>" />
                <a href="#/creditcard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.activatecc.cancel')%></a>
  
			<%}else if ( mycreditcards.length == 0 ){%>
				<div class="alert alert-info">
					<span class="msg"><%-$.i18n.t('app.creditcard.activatecc.nocard')%></span>
			    </div>
 			<%}else{%>
				<div class="alert alert-info">
            		 <span class="msg"><%-errorDescription%></span>
       			</div>
 			<%}%>			
 			
</form><br/><br/>
              
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
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
  $(document).ready(function(){
         $("#activediv").show();
    });
    $(".content").animate({ scrollTop: 0 }, "fast");
</script>