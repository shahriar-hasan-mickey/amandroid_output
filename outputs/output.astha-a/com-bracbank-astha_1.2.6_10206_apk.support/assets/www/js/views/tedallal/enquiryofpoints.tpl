<%
var els = new EncryptedLocalStorage('secret');
var yestday = els.get("formatdate");

%>
                                 <a href="#/tedallalhome" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
      
             <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/tedallalhome"><%-$.i18n.t('app.tedallalrewards.rewardsprogram')%></a></li>
                     <li class="active"><%-$.i18n.t('app.tedallalrewards.enquiryofpoints')%></li>
                  </ol>
                    <div class="clearfix"></div>
                  <!-- Breadcrumb Ends Here -->
                  <h3><%-$.i18n.t('app.tedallalrewards.enquiryofpoints')%></h3>
                  <div class="panel panel-default cust_panel hilit_panel">
							<div data-target="#Tedallal" data-toggle="collapse" class="panel-heading collapsed" id="TedRew">
		    						<p class="panel-title small"><span id="rew" class="glyphicon glyphicon-chevron-right"></span>&nbsp;
									<%-$.i18n.t('app.tedallalrewards.viewtedallal')%></p>
							</div>
								<div id="Tedallal" class="collapsePanel panel-collapse collapse">
						<div class="panel-body detailsStmt">
                   		<form>
                              <table class="table table-bordered table-striped">
                      			<tbody>
                       				<tr>
                          				<td><%-$.i18n.t('app.tedallalrewards.availablepts')%></td>
                          				<td><%- checkAmount($.formatNumber(totalCurrentPoints, {format:"#,###.00", locale:"us"}))%></td>
                      				</tr>

                      				<tr>
                          				<td><%-$.i18n.t('app.tedallalrewards.earnedsixmnth')%></td>
                          				<td><%- checkAmount($.formatNumber(totalNewPointsEarned, {format:"#,###.00", locale:"us"}))%></td>
                      				</tr>
                     				<tr>
                          				<td><%-$.i18n.t('app.tedallalrewards.redeemsixmnth')%></td>
                          				<td><%- checkAmount($.formatNumber(pointsRedeemed, {format:"#,###.00", locale:"us"}))%></td>
                      				</tr>
                      				<tr>
                         				<td><%-$.i18n.t('app.tedallalrewards.expiresixmnth')%></td>
                          				<td><%- checkAmount($.formatNumber(pointsExpired, {format:"#,###.00", locale:"us"}))%></td>
                      				</tr>
                      				<tr>
                          				<td><%-$.i18n.t('app.tedallalrewards.dueexpire')%></td>
                          				<td><%- checkAmount($.formatNumber(pointsExpiringInNextTwoMonths, {format:"#,###.00", locale:"us"}))%></td>
                      				</tr>
                      				<% if(shbplusaccuredpoints>0) { %>
                      				<tr>
                          				<td><%-$.i18n.t('app.tedallalrewards.shbplus')%></td>
                          				<td><%-shbplusaccuredpoints%></td>
                      				</tr>
                      				<% }%>
                    			</tbody>
                    		</table>

                    
                    	</form>
						</div>
					</div>
				</div>
				<a href="#/redemofpoints" class="btn btn-success btn-block"><%-$.i18n.t('app.tedallalrewards.redeempoints')%></a>
				</br></br>
				<%if(alfursanid !="" && milesearned!="" && bonusmiles!="" && milesadjusted !="" && milestransfered !=""){%>
                   <div class="panel panel-default cust_panel hilit_panel">
						<div data-target="#Al-Fursan" data-toggle="collapse" class="panel-heading collapsed" id="alFursan">	
		    						<p class="panel-title small"><span id="al" class="glyphicon glyphicon-chevron-right"></span>&nbsp;
		    					<%-$.i18n.t('app.tedallalrewards.alfursanmiles')%></p>
						</div>
						<div id="Al-Fursan" class="panel-collapse collapse">
							<div class="panel-body detailsStmt">
       							<h6><b><%-$.i18n.t('app.tedallalrewards.asoflastday')%> <%-yestday%></b></h6>
                              <table class="table table-bordered table-striped">
                      			<tbody>
                       				<tr>
                          				<td><%-$.i18n.t('app.tedallalrewards.alfursanid')%></td>
                          				<td><%-alfursanid%></td>
                      				</tr>

                      				<tr>
                          				<td><%-$.i18n.t('app.tedallalrewards.milesearned')%></td>
                          				<td><%-milesearned%>&nbsp<%-$.i18n.t('app.tedallalrewards.miles')%></td>
                      				</tr>
                      				
                      				<tr>
                          				<td><%-$.i18n.t('app.tedallalrewards.bonusmiles')%></td>
                          				<td><%-bonusmiles%>&nbsp<%-$.i18n.t('app.tedallalrewards.miles')%></td>
                      				</tr>
                     				<tr>
                          				<td><%-$.i18n.t('app.tedallalrewards.milesadjusted')%></td>
                          				<td><%-milesadjusted%>&nbsp<%-$.i18n.t('app.tedallalrewards.miles')%></td>
                      				</tr>
                       				<tr>
                         				<td><%-$.i18n.t('app.tedallalrewards.milestransferred')%></td>
                          				<td><%-milestransfered%>&nbsp<%-$.i18n.t('app.tedallalrewards.miles')%></td>
                      				</tr>
                      			</tbody>
                      		</table>

                      		

						</div>
					</div>
				</div>				
				<div class="alert alert-info" role="alert">
                       			<b><%-$.i18n.t('app.tedallalrewards.note')%></b> <%-$.i18n.t('app.tedallalrewards.redeemnote')%>
                </div>
                <%}else{%>
                <div class="alert alert-info" role="alert">
                       			<%-$.i18n.t('app.tedallalrewards.applyalf')%><a onclick="applycc()"  href="#/applynewcreditcardrequestwealth" ><b><u> <%-$.i18n.t('app.tedallalrewards.clickapply')%></u></b></a>
                </div>
				
                <%}%>
                
                <!-- Qitaf Points -->
				<% if(lmspartnerloyaltysummaryDTO != null  && lmspartnerloyaltysummaryDTO != "") { %>
                <div class="panel panel-default cust_panel hilit_panel">
							<div data-target="#Qitaf" data-toggle="collapse" class="panel-heading collapsed" id="QitRew">
		    						<p class="panel-title small"><span id="rew" class="glyphicon glyphicon-chevron-right"></span>&nbsp;
									<%-$.i18n.t('app.tedallalrewards.qitafPoints')%></p>
							</div>
								<div id="Qitaf" class="collapsePanel panel-collapse collapse">
						<div class="panel-body detailsStmt">
       							
						<h6><b><%-$.i18n.t('app.tedallalrewards.asoflastdayqitaf')%> <%-yestday%></b></h6>
                   		<form>
                              <table class="table table-bordered table-striped">
                      			<tbody>
                       				<tr>
                          				<td><%-$.i18n.t('app.tedallalrewards.pointsEarned')%></td>
                          				<td><%-lmspartnerloyaltysummaryDTO.totalpointsearned%>&nbsp;<%-$.i18n.t('app.tedallalrewards.points')%></td>
                      				</tr>

                      				<tr>
                          				<td><%-$.i18n.t('app.tedallalrewards.bonusPoints')%></td>
                          				<td><%-lmspartnerloyaltysummaryDTO.bonuspoints%>&nbsp;<%-$.i18n.t('app.tedallalrewards.points')%></td>
                      				</tr>
                     				<tr>
                          				<td><%-$.i18n.t('app.tedallalrewards.pointsAdjusted')%></td>
                          				<td><%-lmspartnerloyaltysummaryDTO.adjustedpoints%>&nbsp;<%-$.i18n.t('app.tedallalrewards.points')%></td>
                      				</tr>
                      				<tr>
                         				<td><%-$.i18n.t('app.tedallalrewards.pointsTransfered')%></td>
                          				<td><%-lmspartnerloyaltysummaryDTO.transferpoints%>&nbsp;<%-$.i18n.t('app.tedallalrewards.points')%></td>
                      				</tr>
                    			</tbody>
                    		</table>
                      		
                      		
                    
                    	</form>
						</div>
					</div>
				</div>
				<% }else{ %>
				<br/>
				<br/>
				<div class="alert alert-info" role="alert">
                       			<%-$.i18n.t('app.tedallalrewards.applyqitaf')%><a onclick="applycc()"  href="#/applynewcreditcardrequestwealth" ><b><u> <%-$.i18n.t('app.tedallalrewards.clickapply')%></u></b></a>
                </div>
                <%}%>
				
				<% if(lmspartnerloyaltysummaryDTO != null  && lmspartnerloyaltysummaryDTO != "") { %>
				<div class="alert alert-info" role="alert">
                       			<b><%-$.i18n.t('app.tedallalrewards.note')%></b> <%-$.i18n.t('app.tedallalrewards.qitafNotes')%>
                </div>
                <% } %>
			<!-- Qitaf Points -->
            <script>
			
	function applycc(){
	Backbone.history.navigate("#/applynewcreditcardrequestwealth");
	}
	</script>