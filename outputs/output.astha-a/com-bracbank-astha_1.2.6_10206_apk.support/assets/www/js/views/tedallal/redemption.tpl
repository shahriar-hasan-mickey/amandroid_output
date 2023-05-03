<%
	var els = new EncryptedLocalStorage('secret');
	var pointsEarnedSinceEnrollment = els.get("pointsEarnedSinceEnrollment");
	var showRedemption = els.get("showRedemption");
%>
                                 <a href="#/tedallalhome" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/tedallalhome"><%-$.i18n.t('app.tedallalrewards.tedallalrewards')%></a></li>
    <li class="active"><%-$.i18n.t('app.tedallalrewards.redemptionofpoints')%></li> 
	</ol>
<div class="clearfix"></div>
<!-- Breadcrumb Ends Here -->
<% if(showRedemption) { %>
<!--Step Control Starts Here-->
	<div class="newWiz">
                  <div class="steps done"><div>1 <p><%-$.i18n.t('app.tedallalrewards.input')%></p></div></div>
                  <div class="steps"><span></span><div>2<P><%-$.i18n.t('app.tedallalrewards.verify')%></P></div></div>
                  <div class="steps"><span ></span><div>3<p><%-$.i18n.t('app.tedallalrewards.confirm')%></p> </div></div>
	</div>
<!--Step Control Ends Here-->

	<h3><%-$.i18n.t('app.tedallalrewards.redemptionofpoints')%></h3>
<form>
			<div class="form-group paymentMode">
                         <label><%-$.i18n.t('app.tedallalrewards.selectredem')%></label>
                         <div class="btn-group btn-group-justified custTab" role="group">
                      	<div class="btn-group" role="group">
					<button type="button" name="options" id="option1" autocomplete="off" class="btn btn-default active"><%-$.i18n.t('app.tedallalrewards.merchantvoucher')%></button>
				</div> 
					<div class="btn-group" role="group">
					<button type="button" name="options" id="option2" autocomplete="off" class="btn btn-default"><%-$.i18n.t('app.tedallalrewards.creditcardfee')%></button>
				</div>   
                    </div>
                    </div>
    <div class="form-group">
         <!--<h6><b><%-$.i18n.t('app.tedallalrewards.availablerewards')%> &nbsp;&nbsp;  <%-pointsEarnedSinceEnrollment%> </b></h6>-->
         <h6><b><%-$.i18n.t('app.tedallalrewards.availablerewards')%> &nbsp;&nbsp; <% if(totalCurrentPoints!="0") { %>
         <%- checkAmount($.formatNumber(totalCurrentPoints, {format:"#,###", locale:"us"}))%>
        	<% } else { %>
         	<%-totalCurrentPoints%>
         <% }%>
         </b></h6>
         <input type="hidden" id="avaliablepoints" name="avaliablepoints" value="<%-totalCurrentPoints%>" >
    </div>
    
	<div class="form-group">                         
			<input  id="voucherCount" autocomplete='off'  name="voucherCount" maxlength="5" type="text" onfocus="(this.type='number')" onblur="(this.type='text')" class="form-control lenthcontrol" placeholder="<%-$.i18n.t('app.tedallalrewards.howmanyvouchers')%>"
				onkeydown="return ( event.ctrlKey || event.altKey 
	            || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
	            || (95<event.keyCode && event.keyCode<106)
	            || (event.keyCode==8) || (event.keyCode==9) 
	            || (event.keyCode>34 && event.keyCode<40) 
	            || (event.keyCode==46) )">
	</div>
	
	<div class="form-group">                        
			<input  id="pointRedeem" autocomplete='off'  name="pointRedeem" maxlength="16" type="text" onfocus="(this.type='number')" onblur="(this.type='text')" class="form-control lenthcontrol" placeholder="<%-$.i18n.t('app.tedallalrewards.howmanypoints')%>"
				onkeydown="return ( event.ctrlKey || event.altKey 
                || (47<event.keyCode && event.keyCode<58 && event.shiftKey==false) 
                || (95<event.keyCode && event.keyCode<106)
                || (event.keyCode==8) || (event.keyCode==9) 
                || (event.keyCode>34 && event.keyCode<40) 
                || (event.keyCode==46) )">
			<div id="pointalert" role="alert" class="alert alert-sm alert-info"><%-$.i18n.t('app.tedallalrewards.redeemm')%></div>
			<div id="pointOveralert" role="alert" class="alert alert-sm alert-danger"><%-$.i18n.t('app.tedallalrewards.pointsmaxvalidation')%></div> 
			 
	</div>
	
	<div class="amt2">
		<span class="hdr"><%-$.i18n.t('app.tedallalrewards.totalreward')%></span>
		<span id="PointsAmount"></span>
		<br/><br/>
		<span class="hdr"><%-$.i18n.t('app.tedallalrewards.tedallalmoneytry')%></span>
		<span>KWD</span>&nbsp; <span id="PointsAmountsar"></span>
	</div>
	
	<button id="validatePoints" name="validatePoints" type="button" class="btn btn-success btn-block"><%-$.i18n.t('app.tedallalrewards.submit')%></button> 
	<button id="submitPoints" name="submitPoints" type="button" class="btn btn-success btn-block"><%-$.i18n.t('app.tedallalrewards.submit')%></button>
	<!-- <button type="button" id="cancelPoints" name="cancelPoints" class="btn btn-primary btn-block"><%-$.i18n.t('app.tedallalrewards.cancel')%></button> -->
	
</form>
<% } else { %>
	<div class="alert alert-info">
		<span class="msg"><%-$.i18n.t('app.tedallalrewards.nonAccountHolder')%></span>
	</div>
<% } %>
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
	$("#submitPoints").hide();
	$("#pointOveralert").hide();
	$(".amt2").hide();	
</script>