<% 
	var els = new EncryptedLocalStorage('secret'); 
	var transdetailsDTO = els.get("transdetails");
%>
<form name="paginationoptions">
	<div>
		 <div id="pagenationcontent">
			<ul class="list-group state-list txnSum">
    				<% if(transdetailsDTO.length > 0 ) { %>
    					<% _.each(transdetailsDTO,function(data){ %> 
    						<% var txndate = data.txnDate; var txnDateArr = txndate.split("-"); console.log(txnDateArr); %>
        					<li class="list-group-item">
		            			<div class="dater small text-muted">
		                			<span class="dd d_cd"><%- txnDateArr[0] %></span>
		                			<span class="mm d_cm"><%- txnDateArr[1] %></span>
		                			<span class="yy d_cy"><%- txnDateArr[2] %></span>
            					</div>
            					<p><%- data.description %></p>
            					<p class="text-muted small"><%- data.referenceTransactionNo %></p>
            					<% var flag = data.flgDrCr; %>
            					<% if( flag == "Cr") { %>
            						<div class="amt pos text-right">                						
                						<span class="num">+<%- checkAmount($.formatNumber(data.amount, {format:"#,###.00", locale:"us"}))%></span>
	            					</div>
            					<% } else if(flag == "Dr") { %>
            						<div class="amt neg text-right">
                						<span class="num"><%- checkAmount($.formatNumber(data.amount, {format:"#,###.00", locale:"us"}))%></span>
	            					</div>
            					<% } %>
	            				<!--<div class="amt text-right small">
	            					<% if(data.flgDrCr == "Cr") { %>
	                					<small class="text-muted"><%-$.i18n.t('app.accounts.availablebalance')%> </small>
	                				<% } else if(data.flgDrCr == "Dr") { %>
	                					<small class="text-muted">Balance</small>
	                				<% } %>
	                				<span class="num"><%- checkAmount($.formatNumber(data.runningTotal, {format:"#,###.00", locale:"us"}))%></span> <span class="cur"><%- data.currency %></span>
	            				</div>-->
	        				</li>
	        			<% }); %>
					</ul>
				<% } else { %>
					<div class="list-group small">
						<div class="list-group-item alert" align="center"><%-$.i18n.t('app.product.loan.nodatafound')%></div>
					</div>
			   <% } %>
		</div>
	</div><br/>
</form>
