<%
	var els = new EncryptedLocalStorage('secret');
	var errorcode = els.get("errorcode");
	var errorDesc = els.get("errordesc");
%>
<body>
<div  class="pagewrapper">
	<div class="container">
		<div class="row ">
			<div class="col-sm-6">
				<h1 class="lgn-logo"><span></span></h1>
					<form method="post" id="loginform" name="loginform" action="#">
						<fieldset>
							<div class="alert alert-danger text-center"> 
							<h4 style="word-wrap: break-word;"><%-errorDesc%></h4>
							</div> 
							<input type="button" id="logoutapp" name="logoutapp" class="btn btn-primary btn-block" value="<%-$.i18n.t('app.login.backtohome')%>">
							<!-- <a href="#/login" id="logoutapp" class="btn btn-primary btn-block"> <%-$.i18n.t('app.login.backtohome')%></a> -->
						</fieldset>
					</form>
				</div>
			</div><!-- row ends here-->
		</div>
	</div>
</body>
<script>
$(document).ready(function(){
	$("body").removeClass().addClass("loginbg");
});
</script>