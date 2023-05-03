<%
	var els = new EncryptedLocalStorage('secret'); 
	var billcount = els.get("duebillcount");
	var menuVisibilityList =els.get("menuVisibilityList");
var iposubscription = menuVisibilityList["MTC9021"].menu_status;
var ipoenquiry = menuVisibilityList["MTC9022"].menu_status;
%>
<!--Content Starts Here-->
	<h3><%-$.i18n.t('app.more.general.ipo')%></h3>
                         <ul class="list-group subNav">
 					<%if(iposubscription=='Y'){%>
                           <li class="list-group-item">
                             <a href="#/iposubscription">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.investmentipo.iposubscription')%></h4>
                             </a>
                          </li>
                      <% } if(ipoenquiry=='Y'){%>
                          <li class="list-group-item">
                             <a href="#/ipoenquiry">
                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.investmentipo.ipoenquiry')%></h4>
                             </a>
                          </li>
                           <% } %>
                     </ul>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>