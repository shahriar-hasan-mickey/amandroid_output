<%
			var els = new EncryptedLocalStorage('secret'); 			
			 var devicePlatform = els.get("device.platform");
%>
<!--Content Starts Here-->
<a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>

<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/servicerequestmenu" ><%-$.i18n.t('app.menu.accounts')%></a></li>
     <li class="active"><%-$.i18n.t('app.requests.actdebitcard.actdebitcard')%></li>
</ol>

<div class="clearfix"></div>
<br/>
<!-- Breadcrumb Ends Here -->

<!--Step Control Starts Here-->
<div class="newWiz">
	<div class="steps done"><div>1<p><%-$.i18n.t('app.requests.actdebitcard.input')%></p></div></div>
	<div class="steps"><span></span><div>2<P><%-$.i18n.t('app.requests.actdebitcard.verify')%></P></div></div>
	<div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.actdebitcard.confirm')%></p></div></div>
</div>
<!--Step Control Ends Here-->

<form role="form">
		<div class="form-group required">
		<% if ( devicePlatform == "Android" ) { %>
				<input type="number"  autocomplete='off'  class="form-control lenthcontrol"  maxlength="16" id="cardno" name="cardno" placeholder="<%-$.i18n.t('app.requests.actdebitcard.debitcardno')%>"
                       	onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )">
         <%}else{%>
                       <input type="number"  autocomplete='off' pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol"  maxlength="16" id="cardno" name="cardno" placeholder="<%-$.i18n.t('app.requests.actdebitcard.debitcardno')%>"
                       	onkeydown="return ( event.ctrlKey || event.altKey 
                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                    || (95<event.keyCode && event.keyCode<106)
                    || (event.keyCode==8) || (event.keyCode==9) 
                    || (event.keyCode>34 && event.keyCode<40) 
                    || (event.keyCode==46) )">
         <%}%>
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
    					<input type="number"  autocomplete='off'  class="form-control lenthcontrol"  maxlength="2" id="mm" name="mm" placeholder="<%-$.i18n.t('app.requests.actdebitcard.mm')%>"
		                    onkeydown="return ( event.ctrlKey || event.altKey 
		                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
		                    || (95<event.keyCode && event.keyCode<106)
		                    || (event.keyCode==8) || (event.keyCode==9) 
		                    || (event.keyCode>34 && event.keyCode<40) 
		                    || (event.keyCode==46) )">
		         <%}else{%>
    					<input type="number"  autocomplete='off' pattern="[0-9]*" inputmode="numeric"  class="form-control lenthcontrol"  maxlength="2" id="mm" name="mm" placeholder="<%-$.i18n.t('app.requests.actdebitcard.mm')%>"
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
	            		<input type="number"  autocomplete='off'  class="form-control lenthcontrol"  maxlength="2" id="yy" name="yy" placeholder="<%-$.i18n.t('app.requests.actdebitcard.yy')%>"
		                      onkeydown="return ( event.ctrlKey || event.altKey 
		                    || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
		                    || (95<event.keyCode && event.keyCode<106)
		                    || (event.keyCode==8) || (event.keyCode==9) 
		                    || (event.keyCode>34 && event.keyCode<40) 
		                    || (event.keyCode==46) )">
		          <%}else{%>
	            		<input type="number"  autocomplete='off' pattern="[0-9]*" inputmode="numeric"  class="form-control lenthcontrol"  maxlength="2" id="yy" name="yy" placeholder="<%-$.i18n.t('app.requests.actdebitcard.yy')%>"
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
	    
		<input type="button" class="btn btn-success btn-block" id="managedebitcardrequest" name="managedebitcardrequest" value="<%-$.i18n.t('app.requests.actdebitcard.submit')%>" />
	    <a href="#/servicerequestmenu"  class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.actdebitcard.cancel')%></a>

</form>
<br/>

<!--Content Ends Here-->

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
	 $(".content").animate({ scrollTop: 0 }, "fast");
</script>