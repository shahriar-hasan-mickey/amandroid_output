   <% if ( myaccounts.length > 0 ) { %>
         <div data-role="collapsible" data-theme="b" data-content-theme="b" data-collapsed-icon="arrow-r" data-expanded-icon="arrow-d"  data-collapsed="false"  id="acc" >
                 <h2><%-$.i18n.t('app.wealth.shb.accounts')%></h2>
                 <ul data-role="listview">
                     <% _.each(myaccounts,function(data){ %>
                            <li data-icon="false">
	                        	<h4><%-$.i18n.t('app.wealth.shbaccounts.accountnickname')%></h4> 
	                        	<p class="ui-li-aside"><%- data.accountnickname %></p> 
	 							<a href="#/introwealth" class="ui-btn" ><%-$.i18n.t('app.creditcard.managebene.edit')%></a>
                            </li> 
                                <li data-icon="false">
                                <h4><%-$.i18n.t('app.wealth.shbaccounts.accountnumber')%></h4> 
                         		<p class="ui-li-aside"><%- data.accountNumber %></p>
                          			
                       			 <% _.each(myaccounts,function(data){ %>
		                        	  <li data-icon="false">
		                                    <a href="#/statement/<%- data.accountNumber %>">
		                                        <h3><%- data.accountShortName %></h3>
		                                        <p class="ui-li-aside"><strong><span id="accounts">
		                                        <%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%>
		                                        </span></strong><br/><%- data.currency.code %></p>
		                                    </a>
		                              </li> 
                         		<% }); %>    
                         		  
                                <li data-icon="false">
	                                <h4><%-$.i18n.t('app.wealth.shbaccounts.accounttype')%></h4> 
	                          		<p class="ui-li-aside"><%- data.acctProduct.productType.description %></p>
                                 </li>
                                 <li data-icon="false">
	                                <h4><%-$.i18n.t('app.wealth.shbaccounts.bookbalance')%></h4> 
	                        		<p class="ui-li-aside"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></p>
                                 </li>
                                 <li data-icon="false">
	                                <h4><%-$.i18n.t('app.wealth.shbaccounts.availbalance')%></h4> 
	                                <p class="ui-li-aside"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></p>
                                 </li>
                                 <li data-icon="false">
	                                <h4><%-$.i18n.t('app.wealth.shbaccounts.accountnumber')%></h4> 
	                          		<p class="ui-li-aside"><%- data.currencyCode %></p>
                                 </li>
                               <% }); %>      
				</ul>
	 </div>
	 
	 <div data-role="collapsible" data-theme="a" data-content-theme="a" data-collapsed-icon="arrow-r" data-expanded-icon="arrow-d" data-collapsed="false" id="graph" >
            <h2><%-$.i18n.t('app.wealth.shbaccounts.graph')%></h2>
     </div>
   	 <div data-role="collapsible" data-theme="a" data-content-theme="a" data-collapsed-icon="arrow-r" data-expanded-icon="arrow-d" data-collapsed="false" id="search" >
          <h2><%-$.i18n.t('app.wealth.shbaccounts.search')%></h2>
          <input data-inline="true" value="Date" type="button">
          <input data-inline="true" value="Amount" type="button">
          <input data-inline="true" value="Channel" type="button">
     </div>
 <% } %>
               
