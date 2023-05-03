<a href="#/transfer" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<ol class="breadcrumb cust_breadcrumb pull-left">
    <li><a href="#/transfer"><%-$.i18n.t('app.creditcard.ccpayments.creditcards')%></a></li>
     <li class="active"> <%-$.i18n.t('app.creditcard.ccpayments.ccpayment')%></li>
</ol>
<div class="clearfix"></div>
<div class="newWiz">
    <div class="steps done"><div>1 <p> <%-$.i18n.t('app.creditcard.ccpayments.input')%></p></div></div>
    <div class="steps done"><span></span><div>2<p> <%-$.i18n.t('app.creditcard.ccpayments.verify')%></p></div></div>
    <div class="steps"><span ></span><div>3<p> <%-$.i18n.t('app.creditcard.ccpayments.confirm')%></p> </div></div>
</div>
<%
			var els = new EncryptedLocalStorage('secret'); 
			var mindueamt=els.get("mindueamt");
			var outstandingamt=els.get("outstandingamt");
			var code1=mindueamt.split('-');
			var dueamt=code1[1];
			var currcode=code1[0];
			var frmaccno= els.get("frmaccno");
			var exchangeRate = els.get("exchangeRate");
			els.set("exchangeRateReslt",exchangeRate);
			var transRefNo = els.get("transRefNo");
			var crdtype = els.get("crdtype");
			
			   
	       
			
 %>
<div class="dtl_view">
  <form role="form">
	  <table class="table table-bordered table-striped">
	        <tbody>
	           <tr>
	               <td> <%-$.i18n.t('app.creditcard.ccpayments.fromaccount')%></td>
	                <td><%-fromacc%></td> 
                    <input type="hidden" id="from" name="from" value="<%-fromacc%>"/>
	           </tr>
	           <tr>
	               <td> <%-$.i18n.t('app.creditcard.ccpayments.tocc')%></td>
                    <td><%-toacc%></td>
                    <input type="hidden" id="to" name="to" value="<%-toacc%>"/>
	           </tr>
	            <tr>
	               <td> <%-$.i18n.t('app.product.creditcard.cardtype')%></td>
	               <td id="exrate"><%-crdtype%></td>
	           </tr>
	           <tr>
	               <td> <%-$.i18n.t('app.creditcard.ccpayments.payamount')%></td>
                  
                 		<td class="amt"><span><%-$.i18n.t('app.transfer.general.baseCurrency')%></span>
                 			<!--<%- checkAmount($.formatNumber(transAmt, {format:"#,###.000", locale:"us"}))%>-->
                 			<%-transAmt%>
                 		</td>
           				<input type="hidden" id="transamt" name="transamt" value="<%-transAmt%>"/>
                  
	           </tr>
	        
	           <tr>
	               <td> <%-$.i18n.t('app.creditcard.ccpayments.convertedamount')%></td>
                 		<td class="amt"><span><%-$.i18n.t('app.transfer.general.baseCurrency')%></span>
                 		<!--<%- checkAmount($.formatNumber(conamount, {format:"#,###.000", locale:"us"}))%>-->
                 			<%-conamount%>
                 		</td>
	           </tr>
	           <tr>
	               <td> <%-$.i18n.t('app.transfer.general.exchangerate')%></td>
	               <td id="exrate"> <%- checkAmount($.formatNumber(exchangeRate, {format:"#,###.0", locale:"us"}))%></td>
	           </tr>
	           
	           <tr>
	               <td> <%-$.i18n.t('app.creditcard.ccpayments.paymentremarks')%></td>
	               <td id="payremarks"><%-payRemarks%></td>
	           </tr>
	           <!--
	           	<%if(mindueamt!='OTH'){%>
	             <tr>
	               <td> <%-$.i18n.t('app.creditcard.ccpayments.mindueamt')%></td>
                   
                 		<td class="amt"><span><%-currcode%>&nbsp;<%-dueamt%></span>
                 			
                 		</td>
	           </tr>
	           <%}%>-->
	         
	         </tbody>
	  </table>
	  <%if(conamount == transAmt){%>
 	  <input type="button" id="submitOTP" name="submitOTP" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.creditcard.ccpayments.confirm')%>" />
 	  <%}else{%>
 	  <input type="button" id="submitOTP" name="submitOTP" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.creditcard.ccpayments.confirm')%>" disabled="true"/>
 	  <%}%>
 	  <a href="#/creditCardPayments" class="btn btn-primary btn-block"> <%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
 	  
 </form>
</div><br/>
              
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });
$(".content").animate({ scrollTop: 0 }, "fast");
</script>