
        <!-- Sub Navigation section-->
        <aside class="subnav">
			<h3><%-$.i18n.t('app.menu.wealth')%></h3>
            <nav>
                <h4><%-$.i18n.t('app.wealth.general.availablebalance')%></h4>
				<% if ( myaccounts.length > 0 ) { %>
                <ul>
						<% _.each(myaccounts,function(data){ %>
						
						<li class="active"><a href="#/statement/<%- data.accountNumber %>"><p class="lbl"><%- data.accountShortName %></p><p class="amt"><span class="cur"><%- data.currency.code %></span><span class="num"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p></a></li>
						 <% }); %>
                </ul>
					<% } %>
					
					
                <h4><%-$.i18n.t('app.wealth.general.creditcard')%></h4>
                <% if ( mycreditcards.length > 0 ) { %>
                <ul>
					<% _.each(mycreditcards,function(data){ %>
                    <li>
					<a href="#/ccstatement/<%- data.id %>"><p class="lbl"><%- data.accountShortName %></p><p class="amt"><span class="cur"><%- data.currency.code %></span><span class="num"><%- checkAmount($.formatNumber(data.outStandingAmount, {format:"#,###.000", locale:"us"}))%></strong></span></p></a>
					</li>
					<% }); %>   
                        </ul>				
                <% } %>
				
				<h4><%-$.i18n.t('app.wealth.general.loan')%></h4>
              <% if ( myloans.length > 0 ) { %>
	                <ul>
		                         <% _.each(myloans,function(data){ %>
								 <li>
								 <a href="#/loanstatement/<%- data.id %>/<%- data.accountNumber %>"><p class="lbl"><%- data.accountShortName %></p><p class="amt"><span class="cur"><%- data.currency.code %></span><span class="num"><%- checkAmount($.formatNumber(data.principalBalance, {format:"#,###.000", locale:"us"}))%></span></p></a>
								 </li>
								<% }); %>
	                        </ul>				
	                  
                <% } %>
				<h4><%-$.i18n.t('app.wealth.general.investment')%></h4>
                <% if ( myinvestments.length > 0 ) { %>
	                <ul >
	                         <% _.each(myinvestments,function(data){ %>
	               <li>
					<a href="#/investmentstatement/<%- data.accountNumber %>"><p class="lbl"><%- data.accountShortName %></p><p class="amt"><span class="cur"><%- data.currency.code %></span><span class="num"><%- checkAmount($.formatNumber(data.principalBalance, {format:"#,###.000", locale:"us"}))%></span></p></a>
					</li>
	                  <% }); %>
	                 </ul>
	                
                <% } %> 
			</nav>
        </aside>
<script>
$(document).ready(function () {
Backbone.history.navigate("#/statement/<%-myaccounts[0].accountNumber%>");
});        

</script>        