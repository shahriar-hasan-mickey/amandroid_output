<%
	var els = new EncryptedLocalStorage('secret'); 
	var billstmt = els.get("statementDetails");
%>
<%if(billstmt != null && billstmt.length > 0) { %>
	<ul class="list-group state-list txnSum">
		<% _.each(billstmt,function(data) { %>
			<% var txndate = data.transactionDate; var txnDateArr = txndate.split("-"); console.log(txnDateArr); %>
			<li class="list-group-item">
				<div class="dater small text-muted">
					<span class="dd d_cd"><%- txnDateArr[0] %></span>
					<span class="mm d_cm"><%- txnDateArr[1] %></span>
					<span class="yy d_cy"><%- txnDateArr[2] %></span>
				</div>
				<p><%- data.transactionDescription%></p>
				<br/>
				<% if(parseInt(data.billedAmount) < 0) { %>
				<div class="amt pos text-right small">
						<small class="text-muted">Billed Amount</small>
						<span class="num"><%- data.billedAmount %></span> <span class="cur">BDT</span>
					</div>
					<% }else if(parseInt(data.billedAmount) >= 0) { %>
					<div class="amt neg text-right small">
						<small class="text-muted">Billed Amount</small>
						<span class="num">+<%- data.billedAmount %></span> <span class="cur">BDT</span>
					</div>
					<% } %>
					<% var flag = data.transactionFlag;%>
					<% if( flag == "Cr") { %>
						<div class="amt neg  text-right small">
						<small class="text-muted">Transaction Amount</small>
							<span class="num">+<%- data.transactionAmount %></span> <span class="cur"><%- data.currencyCode %></span>
						</div>
					<% } else if(flag == "Dr") { %>
						<div class="amt pos  text-right small">
						<small class="text-muted">Transaction Amount</small>
							<span class="num"><%- data.transactionAmount %></span> <span class="cur"><%- data.currencyCode %></span>
						</div>
					<% } %>
					<!--<% var flag = data.transactionFlag;%>
					<% if( flag == "Cr") { %>
						<div class="amt neg text-right">		            						
							<span class="num">+<%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.00", locale:"us"}))%></span> <span class="cur"><%- data.currencyCode %></span>
						</div>
					<% } else if(flag == "Dr") { %>
						<div class="amt pos text-right">		            						
							<span class="num"><%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.00", locale:"us"}))%></span> <span class="cur"><%- data.currencyCode %></span>
						</div>
				<% } %>-->
			</li>
		<%});%>
	</ul>
<% } else { %>
	<p style="text-align:center;"><%-$.i18n.t('app.product.general.nodataavail')%></p>
<% } %>
        		