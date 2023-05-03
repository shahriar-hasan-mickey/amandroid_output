<%
	var els=new EncryptedLocalStorage('secret');
	var arrayPoints = els.get("lmsrewards");
%>
                                 <a href="#/redemofpoints" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>

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
	          <div class="steps"><span ></span><div>3<p><%-$.i18n.t('app.tedallalrewards.confirm')%></p> </div></div>
	</div>
<!--Step Control Ends Here-->
	<div class="dtl_view">
<!--Verify Starts Here-->
	<form role="form">
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th colspan="2"><%-$.i18n.t('app.tedallalrewards.redemptiondetails')%></th>
					</tr>
				</thead>
	            <tbody>
	                    <tr>
	                          <td><%-$.i18n.t('app.tedallalrewards.voucherreq')%></td>
	                          <td><%-arrayPoints[0]%></td>
	                    </tr>
	                    <tr>
	                          <td><%-$.i18n.t('app.tedallalrewards.pointsineachvoucher')%></td>
	                          <td><%-checkAmount($.formatNumber(arrayPoints[1], {format:"#,###", locale:"us"}))%></td>
	                    </tr>                    
	             </tbody>
			</table>
			<div class="amt2"><span class="hdr"><%-$.i18n.t('app.tedallalrewards.totalreward')%></span><%-arrayPoints[2]%></div>
	        <div class="clearfix"></div>
	        <br/>
			<button type="button" id="redeemVerify" name="redeemVerify" class="btn btn-success btn-block" id="submit"><%-$.i18n.t('app.tedallalrewards.confirm')%></button>
			<button type="button" id="redeemCancel" name="redeemCancel" class="btn btn-primary btn-block"><%-$.i18n.t('app.tedallalrewards.cancel')%></button>
	</form>
    </div>

               