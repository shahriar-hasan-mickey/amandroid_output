<%
var els = new EncryptedLocalStorage('secret'); 
var opt_bill_details = els.get("opt_bill_details");
var emailIdCheck = els.get("emailid");
var langId = els.get("language_id");
var devicePlatform = els.get("device.platform");
var idPayAmountPost = els.get("idPayAmountPost");
console.log("idPayAmountPost",idPayAmountPost);
var billerId = els.get("billerId");
var demon = els.get("demon");
var demonnamount = els.get("demonnamount");
%>
<% if ( devicePlatform == "Android" ) { %>
<a href="#/oneTimePay" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<%}else{%>
<!--<a href="#/oneTimePay" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>-->
<%}%>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
 	<li><a href="#/sadad"><%-$.i18n.t('app.sadad.general.title')%></a></li>
 	<li class="active"><%-$.i18n.t('app.sadad.general.onetimepayment')%></li>
</ol>
<div class="clearfix"></div>
<br/>
<!-- Breadcrumb Ends Here -->

<!--Step Control Starts Here-->
 <div class="newWiz">
           <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.onetimepay.input')%></p></div></div>
           <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.sadad.onetimepay.verify')%></p></div></div>
           <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.sadad.onetimepay.confirm')%></p></div></div>
 </div>
<!--Step Control Ends Here-->
<!--One Time Billpay Starts Here-->
<!--Step Control Ends Here-->
<div class="dtl_view">


