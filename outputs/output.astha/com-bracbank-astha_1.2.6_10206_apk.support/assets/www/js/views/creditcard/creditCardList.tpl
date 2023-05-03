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
var vccreditcarddet = menuVisibilityList["MTC1040"].menu_status;
var managecreditcardsubmenu = els.get("managecreditcardsubmenu");
%>
                  <!--Content Starts Here-->
                  <h3><%-$.i18n.t('app.menu.creditcardlabel')%></h3>
                  <div class="transfers">
                     <ul class="list-group subNav">
                     <%if(vccreditcarddet=='Y'){%>
                     <li class="list-group-item">
                           <a href="#/virtualcarddetails">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.vcccdetail')%></h4>
                              <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.viewdet')%></p>
                           </a>
                        </li>
                        <% } %>
<!--                     <%}if(creditPayments=='Y'){%>
                       <li class="list-group-item">
                           <a href="#/creditCardPayments">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.creditcardpayments')%></h4>
                              <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.paytocreditcard')%></p>
                           </a>
                        </li>
                      <% } if(creditDetail=='Y'){%>			-->
                      <% if(creditDetail=='Y'){%>	
                        <li class="list-group-item">
                           <a href="#/creditcarddetails">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.creditcarddetails')%></h4>
                              <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.viewdetails')%></p>
                           </a>
                        </li>
                        <% } if(creditOutStand=='Y'){%>
                        <li class="list-group-item">
                            <a href="#/outstandauthcreditcard"> 
                          <!-- <a href="javascript:void(0);">-->
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.outstandingauthorization')%></h4>
                              <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.viewoutstandingpayments')%></p>
                           </a>
                        </li>
                         <% } if(creditUnBilled =='Y'){%>
                        <li class="list-group-item">
                          <a href="#/unbilledstatementcreditcard">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.unbilledstatements')%></h4>
                              <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.viewunbilledpayments')%></p>
                           </a>
                        </li>
                        <% } if(creditBilled =='Y'){%>
                        <li class="list-group-item">
                            <a href="#/billedstatementcreditcard">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.billedstatements')%></h4>
                              <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.viewbilledpayments')%></p>
                           </a>
                        </li>
						<% } if(convertpmtinstall =='Y'){%>
							<li class="list-group-item">
								 <a href="#/convertPaymentinstallCreditCard">
									<span class="pull-right glyphicon glyphicon-chevron-right"></span>
									<h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.convertpmtinstall1')%></h4>
									<p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.convertinstall1')%></p>
								 </a>
							  </li>
                        
                        <% } if(creditCashOnDemand =='Y'){%>
                        <li class="list-group-item">
                           <a href="#/cashOnDemandCreditCard">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.cashondemandlabel')%></h4>
                              <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.creditcardtoaccounttransfer')%></p>
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
                        <% } if(creditcardctrl =='Y'){%>
                        <% if(managecreditcardsubmenu =='Y'){%> 
                       <li class="list-group-item">
                             <a href="#/managecreditcard">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.debitcardpos.managecreditcard')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.debitcardpos.managecreditcardsub')%></p>
                             </a>
                          </li>
                          <%}else{%>
							  <li class="list-group-item">
								 <a href="#/creditCardusagecontrolrequest">
									<span class="pull-right glyphicon glyphicon-chevron-right"></span>
									<h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.ccusagectrl')%></h4>
									<p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.manageccusage')%></p>
								 </a>
							  </li>
						<% }%>
						<% } if(creditManageBene =='Y'){%>
                        <li class="list-group-item">
                           <a href="#/manageBeneficiaryCreditCard">
                              <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                              <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.managebeneficiarycreditcard')%></h4>
                              <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.addeditdeletecreditcards')%></p>
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
                     <li class="list-group-item">
                         <a href="#/autopayregister">
                            <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                            <h4 class="list-group-item-heading"><%-$.i18n.t('app.creditcard.general.autopayregister')%></h4>
                            <p class="list-group-item-text"><%-$.i18n.t('app.creditcard.general.autopayregisterdesc')%></p>
                         </a>
                      </li>
                     </ul>
                  </div>
                  <br/>
   <script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>          