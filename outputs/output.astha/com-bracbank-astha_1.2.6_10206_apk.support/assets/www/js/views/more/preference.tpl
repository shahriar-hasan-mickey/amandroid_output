<%
	var els = new EncryptedLocalStorage('secret');
	//var MPIN_FLAG = els.get("MPINFLAG");
	var MPIN_FLAG=els.get("mpinStatus");
	var mpincheck = els.get("mpincheck_server");
	var iOS = /iPhone|iPod/.test( navigator.userAgent );
	//iOS=true;
	var touchLogin=els.get("isTouchLogin");
	MPIN_FLAG =(iOS && touchLogin == "Y") ? "N" :MPIN_FLAG;
	var touchApp =els.get("touchAllowedForApp");
	var touchReg=els.get("touchIdReg");
	var bioFlag=els.get("BiometricType");
	var menuVisibilityList =""; //els.get("menuVisibilityList");
var preChangePassword ='Y'; //menuVisibilityList["MTC3041"].menu_status;
var preChangeMpin = els.get("MPINChanges");  //menuVisibilityList["MTC3042"].menu_status;
var preChangeTouchID = (touchApp == "Y" && touchReg =="A" )?"Y":"N";
var preChangeLanguage ='N'; //menuVisibilityList["MTC3043"].menu_status;
var preEnableOtp = 'N'; //menuVisibilityList["MTC3044"].menu_status;
var preMenuSettings ='N';  //menuVisibilityList["MTC3046"].menu_status;
var preProfileUpdate ='Y';// menuVisibilityList["MTC3045"].menu_status;
var preChangeTheme ='N'; //menuVisibilityList["MTC3047"].menu_status;
var preChangePushNotify ='N';//menuVisibilityList["MTC3048"].menu_status;
var preChangeProximityPush ='N';//menuVisibilityList["MTC3049"].menu_status;

%>
<h3><%-$.i18n.t('app.more.general.preferences')%></h3>
<ul class="list-group subNav">
	<%if(preChangePassword=="Y"){%>
	<li class="list-group-item">
		<a href="#/changePassword">
			<span class="pull-right glyphicon glyphicon-chevron-right"></span>
			<h4 class="list-group-item-heading"><%-$.i18n.t('app.more.preference.changepassword')%></h4>
			<p class="list-group-item-text"><%-$.i18n.t('app.more.preference.changepasswordDesc')%></p>
		</a>
	</li>
	<% } if(preChangeMpin=="Y"){%>
		<li class="list-group-item">
			<a href="#/changeMpin">
				<span class="pull-right glyphicon glyphicon-chevron-right"></span>
				<h4 class="list-group-item-heading"><%-$.i18n.t('app.more.preference.changempin')%></h4>
				<p class="list-group-item-text"><%-$.i18n.t('app.more.preference.changempinDesc')%></p>
			</a>
		</li>
	<% } if(preChangeTouchID=="Y"){%>
	<li class="list-group-item">
		<a href="#/changetouchid">
			<span class="pull-right glyphicon glyphicon-chevron-right"></span>
			<% if(bioFlag=="TID"){ %>
				<h4 class="list-group-item-heading"><%-$.i18n.t('app.touchid.changeTouchID')%></h4>
				<p class="list-group-item-text"><%-$.i18n.t('app.touchid.changeTouchIDDesc')%></p>
			<% }else if(bioFlag=="FID"){ %>
				<h4 class="list-group-item-heading"><%-$.i18n.t('app.faceid.changeFaceID')%></h4>
				<p class="list-group-item-text"><%-$.i18n.t('app.faceid.changeFaceIDDesc')%></p>
			<% } %>
		</a>
	</li>
	<% } if(preChangeLanguage=="Y"){%>
	<li class="list-group-item">
		<a href="#/changeLanguage">
			<span class="pull-right glyphicon glyphicon-chevron-right"></span>
			<h4 class="list-group-item-heading"><%-$.i18n.t('app.more.preference.changelanguage')%></h4>
			<p class="list-group-item-text"><%-$.i18n.t('app.more.preference.changelanguageDesc')%></p>
		</a>
	</li>
	<% } if(preEnableOtp=="Y"){%>
	<% if(MPIN_FLAG=="0" || MPIN_FLAG=="00") { %>
			<li class="list-group-item">
			<a href="#/otpUpdates">
				<span class="pull-right glyphicon glyphicon-chevron-right"></span>
				<h4 class="list-group-item-heading"><%-$.i18n.t('app.more.preference.enableotp')%></h4>
				<p class="list-group-item-text"><%-$.i18n.t('app.more.preference.enableotpDesc')%></p>
			</a>
		</li>
	<%}%>
	<% } if(preProfileUpdate=="Y"){%>
	<li class="list-group-item">
		<a href="#/viewProfile">
			<span class="pull-right glyphicon glyphicon-chevron-right"></span>
			<h4 class="list-group-item-heading"><%-$.i18n.t('app.more.preference.customerprofile')%></h4>
			<p class="list-group-item-text"><%-$.i18n.t('app.more.preference.customerprofileDesc')%></p>
		</a>
	</li>
	<% } if(preMenuSettings=="Y"){%>
	<!-- ================Menu Settingd=========================== -->
	<li class="list-group-item">
		<a href="#/menuSettings">
			<span class="pull-right glyphicon glyphicon-chevron-right"></span>
			<h4 class="list-group-item-heading"><%-$.i18n.t('app.more.preference.menuSettings')%></h4>
			<p class="list-group-item-text"><%-$.i18n.t('app.more.preference.menuSettingsDesc')%></p>
		</a>
	</li>
	<% } %>
	<!-- ================Change Theme=========================== -->
	<%if(preChangeTheme=="Y"){%>
		<li class="list-group-item">
			<a href="#/changetheme">
				<span class="pull-right glyphicon glyphicon-chevron-right"></span>
				<h4 class="list-group-item-heading"><%-$.i18n.t('app.more.preference.changetheme')%></h4>
				<p class="list-group-item-text"><%-$.i18n.t('app.more.preference.changethemeDesc')%></p>
			</a>
		</li>
	<%}%>
	<!-- ================Change Push Notify=========================== -->
	<%if(preChangePushNotify=="Y"){%>
		<% if(MPIN_FLAG=="0" || MPIN_FLAG=="00") { %>
		<li class="list-group-item">
			<a href="#/changePushNotify">
				<span class="pull-right glyphicon glyphicon-chevron-right"></span>
				<h4 class="list-group-item-heading"><%-$.i18n.t('app.more.pushNotification.pushNotifyTitle')%></h4>
				<p class="list-group-item-text"><%-$.i18n.t('app.more.pushNotification.pushNotifyDesc')%></p>
			</a>
		</li>
		<%}%>
	<%}%>
	<!-- ================Change Proximity Push Notify=========================== -->
	<!--
	<%if(preChangeProximityPush=="Y"){%>
		<% if(MPIN_FLAG=="0" || MPIN_FLAG=="00") { %>
		<li class="list-group-item">
			<a href="#/changeProximityPush">
				<span class="pull-right glyphicon glyphicon-chevron-right"></span>
				<h4 class="list-group-item-heading"><%-$.i18n.t('app.more.pushNotification.proximityPushTitle')%></h4>
				<p class="list-group-item-text"><%-$.i18n.t('app.more.pushNotification.proximityPushDesc')%></p>
			</a>
		</li>
		<%}%>
	<%}%>
	-->
</ul>
