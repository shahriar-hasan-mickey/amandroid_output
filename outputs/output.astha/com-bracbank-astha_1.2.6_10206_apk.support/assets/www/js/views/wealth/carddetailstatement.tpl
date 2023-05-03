         <nav class="menuwrap"  >
                <div data-role="collapsible" data-theme="a" data-content-theme="a" data-collapsed-icon="arrow-r" data-expanded-icon="arrow-d" data-collapsed="false" >
                    <h2 data-i18n="app.wealth.general.detailedstatement"></h2>
                    <ul data-role="listview"  class="stmt-grid">
                     <% _.each(ministatement,function(data){ %>
                        <li>
                            <p><b><%-data.transactionDate%></b></p>
                            <p><%-data.transactionDescription%></p>
                            <p class="ui-li-aside"><strong><%-data.transactionAmount%></strong>&nbsp;<%-data.transactionType%><br/><%-accdetail.currency.code%>&nbsp;&nbsp;</p>
                        </li>
                          <% }); %>
                     <% if(_.size(ministatement) == 0){%> 
							<h1><%-$.i18n.t('exception.common.nostatement')%></h1>
                     <% } %>
                    </ul>
        	</div>
        </nav>