<!--Verify Starts Here-->
<form role="form">
			<input type="hidden" name="sadadrefno" id="sadadrefno" value="<%-biller[0].sadadreferencenumber%>" />
			<input type="hidden" name="txnrefno" id="txnrefno" value="<%-biller[0].ftnumber%>" />
			<input type="hidden" name="paymentmode" id="paymentmode" value="<%-opt_bill_details[4]%>" />
			<input type="hidden" name="fromacct" id="fromacct" value="<%-opt_bill_details[0]%>" />
			
			<div class="alert alert-success text-center">
				<%-$.i18n.t('app.sadad.onetimepay.transactioncomplete')%>
            </div>
           <table class="table table-bordered table-striped">
                  <tbody>
                  	    <tr>
                          	<td><%-$.i18n.t('app.sadad.onetimepay.sadadref')%></td>
                          	 <%if(typeof(biller[0].sadadreferencenumber)!="undefined")%>
                          	<td><%-biller[0].sadadreferencenumber%></td>
                        </tr>
                        <tr>
                          	<td><%-$.i18n.t('app.sadad.onetimepay.refno')%></td>
                          	<%if(typeof(biller[0].ftnumber)!="undefined")%>
                          	<td><%-biller[0].ftnumber%></td>
                        </tr>
                      	<tr>
	                          <td><%-$.i18n.t('app.sadad.onetimepay.paymode')%></td>
	                          <%if(typeof(opt_bill_details[4])!="undefined")%>
	                          <td id="paymode">
	                          <%if(langId=="en-US"){%>
	                          		<%-opt_bill_details[4]%>
	                          <%}else if(opt_bill_details[4] == 'Account'){%>
	                          		<%-$.i18n.t('app.sadad.onetimepay.account')%>
	                          <%}else if(opt_bill_details[4] == 'CreditCard'){%>
	                          		<%-$.i18n.t('app.sadad.onetimepay.card')%>
	                          <%}%>
	                          </td>
                      	</tr>
                      	<tr>
	                          <td><%-$.i18n.t('app.sadad.onetimepay.fromaccount')%></td>
	                            <%if(typeof(opt_bill_details[0])!="undefined")%>
	                          <td id="frmacc"><%-opt_bill_details[0]%></td>
                      	</tr>
                      	<!--
	                    <tr>
	                          <td><%-$.i18n.t('app.sadad.onetimepay.tobill')%></td>
	                             <%if(typeof(opt_bill_details[1])!="undefined")%>
	                          <td id="toacc"><%-opt_bill_details[1]%></td>
	                    </tr>
	                    -->
                      	<tr>
	                          <td><%-$.i18n.t('app.sadad.onetimepay.billercategory')%></td>
	                          <%if(typeof(opt_bill_details[8])!="undefined")%>
	                          <td id="bcategory"><%-opt_bill_details[8]%></td>
                      	</tr>
                      	<tr>
	                          <td><%-$.i18n.t('app.sadad.onetimepay.billercompany')%></td>
	                           <%if(typeof(opt_bill_details[7])!="undefined")%>
	                          <td id="bcompany"><%-opt_bill_details[7]%></td>
                      	</tr>
                      	<%if(typeof(opt_bill_details[3])!="undefined"){%>
	                      	<tr>
		                          <td><%-$.i18n.t('app.sadad.onetimepay.servicetype')%></td>
		                          <td id="srvtype">
		                          <%if(langId=="en-US"){%>
		                          		<%-opt_bill_details[3]%>
		                          <%}else if(opt_bill_details[3] == 'POSTPAID'){%>
		                          		<%-$.i18n.t('app.sadad.onetimepay.postpaid')%>
		                          <%}else if(opt_bill_details[3] == 'PREPAID'){%>
		                          		<%-$.i18n.t('app.sadad.onetimepay.prepaid')%>
		                          <%}else{%>
		                          		<%-opt_bill_details[3]%>
		                          <%}%>		
		                          </td>
	                      	</tr>
                      	<%}%>
                      	<%if(typeof(opt_bill_details[1])!="undefined"){%>
	                      	<tr>
		                          <td><%-$.i18n.t('app.sadad.onetimepay.subno')%></td>
		                           
		                          <td id="subno"><%-opt_bill_details[1]%></td>
	                      	</tr>
                      	<%}%>
                      	<!--
                      	<tr>
	                          <td><%-$.i18n.t('app.sadad.onetimepay.payamount')%></td>
	                           <%if(typeof(opt_bill_details[2])!="undefined")%>
	                          <td class="amt" id="payamt"><span>KWD</span>
	                          <%- checkAmount($.formatNumber(opt_bill_details[2], {format:"#,###.000", locale:"us"}))%>
	                          
	                          </td>
                      	</tr>
                      	-->
                      	<tr>
	                          <%if(demon != null && demon!='' && demon !=undefined){%>
		                          <% if(opt_bill_details[3] == 'PREPAID'){%>
		                          <td><%-$.i18n.t('app.sadad.onetimepay.rechargeamt')%></td>
		                          <%}else{%>
		                          <td><%-$.i18n.t('app.sadad.onetimepay.payamount')%></td>
		                          <%}%>
	                          <%}else{%>
	                          <td><%-$.i18n.t('app.sadad.onetimepay.payamount')%></td>
	                          <%}%>
	                           <%if(typeof(opt_bill_details[2])!="undefined")%>
	                          <td class="amt" id="payamt"><span>KWD</span>
	                          <%if(demon != null && demon!='' && demon !=undefined){%>
	                          		<% if(opt_bill_details[3] == 'PREPAID'){%>
		                          			<%- checkAmount($.formatNumber(demonnamount, {format:"#,###.000", locale:"us"}))%>
		                      			<%}else{%>
		                      			<% if(billerId!="017"){%>
	                          				<%- checkAmount($.formatNumber(opt_bill_details[2], {format:"#,###.000", locale:"us"}))%>
	                          			<%}else{%>
			                          		<%- checkAmount($.formatNumber(idPayAmountPost, {format:"#,###.000", locale:"us"}))%>
	                          			<%}%>
		                      			<%}%>
	                          	<%}else if(billerId!="017"){%>
	                          			<%- checkAmount($.formatNumber(opt_bill_details[2], {format:"#,###.000", locale:"us"}))%>
	                          	<%}else{%>
			                          <%- checkAmount($.formatNumber(idPayAmountPost, {format:"#,###.000", locale:"us"}))%>
	                          	<%}%>
	                          
	                          </td>
                      	</tr>
                      	 <%if(opt_bill_details[3] == 'PREPAID'){%>
                  		  <tr>
                              <td colspan="2"><small><%-$.i18n.t('app.transfer.general.vatamtlabel')%></small></td>
                            </tr> 
                          <%}%>
                   </tbody>
           </table>

<a href="#/sadad" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.onetimepay.anotherpayment')%></a>
<%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
	<input type="button" class="btn btn-success btn-block" name="emailAdvice" id="emailAdvice" value="<%-$.i18n.t('app.sadad.onetimepay.emailadvice')%>" />
 <%}%> 	
<a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.onetimepay.home')%></a>

</form>


</div>
 <!--Transfers Ends Here-->
<!--One time Billpay Ends Here-->
 </br>
 <script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
         specialKeys.push(9); //TAB
        $(function () {
            $("input").bind("keypress", function (e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                return ret;
            });
            $("input").bind("paste", function (e) {
                return false;
            });
            $("input").bind("drop", function (e) {
                return false;
            });
        });
       
</script>


