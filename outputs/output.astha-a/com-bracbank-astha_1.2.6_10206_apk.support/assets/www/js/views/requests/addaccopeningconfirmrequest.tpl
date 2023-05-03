<%
 var els=new EncryptedLocalStorage('secret');
   		 
    		 var accountType=els.get("aacaccountTypeDesc");
    		 var currencyType=els.get("aaccurrencyType");
    		 var purposeofAccount=els.get("aacpurposeofAccountDesc");
    		var debitCardNeed=els.get("aacdebitCardNeed");
    		 var modeOfDelivery=els.get("aacmodeOfDelivery");
    		 var deliveryType=els.get("aacdeliveryType");
    		 var debitCardUsed=els.get("accDebitCardUsed");
    		 var address=els.get("aacaddress");
    		 var showDebit=els.get("showDebit");
    		 var accNameOnCard=els.get("accNameOnCard");
			 var custname = els.get("custname");
 var custcardname;
				var custname1,custname2;
				if(custname.length<=24){
					custcardname = custname;
				}else{
				//custname1=custname.substring(0, 2);
				//custname2 = custname.slice(-2);
				//custname2 = custname.match(/\w+$/)[0];
				custname = custname.replace(/([a-z]+) .* ([a-z]+)/i, "$1 $2");
				custcardname = custname;
				}
 %>


<!--Content Starts Here-->
  <a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>                 
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.additionalAccount.additionalAccountOpening')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done">
                  		<div>1
                  		<p>
                  			<%-$.i18n.t('app.requests.homefinance.input')%>
                  		</p>
                  		</div>
                  	</div>
                  <div class="steps done">
                  <span></span>
                  <div>2
                 	 <p>
                 	 	<%-$.i18n.t('app.requests.homefinance.verify')%>
                 	 </p>
                 	 </div>
                 	</div>
                  <div class="steps"><span></span>
                  	<div>3
                  		<p>
                  			<%-$.i18n.t('app.requests.homefinance.confirm')%>
                  		</p>
                  		</div>
                  	</div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                 	 <form role="form">
                    <table class="table table-bordered table-striped">
                      <tbody>
                      <tr>
                          <td><%-$.i18n.t('app.requests.additionalAccount.accounttype')%></td>
                          <td><%- accountType %></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.additionalAccount.currency')%></td>
                          <td><%- currencyType %></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.additionalAccount.purpose')%></td>
                          <td><%- purposeofAccount %></td>
                      </tr>
					 <% if(showDebit) { %>
                      <tr>
                          <td><%-$.i18n.t('app.requests.additionalAccount.debitcardrequired')%></td>
                          <td><%- debitCardNeed %></td>
                      </tr>
					<% } if(debitCardUsed == "YES") { %>
                      <tr>
					  <% if(modeOfDelivery=='Post') { %>
                          <td><%-$.i18n.t('app.requests.additionalAccount.debitCardDelivery')%></td>
					<%}else{%>
					<td><%-$.i18n.t('app.requests.additionalAccount.branch')%></td>
					<%}%>
                          <td><%- modeOfDelivery %></td>
                      </tr>
                      <% } if(debitCardUsed == "YES" && deliveryType == "post") { %>
                      <tr>
                          <td><%-$.i18n.t('app.requests.additionalAccount.nameOnCard')%></td>
                          <td><%- custcardname  %></td>
                      </tr> 
                      <!--<tr>
                          <td><%-$.i18n.t('app.requests.additionalAccount.address')%></td>
                          <td><%- address %></td>
                      </tr>-->                      
					<% } %>
                    </tbody></table>

                    <input type="button" id="applyAdditionalAccountConfirm" name="applyAdditionalAccountConfirm" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.homefinance.confirm')%>"/>
                      
                       		  <a href="#/addaccopeningrequest" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.homefinance.cancel')%></a>
                      
                    
                 </form>
                  </div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>