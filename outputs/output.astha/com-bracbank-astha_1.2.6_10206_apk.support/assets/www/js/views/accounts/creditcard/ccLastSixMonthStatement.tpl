<%
	var els = new EncryptedLocalStorage('secret'); 
	var lastSixMonthStatement = els.get("creditCardDetailDTOList");
%>
<%if(lastSixMonthStatement != null && lastSixMonthStatement.length > 0) { %>
	<ul class="list-group state-list">
	<% _.each(lastSixMonthStatement,function(data){%>
	
		<li class="list-group-item pl5 pr5">
			<% var stmtPeriod = data.statementMonth; var stmtPeriodArr = stmtPeriod.split("-"); %>
			<span>Statement for <%- stmtPeriodArr[0]%> <%- stmtPeriodArr[1]%></span>
			<a href="javascript:void(0);" id="dwdPDF"><span class="fa fa-download pull-right dwdPDF" value="<%- data.billingDate%>"></span></a>
		</li>
	<%})%>
	</ul>
<% } else { %>
	<p style="text-align:center;"><%-$.i18n.t('app.product.general.nodataavail')%></p>
<% } %>
        		