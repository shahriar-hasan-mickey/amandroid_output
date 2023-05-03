<%
	var els = new EncryptedLocalStorage('secret');
	var availableLimitsList = els.get("availableLimitsList");
%>

<a href="#/tool" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span> </a>
<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/tool"><%-$.i18n.t('app.landing.tools')%></a></li>
	<li class="active"><%-$.i18n.t('app.more.tool.availlimits')%></li>
</ol>
<div class="clearfix"></div><br/>

<!--  <%-$.i18n.t('app.more.tool.sadadservice')%>  -->

<% _.each(availableLimitsList,function(data){ %>
	<%
		var limit_per_day = parseFloat(data.limitperday);
		var avail_limit = parseFloat(data.availlimitforday);
		var utilized_limit = parseFloat(data.utilizedamount);
		
		var utl_amt = limit_per_day - avail_limit;
		var avl_amt = limit_per_day - utilized_limit;
		utl_amt	= (utl_amt/limit_per_day)*100;
		avl_amt	= (avl_amt/limit_per_day)*100;
		utl_amt = utl_amt+""		
		avl_amt = avl_amt+"";		
	%>
	<% if(data.servicetype=="02" || data.servicetype=="03" || data.servicetype=="04" || data.servicetype=="05" || data.servicetype=="07"){ %>
		<div class="panel panel-default custProgress">
				<div class="panel-heading">
					<h3>
						<% if(data.servicetype=="02"){ %>
							<%-$.i18n.t('app.transfer.general.withinshblimits')%>
						<% }else if(data.servicetype=="03"){ %>
							<%-$.i18n.t('app.transfer.general.locallimits')%>
						<% }else if(data.servicetype=="04"){ %>
							<%-$.i18n.t('app.transfer.general.internationallimits')%>
						<% }else if(data.servicetype=="05"){ %>
							<%-$.i18n.t('app.transfer.general.beneficiarycclimits')%>
						<% }else if(data.servicetype=="07"){ %>
							<%-$.i18n.t('app.transfer.general.sadadservicelimits')%>
						<% } %>
						<div class="pull-right limit">
							<small><%-$.i18n.t('app.more.tool.limitsperday')%></small>
							<p class="amt"><span class="cur"><%-$.i18n.t('app.more.tool.kwd')%></span><%- checkAmount($.formatNumber(data.limitperday, {format:"#,###.000", locale:"us"}))%></p>
						</div>
					</h3>
				</div>
				<div class="panel-body">
					<div class="progress">
						<div style="width: <%-utl_amt%>%" role="progressbar" class="progress-bar progress-bar-info progress-bar-striped">
							<span class="sr-only"></span>
						</div>
						<div style="width: <%-avl_amt%>%" role="progressbar" class="progress-bar progress-bar-success">
							<span class="sr-only"></span>
						</div>
					</div>
					<div class="pull-left limit">
						<small class="text-muted"><%-$.i18n.t('app.more.tool.utlizedamt')%> </small>
						<p class="neg"><span class="cur"><%-$.i18n.t('app.more.tool.kwd')%></span><%- checkAmount($.formatNumber(data.utilizedamount, {format:"#,###.000", locale:"us"}))%></p>
					</div>
					<div class="pull-right limit">
						<small class="text-muted"><%-$.i18n.t('app.more.tool.availamt')%> </small>
						<p class="amt"><span class="cur"><%-$.i18n.t('app.more.tool.kwd')%></span><%- checkAmount($.formatNumber(data.availlimitforday, {format:"#,###.000", locale:"us"}))%></p>
					</div>
				</div>
		</div>
	<%}%>
<%});%>
<div class="clearfix"></div><br/>
