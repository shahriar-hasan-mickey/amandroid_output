<h3 data-i18n="app.wealth.creditcard.details.creditcarddetails"></h3>
       <p class="text-muted"><%-accountNumber%></p>

<form class="form-horizontal details" role="form">
  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.accountholdername"></label>
    <div class="col-sm-6">
      <p class="form-control-static"> <%-nameOnCard%> </p>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.nickname"></label>
    <div class="col-sm-6">
      <p class="form-control-static"> <%-accountShortName%> </p>
    </div>
  </div>


  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.cardproductname"></label>
    <div class="col-sm-6">
      <p class="form-control-static"> <%-cardType%> </p>
    </div>
  </div>



  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.cardissueddate"></label>
    <div class="col-sm-6">
    <% if (typeof(validFromDate) != "undefined") { %>
      <p class="form-control-static"> <%-validFromDate%> </p>
    <%}%>
    </div>
  </div>



  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.currency"></label>
    <div class="col-sm-6">
    <% if (typeof(currencyCode) != "undefined") { %>
      <p class="form-control-static"><%-currencyCode%></p>
      <%}%>
    </div>
  </div>

  <div class="form-group border-btm">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.billingcycledate"></label>
    <div class="col-sm-6">
    <% if (typeof(billingCycleDay) != "undefined") { %>
      <p class="form-control-static"><%-billingCycleDay%></p>
      <%}%>
    </div>
  </div>

 <h4>Personal Details</h4>



  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.email"></label>
    <div class="col-sm-6">
    <% if (typeof(emailAddress1) != "undefined") { %>
      <p class="form-control-static"><%-emailAddress1%></p>
      <%}%>
    </div>
  </div>



  <div class="form-group border-btm">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.mobilenumber"></label>
    <div class="col-sm-6">
    <% if (typeof(mobileNumber1) != "undefined") { %>
      <p class="form-control-static"><%-mobileNumber1%></p>
      <%}%>
    </div>
  </div>

   <h4>Card Details</h4>

   <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.totalcreditlimit"></label>
    <div class="col-sm-6">
      <p class="form-control-static amt"><span class="cur"><%-currencyCode%></span><span class="num"> 
       <% if (typeof(totalCreditLimit) != "undefined") { %>
      <%- checkAmount($.formatNumber(totalCreditLimit, {format:"#,###.000", locale:"us"}))%>
       <%}%>
      </span></p>
     
    </div>
  </div>


  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.totaloutstanding"></label>
    <div class="col-sm-6">
      <p class="form-control-static amt"><span class="cur"><%-currencyCode%></span><span class="num">
       <% if (typeof(outStandingAmount) != "undefined") { %>
      <%- checkAmount($.formatNumber(outStandingAmount, {format:"#,###.000", locale:"us"}))%> 
       <%}%>
       </span></p>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.unbilledoutstanding"></label>
    <div class="col-sm-6">
      <p class="form-control-static amt"><span class="cur"><%-currencyCode%></span><span class="num"> 
      <% if (typeof(unbilledAmount) != "undefined") { %>
     <%- checkAmount($.formatNumber(unbilledAmount, {format:"#,###.000", locale:"us"}))%> 
      <%}%>
      </span></p>
    </div>
  </div>


  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.totalcashlimit"></label>
    <div class="col-sm-6">
      <p class="form-control-static amt"><span class="cur"><%-currencyCode%></span><span class="num">
      <% if (typeof(totalCashLimit) != "undefined") { %>
      <%- checkAmount($.formatNumber(totalCashLimit, {format:"#,###.000", locale:"us"}))%>
      <%}%>
      </span></p>
    </div>
  </div>


  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.avilablecashlimit"></label>
    <div class="col-sm-6">
      <p class="form-control-static amt"><span class="cur"><%-currencyCode%></span><span class="num"> 
      <% if (typeof(availableCashLimit) != "undefined") { %>
     <%- checkAmount($.formatNumber(availableCashLimit, {format:"#,###.000", locale:"us"}))%> 
      <%}%>
      </span></p>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.totalamountdue"></label>
    <div class="col-sm-6">
      <p class="form-control-static amt"><span class="cur"><%-currencyCode%></span><span class="num">  
      <% if (typeof(totalAmountDue) != "undefined") { %>
    <%- checkAmount($.formatNumber(totalAmountDue, {format:"#,###.000", locale:"us"}))%> 
      <%}%>
      </span></p>
    </div>
  </div>


  <div class="form-group border-btm">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.creditcard.details.minimumamountdue"></label>
    <div class="col-sm-6">
      <p class="form-control-static amt"><span class="cur"><%-currencyCode%></span><span class="num">  
        <% if (typeof(minimumAmountDue) != "undefined") { %>
    <%- checkAmount($.formatNumber(minimumAmountDue, {format:"#,###.000", locale:"us"}))%> 
      <%}%>
      </span></p>
    </div>
  </div>

</form>