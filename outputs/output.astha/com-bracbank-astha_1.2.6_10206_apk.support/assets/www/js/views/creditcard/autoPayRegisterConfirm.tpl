<%
			var els = new EncryptedLocalStorage('secret'); 
			var frmaccno = els.get("frmaccno");
			var frmaccname = els.get("frmaccname");
            var toacc = els.get("toaccno");
			var pdate = els.get("payDate");
			
 %>
 
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<ol class="breadcrumb cust_breadcrumb pull-left">
    <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.ccpayments.creditcards')%></a></li>
     <li class="active"> <%-$.i18n.t('app.creditcard.general.autopayregister')%></li>
</ol>
<div class="clearfix"></div>
<div class="newWiz">
    <div class="steps done"><div>1 <p> <%-$.i18n.t('app.creditcard.ccpayments.input')%></p></div></div>
    <div class="steps done"><span></span><div>2<p> <%-$.i18n.t('app.creditcard.ccpayments.verify')%></p></div></div>
    <div class="steps"><span ></span><div>3<p> <%-$.i18n.t('app.creditcard.ccpayments.confirm')%></p> </div></div>
</div>

<div class="dtl_view">
  <form role="form">
	  <table class="table table-bordered table-striped">
	        <tbody>
	           <tr>
	               <td> <%-$.i18n.t('app.creditcard.ccpayments.fromaccount')%></td>
	                <td><%-frmaccno%> - <%-frmaccname%></td> 
                    <input type="hidden" id="from" name="from" value="<%-frmaccno%> - <%-frmaccname%>"/>
	           </tr>
	           <tr>
	               <td> <%-$.i18n.t('app.creditcard.ccpayments.tocc')%></td>
                    <td><%-toacc%></td>
                    <input type="hidden" id="to" name="to" value="<%-toacc%>"/>
	           </tr>
	        
	           <tr>
	               <td> <%-$.i18n.t('app.transfer.ownaccount.paymentdate')%></td>
                   <td><%-pdate%></td>
                   <input type="hidden" id="pdate" name="pdate" value="<%-pdate%>"/>
	           </tr>
	         
	         </tbody>
	  </table>
	 
 	  <input type="button" id="autopayOTP" name="autopayOTP" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.creditcard.ccpayments.confirm')%>" />
 
 	  <a href="#/autopayregister" class="btn btn-primary btn-block"> <%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
 	  
 </form>
</div><br/>
              
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });
$(".content").animate({ scrollTop: 0 }, "fast");
</script>