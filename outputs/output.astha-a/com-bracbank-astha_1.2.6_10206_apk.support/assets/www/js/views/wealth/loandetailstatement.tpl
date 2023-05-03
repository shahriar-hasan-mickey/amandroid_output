<div class="responsive">
              <table class="table table-striped">
              <thead>
                <tr>
                    <th data-i18n="app.wealth.loan.transactiondate"></th>
                    <th data-i18n="app.wealth.loan.referenceno"></th>
                    <th data-i18n="app.wealth.loan.remarks"></th>
                    <th class="text-right" data-i18n="app.wealth.loan.debitcredit"></th>
                    <th class="text-right" data-i18n="app.wealth.loan.balance"></th>
                    <th data-i18n="app.wealth.loan.valuedate"></th>
                </tr>
              </thead>
              <tbody>
              <% _.each(ministatement,function(data){ %>
                <tr>
                    <td class="text-muted"><%-data.instalmentReceiptDate%></td>
                    <td class="text-muted"><%-data.bankReferenceNumber%></td>
                    <td><%-data.transactionDescription%></td>
                    <td class="text-right">
                    	<%- checkAmount($.formatNumber(data.instalmentAmount, {format:"#,###.000", locale:"us"}))%>
                    </td>
                    <td class="text-right">
                       <%- checkAmount($.formatNumber(data.closingPrincipal, {format:"#,###.000", locale:"us"}))%>
                    </td>
                     <td class="text-right"><%-data.valueDate%></td>
                </tr>
                <% }); %>
              </tbody>
              </table>
            </div>