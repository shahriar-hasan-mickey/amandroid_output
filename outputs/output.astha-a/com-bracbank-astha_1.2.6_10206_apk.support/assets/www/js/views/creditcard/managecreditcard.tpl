<%
var els = new EncryptedLocalStorage('secret');
var menuVisibilityList =els.get("menuVisibilityList");
var creditDetail = menuVisibilityList["MTC1017"].menu_status;
var creditOutStand = menuVisibilityList["MTC2070"].menu_status;
var creditUnBilled = menuVisibilityList["MTC1016"].menu_status;
var creditBilled =menuVisibilityList["MTC2071"].menu_status;
var creditPayments = menuVisibilityList["MTC1015"].menu_status;
var creditManageBene = menuVisibilityList["MTC2072"].menu_status;
var creditCashOnDemand =menuVisibilityList["MTC2073"].menu_status;
var creditLimit = menuVisibilityList["MTC2074"].menu_status;
var creditResetPin = menuVisibilityList["MTC2075"].menu_status;
var creditActivate = menuVisibilityList["MTC2076"].menu_status;
var creditBlock = menuVisibilityList["MTC2077"].menu_status;
var convertpmtinstall = menuVisibilityList["MTC2022"].menu_status;
var temporarylimitincrease = menuVisibilityList["MTC1919"].menu_status;
var creditcardctrl = menuVisibilityList["MTC6016"].menu_status;
%>
                  <!--Content Starts Here-->
                  <h3><%-$.i18n.t('app.requests.debitcardpos.managecreditcard')%></h3>
                  <div class="transfers">
                     <ul class="list-group subNav">
                     <% if(creditcardctrl =='Y'){%>
                        
							  <li class="list-group-item">
								 <a href="#/creditCardusagecontrolrequest">
									<span class="pull-right glyphicon glyphicon-chevron-right"></span>
									<h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.ccusagectrl')%></h4>
									<p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.manageccusage')%></p>
								 </a>
							  </li>						
                      <% } if(creditResetPin =='Y'){%>
                       <li class="list-group-item">
                         <a href="#/resetPinCreditCard">
                            <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                            <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.resetcreatenewpin')%></h4>
                            <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.resetcreatenewcreditcardpin')%></p>
                         </a>
                      </li>
                      <% } if(creditLimit =='Y'){%>
                        <!--<li class="list-group-item">
                           <a href="#/creditCardLimit">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.creditcardlimit')%></h4>
                              <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.increasecreditcardlimit')%></p>
                           </a>
                        </li>-->
							<li class="list-group-item">
								   <a href="#/creditCardLimit">
									  <span class="pull-right glyphicon glyphicon-chevron-right"></span>
									  <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.parmanentlimit')%></h4>
									  <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.increaselimitpermanent')%></p>
								   </a>
								</li>
						<% } if(temporarylimitincrease =='Y'){%>
						<li class="list-group-item">
                           <a href="#/temporarylimitcontrolrequest">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.templimitincrease')%></h4>
                              <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.increaselimittemp')%></p>
                           </a>
                        </li>
                        <% } if(creditActivate =='Y'){%>
                      <li class="list-group-item">
                         <a href="#/activatecreditcard">
                            <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                            <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.activatecreditcard')%></h4>
                            <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.activatingcreditcardusage')%></p>
                         </a>
                      </li>
                      <% } if(creditBlock =='Y'){%>
                      <li class="list-group-item">
                         <a href="#/blockcreditcard">
                            <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                            <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.blockcreditcard')%></h4>
                            <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.blockingcreditcardusage')%></p>
                         </a>
                      </li>
                     <% } %>
                     </ul>
                  </div>
                  <br/>
   <script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>          