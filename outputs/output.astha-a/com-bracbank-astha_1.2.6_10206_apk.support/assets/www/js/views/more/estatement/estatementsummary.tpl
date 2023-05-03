<%
var els = new EncryptedLocalStorage('secret'); 
var view=els.get("view");
var langchange = els.get('lang_id'); 
var navigateCompaign = els.get("actionFlgMore");
var emailid = els.get("emailid");
function IsValidEmail(email) {
            var expr = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
            return expr.test(email);
}
%>

<!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
     <% if(navigateCompaign=="Y") { %>
                  <a href="#/wealth" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
         <li><a href="#/wealth"><%-$.i18n.t('app.product.general.title')%></a></li>
          <%}else{ %>
    <% if(view=="List") {%>
      	 <a href="#/listview" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
      	 <li><a href="#/listview"><%-$.i18n.t('app.more.general.title')%></a></li>
    <%}else{%>
    	<a href="#/gridview" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
     	<li><a href="#/gridview"><%-$.i18n.t('app.more.general.title')%></a></li>
    <%}%>
    <%}%>
       <li class="active"><%-$.i18n.t('app.more.general.viewestatement')%></li>
    </ol>
        <div class="clearfix"></div>
        <h3><%-$.i18n.t('app.more.general.viewestatement')%></h3>
<!-- Breadcrumb Ends Here -->
                  
 <!--Content Starts Here-->
<form role="form">
<%
         if((!IsValidEmail(emailid)) || (emailid == '' || emailid == undefined || emailid == null)){
        %>

          <div class="alert alert-info">
					<span class="msg"><%-$.i18n.t('app.more.estatement.estamentupdateprofile2')%></span>
			    </div>
		<a href="#/profileUpdation" class="btn btn-success btn-sm  btn-block"><%-$.i18n.t('app.more.preference.profileupdation')%></a>
            <%}else{ %>
		<!-- Option Acct. / Card Select - Starts -->
                  <div class="form-group paymentMode">
        			    <label ><%-$.i18n.t('app.more.estatement.statementfor')%></label>
			            <div class="btn-group btn-group-justified" data-toggle="buttons">
				               <label class="btn btn-default payAccount active">
				                      <input type="radio" id="acnt" name="options" value="ACCOUNT" checked="checked" id="frmacnt"> <%-$.i18n.t('app.sadad.duebillpay.account')%>
				               </label>
				               <label class="btn btn-default payCard">
				                       <input  type="radio"  id="ccd" value="CREDITCARD" name="options" id="fromcard"> <%-$.i18n.t('app.sadad.duebillpay.card')%>
				               </label>
			            </div>
  				  </div>
		<!-- Option Acct. / Card Select - Ends -->

		<!-- Start From account Starts -->
			       <div class="form-group fromAcc" >
					     <div class="dropselect" data-title="<%-$.i18n.t('app.sadad.duebillpay.fromaccount')%>" >
					     	<% if ( casaAcctList.length > 0 ) { %>
					          <%
					               _.each(casaAcctList,function(data){
					          %>
					          <% if( data.currency.code == "KWD" ) { %>
					              <label class="list-group-item">
					                        <input type="radio" value="<%-data.accountNumberMasked%>~<%-data.accountNumber%>~<%-data.availableBalance%>" name="frmacno" id="frmacno"/>
					            			<p><span id="uname" name="uname" class="nme"><%-data.accountShortName%></span><small id="ccode" name="ccode" class="pull-right cur"><%-data.currency.code%></small></p>
					            			<p><small id="accountno" name="accountno" class="text-muted"><%-data.accountNumberMasked%></small><span id="amount" name="amount" class="pull-right amt"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
					              </label>
					          <% } %>
					          <%});%>
					        <%}else{%>
									<div class="alert alert-info">
				                		<span class="msg"><%-$.i18n.t('app.product.investment.nodata')%></span>
				           		    </div>
	    				    <%}%>
					     </div>
					     <p class="help-block error-message label label-danger" id="errorFromAct" style="display: none;"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></p>
			       </div>
	  <!-- End From account  -->

	  <!-- Start Credit card -->
			       <div class="form-group creditCard">
					    <div class="dropselect" data-title="<%-$.i18n.t('app.sadad.duebillpay.fromcard')%>" >
					    	<% if ( mycreditcards.length > 0) { %>
					           <%
									 _.each(mycreditcards,function(data){ 
					           %>
			                             <label class="list-group-item">
			                                        <input type="radio" value="<%-data.creditCardNoMasked%>~<%-data.accountNumber%>~<%-data.availableBalance%>~<%-data.creditCardActNo%>~<%-data.billingCycleDate%>" name="frmcard" id="frmcard"/>
													<p>
														<%if(typeof(data.shortName)!="undefined"){%>
															<span id="uname" name="uname" class="nme"><%-data.shortName%></span>
														<%}%>
														<%if(typeof(data.currencyCode)!="undefined"){%>
															<small id="ccode" name="ccode" class="cur pull-right"><%-data.currencyCode%></small>
														<%}%>
													</p>
													<p>
														<%if(typeof(data.creditCardNoMasked)!="undefined"){%> 
																<small id="accountno" name="accountno"  class="text-muted"><%-data.creditCardNoMasked%></small>
														<%}%>
														<%if(typeof(data.availableCreditLimit)!="undefined"){%>
																<span id="amount" name="amount" class="amt pull-right"><%- checkAmount($.formatNumber(data.availableCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
														<%}%>
													</p>
										</label>
							<% });%>
							<%}else{%>
									<div class="alert alert-info">
				                		<span class="msg"><%-$.i18n.t('app.creditcard.ccpayments.nodata')%></span>
				           		    </div>
	    					<%}%>
					    </div>
					    <p class="help-block error-message label label-danger" id="errorFromCard" style="display: none;"><%-$.i18n.t('app.creditcard.general.fromaccmsg')%></p>
			      	</div>
				 
				 
	 <!-- Ends Credit card -->
		
		<div class="form-group" placeholder="">
                   <select name="monthlist" id="monthlist"  class="form-control">
                    	<%if ( creditcardMonthsList.length > 0 ) { %>
		                       		<% _.each(creditcardMonthsList,function(data){ %>
	                            				<option value="<%-data.monthcode%>~<%-data.monthfirstday%>~<%-data.monthlastday%>"><%-data.cmbmonthyear%></option>
		                    		<% }); %>
		                <%}%>
				  	</select>
        </div>
                                            <input type="hidden"  name="hidmonidx" id="hidmonidx"/>
		
	    <div class="row"></div>
     		 <input type="button" class="btn btn-success btn-block" id="downloads" name="downloads" value="<%-$.i18n.t('app.more.estatement.download')%>"/>
		</div>
		<br/>
		<div class="alert alert-info" role="alert">
                       			<% if(langchange != 'en-AR'){ %><b><u><%-$.i18n.t('app.tedallalrewards.note')%></u></b><% } %> <%-$.i18n.t('app.more.estatement.readestatment')%>
        </div>			
       <%}%>			
</form>
<!--Content Ends Here-->

<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
         $(".creditCard").hide();
    });
</script>
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
</script>              
                 
