<h3 data-i18n="app.wealth.investment.details.investdetails"></h3>
             <p class="text-muted">6013XXX2572</p>
               <form class="form-horizontal details" role="form">
  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.investment.details.depositenumber"></label>
    <div class="col-sm-6">
      <p class="form-control-static"> <%-accountNumber%> </p>
    </div>
  </div>

   <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.investment.details.depositetype"> </label>
    <div class="col-sm-6">
     
      <p class="form-control-static"> <%-acctProduct.productType.description%>  </p>
     
    </div>
  </div>


  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.investment.details.currency"> </label>
    <div class="col-sm-6">
    <% if (typeof(currencyCode) != "undefined") { %>
      <p class="form-control-static"><%-currencyCode%> </p>
      <%}%>
    </div>
  </div>

  <div class="form-group border-btm">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.investment.details.tenure"></label>
    <div class="col-sm-6">
    <% if (typeof(tenure) != "undefined") { %>
      <p class="form-control-static"><%-tenure%></p>
      <%}%>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.investment.details.depositedate"> </label>
    <div class="col-sm-6">
    <% if (typeof(depositDate) != "undefined") { %>
      <p class="form-control-static"><%-depositDate%></p>
      <%}%>
    </div>
  </div>

  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.investment.details.maturitydate"></label>
    <div class="col-sm-6">
    <% if (typeof(maturityDate) != "undefined") { %>
      <p class="form-control-static"><%-maturityDate%></p>
      <%}%>
    </div>
  </div>

  <div class="form-group border-btm">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.investment.details.principalamount"> </label>
    <div class="col-sm-6">
    <% if (typeof(principalBalance) != "undefined") { %>
      <p class="form-control-static">
      <%- checkAmount($.formatNumber(principalBalance, {format:"#,###.000", locale:"us"}))%>
      </p>
      <%}%>
    </div>
  </div>


  <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.investment.details.maturityamount"> </label>
    <div class="col-sm-6">
    <% if (typeof(maturityAmount) != "undefined") { %>
      <p class="form-control-static">
            <%- checkAmount($.formatNumber(maturityAmount, {format:"#,###.000", locale:"us"}))%>
      </p>
    <%}%>
    </div>
  </div>

   <div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.investment.details.interest"></label>
    <div class="col-sm-6">
    <% if (typeof(interestRate) != "undefined") { %>
      <p class="form-control-static"><%-interestRate%></p>
      <%}%>
    </div>
  </div>

<div class="form-group">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.investment.details.interestamount"></label>
    <div class="col-sm-6">
    <% if (typeof(interestAmount) != "undefined") { %>
      <p class="form-control-static amt"><span class="num"><%- checkAmount($.formatNumber(interestAmount, {format:"#,###.000", locale:"us"}))%></span> </p>
    <%}%>
    </div>
  </div>

   <div class="form-group border-btm">
    <label class="col-sm-6 control-label" data-i18n="app.wealth.investment.details.branch"></label>
    <div class="col-sm-6">
      <p class="form-control-static"><%-branch.description%></p>
    </div>
  </div>

</form>