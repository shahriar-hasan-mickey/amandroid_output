<div class="clearfix"></div><br/>
						<!--Breadcrumb Ends Here-->
						<div class="panel panel-default cust_panel">
						
						<div class="panel-heading" data-toggle="collapse" data-target="#beneficiary">
								<p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;<%-$.i18n.t('app.more.tdrates.tdratesrd')%></p>
							</div>
							<div id="beneficiary" class="collapsePanel collapse in">
								<div class="panel-body detailsStmt">
									<ul class="list-group">
									<%	var ratedetails = [];
									 _.each(intRateExtentions,function(data){ ratedetails = data.rateDetailsList;  %>
									 <div style="border: 1px solid black">
										<h5 style="text-align:center;"><%-$.i18n.t('app.transfer.general.amount')%></h5>
										<li class="list-group-item">
											<small><%-$.i18n.t('app.sadad.duebillpay.min_amt_lbl')%></small>
											<span class="pull-right"><small><%-data.fromAmount%> </small></span>
										</li>
										<li class="list-group-item">
											<small><%-$.i18n.t('app.sadad.duebillpay.max_amt_lbl')%></small>
											<span class="pull-right"><small><%-data.toAmount%> </small></span>
										</li>
										
										<h5 style="text-align:center;"><%-$.i18n.t('app.more.tool.term')%></h5>
											
											<% _.each(ratedetails,function(data){ %>
										<li class="list-group-item">
											<small><%-data.term%></small>&nbsp;&nbsp;<small><%-data.dayRange%></small>
											<span class="pull-right"><small><%-data.interestRate%> %</small></span>
										</li>
										<% }); %>	</div>	
                                      <% }); %>	
                                     
									</ul>
								</div>
							</div>
							
							</div>
							</div>
