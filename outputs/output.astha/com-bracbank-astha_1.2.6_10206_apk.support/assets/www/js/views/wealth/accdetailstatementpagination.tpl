<div class="accStmt" id='pagenationcontent'>
				<ul id="page-content">
				<%var k=0;%>
					<% _.each(transdetails,function(transdetails){ 
					console.log("transdetails====",transdetails);
					els.set("transdetailspages",transdetails);%>
						<li class="cr" >
								<span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<a href="#/ftstmttransdetails/<%-k%>" id="ftrefnum" name="ftrefnum">
									<div class="d_msg" >
											<p class="date"><span class="date_ltr"><%-transdetails.txnDate%></span></p>
											<%if(transdetails.description!=""){%>
												<p><%-transdetails.description%></p>
											<%}else{%>
												<p>
												<%if((transdetails.description).indexOf("-")!=-1){%>  
													<%-(transdetails.description).substring(0,(transdetails.description).indexOf("-"))%> 
												<%}else{%>
													<%-transdetails.description%>
												<%}%>
												
												
												</p>
											<%}%>
											<% if(transdetails.referenceTransactionNo != "undefined"){ %>
												<p class="ref">
													<input type="hidden" id="ftno" name="ftno" value="<%-transdetails.referenceTransactionNo%>">
													<%-transdetails.referenceTransactionNo%>
												</p>
											<%}%>   
									</div>
									<div class="amt">
											<span class="cur"> 
											<% if(transdetails.currency != '' && transdetails.currency != null && transdetails.currency != undefined){ %>
												<%-transdetails.currency %>
											<% } else { %>
												KWD
											<% } %>
											</span>
											<span>
													<% if(transdetails.flgDrCr != 'Dr'){ %>
							                       		<span class="cr"><%-transdetails.flgDrCr%>&nbsp;<%- checkAmount($.formatNumber(transdetails.amount, {format:"#,###.000", locale:"us"}))%></span>
							                		<% } else { %>
							                        	<span class="dr"><%-transdetails.flgDrCr%>&nbsp;<%- checkAmount($.formatNumber(transdetails.amount, {format:"#,###.000", locale:"us"}))%></span>
							               			<% } %>
											</span>
											
									</div>
									<div class="amt1">
											<span class="hdr">
											<%-$.i18n.t('app.product.accounts.currentbalance')%>
											</span>
											<span class="cur">
											
											</span>
											<%- checkAmount($.formatNumber(transdetails.runningTotal, {format:"#,###.000", locale:"us"}))%>
									</div>
							<% if( (transdetails.referenceTransactionNo).substring(0,2)=="FT"){ %>
								</a>
							<%}%>
										<input type="hidden" id="ftno<%-k%>" name="ftno<%-k%>" value="<%-transdetails.referenceTransactionNo%>">
										<%k=k+1;%>
						</li>
					<% }); %>
				</ul>
</div>

