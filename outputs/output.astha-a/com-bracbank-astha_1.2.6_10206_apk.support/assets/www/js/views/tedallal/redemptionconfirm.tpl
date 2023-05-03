


<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
		<li><a href="#/tedallalhome"><%-$.i18n.t('app.tedallalrewards.tedallalrewards')%></a></li>
		<li class="active"><%-$.i18n.t('app.tedallalrewards.redemptionofpoints')%></li>
	</ol>
	<div class="clearfix"></div>
<!-- Breadcrumb Ends Here -->

<!--Step Control Starts Here-->
	<div class="newWiz">
		<div class="steps done"><div>1 <p><%-$.i18n.t('app.tedallalrewards.input')%></p></div></div>
		<div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.tedallalrewards.verify')%></P></div></div>
		<div class="steps done"><span ></span><div>3<p><%-$.i18n.t('app.tedallalrewards.confirm')%></p> </div></div>
	</div>
	
	<div class="alert alert-success text-center">
		<%-$.i18n.t('app.tedallalrewards.voucher')%>
	</div>
<!--Step Control Ends Here-->

	<div class="dtl_view">
<!--Verify Starts Here-->
	<form role="form">
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th> <%-$.i18n.t('app.tedallalrewards.voucherno')%></th>
					<th> <%-$.i18n.t('app.tedallalrewards.points')%></th>
					<th> <%-$.i18n.t('app.tedallalrewards.expdate')%></th>
				</tr>
			</thead>
			<tbody>
			
				<% _.each(redeemPoints,function(data){ %>
					<tr>
							<td><%-data.voucherNumber %></td>
							<td><%-checkAmount($.formatNumber(data.pointsValue, {format:"#,###", locale:"us"}))%></td>
							<td><%-data.expiryDate %></td>
					</tr>
				<% }); %>
			</tbody>
		</table>                       
	<div class="alert alert-info alert-sm ">
		<b><%-$.i18n.t('app.tedallalrewards.customer')%> </b><br/>
		<ul>
			<li><%-$.i18n.t('app.tedallalrewards.smsredem')%> </li>
			<li><%-$.i18n.t('app.tedallalrewards.visit')%></li>
			<li><%-$.i18n.t('app.tedallalrewards.vouchervalidity')%> </li>
			<li><%-$.i18n.t('app.tedallalrewards.iqamaid')%></li>
		</ul>
	</div>
	<div class="clearfix"></div>
		<br/>
		<button type="button" class="btn btn-success btn-block" id="submit"><%-$.i18n.t('app.reminders.home')%></button>
<!-- <a href="redemption.html" class="btn btn-primary btn-block"><%-$.i18n.t('app.tedallalrewards.cancel')%></a>-->
	</form>
	</div>

             