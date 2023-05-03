<%
var els = new EncryptedLocalStorage('secret');
var key = els.get("graphKey_detstmt_category");

var totassets=checkAmount($.formatNumber(els.get("total_Assets_Amt"), {format:"#,###.000", locale:"us"}));
var totliablities=checkAmount($.formatNumber(els.get("total_Liabilities_amt"), {format:"#,###.000", locale:"us"}));

var isIos=/iPad|iPhone|iPod/.test( navigator.userAgent );

var Assets_acctBalance = els.get("Assets_acctBalance");
var Assets_mubasBalance = els.get("Assets_mubasBalance");
var Assets_tmeDpstBalance = els.get("Assets_tmeDpstBalance");

var Liabilities_ccBalance = els.get("Liabilities_ccBalance");
var Liabilities_homeBalance = els.get("Liabilities_homeBalance");
var Liabilities_perBalance = els.get("Liabilities_perBalance");

var totalBal =  parseFloat(Assets_acctBalance) + parseFloat(Assets_mubasBalance) + parseFloat(Assets_tmeDpstBalance) + parseFloat(Liabilities_ccBalance) + parseFloat(Liabilities_homeBalance) +
parseFloat(Liabilities_perBalance);

var assingedLangId=window.localStorage.getItem("setLanguageId");

var A1_per = "";
var A2_per = "";
var A3_per = "";
var L1_per = "";
var L2_per = "";
var L3_per = "";

if(assingedLangId=="en-US"){
		A1_per = checkAmount($.formatNumber((parseFloat(Assets_acctBalance) /totalBal)*100, {format:"#,###.000", locale:"us"}))+"%";
		A2_per = checkAmount($.formatNumber((parseFloat(Assets_mubasBalance)/totalBal)*100, {format:"#,###.000", locale:"us"}))+"%";
		A3_per = checkAmount($.formatNumber((parseFloat(Assets_tmeDpstBalance)/totalBal)*100, {format:"#,###.000", locale:"us"}))+"%";
		L1_per = checkAmount($.formatNumber((parseFloat(Liabilities_ccBalance)/totalBal)*100, {format:"#,###.000", locale:"us"}))+"%";
		L2_per = checkAmount($.formatNumber((parseFloat(Liabilities_homeBalance)/totalBal)*100, {format:"#,###.000", locale:"us"}))+"%";
		L3_per = checkAmount($.formatNumber((parseFloat(Liabilities_perBalance)/totalBal)*100, {format:"#,###.000", locale:"us"}))+"%";
}else{
	A1_per = "%"+checkAmount($.formatNumber((parseFloat(Assets_acctBalance) /totalBal)*100, {format:"#,###.000", locale:"us"}));
	A2_per = "%"+checkAmount($.formatNumber((parseFloat(Assets_mubasBalance)/totalBal)*100, {format:"#,###.000", locale:"us"}));
	A3_per = "%"+checkAmount($.formatNumber((parseFloat(Assets_tmeDpstBalance)/totalBal)*100, {format:"#,###.000", locale:"us"}));
	L1_per = "%"+checkAmount($.formatNumber((parseFloat(Liabilities_ccBalance)/totalBal)*100, {format:"#,###.000", locale:"us"}));
	L2_per = "%"+checkAmount($.formatNumber((parseFloat(Liabilities_homeBalance)/totalBal)*100, {format:"#,###.000", locale:"us"}));
	L3_per = "%"+checkAmount($.formatNumber((parseFloat(Liabilities_perBalance)/totalBal)*100, {format:"#,###.000", locale:"us"}));
}
%>
	 <!--Breadcrumb Starts Here-->
	 <ol class="breadcrumb cust_breadcrumb pull-left">
	     <li><a href="#/dateline"><%-$.i18n.t('app.menu.dateline')%></a></li>
	     <li class="active"><%-$.i18n.t('app.dateline.assetandliabilities')%></li>
	 </ol>
	<br><br>
