      <%
var els = new EncryptedLocalStorage('secret');
var month=els.get("Month");
var year=els.get("Year");
var dtMonth=els.get("dtMonth");
%>
                                 <a href="#/stmtofpts" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
        
    <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/tedallalhome"><%-$.i18n.t('app.tedallalrewards.rewardsprogram')%></a></li>
                     <li class="active"><%-$.i18n.t('app.tedallalrewards.redemptionofpoints')%></li>                 
                  </ol>
                     <div class="clearfix"></div>
                  <!-- Breadcrumb Ends Here -->

                      <h3><%-$.i18n.t('app.tedallalrewards.stmtofpoints')%></h3>
                          <br/>
                  <form>
                  <table class="table table-bordered table-striped">
                      <tbody>
                      	<tr>
                          <td><%-$.i18n.t('app.tedallalrewards.month')%></td>
                          <td><%-month%></td>
                      	</tr>
                        <tr>
                          <td><%-$.i18n.t('app.tedallalrewards.year')%></td>
                          <td><%-year%></td>
                      	</tr>
                     </tbody>
                  </table>
                  <table class="table table-bordered table-striped">
                    <thead>
						<tr>
							<th><b><%-$.i18n.t('app.tedallalrewards.details')%></b></th>
                            <th><b><%-$.i18n.t('app.tedallalrewards.points')%></b></th>

						</tr>
					</thead>
                    <tbody> 
                       		<tr>
                       			<td><%-$.i18n.t('app.tedallalrewards.openingbal')%></td>
					<td> <%- checkAmount($.formatNumber(openingbalance, {format:"#,###.00", locale:"us"}))%></td>
                       		</tr>
                        	<tr>
                       			<td colspan="2"><%-$.i18n.t('app.tedallalrewards.detailsofpoints')%></td>
                       		</tr>
                       		
                      		<tr>
                          		<td class="text-right"><%-$.i18n.t('app.tedallalrewards.creditcard')%></td>
                          		<td> <%- checkAmount($.formatNumber(creditcnt, {format:"#,###.00", locale:"us"}))%></td>
                      		</tr>                      		
                       		<tr>
                          		<td class="text-right"><%-$.i18n.t('app.tedallalrewards.debitcard')%></td>
                          		<td> <%- checkAmount($.formatNumber(debitcnt, {format:"#,###.00", locale:"us"}))%></td>
                      		</tr>
                       		<tr>
                          		<td class="text-right"><%-$.i18n.t('app.tedallalrewards.deposits')%></td>
                          		<td> <%- checkAmount($.formatNumber(depositscnt, {format:"#,###.00", locale:"us"}))%></td>
                      		</tr>
                    		<tr>
                          		<td class="text-right"><%-$.i18n.t('app.tedallalrewards.homeloans')%></td>
                          		<td> <%- checkAmount($.formatNumber(homeloancnt, {format:"#,###.00", locale:"us"}))%></td>
                      		</tr>
                       		<tr>
                         		<td class="text-right"><%-$.i18n.t('app.tedallalrewards.personalloans')%></td>
                          		<td> <%- checkAmount($.formatNumber(personalloancnt, {format:"#,###.00", locale:"us"}))%></td>
                      		</tr>
							
							<tr>
                         		<td class="text-right"><%-$.i18n.t('app.tedallalrewards.channels')%></td>
                          		<td> <%- checkAmount($.formatNumber(channelcnt, {format:"#,###.00", locale:"us"}))%></td>
                      		</tr>
							
                        	<tr>
		                          <td class="text-right"><%-$.i18n.t('app.tedallalrewards.others')%></td>
		                          <td> <%- checkAmount($.formatNumber(otherscont, {format:"#,###.00", locale:"us"}))%></td>
                      		</tr>
                       		<tr>
		                          <td><%-$.i18n.t('app.tedallalrewards.totalnewpoints')%></td>
								  <td> <%- checkAmount($.formatNumber(totalnewpointsearned, {format:"#,###.00", locale:"us"}))%></td>
                      		</tr>

		                <tr>
		                          <td><%-$.i18n.t('app.tedallalrewards.ptsredeemed')%></td>
								   <td> <%- checkAmount($.formatNumber(pointsredeemed, {format:"#,###.00", locale:"us"}))%></td>
		                </tr>
	                        <tr>
		                          <td><%-$.i18n.t('app.tedallalrewards.ptsexpired')%></td>
								   <td> <%- checkAmount($.formatNumber(pointsexpired, {format:"#,###.00", locale:"us"}))%></td>
                      		</tr>
                                <tr>
		                          <td><%-$.i18n.t('app.tedallalrewards.closingbal')%></td>
								   <td> <%- checkAmount($.formatNumber(closingbalance, {format:"#,###.00", locale:"us"}))%></td>
                      		</tr>
                      		<tr>
			                      <td><%-$.i18n.t('app.tedallalrewards.ptsexpiring')%></td>
								   <td> <%- checkAmount($.formatNumber(pointsexpiring, {format:"#,###.00", locale:"us"}))%></td>
                      		</tr>
                    </tbody>
                 </table>

						<div class="form-group pull-right">
							<label>Downloads&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
							<div class="btn-group">
								<button class="btn btn-default active" id="pdf" name="pdf" type="button"><%-$.i18n.t('app.tedallalrewards.pdf')%></button>
							</div>
						</div>

  				</form>