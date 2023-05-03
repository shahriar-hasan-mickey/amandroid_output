<%
var els=new EncryptedLocalStorage('secret');
var arr=els.get("formarray");
var paymode = els.get("paymentmethod");
var paymode = els.get("paymentmode");
var accNO= els.get("dispaccno");
var nickName = els.get("nickName");

var totamt = els.get("moitotamt");
var txnfee = els.get("currentamount");

var moiserviceTypeText = els.get("moiserviceType");
var moiAppTypeText= els.get("moiappType");
var moiIdText= els.get("moiId");
%>

<a href="javascript:void(0)" id="back" name="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/moiList"><%-$.i18n.t('app.moi.general.title')%></a></li>
     <li class="active"><%-$.i18n.t('app.moi.general.moipayments')%></li>
</ol>
<div class="clearfix"></div>
                  <br/>
                  <!--Breadcrumb Ends Here-->
                  <!--Step Control Starts Here-->
<div class="newWiz">
       <div class="steps done"><div>1<p><%-$.i18n.t('app.moi.moipayments.input')%></p></div></div>
	   <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.moi.moipayments.verify')%></P></div></div>
       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.moi.moipayments.confirm')%></p></div></div>
</div>
<!--Step Control Ends Here-->
<div class="dtl_view">
   <form role="form">
   
   
   
   	    <table class="table table-bordered table-striped">
		    <tbody>
		    	<tr>
		    		<td><%-$.i18n.t('app.moi.moipayments.servicetype')%></td>
		    		<td><%-moiserviceTypeText%></td>
		    	</tr>
		    	<tr>
		    		<td><%-$.i18n.t('app.moi.moipayments.apptype')%></td>
		    		<td><%-moiAppTypeText%></td>
		    	</tr>
		    	<tr>
		    		<td><%-$.i18n.t('app.moi.moipayments.id')%></td>
		    		<td><%-moiIdText%></td>
		    	</tr>
                <tr>
                      <td><%-$.i18n.t('app.moi.moipayments.paymentmode')%></td>
                      <td id="paymentmode"><%-paymode%></td>
				</tr>
				<tr>
                      <td><%-$.i18n.t('app.moi.moipayments.accno')%></td>
                      <td id="no"><%-accNO%></td>
				</tr>
				<tr>
                      <td><%-$.i18n.t('app.moi.moipayments.nickname')%></td>
                      <td id="name"><%-nickName%> </td>
				</tr>
				<tr>
                      <td><%-$.i18n.t('app.moi.moipayments.payamount')%></td>
                       <td id="totamt" class="amt"><span class="cur">KWD</span><%-totamt%></td>
				</tr>
              </tbody>
       </table>
       
       <a href="javascript:void(0)" id="confirmsubmit"  class="btn btn-success btn-block" id="submit"><%-$.i18n.t('app.moi.moipayments.confirm')%></a>
       <a href="javascript:void(0)" id="back" name="back" class="btn btn-primary btn-block"><%-$.i18n.t('app.moi.moipayments.cancel')%></a>                          
   </form>
</div>
               