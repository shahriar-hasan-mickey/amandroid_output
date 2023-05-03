<%
var els = new EncryptedLocalStorage('secret');
var menuVisibilityList =els.get("menuVisibilityList");
var redemptionOfPoints = menuVisibilityList["MTC9001"].menu_status;
var enquiryOfPoints = menuVisibilityList["MTC9002"].menu_status;
var statementOfPoints = menuVisibilityList["MTC9003"].menu_status;
%>
    
      <h3><%-$.i18n.t('app.tedallalrewards.rewardsprogram')%></h3>
      <div class="transfers">
         <ul class="list-group subNav">
         <%if(redemptionOfPoints=='Y'){%>
           <li class="list-group-item">
               <a href="#/redemofpoints">
                  <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                  <h4 class="list-group-item-heading"><%-$.i18n.t('app.tedallalrewards.redemptionofpoints')%></h4>
               </a>
            </li>
         <% } if(enquiryOfPoints=='Y'){%>
            <li class="list-group-item">
               <a href="#/enquiryofpoints">
                  <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                  <h4 class="list-group-item-heading"><%-$.i18n.t('app.tedallalrewards.enquiryofpoints')%></h4>
               </a>
            </li>
           <% } if(statementOfPoints=='Y'){%>    
            <li class="list-group-item">
               <a href="#/stmtofpts">
                  <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                  <h4 class="list-group-item-heading"><%-$.i18n.t('app.tedallalrewards.stmtofpoints')%></h4>
               </a>
            </li>
            <% } %>
         </ul>
      </div>
      <br/>
             