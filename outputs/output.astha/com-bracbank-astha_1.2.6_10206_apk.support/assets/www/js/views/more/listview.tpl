	<%
	var els = new EncryptedLocalStorage('secret');
var menuVisibilityList =els.get("menuVisibilityList");
var moreCharts = menuVisibilityList["MTC3021"].menu_status;
var moreRequest = menuVisibilityList["MTC3022"].menu_status;
var moreTools = menuVisibilityList["MTC3080"].menu_status;
var morePreference =menuVisibilityList["MTC3040"].menu_status;
var moreMessage =menuVisibilityList["MTC3060"].menu_status;
var moreestatement =menuVisibilityList["MTC9010"].menu_status;
var moreipo=menuVisibilityList["MTC9020"].menu_status;
var estatementsubscription = menuVisibilityList["MTC9011"].menu_status;
var estatementsummary = menuVisibilityList["MTC9012"].menu_status;
var stopmailflag= els.get("stopmailflag");
var showipo=els.get("isAccountHolder");
var siFlag = menuVisibilityList["MTC2061"].menu_status;
var historyFlay = menuVisibilityList["MTC2062"].menu_status;
%>
	<div class="appwrapper" id="appwrapper">
			<!-- Actual content area -->
				<div class="contentwrap">
					<!--contentwrap starts here -->
					 	<div class="btn-group navbar-btn pull-right custTab" role="group" aria-label="<%-$.i18n.t('app.more.general.modeofview')%>"> 
                            <a href="#/listview" class="btn btn-default active "><span class="glyphicon glyphicon-list"></span> <%-$.i18n.t('app.more.general.list')%></a>
                            <a href="#/gridview" class="btn btn-default "><span class="glyphicon glyphicon-th-large"></span> <%-$.i18n.t('app.more.general.grid')%></a>
		                </div>
                       	<h3><%-$.i18n.t('app.more.general.title')%></h3><br/>
						<!--Content Starts Here-->
                         <ul class="list-group subNav">
                         <%if(moreCharts=='Y'){%>
                        <li class="list-group-item">
                           <a href="#/chart">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.general.charts')%></h4>
                           </a>
                        </li>
                        <% } if(moreRequest=='Y'){%>
                        <li class="list-group-item">
                           <a href="#/servicerequest">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.general.servrequests')%></h4>
                           </a>
                        </li>
                        <%  } if(moreTools=='Y'){%>
                        <li class="list-group-item">
                           <a href="#/tool">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.general.tools')%></h4>
                           </a>
                        </li>
                        <% }  if(morePreference=='Y'){%>
                        <li class="list-group-item">
                           <a href="#/preference">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.general.preferences')%></h4>
                           </a>
                        </li>
                         <% } %>
                       <!-- <li class="list-group-item">
                           <a href="#/messageCenter">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.general.messagecentre')%></h4>
                           </a>
                        </li>-->
					<!--Content Ends Here-->
				<% if(moreestatement=='Y'){%>
			       		<%if(stopmailflag=="NO"){%>	
							<li class="list-group-item">
			                   <a href="#/estatementsubscription">
		                          <span class="pull-right glyphicon glyphicon-chevron-right"></span>
		                          <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.general.estatement')%></h4>
			                   </a>
			                </li>	
				      	 <% }%>
	 			<% } %>  
				 <% if(moreestatement=='Y'){%>
				   		<%if(stopmailflag=="YES"){%>	
				   		 	<li class="list-group-item">
		                       <a href="#/estatementsummary">
		                          <span class="pull-right glyphicon glyphicon-chevron-right"></span>
		                          <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.general.estatement')%></h4>
		                       </a>
		                    </li>	    		
				      	 <% }%>
				 <% } %> 
				 <% if(showipo=="Y") { %>
						 <% if(moreipo=='Y'){%>	    
						  	<li class="list-group-item">
	                           <a href="#/ipo">
	                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
	                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.general.ipo')%></h4>
	                           </a>
	                        </li>	  
					     <% } %> 
				 <% } %> 
				  <% if(siFlag=="Y") { %>
				  <li class="list-group-item">
                           <a href="#/Standing Instruction">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.transfer.general.standinginstructions')%></h4>
                           </a>
                        </li>
                        <% } %>
                          <% if(historyFlay=="Y") { %>
                         <li class="list-group-item">
                           <a href="#/transferhistory">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.transfer.general.transferhistory')%></h4>
                           </a>
                        </li>	    
                        <% } %>  
			</ul>
				</div>
			
		</div><br/>
	