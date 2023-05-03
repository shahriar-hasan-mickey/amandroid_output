<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccounts = getAccountDTO();
	console.log("unreadMsgCount",els.get("unreadMsgCount"));
%>
<div class="pagewrapper">	
    <aside class="mainnav" id="mnutogglediv">
        <div class="text-center userInfo">
            <div>
              <img src="images/common/user_default1.png" class="profPic img-circle"> 
            </div>
            <div>
              <p class="profilename"></p>
              <p class="small info" >Last login: <span id="lastlogin"></span></p>
			<p class="small info fail" >Last failure login: <span id="lastfaillogin"></span></p>
            </div>            
        </div>
		<nav>
			<ul>
      			<li class="active"><a href="#/wealth" id="dashboard"><span class="ico dashboard"></span><%-$.i18n.t('app.wealth.menu')%></a></li>
      			<li class="" data-toggle="collapse" href="#accounts" id="subNav" aria-expanded="false" aria-controls="accounts"><a href="javascript:void(0);"><span class="ico account"></span><%-$.i18n.t('app.menu.products')%></a></li>        
      			<ul class="collapse" id="accounts">
        			<li><a href="javascript:void(0);" id="slide_out_savings"><%-$.i18n.t('app.wealth.accounts')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_deposits"><%-$.i18n.t('app.wealth.termdeposit')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_creditcard"><%-$.i18n.t('app.wealth.creditcard')%></a></li>
					<li><a href="javascript:void(0);" id="slide_out_prepaidcard"><%-$.i18n.t('app.wealth.prepaidcard')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_loan"><%-$.i18n.t('app.wealth.loans')%></a></li>
      			</ul>
      			<li><a href="javascript:void(0);" id="slide_out_statementCertificate"><span class="ico statement_cert"></span>Statement &amp; Certificates</a></li>
      			<li><a href="javascript:void(0);" id="slide_out_transfers"><span class="ico transfer"></span><%-$.i18n.t('app.wealth.transfers')%></a></li>
      			<li class="scan_pay" id="slide_out_qrcode" aria-controls="qrcode"><a href="javascript:void(0);"><span class="ico qrcode"></span><%-$.i18n.t('app.qrcode.scanandpay')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_positivePay"><span class="ico positive_pay"></span>Positive Pay</a></li>
      			<li><a href="javascript:void(0);" id="slide_out_billpay"><span class="ico billpay"></span><%-$.i18n.t('app.wealth.billandfee')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_managebene"><span class="ico beneficiary"></span><%-$.i18n.t('app.wealth.benemanagement')%></a></li>
				<li><a href="javascript:void(0);" id="slide_out_transactions"><span class="ico transactions"></span><%-$.i18n.t('app.wealth.transactions')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_transferlimit"><span class="ico transferLimit"></span><%-$.i18n.t('app.more.general.transferlimit')%></a></li>
      			<!--<li><a href="javascript:void(0);" id="manage_biller"><span class="ico managebiller"></span><%-$.i18n.t('app.wealth.managebillers')%></a></li>-->
      			<li><a href="javascript:void(0);" id="slide_out_services"><span class="ico service"></span><%-$.i18n.t('app.wealth.servicereq')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_user_settings"><span class="ico settings"></span><%-$.i18n.t('app.wealth.usersettings')%></a></li>
      			<!--<li><a href="javascript:void(0);"><span class="ico upcoming"></span><%-$.i18n.t('app.wealth.payreminder')%></a></li>-->
      			<li><a href="javascript:void(0);" id="slideout_more"><span class="ico more"></span><%-$.i18n.t('app.wealth.moreoptions')%></a></li>
				<li><a href="javascript:void(0);" id="slideout_contact" onclick="postLogRedir()"><span class="ico contacts"></span>Contact Us</a></li>  
      			<li><a href="javascript:void(0);" id="logout" class="btn-logout"><span class="ico logout"></span><%-$.i18n.t('app.wealth.logout')%></a></li>
			</ul>
    	</nav>
	</aside>
	<div id="ovrlay"></div>
	<header	class="appheader">
	    <div class="headerLeft">
	        <button type="button" id="mnutoggle" class="btn btn-default mnutoggle">
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	        </button>
	    </div>
	      <div class="headerMiddle text-center">
			<h4 class="p10"><%-$.i18n.t('app.wealth.menu')%></h4>
			<% if(!isNull(getAdvertisementDTO().advertisement) && getAdvertisementDTO().advertisement.length > 0) { %>
				<div class="offer_banner">
					<button class="offer-btn" data-toggle="modal" data-target="#offer_pop" type="button">
						<%-$.i18n.t('app.wealth.offersLabel')%>
						<span class="caret"></span>
					</button>	 
				</div>
			<% } %>
		</div>	    
	    <div class="headerRight">
			<a href="javascript:void(0);" class="btn-right notifications" id="pushNotifications">
				<i class="fa fa-bell" aria-hidden="true"></i>
				<span class="badge" id="push_count"></span>
			</a>
	        <!--<button class="btn-right"><i class="fa fa-bell" aria-hidden="true"></i></button>-->
	    </div>
	  </header>	
		<div class="bodywrapper">
			<div class="contentwrap">
		        <section class="content">
		            <div class="userInfo">
		              <div class="media">
		                  <div class="media-left">
		                      <img src="images/common/user_default1.png" class="profPic img-circle"/>
		                  </div>
		                  <div class="media-body">
		                      <p class="m0"><small><%-$.i18n.t('app.login.welcometxt')%></small></p>
		                      <strong class="profilename"></strong>
							  <div id="viewOnlyModeDiv"></div>
		                  </div>
		              </div>
					  <div id="activateNewCardDiv"></div>
		          	</div>
                    <div class="dashTab">
	                	<ul class="nav nav-tabs" role="tablist">
	                        <li role="presentation" class="active"><a href="javascript:void(0);" id="accounts_tab"><%-$.i18n.t('app.wealth.accounts')%></a></li>
							<li role="presentation"><a href="javascript:void(0);" id="termdeposit_tab"><%-$.i18n.t('app.wealth.termdeposit')%></a></li>
	                        <li role="presentation"><a href="javascript:void(0);" id="creditcard_tab"><%-$.i18n.t('app.wealth.creditcard')%></a></li>
							<li role="presentation"><a href="javascript:void(0);" id="prepaidcard_tab"><%-$.i18n.t('app.wealth.prepaidcard')%></a></li>
	                        <li role="presentation"><a href="javascript:void(0);" id="loan_tab"><%-$.i18n.t('app.wealth.loans')%></a></li>
	                    </ul>
						<br/>
    					<div id="casaDetails"></div>
                    </div><!-- / portTab-->
					<br/>
    				<br/>
    				<!--<div class="row" id="deposits_add_btn_div">
						<a href="javascript:void(0);" id="apply_deposits" alt="Add Beneficiary" class="add_btn_float">
							<i class="fa fa-plus" aria-hidden="true"></i> <span class="scrollviewbtn" id="add_deposit_btn"><%-$.i18n.t('app.wealth.termdeposit')%></span>
						</a> 
					</div>-->
					<div class="dashboard_spacer"></div>
        	</section>
		</div>
    </div>
	<div class="footMenu">
	      <a href="javascript:void(0);" class="scan_pay mid_menu"><span class="menu_icon ico-xs qrcode"></span>QR</a>
	      <a href="javascript:void(0);"><span class="menu_icon ico-xs bkash" id="footerMenu_bKash"></span>bKash Pay</a>
	      <a href="javascript:void(0);"><span class="menu_icon ico-xs mobile" id="footerMenu_MobileTopup"></span>Mobile Top Up</a>
	      <a href="javascript:void(0);"><span class="menu_icon ico-xs bpay" id="footerMenu_billPay"></span><%-$.i18n.t('app.wealth.billpay')%></a>
	      <a href="javascript:void(0);" class="active"><span class="menu_icon ico-xs credit_pay" id="footerMenu_ccPay"></span>Credit Card Pay</a>
	      <a href="javascript:void(0);"><span class="menu_icon ico-xs transfer" id="footerMenu_transfer"></span><%-$.i18n.t('app.wealth.fntransfer')%></a>
 		  <a href="javascript:void(0);"><span class="menu_icon ico-xs open_deposit" id="footerMenu_ApplyDeposit"></span>Open FDR/DPS</a>
	      <a href="javascript:void(0);" id="footerMenu_getCertificate" class="active newribbon"><span class="menu_icon ico-xs statement_cert" ></span>Get Certificate</a>
	      <a href="javascript:void(0);" id="footerMenu_BBLApps" class="active newribbon"><span class="menu_icon ico-xs BBLapps"></span>BBL Apps</a> 
	</div>		
	<div class="area">
		<ul class="circles">
	    	<li></li>
	        <li></li>
	        <li></li>
	        <li></li>
	        <li></li>
	        <li></li>
	        <li></li>
	        <li></li>
	        <li></li>
	        <li></li>
	        <li></li>
	      </ul>
    </div>
</div>
<div class="dash_offers_popup"></div>
<script>
$(document).ready(function() {
	els.set("isLogin", true);
	if(!isNull(getAdvertisementDTO().advertisement) && getAdvertisementDTO().advertisement.length > 0) {
		loadOffersPopUp();
		console.log("isFromLogin",els.get("isFromLogin"));
		if(els.get("isFromLogin") == "true") {
			$("#offer_pop").modal("show");
			els.set("isFromLogin","false");
		}
		
	}
});
</script>
<script>
(function ($){
     $.fn.inputalphanumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          var allowedTest = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890\()., ";					
		  var orignalValue=$(this).val();
		  for(var i=0;i<orignalValue.length;i++) {
		  	var atchar = orignalValue[i];
			if(allowedTest.indexOf(atchar) != -1) {
			} else {
				var changeTest =orignalValue.substr(0,i);
				orignalValue=changeTest;
			}
		   }
			$(this).val(orignalValue);
			if(makelength!=""){
	             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
	                e.preventDefault();
	               return false;
	             }
	          }
          });
        });
     };
}(jQuery));
$('.inputlengthcontrol').inputalphanumericlength();
</script>
