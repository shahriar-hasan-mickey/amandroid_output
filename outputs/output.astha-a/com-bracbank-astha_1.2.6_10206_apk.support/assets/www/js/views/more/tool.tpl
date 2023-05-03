<%
var els = new EncryptedLocalStorage('secret');
var menuVisibilityList = 'Y';     //els.get("menuVisibilityList");
var toolsCreditCardFind = 'Y';     // menuVisibilityList["MTC3081"].menu_status;
var toolsFinanceCal = 'N';     // menuVisibilityList["MTC3082"].menu_status;
var toolsCurrencyConvert = 'Y';     // menuVisibilityList["MTC3083"].menu_status;
var toolsFxRate = 'Y';     //menuVisibilityList["MTC3084"].menu_status;
var toolsTdRate = 'Y';     // menuVisibilityList["MTC3085"].menu_status;
var toolsAvailableLimit = 'N';     // menuVisibilityList["MTC3086"].menu_status;
var toolsLocateUs = 'N';     //menuVisibilityList["MTC3087"].menu_status;
%>
                       <h3><%-$.i18n.t('app.landing.tools')%></h3>
						<!--Content Starts Here-->
                         <ul class="list-group subNav">
                         <%if(toolsFinanceCal=="Y"){%>
                          <li class="list-group-item">
                             <a href="javascript:void(0);" id="loancalculator" name="loancalculator">
                                <span class="pull-right glyphicon glyphicon-new-window"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.tool.fincalc')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.more.tool.fincalcDesc')%></p>
                             </a>
                          </li>
                           <% } if(toolsCurrencyConvert=="Y"){%>
                          <li class="list-group-item">
                             <a href=#/curConverterMore>
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"> <%-$.i18n.t('app.more.tool.curconvert')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.more.tool.curconvertDesc')%></p>
                             </a>
                          </li>
                          <% } if(toolsFxRate=="Y"){%>
                          <li class="list-group-item">
                             <a href="#/exrates">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"> <%-$.i18n.t('app.more.tool.gnexrate')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.more.tool.gnexrateDesc')%></p>
                             </a>
                          </li>
                          <% } if(toolsTdRate=="Y"){%>
                          <li class="list-group-item">
                             <a href="#/tdRates">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.tool.tdrates')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.more.tool.tdratesDesc')%></p>
                             </a>
                          </li>
                          <% } if(toolsAvailableLimit=="Y"){%>
                          <li class="list-group-item">
                             <a href="#/availableLimit">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.tool.availlimits')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.more.tool.availlimitsDesc')%></p>
                             </a>
                          </li>
                          <% } if(toolsLocateUs=="Y"){%>
                          <li class="list-group-item">
                             <a href="#/locatorview">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.tool.locate')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.more.tool.locateDesc')%></p>
                             </a>
                          </li>
                         <% } %>
                          <!-- As per the reuirement move the sketch demo to prelogin tools  -->
                          <!--
                          <li class="list-group-item">
                             <a href="#/sketchdemoview">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.tool.sketch')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.more.tool.sketchDesc')%></p>
                             </a>
                          </li>->
                     </ul>