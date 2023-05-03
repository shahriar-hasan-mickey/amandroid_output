 <%
			var els = new EncryptedLocalStorage('secret'); 
			var emailIdCheck = els.get("emailid");
			var frmaccno = els.get("frmaccno");
			var frmaccname = els.get("frmaccname");
            var toacc = els.get("toaccno");
			var pdate = els.get("payDate");
			var devicePlatform = els.get("device.platform");
			
 %>

                 <a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>

                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.ccpayments.creditcards')%></a></li>
                     <li class="active"><%-$.i18n.t('app.creditcard.general.autopayregister')%></li>
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
                  	<%-$.i18n.t('app.creditcard.ccpayments.autopaymentsuccess')%><span>
                  	<%-$.i18n.t('app.requests.chequebookreq.transrefno')%> - 10005987</span>
                  </div>
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                     <form role="form">
  					  <table class="table table-bordered table-striped">
                      <tbody>
                      <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.transref')%></td>
                          <td id="ref">10005943</td> 
                      </tr>
                      <br/>
                       <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.fromaccount')%></td>
                          <td><%-frmaccname%>-<%-frmaccno%></td> 
                      </tr> 
                      <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.tocc')%></td>
                          <td><%-toacc%></td>
                      </tr>
                      <tr>
                          <td> <%-$.i18n.t('app.creditcard.cashondemandcc.paymentdate')%></td>
                          <td><%-pdate%></td>
                      </tr>
                      
                    
                    </tbody></table>
					
                       <%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
                       		<a id="emailadvice" name="emailadvice" class="btn btn-success btn-block"> <%-$.i18n.t('app.creditcard.ccpayments.sendemail')%></a>
                       <%}%>   
                       <a href="#/creditcard" class="btn btn-success btn-block"> <%-$.i18n.t('app.creditcard.ccpayments.makeanotherpayment')%></a>
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