<!--  Details Statement Donut Graph Starts   -->
	<div id="stmtchartdiv"  align="center"></div>
	
	<% if(parseFloat(Assets_acctBalance)>0 || parseFloat(Assets_mubasBalance)>0 || parseFloat(Assets_tmeDpstBalance)>0) { %>
		
		<div class="panel panel-default cust_panel">	
			<div class="panel-heading" data-target="#Assets" data-toggle="collapse">	
				<% if(isIos) { %>	
		    		<p class="panel-title small"><span id="casa" class="glyphicon glyphicon-chevron-down"></span>&nbsp;
		    	<% } else { %>	
		    		<p class="panel-title small"><span id="casa" class="glyphicon glyphicon-chevron-right"></span>&nbsp;
		    	<% } %>	
		    		
					<%-$.i18n.t('app.dateline.totalass')%> : <%-totassets%> 	
		        </p>	
			</div>
			<% if(isIos) { %>
				<div id="Assets" class="collapsePanel panel-collapse collapse in">	
			<% } else { %>
				<div id="Assets" class="collapsePanel panel-collapse collapse">	
			<% } %>
	        	<div class="panel-body">	
	            	<div class="list-group">	
		            	<% if(parseFloat(Assets_acctBalance)>0) { %>	
							<label class="list-group-item">		
								<p>		
									<small class="text-muted">
										<canvas id="myCanvasA1" width="10" height="10" ></canvas>
										<%-$.i18n.t('app.dateline.accounts')%> - <%-A1_per%> 
									</small>		
									<span class="amt pull-right">		
										<span class="amtlbl"></span>		
										<%-$.formatNumber(parseFloat(Assets_acctBalance), {format:"#,###.000", locale:"us"})%>	
									</span>		
								</p>		
							</label>
						<% } %>
						<% if(parseFloat(Assets_mubasBalance)>0) { %>
							<label class="list-group-item">		
								<p>		
									<small class="text-muted">
										<canvas id="myCanvasA2" width="10" height="10" ></canvas>
										<%-$.i18n.t('app.dateline.investaccounts')%> - <%-A2_per%>
									</small>		
									<span class="amt pull-right">		
										<span class="amtlbl"></span>		
										<%-$.formatNumber(parseFloat(Assets_mubasBalance), {format:"#,###.000", locale:"us"})%>
									</span>		
								</p>		
							</label>
						<% } %>
						<% if(parseFloat(Assets_tmeDpstBalance)>0) { %>		
							<label class="list-group-item">		
								<p>		
									<small class="text-muted">
										<canvas id="myCanvasA3" width="10" height="10" ></canvas>
										<%-$.i18n.t('app.dateline.timedepst')%> - <%-A3_per%>
									</small>		
									<span class="amt pull-right">		
										<span class="amtlbl"></span>		
										<%-$.formatNumber(parseFloat(Assets_tmeDpstBalance), {format:"#,###.000", locale:"us"})%>		
									</span>		
								</p>		
							</label>
						<% } %>
					</div>	
				</div>	
			</div>	
		</div>
	<% } %>
	
	<% if(parseFloat(Liabilities_ccBalance)>0 || parseFloat(Liabilities_homeBalance)>0 || parseFloat(Liabilities_perBalance)>0) { %>
	
		<div class="panel panel-default cust_panel">	
			<div class="panel-heading" data-target="#Liablities" data-toggle="collapse">
				<% if(isIos) { %>	
		    		<p class="panel-title small"><span id="casa" class="glyphicon glyphicon-chevron-down"></span>&nbsp;
		    	<% } else { %>	
		    		<p class="panel-title small"><span id="casa" class="glyphicon glyphicon-chevron-right"></span>&nbsp;
		    	<% } %>	
					<%-$.i18n.t('app.dateline.totalliab')%> : <%-totliablities%> 	
		        </p>	
			</div>	
			
			<% if(isIos) { %>
				<div id="Liablities" class="collapsePanel panel-collapse collapse in">		
			<% } else { %>
				<div id="Liablities" class="collapsePanel panel-collapse collapse">		
			<% } %>			
	        	<div class="panel-body">	
	            	<div class="list-group">
		            	<% if(parseFloat(Liabilities_ccBalance)>0) { %>		
							<label class="list-group-item">		
								<p>		
									<small class="text-muted">
										<canvas id="myCanvasL1" width="10" height="10" ></canvas>
										<%-$.i18n.t('app.dateline.ccard')%> - <%-L1_per%>
									</small>		
									<span class="amt pull-right">		
										<span class="amtlbl"></span>		
										<%-$.formatNumber(parseFloat(Liabilities_ccBalance), {format:"#,###.000", locale:"us"})%>
									</span>		
								</p>		
							</label>
						<% } %>	
						<% if(parseFloat(Liabilities_homeBalance)>0) { %>		
							<label class="list-group-item">		
								<p>		
									<small class="text-muted">
										<canvas id="myCanvasL2" width="10" height="10" ></canvas>
										<%-$.i18n.t('app.dateline.homeloan')%> - <%-L2_per%>
									</small>		
									<span class="amt pull-right">		
										<span class="amtlbl"></span>		
										<%-$.formatNumber(parseFloat(Liabilities_homeBalance), {format:"#,###.000", locale:"us"})%>
									</span>		
								</p>		
							</label>
						<% } %>
						<% if(parseFloat(Liabilities_perBalance)>0) { %>		
							<label class="list-group-item">		
								<p>		
									<small class="text-muted">
										<canvas id="myCanvasL3" width="10" height="10" ></canvas>
										<%-$.i18n.t('app.dateline.personalloan')%> - <%-L3_per%>
									</small>		
									<span class="amt pull-right">		
										<span class="amtlbl"></span>		
										<%-$.formatNumber(parseFloat(Liabilities_perBalance), {format:"#,###.000", locale:"us"})%>
									</span>		
								</p>		
							</label>
						<% } %>
					</div>	
				</div>	
			</div>	
		</div>
	<% } %>

	
