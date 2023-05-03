<%
	var els = new EncryptedLocalStorage('secret');
	if(els.get("downtimeTransType") == "bKashPullMoney") {
	   	downtimeNotification = els.get("bKashPullMoneydowntimeNotification");
  	} else {
	   	downtimeNotification = els.get("downtimeNotification");
   	}
	//var downtimeNotification = els.get("downtimeNotification");
	if(!isNull(downtimeNotification) && downtimeNotification.length>0){
	var downtimeNotificationDetail = downtimeNotification[0].downtimeNotificationDetail;	
	}
	console.log("downtimeTransType",els.get("downtimeTransType"));
	console.log("isDowntimeTransfer",els.get("isDowntimeTransfer"));
	
%>
<div class="pagewrapper" id="appwrapper" >
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
	<header class="appheader">
  		<div class="headerLeft">
    		<button type="button" id="mnutoggle" class="btn btn-default mnutoggle">
      			<span class="icon-bar"></span>
      			<span class="icon-bar"></span>
      			<span class="icon-bar"></span>
    		</button>
    		<% if(els.get("isDowntimeTransfer") == "Y" && els.get("downtimeTransType") != "CC_PAYMENT" && els.get("downtimeTransType") != "bKashQR" && els.get("downtimeTransType") != "qrPayment" && els.get("downtimeTransType") != "FDR_Encashment" && els.get("downtimeTransType") != "bKashPullMoney" && els.get("downtimeTransType") != "RewardPoints_Transaction" && els.get("downtimeTransType") != "RewardPoints_AnnualFee" ) {  %>
    			<% if(els.get("isBeneAllDown") == "Y" || els.get("isOneOffAllDown") == "Y" || els.get("isNPSBOnlyDown") == "Y") { %>
    				<a href="#/otherbankselectbeneficiary" class="bacArr">
    			<% } else {%>
    				<a href="#/transfer" class="bacArr">
    			<% } %>
    		<%  } else if(els.get("isDowntimeTransfer") == "N" && els.get("downtimeTransType") != "CC_PAYMENT" && els.get("downtimeTransType") != "bKashQR" && els.get("downtimeTransType") != "qrPayment" && els.get("downtimeTransType") != "FDR_Encashment" && els.get("downtimeTransType") != "bKashPullMoney" && els.get("downtimeTransType") != "RewardPoints_Transaction" && els.get("downtimeTransType") != "RewardPoints_AnnualFee") { %>
    			<a href="#/viewbillpaylists" class="bacArr">
    		<% } else if(els.get("isDowntimeTransfer") == "N" && els.get("downtimeTransType") == "CC_PAYMENT") { %>
    			<a href="#/billpay" class="bacArr">
    		<% } else if( els.get("isDowntimeTransfer") == "N" && els.get("downtimeTransType") == "bKashQR") {  %>
    			<a href="#/wealth" class="bacArr">
			<% } else if( els.get("isDowntimeTransfer") == "N" && els.get("downtimeTransType") == "qrPayment") {  %>
    			<a href="#/wealth" class="bacArr">
		<% } else if(els.get("isDowntimeTransfer") == "N" && els.get("downtimeTransType") == "FDR_Encashment") { %>
    			<a href="#/servicerequest" class="bacArr">  
			<% } else if(els.get("isDowntimeTransfer") == "N" && els.get("downtimeTransType") == "bKashPullMoney") { %>
    			<a href="#/transfer" class="bacArr">    		
			<% } else if(els.get("isDowntimeTransfer") == "N" && els.get("downtimeTransType") == "RewardPoints_AnnualFee") { %>
    			<a href="#/rewardponitssummary/<%- els.get("creditCardId")%>" class="bacArr">    
			<% } else if(els.get("isDowntimeTransfer") == "N" && els.get("downtimeTransType") == "RewardPoints_Transaction") { %>
    			<a href="#/rewardponitssummary/<%- els.get("creditCardId")%>" class="bacArr">    
    		<% } %>
        		<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<div class="headerMiddle">
  			<% if(els.get("downtimeTransType") == "WITHIN") { %>
    			<h4 class="p4">Within BRAC Bank<p class="small">(Fund Transfers)</p></h4>
			<% } else if(els.get("downtimeTransType") == "OTHERBANK") { %>
				<h4  class="p4"><%-$.i18n.t('app.transferss.payotherbanks')%><p class="small"><%-$.i18n.t('app.transferss.paymentran')%></p></h4>
			<% } else if(els.get("downtimeTransType") == "OWNACCOUNT") { %>
				<h4  class="p4"><%-$.i18n.t('app.transferss.paymybblacc')%><p class="small"><%-$.i18n.t('app.transferss.paumenttrans')%></p></h4>
			<% } else if(els.get("downtimeTransType") == "WALLET") { %>
				<h4  class="p4">Pay <%- els.get("walletType")%><p class="small">(Fund Transfer)</p></h4>
			<% } else if(els.get("downtimeTransType") == "BILLPAY") { %>
				<h4  class="p10">Pay <%- els.get("selectedBillerListName")%></h4>	
			<% } else if(els.get("downtimeTransType") == "CC_PAYMENT") { %>
				<h4  class="p10"><%-$.i18n.t('app.transferss.cardpayment')%></h4>	
			<% } else if(els.get("downtimeTransType") == "bKashQR") { %>
				<h4  class="p10"><%-$.i18n.t('app.qrcode.qrpaymentdetails')%></h4>	
			<% } else if(els.get("downtimeTransType") == "qrPayment") { %>
				<h4  class="p10"><%-$.i18n.t('app.qrcode.qrpaymentdetails')%></h4>	
			<% } else if(els.get("downtimeTransType") == "FDR_Encashment") { %>
				<h4  class="p10">FDR Encashment</h4>
			<% } else if(els.get("downtimeTransType") == "bKashPullMoney") { %>
				<h4  class="p10">Pull Money</h4>
			<% } else if(els.get("downtimeTransType") == "RewardPoints_AnnualFee") { %>
				<h4  class="p10">Transaction Details</h4>
			<% } else if(els.get("downtimeTransType") == "RewardPoints_Transaction") { %>
				<h4  class="p10">Transaction Details</h4>
			<% } %>
  		</div>
  		<div class="headerRight">
      		<span class="step-badge">1/3</span>
	  	</div>
      	<ul class="step-progress">
        	<li class="done"></li>
        	<li></li>
        	<li></li>
      	</ul>	
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
		    <section class="content">
      			<div class="alert alert-default text-center downtime_notify">
        			<!--<p class="text-center">
          				<img src="images/common/error.png" class="img-responsive" />
    				</p>-->	
        			<!--<h3 class="text-center">Temporary unavailability of Service</h3>-->
        			<!--<p class="small text-center">Due to a system upgrade our Internal Bank Transfer service will be temporarily unavailable from <br><b>02:00 AM to 02:30 AM</b></p>
        			<p class="small text-center">We regret any inconvenience caused.</p>-->
    				<div id="notificationMessage"></div>
  				</div>
    		</section>	
		</div>
	</div>
</div>
						 

