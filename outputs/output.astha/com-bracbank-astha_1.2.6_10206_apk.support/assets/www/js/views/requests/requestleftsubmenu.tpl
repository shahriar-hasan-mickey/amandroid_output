	<%
	var els = new EncryptedLocalStorage('secret'); 
	var billcount = els.get("duebillcount");
var menuVisibilityList =els.get("menuVisibilityList");
var requestCheckBook = 'N';//menuVisibilityList["MTC3023"].menu_status;
var requestApplyPersonal = 'Y';//menuVisibilityList["MTC3025"].menu_status;
var requestApplyCredit ='Y';//menuVisibilityList["MTC3024"].menu_status;
var requestApplyHome = 'Y';//menuVisibilityList["MTC3026"].menu_status;
var requestActivateDebit = 'Y';//menuVisibilityList["MTC3027"].menu_status;
var requestBlockDebit ='Y';//menuVisibilityList["MTC3028"].menu_status;
var requestReadyCash ='Y';//menuVisibilityList["MTC3029"].menu_status;
var additionalaccopening = 'N';//menuVisibilityList["MTC2008"].menu_status;
var isAccountHolder=els.get("isAccountHolder");
var debitcardpos = 'N';//menuVisibilityList["MTC2017"].menu_status;
var debitcardusagectrl = "N";//menuVisibilityList["MTC6666"].menu_status;
%>
<!--Content Starts Here-->
<!--
<a href="#/servicerequest" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  
                  
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequest"><%-$.i18n.t('app.requests.personalfin.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.debitcardpos.managedcacc')%></li>
                  </ol>
 -->                  
               

                    <div class="clearfix"></div>
                    <br/>
					<h3><%-$.i18n.t('app.menu.servicereq')%></h3><br/>
                         <ul class="list-group subNav">
						 <%if(additionalaccopening=='Y' && isAccountHolder == 'Y'){%>
						  <li class="list-group-item">
                             <a href="#/addaccopeningrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.additionalAccount.additionalAccountOpeningMenu')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.additionalAccount.additionalAccountOpeningDesc')%></p>
                             </a>
                          </li>
						  <%}if(debitcardpos=='Y'){%>
                          <li class="list-group-item">
                             <a href="#/debitcardlimitcontrolrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.debitcardpos.debitpossale')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.debitcardpos.debitpossalesub')%></p>
                             </a>
                          </li>
						  <%}if(debitcardusagectrl=='Y'){%>
                          <li class="list-group-item">
                             <a href="#/debitCardusagecontrolrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.debitcardusagectrl.debitcardusgctrl')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.debitcardusagectrl.managedebitcard')%></p>
                             </a>
                          </li>
                        <%}if(requestCheckBook=='Y'){%>
                          <li class="list-group-item">
                             <a href="#/chequebookrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.chequebookreq')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.chequebookreqDesc')%></p>
                             </a>
                          </li>
                          <% } if(requestApplyCredit=='Y'){%>
						  <!--
                          <li class="list-group-item">
                             <a href="#/applynewcreditcardrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.applycreditcard')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.applycreditcardDesc')%></p>
                             </a>
                          </li>
						  -->
                          <% } if(requestApplyPersonal=='Y'){%>
						  <!--
                          <li class="list-group-item">
                             <a href="#/applypersonalfinancerequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.applypersonalfin')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.applypersonalfinDesc')%></p>
                             </a>
                          </li>
						  -->
                          <% } if(requestApplyHome=='Y'){%>
						  <!--
                          <li class="list-group-item">
                             <a href="#/applyhomefinancerequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.applyhomefin')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.applyhomefinDesc')%></p>
                             </a>
                          </li>
						  -->
                         <% } if(requestReadyCash=='Y'){%>
                           <!--  <li class="list-group-item">
                             <a href="#/applyreadycashrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.applyreadycash')%></h4>
                               <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.applyreadycashDesc')%></p>
                             </a>
                          </li>-->
                         <% } if(requestActivateDebit=='Y'){%>
                          <!--<li class="list-group-item">
                             <a href="#/activatedebitcardrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.debitcardactivate')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.debitcardactivateDesc')%></p>
                             </a>
                          </li>-->
                         <% } if(requestBlockDebit=='Y'){%>
                          <!--<li class="list-group-item">
                             <a href="#/blockdebitcardrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.debitcardblock')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.debitcardblockDesc')%></p>
                             </a>
                          </li>-->
                        
						<% }%>
						<li class="list-group-item">
                             <a href="#/chequebookrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.reorderchequebookreq')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.reorderchequebookreqDesc')%></p>
                             </a>
                          </li>
						 <li class="list-group-item">
                             <a href="#/cancelchequebookrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.cancelchequebookreq')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.cancelchequebookreqDesc')%></p>
                             </a>
                          </li>
						  <!--<li class="list-group-item">
                             <a href="#/stopchequebookrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.stopchequebook')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.stopchequebookdesc')%></p>
                             </a>
                          </li>-->
                          <li class="list-group-item">
                             <a href="#/stopatmcardrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.stopatmcard')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.stopatmcarddesc')%></p>
                             </a>
                          </li>
                          <li class="list-group-item">
                             <a href="#/stopcreditcardrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.stopcreditcard')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.stopcreditcarddesc')%></p>
                             </a>
                          </li>
                         <!--  <li class="list-group-item">
                             <a href="#/tdinterestcertificaterequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.tdintcertificate')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.tdintcertificatedesc')%></p>
                             </a>
                          </li>
                         <li class="list-group-item">
                             <a href="#/internationalcardusge">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.internationalcardusage')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.internationalcardusgnrlreq')%></p>
                             </a>
                          </li>
                          -->
                     </ul>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>
