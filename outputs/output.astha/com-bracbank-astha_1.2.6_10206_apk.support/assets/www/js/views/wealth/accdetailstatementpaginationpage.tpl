<div class="accStmt" id='pagenationcontent'>
				<ul id="page-content">
				<%var k=0;%>
					<% _.each(transdetailspage,function(transdetailspage){ 
					console.log("transdetailspage====",transdetailspage);
					els.set("transdetailspages",transdetails);%>
						<li class="cr" >
								<span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<a href="#/ftstmttransdetails/<%-k%>" id="ftrefnum" name="ftrefnum">
									<div class="d_msg" >
											<p class="date"><span class="date_ltr"><%-transdetailspage.txnDate%></span></p>
											<%if(transdetailspage.description!=""){%>
												<p><%-transdetailspage.description%></p>
											<%}else{%>
												<p>
												<%if((transdetailspage.description).indexOf("-")!=-1){%>  
													<%-(transdetailspage.description).substring(0,(transdetailspage.description).indexOf("-"))%> 
												<%}else{%>
													<%-transdetailspage.description%>
												<%}%>
												
												
												</p>
											<%}%>
											<% if(transdetailspage.referenceTransactionNo != "undefined"){ %>
												<p class="ref">
													<input type="hidden" id="ftno" name="ftno" value="<%-transdetailspage.referenceTransactionNo%>">
													<%-transdetailspage.referenceTransactionNo%>
												</p>
											<%}%>   
									</div>
									<div class="amt">
											<span class="cur"> 
												<% if(transdetailspage.currency != '' && transdetailspage.currency != null && transdetailspage.currency != undefined){ %>
												<%-transdetailspage.currency %>
											<% } else { %>
												KWD
											<% } %>
											</span>
											<span>
													<% if(transdetailspage.flgDrCr != 'Dr'){ %>
							                       		<span class="cr"><%-transdetailspage.flgDrCr%>&nbsp;<%- checkAmount($.formatNumber(transdetailspage.amount, {format:"#,###.000", locale:"us"}))%></span>
							                		<% } else { %>
							                        	<span class="dr"><%-transdetailspage.flgDrCr%>&nbsp;<%- checkAmount($.formatNumber(transdetailspage.amount, {format:"#,###.000", locale:"us"}))%></span>
							               			<% } %>
											</span>
											
									</div>
									<div class="amt1">
											<span class="hdr">
											<%-$.i18n.t('app.product.accounts.currentbalance')%>
											</span>
											<span class="cur">
											
											</span>
											<%- checkAmount($.formatNumber(transdetailspage.runningTotal, {format:"#,###.000", locale:"us"}))%>
									</div>
							<% if( (transdetailspage.referenceTransactionNo).substring(0,2)=="FT"){ %>
								</a>
							<%}%>
										<input type="hidden" id="ftno<%-k%>" name="ftno<%-k%>" value="<%-transdetailspage.referenceTransactionNo%>">
										<%k=k+1;%>
						</li>
					<% }); %>
				</ul>
</div>

