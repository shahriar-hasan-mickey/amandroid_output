<div class="responsive">
              <table class="table table-striped">
              <thead>
                <tr>
                    <th data-i18n="app.wealth.investment.depositedate"></th>
                    <th data-i18n="app.wealth.investment.depositeno"></th>
                    <th data-i18n="app.wealth.investment.transactiontype"></th>
                    <th data-i18n="app.wealth.investment.depositeamount"></th>
                    <th data-i18n="app.wealth.investment.transactionamount"></th>
                    <th data-i18n="app.wealth.investment.interestamount"></th>
                    <th data-i18n="app.wealth.investment.cumulativebalance"></th>
                    <th class="text-right" data-i18n="app.wealth.investment.transactiondate"></th>
                </tr>
              </thead>
              <tbody>
              <% _.each(ministatement,function(data){ %>
                <tr>
                    <td class="text-muted"><%-data.depositDate%></td>
                    <td><%-data.depositNumber%></td>
                    <td><%-data.transactionDescription%></td>
                    <td>
                    <%- checkAmount($.formatNumber(data.depositAmount, {format:"#,###.000", locale:"us"}))%>
                    </td>
                    <td>
                     <%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.000", locale:"us"}))%>
                    </td>
 					<td>
 					 <%- checkAmount($.formatNumber(data.interestAmount, {format:"#,###.000", locale:"us"}))%>
 					</td>                   
               		<td>
               		 <%- checkAmount($.formatNumber(data.cummulativeBalance, {format:"#,###.000", locale:"us"}))%>
               		</td>
               		 <td><%-data.transactionDate%></td>
                </tr>
                <% }); %>
              </tbody>

              </table>
            </div>