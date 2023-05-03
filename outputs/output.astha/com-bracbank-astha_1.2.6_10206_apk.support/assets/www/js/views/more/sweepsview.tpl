

<%
var els = new EncryptedLocalStorage('secret'); 
var errordesc = els.get("errordesc");
%>

  <a href="#/more" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                 <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/more"><%-$.i18n.t('app.more.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.general.sweepstitle')%></li>
                  </ol>


                  <div class="clearfix"></div>
<a href="#/sweepsviewadd" class="addBene btn btn-success pull-right btn-sm">
									<%-$.i18n.t('app.transfer.managebeneficiary.add')%>
								</a>
								</br></br>
								<div class="clearfix"></div>
								<div class="accStmt view">
<% if ( standingOrderInformations.length > 0 ) {  %>								
<ul>
<% _.each(standingOrderInformations,function(data,index){ %>

<li>
			   
								<span class="glyphicon glyphicon-chevron-right pull-right"></span>	
								 <a href="#/sweepsdelete/<%-index%>">		
								 		<div class="view-wrap">
											<p><%-data.sourceAccount%>
											<% if(data.isOnline == true){%>
												<span class="pull-right label label-success"><%-$.i18n.t('app.transfer.general.online')%></span>
											<%} else {%>
												<span class="pull-right label label-default"><%-$.i18n.t('app.transfer.general.branch')%></span>
											<%}%>
											</p>
											<p class="small text-muted">
											&nbsp;
											<%-data.sweepsInstructionType%>
											</p>
											<p class="small text-muted">&nbsp;<%-data.transferType%></p>
										</div>
										<div class="amt1"><i class="small"><%-$.i18n.t('app.more.sweep.paymentdate')%></i>&nbsp; &nbsp;<span class="date"><%-data.firstPaymentDate%></span></div>
									</a>
								</li>								
									<% }); %>
							</ul>
						</div>
						
		          <%}else{%>
					<div class="alert alert-info">
					<% if (errordesc!='' && errordesc!=null && errordesc!=undefined) {  %>			
					     <span class="msg"><%-errordesc%></span>
			             <%}else{%> 
			                 <span class="msg"><%-$.i18n.t('app.product.investment.nodata')%></span>
			              <%}%>
		            </div>
			      <%}%>						
						
						
						
						
				
				
				
						
