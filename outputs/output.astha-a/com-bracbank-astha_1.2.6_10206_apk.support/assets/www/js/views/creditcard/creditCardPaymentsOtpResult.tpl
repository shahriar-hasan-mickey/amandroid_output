 <%
			var els = new EncryptedLocalStorage('secret'); 
			var emailIdCheck = els.get("emailid");
			var mindueamt=els.get("mindueamt");
			var outstandingamt=els.get("outstandingamt");
			var code1=mindueamt.split('-');
			var dueamt=code1[1];
			var currcode=code1[0];
			var devicePlatform = els.get("device.platform");
			var exchangeRate = els.get("exchangeRateReslt");
			var transRefNo = els.get("transRefNo");
			var frmaccno= els.get("frmaccnt");
			var toacc =els.get("toaccntnum");
			console.log("toacc",toacc);
			console.log("frmaccno",frmaccno);
	        var crdtype = els.get("crdtype");
			
 %>
<% if ( devicePlatform == "Android" ) { %>
                 <a href="#/transfer" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<%}else{%>
                <!-- <a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>-->
<%}%>
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/transfer"><%-$.i18n.t('app.creditcard.ccpayments.creditcards')%></a></li>
                     <li class="active"><%-$.i18n.t('app.creditcard.ccpayments.ccpayment')%></li>
                  </ol>
                  <div class="clearfix"></div>
                  
                  <!--Breadcrumb Ends Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1 <p> <%-$.i18n.t('app.creditcard.ccpayments.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<p> <%-$.i18n.t('app.creditcard.ccpayments.verify')%></p></div></div>
                  <div class="steps done"><span ></span><div>3<p> <%-$.i18n.t('app.creditcard.ccpayments.confirm')%></p> </div></div>
                  </div>
                  <!--Step Control Ends Here-->
                  <div class="alert alert-success">
                  	<p><%-$.i18n.t('app.creditcard.ccpayments.ccpaymentsuccess')%></p>
                  	<p><%-$.i18n.t('app.creditcard.cclimit.refno')%> - <%-transRefNo%></p>
                  </div>
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                     <form role="form">
  					  <table class="table table-bordered table-striped">
                      <tbody>
                       <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.fromaccount')%></td>
                          <td><%-frmaccno%></td> 
                      </tr> 
                      <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.tocc')%></td>
                          <td><%-toacc%></td>
                      </tr>
                      <tr>
	                      <td> <%-$.i18n.t('app.product.creditcard.cardtype')%></td>
	                      <td id="exrate"><%-crdtype%></td>
	                 </tr>
	                 <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.payamount')%></td>
                          <td class="amt"><span><%-$.i18n.t('app.transfer.general.baseCurrency')%></span>
                          <%-transamt%>
                          </td>
                      </tr>
                       <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.convertedamount')%></td>
                          <td class="amt"><span><%-$.i18n.t('app.transfer.general.baseCurrency')%></span>
                          <%-convertedamt%>
                          </td>
                      </tr>
                      <tr>
	                    <td> <%-$.i18n.t('app.transfer.general.exchangerate')%></td>
	                    <td id="exrate"><%- checkAmount($.formatNumber(exchangeRate, {format:"#,###.0", locale:"us"}))%></td>
	                  </tr>
                      <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.paymentremarks')%></td>
                          <td><%-payremarks%></td>
                      </tr>
                      
                      <!--
                      	<%if(mindueamt!='OTH'){%>
                       <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.mindueamt')%></td>
                          <td class="amt"><span><%-currcode%>&nbsp;<%-dueamt%></span>
                          </td>
                      </tr>
                      <%}%>
                      -->
                    </tbody></table>
					
                       <a href="#/transfer" class="btn btn-success btn-block"> <%-$.i18n.t('app.creditcard.ccpayments.makeanotherpayment')%></a>
                       <%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
                       		<a id="emailadvice" name="emailadvice" class="btn btn-success btn-block"> <%-$.i18n.t('app.creditcard.ccpayments.sendemail')%></a>
                       <%}%>   
  				        <a href="#/wealth" class="btn btn-success btn-block"> <%-$.i18n.t('app.creditcard.ccpayments.home')%></a>
                     </form>
                  </div>

                  <br/>
             
               <!--Content Ends Here-->
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });
$(".content").animate({ scrollTop: 0 }, "fast");
</script>