<link rel="stylesheet" type="text/css" href="js/libs/jqplot-master/jquery.jqplot.css" />
<script src="js/libs/jqplot-master/jquery.jqplot.min.js"></script>
<script src="js/libs/jqplot-master/plugins/jqplot.donutRenderer.js"></script>
<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>

<% if(parseFloat(Assets_acctBalance)>0) { %>
<script>
      var canvas = document.getElementById('myCanvasA1');
      var context = canvas.getContext('2d');
      context.beginPath();
      context.rect(0, 0, 10, 10);
      context.fillStyle = '#29A349';
      context.fill();
      context.lineWidth = 1;
</script>
<%}%>

<% if(parseFloat(Assets_mubasBalance)>0) { %>
<script>
      var canvas = document.getElementById('myCanvasA2');
      var context = canvas.getContext('2d');
      context.beginPath();
      context.rect(0, 0, 10, 10);
      context.fillStyle = '#2FBD55';
      context.fill();
      context.lineWidth = 1;
</script>
<%}%>

<% if(parseFloat(Assets_tmeDpstBalance)>0) { %>
<script>
      var canvas = document.getElementById('myCanvasA3');
      var context = canvas.getContext('2d');
      context.beginPath();
      context.rect(0, 0, 10, 10);
      context.fillStyle = '#47D16C';
      context.fill();
      context.lineWidth = 1;
</script>
<%}%>

<% if(parseFloat(Liabilities_ccBalance)>0) { %>
<script>
      var canvas = document.getElementById('myCanvasL1');
      var context = canvas.getContext('2d');
      context.beginPath();
      context.rect(0, 0, 10, 10);
      context.fillStyle = '#F3510C';
      context.fill();
      context.lineWidth = 1;
</script>
<%}%>

<% if(parseFloat(Liabilities_homeBalance)>0) { %>
<script>
      var canvas = document.getElementById('myCanvasL2');
      var context = canvas.getContext('2d');
      context.beginPath();
      context.rect(0, 0, 10, 10);
      context.fillStyle = '#F56A2F';
      context.fill();
      context.lineWidth = 1;
</script>
<%}%>

<% if(parseFloat(Liabilities_perBalance)>0) { %>
<script>
      var canvas = document.getElementById('myCanvasL3');
      var context = canvas.getContext('2d');
      context.beginPath();
      context.rect(0, 0, 10, 10);
      context.fillStyle = '#F78555';
      context.fill();
      context.lineWidth = 1;
</script>
<%}%>
