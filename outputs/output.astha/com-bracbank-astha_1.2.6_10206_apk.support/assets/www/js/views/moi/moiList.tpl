<%
var els = new EncryptedLocalStorage('secret'); 
var menuVisibilityList =els.get("menuVisibilityList");
var paymentsFlag = menuVisibilityList["MTC1022"].menu_status;
var refundFlag = menuVisibilityList["MTC2051"].menu_status;
%>
                  <h3><%-$.i18n.t('app.moi.general.title')%></h3>
                  <ul class="list-group subNav">
                  <% if(paymentsFlag == "Y" ) { %>
                     <li class="list-group-item">
                        <a href="#/moipayments">
                           <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                           <h4 class="list-group-item-heading"><%-$.i18n.t('app.moi.general.moipayments')%></h4>
                           <p class="list-group-item-text"><%-$.i18n.t('app.moi.general.moipaymentsDesc')%></p>
                        </a>
                     </li>
                   <% } if(refundFlag == "Y" ) { %>
                     <li class="list-group-item">
                        <a href="#/moirefunds">
                           <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                           <h4 class="list-group-item-heading"><%-$.i18n.t('app.moi.general.moirefunds')%></h4>
                           <p class="list-group-item-text"><%-$.i18n.t('app.moi.general.moirefundsDesc')%></p>
                        </a>
                     </li>
                    <% } %>
                  </ul>
                  <br/>
              