<%
var els = new EncryptedLocalStorage('secret');
var error_Code = els.get("errorCode");
if(error_Code!=9999 && error_Code!=null) {
	els.set("isSecureAccess", "true");
}
%>
<body class="loginbg">
	<div  class="pagewrapper">
		<div class="container">
            <div class="row ">
				<div class="col-sm-6">
				<h1 class="lgn-logo"><span></span></h1>
				<form method="post" id="loginform" name="loginform" action="#">
					<fieldset>
							<div class="alert alert-danger text-center">
					<%if(errordesc!=''&&errordesc!=undefined&&errordesc!=null){%>															
							<h4 style="word-wrap: break-word;"><%-errordesc%></h4>
					<%}else{%>
					<h4><%-$.i18n.t('app.login.nointernet')%></h4>
					<%}%>
							</div> 
							<% if(error_Code=="30012") {%>
								<input type="button" id="logoutapp" name="logoutapp" class="btn btn-primary btn-block" value="<%-$.i18n.t('app.login.activate')%>">
							<% } else { %>
									<% if(els.get("isSecureAccess") == "true") {%>
										<input type="button" id="resetsecureaccess" name="resetsecureaccess" class="btn btn-success btn-block" value="<%-$.i18n.t('app.login.resetsecaccesslink')%>">
									<%}%>
									<input type="button" id="logoutapp" name="logoutapp" class="btn btn-primary btn-block" value="<%-$.i18n.t('app.login.backtohome')%>">
							<% } %>
					</fieldset>
				</form>
		    </div>
        </div><!-- row ends here-->
    </div>
</div>
</body>