<%
var els = new EncryptedLocalStorage('secret');
var allow =els.get("allowAppAccessFlag"); 
var notConfirm =els.get("allowOnConfirmAppAccessFlag"); 
var jailBroken = els.get("ifdevicejailBroken");
var connectionnotsecure = els.get("connectionnotsecure");
var connectionfailed = els.get("connectionfailed");

%>
<body class="loginbg">
	<div  class="pagewrapper">
		<div class="container">
			<h1 class="lgn-logo"><span></span></h1>						
				<form method="post" id="loginform" name="loginform">
					<fieldset>
						<div class="alert alert-danger text-center"> 
							<h4><%-$.i18n.t("app.login.nointernet2")%></h4>
						</div> 
						<a href="" id="logoutapp" class="btn btn-primary btn-block"> <%-$.i18n.t('app.login.backtohome')%></a>
					</fieldset>
				</form>
			</div>
    	</div>
</body>
