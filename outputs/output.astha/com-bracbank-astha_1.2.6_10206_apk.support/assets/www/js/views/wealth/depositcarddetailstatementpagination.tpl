<div class="accStmt" id='pagenationcontent'>
<%if(termsDeposit!=null || termsDeposit!=undefined || termsDeposit!=''){%>
				<ul id="page-content">
				<%var k=0;%>
					<% _.each(termsDeposit,function(prestatement){ 
					els.set("transdetailspages",termsDeposit);%>
						<li class="cr" >
								<span class="glyphicon glyphicon-chevron-right pull-right"></span>
								<a href="#/ftstmttransTDdetails/<%-k%>" id="ftrefnum" name="ftrefnum">
									<div class="d_msg" >
											<p class="date"><span class="date_ltr"><%-prestatement.transactionDate%></span></p>
											<%if(prestatement.transactionDescription!=""){%>
												<p><%-prestatement.transactionDescription%></p>
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
											<% if(prestatement.bankReferenceNumber != "undefined"){ %>
												<p class="ref">
													<input type="hidden" id="ftno" name="ftno" value="<%-prestatement.bankReferenceNumber%>">
													<%-prestatement.bankReferenceNumber%>
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
													<% if(prestatement.transactionFlag != 'Dr'){ %>
							                       		<span class="cr"><%-prestatement.transactionFlag%>&nbsp;<%- checkAmount($.formatNumber(prestatement.transactionAmount	, {format:"#,###.000", locale:"us"}))%></span>
							                		<% } else { %>
							                        	<span class="dr"><%-prestatement.transactionFlag%>&nbsp;<%- checkAmount($.formatNumber(prestatement.transactionAmount	, {format:"#,###.000", locale:"us"}))%></span>
							               			<% } %>
											</span>
											
									</div>
									<br/>
									<div class="amt1">
											<span class="hdr">
											<!--<%-$.i18n.t('app.product.general.availablebalance')%>-->
											<%-$.i18n.t('app.product.accounts.currentbalance')%>
											</span>
											<span class="cur">
											
											</span>
											<%- checkAmount($.formatNumber(prestatement.availableBalance, {format:"#,###.000", locale:"us"}))%>
											
									</div>
							<% if( (prestatement.bankReferenceNumber).substring(0,2)=="FT"){ %>
								</a>
							<%}%>
										<input type="hidden" id="ftno<%-k%>" name="ftno<%-k%>" value="<%-prestatement.bankReferenceNumber%>">
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

