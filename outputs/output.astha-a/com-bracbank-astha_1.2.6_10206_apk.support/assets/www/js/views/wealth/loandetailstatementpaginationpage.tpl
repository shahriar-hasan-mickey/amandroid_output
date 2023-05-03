<div class="accStmt" id='pagenationcontent'>
<%if(tranDetails!=null || tranDetails!=undefined || tranDetails!=''){%>
				<ul id="page-content">
				<%var k=0;%>
					<% _.each(tranDetails,function(prestatement){ %>
						<li class="cr" >
							<% if( (prestatement.referenceTransactionNo).substring(0,2)=="FT"){ %>
								<span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<a href="#/ftstmtprestatement/<%-k%>" id="ftrefnum" name="ftrefnum">
							<%}%>	
									<div class="d_msg" >
											<p class="date"><span class="date_ltr"><%-prestatement.valueDate%></span></p>
											<%if(prestatement.description!=""){%>
												<p><%-prestatement.description%></p>
											<%}else{%>
												<p>
												<%if((prestatement.transactionDescription).indexOf("-")!=-1){%>  
													<%-(prestatement.transactionDescription).substring(0,(prestatement.transactionDescription).indexOf("-"))%> 
												<%}else{%>
													<%-prestatement.transactionDescription%>
												<%}%>
												
												
												</p>
											<%}%>
											<!--
											<% if(prestatement.referenceTransactionNo != "undefined"){ %>
												<p class="ref">
													<input type="hidden" id="ftno" name="ftno" value="<%-prestatement.referenceTransactionNo%>">
													<%-prestatement.referenceTransactionNo%>
												</p>
											<%}%>
											-->   
									</div>
									<div class="amt">
											<span class="cur"> 
											<% if(prestatement.currencyCode != '' && prestatement.currencyCode != null && prestatement.currencyCode != undefined){ %>
												<%-prestatement.currencyCode %>
											<% } else { %>
												KWD
											<% } %>
											</span>
											<span>
													<% if(prestatement.flgDrCr != 'Dr'){ %>
							                       		<span class="cr"><%-prestatement.flgDrCr%>&nbsp;<%- checkAmount($.formatNumber(prestatement.amount	, {format:"#,###.000", locale:"us"}))%></span>
							                		<% } else { %>
							                        	<span class="dr"><%-prestatement.flgDrCr%>&nbsp;<%- checkAmount($.formatNumber(prestatement.amount	, {format:"#,###.000", locale:"us"}))%></span>
							               			<% } %>
											</span>
											
									</div>
									
							<% if( (prestatement.referenceTransactionNo).substring(0,2)=="FT"){ %>
								</a>
							<%}%>
										<input type="hidden" id="ftno<%-k%>" name="ftno<%-k%>" value="<%-prestatement.referenceTransactionNo%>">
										<%k=k+1;%>
						</li>
					<% }); %>
				</ul>
		<%}else{%>
		<div  class="alert alert-info text-center">
								<b><%-$.i18n.t('app.product.investment.nodata')%></b> 
		</div>
		<%}%>
</div>

