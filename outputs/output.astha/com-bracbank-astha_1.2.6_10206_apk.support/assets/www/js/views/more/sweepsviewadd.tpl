
 <%
	var els = new EncryptedLocalStorage('secret'); 	
		var casaAcctList = els.get("myaccounts");		
    	
    	var devicePlatform = els.get("device.platform");    
		var isKeyPadNeed =els.get("isKeyPadNeed");	
    	        	
	var soft_token = els.get("soft_token");
%>
 <a href="#/more" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                 <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/more"><%-$.i18n.t('app.more.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.sweep.crsweep')%></li>
                  </ol>


                  <div class="clearfix"></div>

                  <!-- Breadcrumb Ends Here -->

                  <!--Step Control Starts Here-->
                   <div class="newWiz">
                  <div class="steps done"><div>1 <p><%-$.i18n.t('app.transfer.ownaccount.input')%></p></div></div>
                  <div class="steps"><span></span><div>2<P><%-$.i18n.t('app.transfer.ownaccount.verify')%></P></div></div>
                  <div class="steps"><span ></span><div>3<p><%-$.i18n.t('app.transfer.ownaccount.confirm')%></p> </div></div>
                  </div>
   <form role="form">
 
                            <!--<div class="form-group  has-feedback">
                            <div id="errorsameAct" style="display:none">
								 <p class="help-block error-message">
								 <font color="#A94442"><%-$.i18n.t('app.more.sweep.erracnum')%></font>
								 </p>
						    </div>-->
 
                             
                        <!--<div class="form-group  has-feedback">
		                       <select name="acnum" id="acnum" class="form-control">
		                       	<option value="" selected="selected" ><%-$.i18n.t('app.more.sweep.accnumsel')%></option>
				                     <% if ( myaccounts.length > 0 ) { %>	
				                      <% _.each(myaccounts,function(data){ %>					                       						                       		
				                            				<option value="<%-data.accountNumber%>~<%-data.id%>"><%-data.accountNumber%></option>	
				                            				<% }); %>
				                            				<%}%>
	                            </select>  	
                          </div>
                          <br>-->
                         
                          <!-- Start Account -->
                         <div class="dropselect" data-title="<%-$.i18n.t('app.more.sweep.accnumbr')%>" data-setid="fromAccountId">
                          <% if ( myaccounts.length > 0 ) { %>
                         	<% _.each(myaccounts,function(data){%>
		                             				<label class="list-group-item">
                            		        <input type="radio" value="<%-data.accountNumber%>~<%-data.accountNumberMasked%>~<%-data.accountShortName%>~<%-data.availableBalance%>~<%-data.currencyCode%>~<%-data.id%>" name="acnum" id="acnum"/>
                            		        <p><span class="nme"><%-data.productName%></span><small class="cur pull-right"><%-data.currencyCode%></small></p>
            				 	 			<p><small class="text-muted"><%-data.accountNumber%></small><span class="amt  pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
            			     		</label>
  	                         			<% }); %>
							<%}else{%>
								<h4><%-$.i18n.t('app.product.investment.nodata')%></h4>
	                        <% } %>
                         </div>
                          <!-- End Account -->
                         <div id="errorFromAct" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></font></p>
                        </div>
                          <div class="form-group  has-feedback">
                            <div id="erracnum" style="display:none">
								 <p class="help-block error-message">
								 <font color="#A94442"><%-$.i18n.t('app.more.sweep.erracnum')%></font>
								 </p>
						 </div>
						 
						 <div class="form-group  has-feedback required">
		                       	<select name="sweeptype" id="sweeptype" class="form-control">
		                       		<option value="" selected="selected" ><%-$.i18n.t('app.more.sweep.errsweeptype')%></option>
				                      
					                       				<% if (sweepInsList.length > 0 ) { %>		                       		
				                            				<% _.each(sweepInsList,function(data){ %>					                       						                       		
				                            				<option value="<%-data.categoryValue%>~<%-data.colorCode%>"><%-data.categoryValue%></option>
				                            				<% }); %>
				                            				<%}%>
				                            				
					                    	
									
	                            </select>  	
                          </div>
                          <div class="form-group  has-feedback">
                            <div id="errsweeptype" style="display:none">
								 <p class="help-block error-message">
								 <font color="#A94442"><%-$.i18n.t('app.more.sweep.errsweeptype')%></font>
								 </p>
						 </div>
                         <div class="form-group  has-feedback required">
		                       	<select name="paymenttype" id="paymenttype" class="form-control">
		                       		<option value="" selected="selected" ><%-$.i18n.t('app.more.sweep.paymenttypesel')%></option>
		                       		<% if (sweepPayList.length > 0 ) { %>	
				                      <% _.each(sweepPayList,function(data){ %>					                       						                       		
				                            				<option value="<%-data.categoryValue%>~<%-data.colorCode%>"><%-data.categoryValue%></option>
				                            				<% }); %>
				                            				<%}%>
	                            </select>  	
                          </div>
                          <div class="form-group  has-feedback">
                            <div id="errpaymenttype" style="display:none">
								 <p class="help-block error-message">
								 <font color="#A94442"><%-$.i18n.t('app.more.sweep.errpaymenttype')%></font>
								 </p>
						 </div>
                         
                         
                          <!-- Start Account -->
                         <!--<div class="dropselect"  id="selectacctype" data-title="<%-$.i18n.t('app.more.sweep.errcreditac')%>" >
                          <% if ( myaccounts.length > 0 ) { %>
                         	<% _.each(myaccounts,function(data){%>
		                             				<label class="list-group-item">
                            		        <input type="radio" value="<%-data.accountNumber%>~<%-data.accountNumberMasked%>~<%-data.accountShortName%>~<%-data.availableBalance%>~<%-data.currencyCode%>~<%-data.id%>" name="creditac" id="creditac"/>
                            		        <p><span class="nme"><%-data.productName%></span><small class="cur pull-right"><%-data.currencyCode%></small></p>
            				 	 			<p><small class="text-muted"><%-data.accountNumber%></small><span class="amt  pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
            			     		</label>
  	                         			<% }); %>
							<%}else{%>
								<h4><%-$.i18n.t('app.product.investment.nodata')%></h4>
	                        <% } %>
                         </div>-->
                          <!-- End Account -->
                         
                         
                         <div class="form-group  has-feedback required">
		                       <select name="creditac" id="creditac" class="form-control">
		                       	<option value="" selected="selected" id="selectacctype"><%-$.i18n.t('app.more.sweep.errcreditac')%></option>
				                     <% if ( myaccounts.length > 0 ) { %>	
				                      <% _.each(myaccounts,function(data){ %>					                       						                       		
				                            				<option value="<%-data.accountNumber%>~<%-data.id%>"><%-data.accountNumber%></option>	
				                            				<% }); %>
				                            				<%}%>
	                            </select>  	
                          </div>
                         
                         <div id="errorFromAct" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></font></p>
                        </div>
                          <div class="form-group  has-feedback">
                            <div id="erracnum" style="display:none">
								 <p class="help-block error-message">
								 <font color="#A94442"><%-$.i18n.t('app.more.sweep.erracnum')%></font>
								 </p>
						 </div>
                         
                          
                          <!--<div class="form-group  has-feedback">
                            <div id="errcreditac" style="display:none">
								 <p class="help-block error-message">
								 <font color="#A94442"><%-$.i18n.t('app.more.sweep.errcreditac')%></font>
								 </p>
						 </div>-->
                         <div class="form-group  has-feedback required">
	                         <% if ( devicePlatform == "Android" ) { %>
                          		<input type="text"  autocomplete='off' class="form-control nativedatepicker" id="paymentdate" name="paymentdate" placeholder="<%-$.i18n.t('app.more.sweep.paymentdate')%>" readonly>
                          		<span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                            <%}else{%>
                      			<input type="text" autocomplete='off'  class="form-control nativedatepicker" id="paymentdate" name="paymentdate" placeholder="<%-$.i18n.t('app.more.sweep.paymentdate')%>" readonly>
		      					<span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                            <%}%>
											<!--<span class="glyphicon glyphicon-calendar form-control-feedback"></span>-->
					     </div> 
					     <div id="ptoDateShouldNotBeGreaterThanCurrDate" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.dateshouldnotlesscurr')%></font></span></div>
								<!--<div id="errorFirstpayDate" style="display:none">
                        	     <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.sweep.plzentrfastpaydate')%></font></p>
                               </div>-->
                         <!-- <div class="form-group required">
                         	 <input type="text" class="form-control " maxlength="11"  id="paymentdate" name="paymentdate" placeholder="<%-$.i18n.t('app.more.sweep.paymentdate')%>">
                        </div>-->
                          <div class="form-group required">
								
								<% if ( devicePlatform == "Android" ) { %>
                          	  <input type="text" autocomplete='off'  onfocus="(this.type='tel')"   class="form-control paymentAmount" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   onkeypress="return validateFloatKeyPress(this,event);"   class="form-control lenthcontrol"  id="payamt" name="payamt" placeholder="<%-$.i18n.t('app.transfer.general.penteramt')%>" maxLength="11">
							  <%}else{%>
								<% if(isKeyPadNeed) { %>
								<input type="number"  autocomplete='off'  pattern="[0-9]*" inputmode="numeric"  onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"    onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol" id="payamt" name="payamt" placeholder="<%-$.i18n.t('app.transfer.general.penteramt')%>" maxLength="11">
							<% } else { %>
								 <input type="text" autocomplete='off'  onfocus="(this.type='number')" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol paymentAmount" id="payamt" name="payamt" placeholder="<%-$.i18n.t('app.transfer.general.penteramt')%>" maxLength="11">
							<% } %>
			                          	  
							  <%}%>
								</div>
                        <div id="errornullAmt" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.sweep.erroramtempt')%></font></p>
                        </div>
                        <div class="form-group  has-feedback required" id="lastpaymentDiv">
	                         <% if ( devicePlatform == "Android" ) { %>
                          		<input type="text" autocomplete='off'  class="form-control nativedatepicker" id="lastpaymentdate" name="lastpaymentdate" placeholder="<%-$.i18n.t('app.more.sweep.lastpaymentdate')%>" readonly>
                          		<span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                          <%}else{%>
                      			<input type="text" autocomplete='off'  class="form-control nativedatepicker" id="lastpaymentdate" name="lastpaymentdate" placeholder="<%-$.i18n.t('app.more.sweep.lastpaymentdate')%>" readonly>
		      					<span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                          <%}%>
											<!--<span class="glyphicon glyphicon-calendar form-control-feedback"></span>-->
					</div> 
					<div id="lstoDateShouldNotBeGreaterThanCurrDate" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.frdateshouldnotgreatercurr')%></font></span></div>
					<div id="ptlsDateShouldNotBeGreaterThanCurrDate" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.dateshouldnotlesscurr')%></font></span></div>	
						 <div class="form-group  has-feedback">
                            <div id="errorLastpayDate" style="display:none">
								 <p class="help-block error-message">
								 <font color="#A94442"><%-$.i18n.t('app.more.sweep.plzentrlastpaydate')%></font>
								 </p>
						 </div>
						<!--<div id="errorLastpayDate" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.sweep.plzentrlastpaydate')%></font></p>
                        </div>-->
                        <div class="form-group required" id="upperDiv">
						
						
						<% if ( devicePlatform == "Android" ) { %>
                          	  <input type="text" autocomplete='off'  onfocus="(this.type='tel')"   class="form-control paymentAmount" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   onkeypress="return validateFloatKeyPress(this,event);"   class="form-control lenthcontrol"  id="upperlmt" name="upperlmt" placeholder="<%-$.i18n.t('app.more.sweep.upperlmt')%>" maxLength="11">
							  <%}else{%>
								<% if(isKeyPadNeed) { %>
								<input type="number" autocomplete='off'   pattern="[0-9]*" inputmode="numeric"  onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"    onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol" id="upperlmt" name="upperlmt" placeholder="<%-$.i18n.t('app.more.sweep.upperlmt')%>" maxLength="11">
							<% } else { %>
								 <input type="text" autocomplete='off'  onfocus="(this.type='number')" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol paymentAmount" id="upperlmt" name="upperlmt" placeholder="<%-$.i18n.t('app.more.sweep.upperlmt')%>" maxLength="11">
							<% } %>
			                          	  
							  <%}%>
						</div>
                        
                        <div class="form-group  has-feedback">
                            <div id="errorUpprlimit" style="display:none">
								 <p class="help-block error-message">
								 <font color="#A94442"><%-$.i18n.t('app.more.sweep.plzentrupprlimit')%></font>
								 </p>
						 </div>
                        <!--<div id="errorUpprlimit" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.sweep.plzentrupprlimit')%></font></p>
                        </div>-->
                        <div class="form-group required" id="lowerDiv">
						
						<% if ( devicePlatform == "Android" ) { %>
                          	  <input type="text" autocomplete='off'  onfocus="(this.type='tel')"   class="form-control paymentAmount" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   onkeypress="return validateFloatKeyPress(this,event);"   class="form-control lenthcontrol"  id="lowerlmt" name="lowerlmt" placeholder="<%-$.i18n.t('app.more.sweep.lowerlimit')%>" maxLength="11">
							  <%}else{%>
								<% if(isKeyPadNeed) { %>
								<input type="number"  autocomplete='off'  pattern="[0-9]*" inputmode="numeric"  onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"    onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol" id="lowerlmt" name="lowerlmt" placeholder="<%-$.i18n.t('app.more.sweep.lowerlimit')%>" maxLength="11">
							<% } else { %>
								 <input type="text" autocomplete='off'  onfocus="(this.type='number')" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"   onkeypress="return validateFloatKeyPress(this,event);" class="form-control lenthcontrol paymentAmount" id="lowerlmt" name="lowerlmt" placeholder="<%-$.i18n.t('app.more.sweep.lowerlimit')%>" maxLength="11">
							<% } %>
			                          	  
							  <%}%>
						</div>
                        
                        <div class="form-group  has-feedback">
                            <div id="errorLwrlimit" style="display:none">
								 <p class="help-block error-message">
								 <font color="#A94442"><%-$.i18n.t('app.more.sweep.plzenterlwrlimit')%></font>
								 </p>
						 </div>
                        <!--<div id="errorLwrlimit" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.sweep.plzenterlwrlimit')%></font></p>
                        </div>-->
                        <div class="form-group required">
                         	 <input type="text" autocomplete='off'  class="form-control lenthcontrolnameval"   id="acremarks" name="acremarks" placeholder="<%-$.i18n.t('app.more.sweep.acremarks')%>">
                        </div>
                        <div id="errorAccremrks" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.sweep.plzenteracremarks')%></font></p>
                        </div>
                         <div class="form-group required">
                         	 <input type="text" autocomplete='off'  class="form-control lenthcontrolnameval"   id="craccremarks" name="craccremarks" placeholder="<%-$.i18n.t('app.more.sweep.craccremarks')%>">
                        </div>
                        
                        <div id="errorCAccremrks" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.sweep.plzentercaccremarks')%></font></p>
                        </div>
                        
                         <a id="sweepsubmit" class="btn btn-success btn-block"><%-$.i18n.t('app.transfer.managebeneficiary.submit')%></a>
		                    <a href="#/sweepsview" class="btn btn-primary btn-block"><%-$.i18n.t('app.transfer.managebeneficiary.cancel')%></a>
                            </form>
                            
                            
                            
                            <script>  
	(function ($){
		$.fn.inputlengthbeneemppp=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
					//$(this).val($(this).val().replace(/([^A-Za-z\s])/g,""));
					$(this).val($(this).val().replace(/([^0-9])/g,""));
					var notallowed ="!@#$%^&*`~()_+=-{};:\"?><|\/,'[].";
					//var notallowednumber ="0123456789";
					var orignalValue=$(this).val();
					for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
					 		if(notallowed.indexOf(atchar) != -1){
					 			var changeTest =orignalValue.substr(0,i);
					 			orignalValue=changeTest;
					 		}else{
					 		}
					 }
					 /*for (var i=0;i<= 1;i++){
						var atchar = orignalValue[i];
					 		if(notallowednumber.indexOf(atchar) != -1){
					 			var changeTest =orignalValue.substr(0,i);
					 			orignalValue=changeTest;
					 		}else{
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
	$('.lenthcontrolbeneempbenn').inputlengthbeneemppp();
	
</script>    

<script>
 var els = new EncryptedLocalStorage('secret');
  	$(document).ready(function(){
         $(".dropselect").dropselect();
         
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

<script>
	function amountFormat(){
		var amtval = $('#upperlmt').val();
		var vall=0;
		if(amtval > vall){
		$('#upperlmt').val(Number(amtval).toFixed(3));
		}
	}
</script>

<script>
	function amountFormat(){
		var amtval = $('#lowerlmt').val();
		var vall=0;
		if(amtval > vall){
		$('#lowerlmt').val(Number(amtval).toFixed(3));
		}
	}
</script>
<script>
	function amountFormat(){
		var amtval = $('#payamt').val();
		var vall=0;
		if(amtval > vall){
		$('#payamt').val(Number(amtval).toFixed(3));
		}
	}
</script>	
<script>
	function amountFormat(){
		var amtval = $('#payamt').val();
		var vall=0;
		if(amtval > vall){
		$('#payamt').val(Number(amtval).toFixed(3));
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
