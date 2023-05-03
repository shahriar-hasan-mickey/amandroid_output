<a href="#/more"  class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/more"><%-$.i18n.t('app.more.general.title')%></a></li>
     <li class="active"><%-$.i18n.t('app.tools.general.gnexrate')%></li>
</ol>
<div class="clearfix"></div>
<h3><%-$.i18n.t('app.tools.general.gnexrate')%></h3>
<!-- <div class="alert alert-info alert-sm"><p><%-$.i18n.t('app.more.preference.allrates')%> <strong class="lead"><%-$.i18n.t('app.more.tool.sar')%></strong>(<%-$.i18n.t('app.more.tool.kuwaitdinnar')%>)</p></div>	-->


<ul class="list-group erate">
	<% _.each(exchangerateListDTO,function(data){ %>
	<% if ( data.buyrate != '0.0' || data.sellrate != '0.0'  ) { %>
    	<li class="list-group-item">
			<div class="row">
		            <div class="col-xs-7">
		                <p class="list-group-item-text"><span class="exicon" style="background: url(images/common/currency/<%-data.currencyCode%>.png)no-repeat 0 0;"></span><%- data.currencyCode%></p>
		                <p class="list-group-item-text small text-muted"><%- data.currencyName%></p>
		            </div>
		            <div class="col-xs-5 text-right">
		                <p class="list-group-item-text "><span class="small text-muted"><%-$.i18n.t('app.more.preference.buyrate')%></span><br/><strong><%- data.buyRate%></strong> </p>
		                <p class="list-group-item-text"><span class="small text-muted"><%-$.i18n.t('app.more.preference.sellrate')%></span><br/><strong><%- data.sellRate%></strong></p>
					</div>
        	</div>
		</li>
	<% } %>	
	<% }); %>
</ul>



<br/>
