
  <a href="#/more" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                 <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/more"><%-$.i18n.t('app.more.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.general.sweepstitle')%></li>
                  </ol>


                  <div class="clearfix"></div>
<div class="accStmt">
<!--<a href="#/sweepsviewadd" class="addBene btn btn-success pull-right btn-sm">
									<%-$.i18n.t('app.transfer.managebeneficiary.add')%>
								</a>-->
								</br></br>
<ul>
<% _.each(standingOrderInformations,function(data,index){ %>

<li>
			<a href="#/sweepsdelete/<%-index%>">
									<span class="glyphicon glyphicon-chevron-right pull-right"></span>									
										<div class="d_msg">
											
											<p><%-data.fromAccount%></p>
											<p class="hdr"><%-data.sweepsInstructionType%></p>
											<p class="hdr"><%-data.remarks%></p>
											
										</div>
										<% if(data.isOnline == true){%>
										<div class="pull-right status text-success"><%-$.i18n.t('app.transfer.general.online')%><br>
										<%}%>
										</div>
										<div class="amt"><%-data.transferType%></div>												
										<div class="amt1"><span class="hdr"><%-$.i18n.t('app.more.sweep.paymentdate')%></span><%-data.firstPaymentDate%></div>
									<a>
								</li>								
									<% }); %>
							</ul>
						</div>