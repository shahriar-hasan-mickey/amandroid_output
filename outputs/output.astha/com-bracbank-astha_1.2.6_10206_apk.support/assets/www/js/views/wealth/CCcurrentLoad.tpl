</br>
<div id="outstandStmt">
<% if (statementDetails!=undefined && statementDetails!=null && statementDetails.length > 0 ) { %>
                              <div class="accStmt">
							<ul>
    		                    <% _.each(statementDetails,function(data){%>
    							   <li class="<%-data.transactionFlag.toLowerCase()%>">
        								
        										<div class="d_msg">
        											<p class="date"><span class="date_ltr"><%-data.transactionDate%></span></p>
        											<p><%-data.transactionDescription%></p>
        											<p class="ref">
				                            			<input type="hidden" id="ftno" name="ftno" value="<%-data.bankReferenceNumber%>">
				                      	   				<%-data.bankReferenceNumber%>
				                            		</p>
        										</div>
        										<div class="amt"><span class="cur"><%-data.currencyCode%></span><span class="type"><%-data.transactionFlag%>&nbsp; <%-data.transactionAmount%></span></div>
        									 
    								   </li>
    								   <%});%>
    								   </ul>                                      
                              </div>
<%}else{%>										
<div class="alert alert-info alert-sm">
			<%-$.i18n.t('app.product.general.nodataavail')%>
</div>				
												
				                       <%}%>
                          </div>
