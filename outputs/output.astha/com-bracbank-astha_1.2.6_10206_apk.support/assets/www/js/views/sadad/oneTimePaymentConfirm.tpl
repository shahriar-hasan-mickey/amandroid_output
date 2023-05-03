<%
var els = new EncryptedLocalStorage('secret'); 
var opt_bill_details = els.get("opt_bill_details");
var langId = els.get("language_id");
var billerId = els.get("billerId");
var idPayAmountPost = els.get("idPayAmountPost");
var demon = els.get("demon");
var demonnamount = els.get("demonnamount");
console.log("demonnamount1324----",demonnamount);
%>

<a href="#/oneTimePay" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
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
           <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.sadad.onetimepay.review')%></p></div></div>
           <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.onetimepay.confirm')%></p></div></div>
 </div>
<!--Step Control Ends Here-->
<!--One Time Billpay Starts Here-->
<!--Step Control Ends Here-->
<div class="dtl_view">


<!--Verify Starts Here-->
<form role="form">
           <table class="table table-bordered table-striped">
                  <tbody>
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
                      	<%if(typeof(opt_bill_details[3])!="undefined" && opt_bill_details[3]!=""  && opt_bill_details[3]!=null){%>
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
			<!--
			<div class="form-group" id="otp">
			     <input type="text" class="form-control" maxlength="8" id="otp" name="otp" placeholder="<%-$.i18n.t('app.sadad.onetimepay.enterotp')%>">
			</div>
			<a href="javascript:void(0)" class="btn btn-success btn-block" id="submitOTP" name="submitOTP"><%-$.i18n.t('app.sadad.onetimepay.confirm')%></a>
			-->

			<input type="button" id="submitOTP" name="submitOTP" class="btn btn-success btn-block" value="<%-$.i18n.t('app.sadad.onetimepay.confirm')%>" />
			<a href="#/oneTimePay" class="btn btn-primary btn-block"><%-$.i18n.t('app.sadad.onetimepay.cancel')%></a>
</form>


</div>
 <!--Transfers Ends Here-->
<!--One time Billpay Ends Here-->
 <br/>
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