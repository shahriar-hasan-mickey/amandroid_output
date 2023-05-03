<div class="accStmt" id='pagenationcontent'>
				<ul id="page-content">
				<%var k=0;%>
					<% _.each(transdetails,function(transdetails){ %>
						<li class="cr" >
							<% if( (transdetails.bankReferenceNumber).substring(0,2)=="FT"){ %>
								<span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<a href="#/ftstmttransdetails/<%-k%>" id="ftrefnum" name="ftrefnum">
							<%}%>	
									<div class="d_msg" >
											<p class="date"><span class="date_ltr"><%-transdetails.transactionDate%></span></p>
											<%if(transdetails.transactionDescription!=""){%>
												<p><%-transdetails.transactionDescription%></p>
											<%}else{%>
												<p>
												<%if((transdetails.transactionDescription).indexOf("-")!=-1){%>  
													<%-(transdetails.transactionDescription).substring(0,(transdetails.transactionDescription).indexOf("-"))%> 
												<%}else{%>
													<%-transdetails.transactionDescription%>
												<%}%>
												
												
												</p>
											<%}%>
											<% if(transdetails.bankReferenceNumber != "undefined"){ %>
												<p class="ref">
													<input type="hidden" id="ftno" name="ftno" value="<%-transdetails.bankReferenceNumber%>">
													<%-transdetails.bankReferenceNumber%>
												</p>
											<%}%>   
									</div>
									<div class="amt">
											<span class="cur"> 
											<% if(transdetails.currencyCode != '' && transdetails.currencyCode != null && transdetails.currencyCode != undefined){ %>
												<%-transdetails.currencyCode %>
											<% } else { %>
												KWD
											<% } %>
											</span>
											<span>
													<% if(transdetails.transactionFlag != 'Dr'){ %>
							                       		<span class="cr"><%-transdetails.transactionFlag%>&nbsp;<%- checkAmount($.formatNumber(transdetails.transactionAmount	, {format:"#,###.000", locale:"us"}))%></span>
							                		<% } else { %>
							                        	<span class="dr"><%-transdetails.transactionFlag%>&nbsp;<%- checkAmount($.formatNumber(transdetails.transactionAmount	, {format:"#,###.000", locale:"us"}))%></span>
							               			<% } %>
											</span>
											
									</div>
									
							<% if( (transdetails.bankReferenceNumber).substring(0,2)=="FT"){ %>
								</a>
							<%}%>
										<input type="hidden" id="ftno<%-k%>" name="ftno<%-k%>" value="<%-transdetails.bankReferenceNumber%>">
										<%k=k+1;%>
						</li>
					<% }); %>
				</ul>
</div>

