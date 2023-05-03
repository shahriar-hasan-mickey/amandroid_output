<div class="accStmt" id='pagenationcontent'>
				<ul id="page-content">
				<%var k=0;%>
					<% _.each(transdetailspage,function(transdetailspage){ %>
						<li class="cr" >
							<% if( (transdetailspage.bankReferenceNumber).substring(0,2)=="FT"){ %>
								<span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<a href="#/ftstmttransdetails/<%-k%>" id="ftrefnum" name="ftrefnum">
							<%}%>	
									<div class="d_msg" >
											<p class="date"><span class="date_ltr"><%-transdetailspage.transactionDate%></span></p>
											<%if(transdetailspage.transactionDescription!=""){%>
												<p><%-transdetailspage.transactionDescription%></p>
											<%}else{%>
												<p>
												<%if((transdetailspage.transactionDescription).indexOf("-")!=-1){%>  
													<%-(transdetailspage.transactionDescription).substring(0,(transdetailspage.transactionDescription).indexOf("-"))%> 
												<%}else{%>
													<%-transdetailspage.transactionDescription%>
												<%}%>
												
												
												</p>
											<%}%>
											<% if(transdetailspage.bankReferenceNumber != "undefined"){ %>
												<p class="ref">
													<input type="hidden" id="ftno" name="ftno" value="<%-transdetailspage.bankReferenceNumber%>">
													<%-transdetailspage.bankReferenceNumber%>
												</p>
											<%}%>   
									</div>
									<div class="amt">
											<span class="cur"> 
										  <% if(transdetailspage.currencyCode != '' && transdetailspage.currencyCode != null && transdetailspage.currencyCode != undefined){ %>
												<%-transdetailspage.currencyCode %>
											<% } else { %>
												KWD
											<% } %>
											</span>
											<span>
													<% if(transdetailspage.transactionFlag != 'Dr'){ %>
							                       		<span class="cr"><%-transdetailspage.transactionFlag%>&nbsp;<%- checkAmount($.formatNumber(transdetailspage.transactionAmount	, {format:"#,###.000", locale:"us"}))%></span>
							                		<% } else { %>
							                        	<span class="dr"><%-transdetailspage.transactionFlag%>&nbsp;<%- checkAmount($.formatNumber(transdetailspage.transactionAmount	, {format:"#,###.000", locale:"us"}))%></span>
							               			<% } %>
											</span>
											
									</div>
									
							<% if( (transdetailspage.bankReferenceNumber).substring(0,2)=="FT"){ %>
								</a>
							<%}%>
										<input type="hidden" id="ftno<%-k%>" name="ftno<%-k%>" value="<%-transdetailspage.bankReferenceNumber%>">
										<%k=k+1;%>
						</li>
					<% }); %>
				</ul>
</div>

