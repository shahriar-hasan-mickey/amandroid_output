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
		utl_amt	= (utl_amt*(1/100))*10;
		avl_amt	= (avl_amt*(1/100))*10;
		utl_amt = utl_amt+""
		avl_amt = avl_amt+"";
	%>
	<div class="panel panel-default custProgress">
			<div class="panel-heading">
				<h3>
					<%- data.servicetype %>
					<div class="pull-right limit">
						<small><%-$.i18n.t('app.more.tool.limitsperday')%></small>
						<p class="amt"><span class="cur">KWD</span><%-data.limitperday%></p>
					</div>
				</h3>
			</div>
			<div class="panel-body">
				<div class="progress">
					<div style="width: <%-utl_amt%>%" role="progressbar" class="progress-bar progress-bar-info progress-bar-striped">
						<span class="sr-only"></span>
					</div>
					<div style="width: <%-avl_amt%>%" class="progress-bar progress-bar-success">
						<span class="sr-only"></span>
					</div>
				</div>
				<div class="pull-left limit">
					<small class="text-muted"><%-$.i18n.t('app.more.tool.utlizedamt')%> </small>
					<p class="neg"><span class="cur">KWD</span><%-data.utilizedamount%></p>
				</div>
				<div class="pull-right limit">
					<small class="text-muted"><%-$.i18n.t('app.more.tool.availamt')%> </small>
					<p class="amt"><span class="cur">KWD</span><%-data.availlimitforday%></p>
				</div>
			</div>
	</div>
<%});%>
<div class="clearfix"></div><br/>
