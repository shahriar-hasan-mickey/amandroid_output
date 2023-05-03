
<%
			var els = new EncryptedLocalStorage('secret'); 
			var queueId=els.get("queueId");
			
 %>

                 <a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>

    
    <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.ccpayments.creditcards')%></a></li>
                     <li class="active"> <%-$.i18n.t('app.creditcard.ccpayments.ccpayment')%></li>
                  </ol>
                  <div class="clearfix"></div>
                  
                  <!--Breadcrumb Ends Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1 <p> <%-$.i18n.t('app.creditcard.ccpayments.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<p> <%-$.i18n.t('app.creditcard.ccpayments.verify')%></p></div></div>
                  <div class="steps done"><span ></span><div>3<p> <%-$.i18n.t('app.creditcard.ccpayments.confirm')%></p> </div></div>
                  </div>
                  <!--Step Control Ends Here-->
                  
<form name="queuemode"><br>
 
 			<div class="alert alert-success">
			<span><%-$.i18n.t('app.creditcard.ccpayments.salutation')%></span><br/>
            		<%-$.i18n.t('app.creditcard.ccpayments.ccpaymentqueue1')%>
             </div>
   <a href="#/creditCardPayments" class="btn btn-success btn-block"> <%-$.i18n.t('app.creditcard.ccpayments.makeanotherpayment')%></a>
   <a href="#/wealth" class="btn btn-success btn-block"> <%-$.i18n.t('app.creditcard.ccpayments.home')%></a>
</form><br/><br/>
              
<script>
    $(".content").animate({ scrollTop: 0 }, "fast");
</script>
