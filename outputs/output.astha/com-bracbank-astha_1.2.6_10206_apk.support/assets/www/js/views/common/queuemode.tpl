<%
	var els = new EncryptedLocalStorage('secret'); 
	var module=els.get("queueModeModule");
%>
 	<% if(module == "moiPayments"||module == "moiRefund" ) { %>
 		<a href="#/moiList" id="cancel"  class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 	<%} else if(module == "sadad") { %>
 		<a href="#/sadad" id="cancel"  class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
	<% } else  if(module == "cashOnDemandCreditCard" ) { %>
 		<a href="#/creditcard" id="cancel"  class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 	<% } else if(module == "duebillpay" || module == "onetimepay" ||  module == "billpay"){ %>
 		<a href="#/sadad" id="cancel"  class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
  	<% }  %>
 	<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
		<% if(module=='moiPayments'){%>	
			<li><a href="#moiList"><%-$.i18n.t('app.moi.general.title')%></a></li>
	      	<li class="active"><%-$.i18n.t('app.moi.general.moipayments')%></li>			
	    <%} else if(module=='moiRefund'){%>	
			<li><a href="#moiList"><%-$.i18n.t('app.moi.general.title')%></a></li>
	      	<li class="active"><%-$.i18n.t('app.moi.general.moirefunds')%></li>			
	    <%}  else if(module == "duebillpay" ) { %>
	      		<li><a href="#sadad"><%-$.i18n.t('app.sadad.general.title')%></a></li>
	      		<li class="active"><%-$.i18n.t('app.sadad.general.duebillpayment')%></li>
	     <% }else if(module == "onetimepay" ){ %>
	      		<li><a href="#sadad"><%-$.i18n.t('app.sadad.general.title')%></a></li>
	      		<li class="active"><%-$.i18n.t('app.sadad.general.onetimepayment')%></li>
	     <% }else if(module == "billpay" ){ %>
	     		<li><a href="#sadad"><%-$.i18n.t('app.sadad.general.title')%></a></li>
	      		<li class="active"><%-$.i18n.t('app.sadad.general.billpaymentinquiry')%></li>
	     <% }else if(module == "cashOnDemandCreditCard" ) { %>
	           <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.cashondemandcc.creditcards')%></a></li>
   		  <li class="active"><%-$.i18n.t('app.creditcard.cashondemandcc.cod')%></li>
	     <% } %>
	</ol>

     <div class="clearfix"></div>
     <!-- Breadcrumb Ends Here -->
     <div class="billpay">
      <form role="form">
            <div class="alert alert-info">
					<span class="msg"><%-$.i18n.t('app.login.queueModeModule')%></span>
			</div>
	  </form>
	 </div>
<script>
    $(".content").animate({ scrollTop: 0 }, "fast");
</script>