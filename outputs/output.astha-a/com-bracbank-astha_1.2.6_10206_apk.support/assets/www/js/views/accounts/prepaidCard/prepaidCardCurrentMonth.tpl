<%
	var els = new EncryptedLocalStorage('secret'); 
	var currentMonth = els.get("statementDetails");	
%>
<ul class="list-group state-list txnSum">
	<%if(currentMonth.length > 0) { %>
		<% _.each(currentMonth,function(data) { %>
			<% var txndate = data.transactionDate; var txnDateArr = txndate.split("-"); console.log(txnDateArr); %>
			<li class="list-group-item">
				<div class="dater small text-muted">
					<span class="dd d_cd"><%- txnDateArr[0] %></span>
					<span class="mm d_cm"><%- txnDateArr[1] %></span>
					<span class="yy d_cy"><%- txnDateArr[2] %></span>
				</div>
				<p><%- data.transactionDescription%></p>
				<br/>
				<% var flag = data.transactionFlag;%>
				<% if(flag == "Cr") { %>
					<div class="amt pos  text-right">
					<span class="num">+<%- data.transactionAmount%></span> <span class="cur"><%- data.currencyCode %></span>
					</div>
				<% } else if(flag == "Dr") { %>
					<div class="amt neg  text-right">
					<span class="num"><%- data.transactionAmount%></span> <span class="cur"><%- data.currencyCode %></span>
					</div>
				<% } %>
			</li>
		<%});%>
	<% } else { %>
		<p style="text-align:center;"><%-$.i18n.t('app.product.general.nodataavail')%></p>
	<% } %>
</ul>