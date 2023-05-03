<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>
<a href="#/tools"  class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/tools"><%-$.i18n.t('app.landing.tools')%></a></li>
     <li class="active"><%-$.i18n.t('app.tools.landing.exrate')%></li>
</ol>
<div class="clearfix"></div>
<h3><%-$.i18n.t('app.tools.landing.exrate')%></h3>
<div class="alert alert-info alert-sm"><p><%-$.i18n.t('app.more.preference.allrates')%> <strong class="lead"><%-$.i18n.t('app.more.tool.kwd')%></strong><%-$.i18n.t('app.more.tool.saudiriyal')%></p></div>


<ul class="list-group erate">
	<% _.each(exchangerateListDTO,function(data){ %>
	<% if ( data.buyrate != '0.0' || data.sellrate != '0.0'  ) { %>
    	<li class="list-group-item">
			<div class="row">
		            <div class="col-xs-7">
		                <p class="list-group-item-text"><span class="exicon" style="background: url(images/common/currency/<%-data.isocurrcode%>.png)no-repeat 0 0;"></span><%- data.isocurrcode%></p>
		                <p class="list-group-item-text small text-muted"><%- data.currencyname%></p>
		            </div>
		            <div class="col-xs-5 text-right">
		                <p class="list-group-item-text "><span class="small text-muted"><%-$.i18n.t('app.more.preference.buy')%></span>&nbsp;<strong><%- data.buyrate%></strong> </p>
		                <p class="list-group-item-text"><span class="small text-muted"><%-$.i18n.t('app.more.preference.sell')%></span>&nbsp;<strong><%- data.sellrate%></strong></p>
					</div>
        	</div>
		</li>
		<% } %>
	<% }); %>
</ul>



<br/>
