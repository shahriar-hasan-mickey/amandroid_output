<%
var els = new EncryptedLocalStorage('secret');
var backOption = els.get("backReqFromEmail");
els.set("currentPage","transferConfirm");
%>
  	 <%if(emailmodule!=""){%>
            		<h3>  <%-emailmodule%> </h3>
     <%}%>       		
  	 <div class="alert alert-success text-center">
  	  	<h4><%-$.i18n.t('app.product.general.emailsuccessmsg')%>  </h4>
            	 <%if(ftno!=""){%>
            	 	<p><%-$.i18n.t('app.product.general.ftrefno')%>   <%-ftno%></p>
            	 <%}else{%>
            	 	<p><%-$.i18n.t('app.product.general.ftrefno')%>   </p>
            	 <%}%>
            	 	<!--<p><%-$.i18n.t('app.product.general.emailid')%>   </p>-->
  	  </div>
<% if(backOption=="9") { %>
	 <a href="#/standingInstruction" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% }else { %>
	 <a href="#/transfer" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>
<% } %> 