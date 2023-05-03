<div class="accStmt" id='pagenationcontent'>
				<ul id="page-content">
            	<%var i=0;%>
            	<%var k=0;%>
             	<% _.each(ministatement,function(data){ %>
	               	<%if(i++<ministatement.length){%> 
	               		<% if ( (data.transactionAmount).substring(0,1)=='-' ) { %>
			            	<li class="dr">
								  <div class="d_msg">
								      <p class=""><%-$.i18n.t('app.creditcard.billed.postingdate')%></p>
								      <p class=""><%-$.i18n.t('app.creditcard.billed.transactiondate')%></p>
								      <p>&nbsp;</p>
								      <p><%-data.narration%></p>
								  </div>
								  <div class="amt">
								      <span class="cur">&nbsp;<%-data.valueDate%></span>
								      <span class="cur">&nbsp;<%-data.transactionDate%></span>
								      <span class="cur"><%-data.currencyCode%></span>
								      <%- checkAmount($.formatNumber((data.transactionAmount).substring(1), {format:"#,###.000", locale:"us"}))%>
								  </div>
							</li>
  						<%}else{%>   
							<li class="cr">
							  <div class="d_msg">
							      <p class=""><%-$.i18n.t('app.creditcard.billed.postingdate')%></p>
							      <p class=""><%-$.i18n.t('app.creditcard.billed.transactiondate')%></p>
							      <p>&nbsp;</p>
							      <p><%-data.narration%></p>
							  </div>
							  <div class="amt">
							      <span class="cur">&nbsp;<%-data.valueDate%></span>
							      <span class="cur">&nbsp;<%-data.transactionDate%></span>
							      <span class="cur"><%-data.currencyCode%></span>
							      <%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.000", locale:"us"}))%>
							  </div>
							</li>
			    	<%}%> 
			    <%}%> 
              <% }); %>
              <%k=k+1;%>	
              <% if(_.size(ministatement) == 0){%>
              		<div class="alert alert-info alert-sm">
  						<%-$.i18n.t('exception.common.nostatement')%>
  					</div>
              <% } %>
          </ul>
</div>

