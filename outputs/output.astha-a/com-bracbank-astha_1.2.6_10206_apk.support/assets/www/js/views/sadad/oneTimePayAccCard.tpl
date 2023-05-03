<%
	var els = new EncryptedLocalStorage('secret'); 
	var basecurr = els.get("basecurr");
	var billdailylmt = els.get("dailylmt");
	var billavaillmt = els.get("availlmt");
	var billtransfees= els.get("transfees");
	var devicePlatform = els.get("device.platform");
%>

 
<div class="telcomPayment" id="paymentDIV">
       
       <div class="form-group paymentMode">
             		<label ><%-$.i18n.t('app.sadad.onetimepay.paymode')%></label></br>
		            <div class="btn-group btn-group-justified" data-toggle="buttons">
			              <label class="btn btn-success payAccount active" id="labelAccount">
			                      <input type="radio" name="options" value="Account" id="frmacnt"> <%-$.i18n.t('app.sadad.onetimepay.account')%>
			               </label>
			               <label class="btn btn-default payCard" id="labelCard">
			                       <input type="radio" value="Card" name="options" id="frmcardcnt"> <%-$.i18n.t('app.sadad.onetimepay.card')%>
			                </label>
		            </div>
       </div>

<!-- Start From account  -->
    <div class="fromAcc" >
		     <div class="dropselect" data-title="<%-$.i18n.t('app.sadad.onetimepay.fromaccount')%>" >
		          <%
		               _.each(fromacc,function(data){
		          %>
		          <% if(data.currencyCode=="KWD"){ %>
		           <label class="list-group-item">
		                   <input type="radio" value="<%-data.accountNumber%>~<%-data.accountNumberMasked%>~<%-data.availableBalance%>" name="frmacno" id="frmacno"/>
		            	   <p><span id="uname" name="uname" class="nme"><%-data.accountShortName%></span><small id="ccode" name="ccode" class="cur pull-right"><%-data.currencyCode%></small></p>
		            	   <p><small id="accountno" name="accountno" class="text-muted"><%-data.accountNumberMasked%></small><span id="amount" name="amount" class="amt pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
		            </label>
		            <%}%>
		          <%});%>
		       </div>
	</div>
	<p class="help-block error-message label label-danger" id="Error_FrmAcctNo" style="display: none;"></p>
       
<!-- End From account  -->

 
<!-- Start Credit card -->
       <div class="creditCard">
		    <div class="dropselect" data-title="<%-$.i18n.t('app.sadad.onetimepay.fromcard')%>" >
		           <%
						 _.each(creditcards,function(data){ 
		           %>
		           <% if(data.currencyCode=="KWD"){ %>
                         <label class="list-group-item">
                                 <input type="radio" value="<%-data.creditCardNoMasked%>~<%-data.availableCreditLimit%>~<%-data.accountNumber%>~<%-data.creditCardActNo%>" name="frmcard" id="frmcard"/>
										<p>
											<%if(typeof(data.cardType)!="undefined"){%>
												<span id="uname" name="uname" class="nme"><%-data.cardType%></span>
											<%}%>
											<%if(typeof(data.currencyCode)!="undefined"){%>
												<small id="ccode" name="ccode" class="cur pull-right"><%-data.currencyCode%></small>
											<%}%>
										</p>
										<p>
											<%if(typeof(data.creditCardNoMasked)!="undefined"){%>
													<small id="accountno" name="accountno"  class="text-muted"><%-data.creditCardNoMasked%></small>
											<%}%>
											<%if(typeof(data.availableCreditLimit)!="undefined"){%>
													<span id="amount" name="amount" class="amt pull-right"><%- checkAmount($.formatNumber(data.availableCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
											<%}%>
										</p>

							</label>
					<%}%>
				<% });%>
		    </div>
	</div>
	<p class="help-block error-message label label-danger" id="Error_CreditCardNo" style="display: none;"></p>
<!-- Ends Credit card -->
<!--Related information-->
	<div class="infoCont">
		<h4><%-$.i18n.t('app.transfer.general.relatedinfo')%></h4> 
		<ul>
	       	<li class="dl">
	            <p class="lbl"><%-$.i18n.t('app.sadad.billinquiry.dailylimit')%></p>
				<p class="text-right"><span>KWD &nbsp;</span><%- checkAmount($.formatNumber(billdailylmt, {format:"#,###.000", locale:"us"}))%></p>
	       	</li>
	       	<li class="al">
	            <p class="lbl"><%-$.i18n.t('app.sadad.billinquiry.availlimit')%></p>
				<p class="text-right"><span>KWD &nbsp;</span><%- checkAmount($.formatNumber(billavaillmt, {format:"#,###.000", locale:"us"}))%></p>
	       	</li>
	 		<!--<li class="tf">
	      		<p class="lbl"><%-$.i18n.t('app.sadad.duebillpay.transactionfees')%></p>
				<p class="text-right"><span>KWD &nbsp;</span><%-billtransfees%></p>
	        </li>-->
		</ul>
	</div>
	<input type="hidden" id="hiddavaillimit" name="hiddavaillimit" value="<%-billavaillmt%>" />
	<input type="hidden" id="hidddailylimit" name="hidddailylimit" value="<%-billdailylmt%>"/>
	<input type="hidden" id="hiddtransfee"   name="hiddtransfee" value="<%-billtransfees%>" />
	<input type="hidden" id="hidPaymentMode" name="hidPaymentMode" value="" />


	<input type="button" id="confirm" name="confirm" class="btn btn-success btn-block" value="<%-$.i18n.t('app.sadad.onetimepay.submit')%>" />
	<a href="#/sadad" class="btn btn-primary btn-block" ><%-$.i18n.t('app.sadad.onetimepay.cancel')%></a>
 
</div>

<script>
		$(function(){
	           var els = new EncryptedLocalStorage('secret'); 
					      var defaultSelectionListDetailsDTO = els.get("defaultSelectionListDetails");
				      if(defaultSelectionListDetailsDTO=="" || defaultSelectionListDetailsDTO==null || defaultSelectionListDetailsDTO==undefined ){
				      $(".dropselect").dropselect();
				      }
				$('.creditCard').hide();
        });
        
		$("#hidPaymentMode").val("ACCT");
        $('.payAccount').change(function(){
            $('.fromAcc').show();
            $('.creditCard').hide();
            $("#hidPaymentMode").val("ACCT");
            //$("#payAccount").addClass("active").removeClass("ui-btn-active");
        });
        $('.payCard').change(function(){
            $('.fromAcc').hide();
            $('.creditCard').show();
            $("#hidPaymentMode").val("CARD");
            //$("#payAccount").addClass("active").removeClass("ui-btn-active");
            
        });

        
</script>
 