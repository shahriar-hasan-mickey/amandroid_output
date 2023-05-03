<%
var els = new EncryptedLocalStorage('secret');
var allow =els.get("allowAppAccessFlag");
var allow1 =els.get("allowAppAccessFlag1");  
var notConfirm =els.get("allowOnConfirmAppAccessFlag"); 
var jailBroken = els.get("ifdevicejailBroken");
%>
<body class="loginbg">
	<div  class="pagewrapper">
		<div class="container">
			<h1 class="lgn-logo"><span></span></h1>
				<form method="post" id="loginform" name="loginform" action="#">
					<fieldset>
						<div class="alert alert-danger text-center"> 
						<% if(jailBroken == "true") { %>
							<h4><%-$.i18n.t("app.login.rootedDeviceMsg")%></h4>
						<% } else if(allow1 == "unknown") { %>
							<h4><%-$.i18n.t('app.login.nointernet1')%></h4>
						<% } else { %>
							<h4><%-$.i18n.t("app.login.appserverchck")%></h4>
						<% } %>
						</div> 
						<a href="" id="logoutapp" class="btn btn-primary btn-block"> <%-$.i18n.t('app.login.backtohome')%></a>
					</fieldset>
			    </form>		   
        	</div>
    	</div>
</body>