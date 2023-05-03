<%
	var els = new EncryptedLocalStorage('secret');
	var isphone = /iPhone|iPad|Android/.test( navigator.userAgent );
	var touchApp =els.get("touchAllowedForApp");
	var touchUser =els.get("touchAllowedForUser");
	var touchReg=els.get("touchIdReg");
	var bioFlag=els.get("BiometricType");
	console.log("touchReg==="+touchReg);
	console.log("bioFlag==="+bioFlag);
	console.log("touchUser==="+touchUser);
%>

<div class="pagewrapper">
	<h1 class="lgn-logo-finger animation-in">
    	<span></span>
    </h1>
	<div class="loginwrap container" style="height:auto;">
		<div class="abstwrap">
			<div class="abst box6">
				<%if(isphone){%>
					<% if(touchUser !="D") { %>
						<% if(touchReg == "A"){ %>
							<% if(bioFlag=="TID"){ %>
								<a href="javascript:void(0);" id="userloginTouch">
									<span class="menu_icon fingerprint"></span>
								</a>
							<% } else if(bioFlag=="FID") { %>
								<a href="javascript:void(0);" id="userloginTouch">
									<span class="menu_icon faceid"></span>
								</a>
							<% } %>
						<% }else{ %>
								<a href="javascript:void(0);" onclick="navigate()">
									<span class="menu_icon fingerprint"></span>
								</a>
						<% } %>
					<% }else{ %>
							<a href="javascript:void(0);" onclick="navigate()">
								<span class="menu_icon fingerprint"></span>
							</a>
					<% } %>
				<% }else{ %>
					<a href="javascript:void(0);" onclick="navigate()">
						<span class="menu_icon fingerprint"></span>
					</a>
				<% } %>
			</div>
		</div>
        <div class="text-center white-clr">
            <h3>
		<% if(bioFlag=="TID"){ %>
            	<%-$.i18n.t('app.landing.loginusingfingerprint')%>
		<% } else if(bioFlag=="FID"){ %>
				<%-$.i18n.t('app.landing.loginusingfaceid')%>
		<% } %>
            </h3>
        </div><br /><br />
		<div class="row">
			<div class="col-xs-8 col-xs-offset-2">
				<a href="#/login" type="button" class="btn btn-default btn-block">
					<%-$.i18n.t('app.landing.cancel')%>
				</a>
			</div>
		</div>
		<br/>
      <!-- Dynamic Image Banner Wrap  -->
        <!--<div class="dynamic_banner_wrap">
           <img src="images/common/mobile_banner.png" class="img-responsive img-thumbnail" >
        </div>-->
	</div>
</div>
<script>
	function navigate(){
		Backbone.history.navigate("#/login");
	}
</script>