	<%
	var els = new EncryptedLocalStorage('secret'); 
	var billcount = els.get("duebillcount");
var menuVisibilityList =els.get("menuVisibilityList");
var menuVisibilityList =els.get("menuVisibilityList");
var estatementsubscription = menuVisibilityList["MTC9011"].menu_status;
var estatementsummary = menuVisibilityList["MTC9012"].menu_status;
var stopmailflag= els.get("stopmailflag");
%>
<!--Content Starts Here-->
	<h3><%-$.i18n.t('app.more.general.viewestatement')%></h3>
                         <ul class="list-group subNav">
                       <%if(estatementsubscription=='Y'){%>
		                       	<%if(stopmailflag=="NO"){%>
				                       	<% console.log("inside if"); %>
				                          <li class="list-group-item">
				                             <a href="#/estatementsubscription">
				                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
				                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.estatement.estatementsubscription')%></h4>
				                             </a>
				                          </li>
		                          <% }%>
		                <% }%>           
		                <%if(estatementsummary=='Y'){%>
		                		<%if(stopmailflag=="YES"){%>
				                          <li class="list-group-item">
				                             <a href="#/estatementsummary">
				                                <span class="pull-right glyphicon glyphicon-chevron-right"></span>
				                                <h4 class="list-group-item-heading"><%-$.i18n.t('app.more.estatement.estatementsummary')%></h4>
				                             </a>
				                          </li>
                       			<%}%>
                       	<%}%>
                     </ul>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>