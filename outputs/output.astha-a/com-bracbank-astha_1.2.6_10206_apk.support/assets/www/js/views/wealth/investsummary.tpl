<!-- statement header --->
        <ul data-role="listview" data-inset="true" data-theme="b" class="stmt-head">
                <li>
                    <p><strong>Fidelity Mutual Fund</strong></p>
                    <p>1254485</p>
                    <p class="ui-li-aside"><strong>73,20,000.00</strong><br/>AED</p>
                </li>
         </ul>       
			 <!-- Detail statement form -->
                <div data-role="collapsible" data-theme="a"  data-collapsed-icon="arrow-r" data-expanded-icon="arrow-d"  >
                    <h2>Detailed Statement</h2>
                    	<form action="accdtlsummary.html" method="post">
	                        <ul data-role="listview" data-theme="a">
	                                <li>
	                                    <label for="fromdate" >From</label>
	                                        <input type="text" autocomplete='off'  name="fromdate" id="fromdate" data-error-style="inline">
	                                </li>
	                                <li>
	                                     <label for="todate" >To</label>
	                                        <input type="text" autocomplete='off'  name="todate" id="todate" data-error-style="inline">
	                                </li>
	                                <li class="ui-body ui-body-b ui-corner-bottom " >
	                                    <button type="submit" data-theme="f">Get Statement</button>   
	                                </li>
	                         </ul>
                         </form>
                </div>
           </nav>
           <!-- Mini statement -->
        	  <nav class="menuwrap"  >
                <div data-role="collapsible" data-theme="a" data-content-theme="a" data-collapsed-icon="arrow-r" data-expanded-icon="arrow-d" data-collapsed="false" >
                    <h2>Mini Statement</h2>
                    <ul data-role="listview"  class="stmt-grid">
                        <li>
                            <p><b>02-07-2012</b></p>
                            <p>@ AED 53.55</p>
                            <p class="ui-li-aside"><strong>146,191.55</strong><br/>Unit <b>2,730</b></p>
                        </li>
                        <li>
                            <p><b>04-09-2012</b></p>
                            <p>@ AED 50.55</p>
                            <p class="ui-li-aside"><strong>146,595.00</strong><br/>Unit <b>2,900</b></p>
                        </li>
                        <li>
                            <p><b>04-05-2011</b></p>
                            <p>@ AED 52.55</p>
                            <p class="ui-li-aside"><strong>383,615.00</strong><br/>Unit<b>7,300</b></p>
                        </li>
                    </ul>
        		</div>
        	</nav>
             <!-- Accounts detail -->
        	<nav class="menuwrap"  >
              <div data-role="collapsible" data-theme="a" data-content-theme="a" data-collapsed-icon="arrow-r" data-expanded-icon="arrow-d"  >
              	<h2> Investment Details</h2>
                <ul data-role="listview"  class="stmt-grid">
                    
                     <li>
                        <p>Account Holder Name</p>
                        <p class="ui-li-aside"><b>Stephen Weber</b></p>
                    </li>
                     <li>
                        <p>Scheme Name</p>
                        <p class="ui-li-aside"><b>Fidelity Mutual Fund</b></p>
                    </li>
                    <li>
                        <p><%-$.i18n.t('app.creditcard.general.nickname')%></p>
                        <p class="ui-li-aside"><b>Fidelity Mutual Fund</b></p>
                    </li>
                    <li>
                        <p>Folio Number</p>
                        <p class="ui-li-aside"><b>15481241</b></p>
                    </li>
                    <li>
                        <p>Latest NAV</p>
                        <p class="ui-li-aside"><strong>56.50</strong></p>
                    </li>
                    <li>
                        <p>Units held</p>
                        <p class="ui-li-aside"><b>12,930</b></p>
                    </li>
                    <li>
                        <p>Average Unit Cost Price</p>
                        <p class="ui-li-aside"><strong>53.25</strong></p>
                    </li>
                    <li>
                        <p>Latest NAV Date</p>
                        <p class="ui-li-aside"><b>04-Nov-12</b></p>
                    </li>
                    <li>
                        <p>Latest Market Value</p>
                        <p class="ui-li-aside"><strong>730,545.00</strong></p>
                    </li>
                </ul>
        	</div>
