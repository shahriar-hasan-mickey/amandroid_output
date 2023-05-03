	<%
	var els = new EncryptedLocalStorage('secret'); 
	var billcount = els.get("duebillcount");
var menuVisibilityList ='Y';//els.get("menuVisibilityList");
var requestCheckBook = 'Y';//menuVisibilityList["MTC3023"].menu_status;
var requestApplyPersonal = 'Y';//menuVisibilityList["MTC3025"].menu_status;
var requestApplyCredit ='Y';//menuVisibilityList["MTC3024"].menu_status;
var requestApplyHome = 'Y';//menuVisibilityList["MTC3026"].menu_status;
var requestActivateDebit = 'Y';//menuVisibilityList["MTC3027"].menu_status;
var requestBlockDebit ='Y';//menuVisibilityList["MTC3028"].menu_status;
var requestReadyCash ='Y';//menuVisibilityList["MTC3029"].menu_status;
var additionalaccopening = 'Y';//menuVisibilityList["MTC3023"].menu_status;
var requestDbMenu = 'Y';//menuVisibilityList["MTC3023"].menu_status;
%>
<!--Content Starts Here-->
	<h3><%-$.i18n.t('app.more.general.servrequests')%></h3><br/>
                         <ul class="list-group subNav">
						 
						  <%if(requestDbMenu=='Y'){%>
						  <!--
                          <li class="list-group-item">
                             <a href="#/servicerequestmenu">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.debitcardpos.managedcacc')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.debitcardpos.managedcaccsub')%></p>
                             </a>
                          </li>
			  -->
						  <%}if(requestDbMenu=='Y'){%>
						  <!--
                          <li class="list-group-item">
                             <a href="#/managecreditcardsubmenu">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.debitcardpos.managecreditcard')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.debitcardpos.managecreditcardsub')%></p>
                             </a>
                          </li>
						  -->
						  <%}if(requestApplyCredit=='Y'){%>
                          <li class="list-group-item">
                             <a href="#/applynewcreditcardrequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.applycreditcard')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.applycreditcardDesc')%></p>
                             </a>
                          </li>
                          <% } if(requestApplyPersonal=='Y'){%>
                          <li class="list-group-item">
                             <a href="#/applypersonalfinancerequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.applypersonalfin')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.applypersonalfinDesc')%></p>
                             </a>
                          </li>
                          <% } if(requestApplyHome=='Y'){%>
                          <li class="list-group-item">
                             <a href="#/applyhomefinancerequest">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.requests.landing.applyhomefin')%></h4>
                                <p class="list-group-item-text"><%-$.i18n.t('app.requests.landing.applyhomefinDesc')%></p>
                             </a>
                          </li>
                         
						  <% } %>
                     </ul>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>