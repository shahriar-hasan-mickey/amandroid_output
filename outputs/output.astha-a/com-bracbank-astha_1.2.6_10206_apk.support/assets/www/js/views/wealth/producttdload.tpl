<%
	var els = new EncryptedLocalStorage('secret'); 
	var errordesc = els.get("errordesc");
%>
	    	<!-- Time Deposit STARTS --> 
						 <div id="TDeposit" class="collapsePanel panel-collapse collapse in">
				               <div class="panel-body">
				                 	<div class="list-group">
				                 		<% if (mydeposit!=undefined && mydeposit!=null && mydeposit.length > 0 ) { %>
				                 		   <%var t=0;%>
				                 			<% _.each(mydeposit,function(data){ %>
						                        <label class="list-group-item">
					                       		<span class="glyphicon glyphicon-chevron-right pull-right"></span>
							                         <!--<a href="#/investmentstatement/<%- data.accountNumber%>~<%- data.currencyCode%>~<%- data.amount%>~<%- data.maturityDate%>~<%- data.accountType%>~<%- data.interestRate%>~<%- data.dealDate%>">-->
						                             	 <a href="#/invstmentstatement/<%- t%>">
						                             	 <p><span class="nme"><%- data.accountShortName %></span>
						                             	 <small class="pull-right"><%-$.i18n.t('app.product.accounts.balance')%></small></p>
						                             	 <p><small class="text-muted"><%- data.accountNumber %></small>
						                             	 <span class="amt pull-right">
						                             	 	<% if(data.principalBalance > 0){ %>
						                             	 	<span ><%- data.currencyCode %></span>
							                        			<span class="cr"><%- checkAmount($.formatNumber(data.principalBalance, {format:"#,###.000", locale:"us"}))%></span>
							                        		<% } else { %>
							                        		<span><%- data.currencyCode %></span>
							                        			<span class="dr"><%- checkAmount($.formatNumber(data.principalBalance, {format:"#,###.000", locale:"us"}))%></span>
							                        		<% } %>
						                             	 </span></p>
						                             	  <input type="hidden" id="tdno<%-t%>" name="tdno<%-t%>" value="<%-data.accountNumber%>">
			                                    </a>
			                                    <%t=t+1;%>
						                        </label>
						                     <% }); %>
						                 <%}else{%>
							                 <h4>
													<%if(errordesc!=null || errordesc!='' || errordesc!=undefined){%>
															<%-errordesc%>
													<%}else{%>
														<%-$.i18n.t('app.product.investment.nodata')%>
													<% } %>
</h4>
													
				                         <% } %>
				                     </div>
				               </div>
		            </div>
			 <!-- Time Deposit ENDS -->
			 
