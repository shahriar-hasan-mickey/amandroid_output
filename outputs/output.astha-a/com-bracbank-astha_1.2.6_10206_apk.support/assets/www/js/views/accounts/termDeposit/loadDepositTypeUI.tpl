<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccountslist = els.get("depositAccountList");
	var depositListArray = "";
	
	if(!isNull(myaccountslist)) {
		depositListArray = myaccountslist.filter(function(array) {
			return array.casaflag == "Y";
		});
	}
	
	if(depositListArray.length > 0) {
		if(els.get("depositType") == "FDR") {
			depositListArray = myaccountslist.filter(function(array) {
				return array.depositType == "TD";
			});
		}
		
		if(els.get("depositType") == "DPS") {
			depositListArray = myaccountslist.filter(function(array) {
				return array.depositType == "RD";
			});
		}
	}
%>
<div class="vc-card">
	<%if(isNull(depositListArray)) { %>
	<%if(els.get("depositType") == "DPS" && isNull(depositListArray) ) {%>
	<p class="help-block error-message" style="color:#fff; text-align:center;"><%-$.i18n.t('No DPS found')%></p>
	<%}else if(els.get("depositType") == "FDR" && isNull(depositListArray) ) {%>
	<p class="help-block error-message" style="color:#fff; text-align:center;"><%-$.i18n.t('No FDR found')%></p>
	<%}%>
		<!--<p class="help-block error-message" style="color:#fff; text-align:center;"><%-$.i18n.t('app.product.general.nodepositcardfound')%></p>-->
	<%} else if(depositListArray.length > 0){%>
		<ul class="list-unstyled">
			<% _.each(depositListArray,function(data,index){%>
				<li class="animation-in">
					<a href="#/dpssummary/<%- index%>" id="<%- data.id%>" productCode="<%- data.productcode%>" category="<%- data.depositType%>" currency="<%- data.currencyCode%>" class="depositType" availBalance="<%- data.principalBalance%>" branchCode="<%- data.branchCode%>">
						<div class="card card-default acc deposit">
							<p class="text-right m0">
								<span class="logo-xs"></span>
							</p>
							<% if(data.accountShortName != null) {%>
								<p class="name"><%- data.accountShortName%></p>
							<% } else {%>
								<p class="name"><%- data.productName%></p>
							<% } %>
							<p class="numb small text-muted"><%- data.accountNumber%></p>
							<div class="amt">
							   <% if(data.depositType == "RD") { %>
									  <p class="small m0 text-muted"><%-$.i18n.t('app.product.termdeposits.currentbalance')%></p>	
									<%}else if(data.depositType == "TD") { %>	
										<p class="small m0 text-muted"><%-$.i18n.t('app.product.termdeposits.principalamount')%></p>
								 <%}%>	
								<% if(data.principalBalance >= 0) {%>												  	
									<span class="num"><%- checkAmount($.formatNumber(data.principalBalance, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- data.currencyCode%></span>
								<% } else { %>
									<span class="num neg"><%- checkAmount($.formatNumber(data.principalBalance, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- data.currencyCode%></span>
								<% } %>		
							</div>
							<div class="has_link"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
						</div>
					</a>
				</li>
			<%});%>
		</ul>
	<% } %>
</div>
        			