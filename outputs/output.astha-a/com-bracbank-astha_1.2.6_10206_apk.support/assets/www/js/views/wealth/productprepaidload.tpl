
	    	<!-- Time Deposit STARTS --> 
						 <div id="prepaid" class="collapsePanel panel-collapse collapse in">
				               <div class="panel-body">
				                 	<div class="list-group">
				                 		<% if (prepaidAcct!=undefined && prepaidAcct!=null && prepaidAcct.length > 0 ) { %>
				                 		   <%var t=0;%>
				                 			<% _.each(prepaidAcct,function(data){ %>
						                        <label class="list-group-item">
					                       		<span class="glyphicon glyphicon-chevron-right pull-right"></span>
							                         <!--<a href="#/investmentstatement/<%- data.accountNumber%>~<%- data.currencyCode%>~<%- data.amount%>~<%- data.maturityDate%>~<%- data.accountType%>~<%- data.interestRate%>~<%- data.dealDate%>">-->
						                             	 <a href="#/investmentstatement/<%- t%>">
						                             	 <p><span class="nme"><%- data.productName %></span></p>
						                             	 <p><small class="text-muted"><%- data.accountNumber %></small>
						                             	 <span class="amt pull-right">
						                             	 <% if(data.availableBalance > 0){ %>
						                             	 		<span><%- data.currencyCode %></span>
							                        			<span class="cr"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span>
							                        		<% } else { %>
							                        		<span><%- data.currencyCode %></span>
							                        			<span class="dr"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span>
							                        		<% } %>
						                             	 </span></p>
						                             	  <input type="hidden" id="tdno<%-t%>" name="tdno<%-t%>" value="<%-data.accountNumber%>">
			                                    </a>
			                                    <%t=t+1;%>
						                        </label>
						                     <% }); %>
						                 <%}else{%>
							                 <div class="list-group small">
													<div class="list-group-item alert ">
														<%-$.i18n.t('app.product.investment.nodata')%>
													</div>
											</div>
				                         <% } %>
				                     </div>
				               </div>
		            </div>
			 <!-- Time Deposit ENDS -->
			 
