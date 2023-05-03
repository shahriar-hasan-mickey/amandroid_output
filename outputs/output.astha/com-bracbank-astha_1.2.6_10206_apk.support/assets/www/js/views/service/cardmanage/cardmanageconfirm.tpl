 <%
	var els = new EncryptedLocalStorage('secret');
%>
 <div class="pagewrapper">	
    <aside class="mainnav" id="mnutogglediv">
        <div class="text-center userInfo">
            <div>
              	<img src="images/common/1234.png" class="profPic img-circle"> 
            </div>
            <div>
              	<p class="profilename"></p>
              	<p class="small info">Last login:  <%-els.get("lastSuccessfulLogin")%></p>
				  <%if(isNull(els.get("lastFailureLogin"))){%>
				  <p class="small info">Last failure login: <%-els.get("lastFailureLogin")%></p>
				  <%}%>
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
  	<div class="bodywrapper">
    	<div class="contentwrap">
    		<section class="content">
    			<div class="dTable-wrap">
      				<div class="dTable-middle">
        				<div class="container">
							<% if(els.get("fullRightsFlag") == "N") { %>
								<div class="text-center ani-success animation-in">
									<span class="ico-circle center-block">
										<span class="menu_icon ico-2x check"></span>
									</span>
								</div>
								<br/>
							<% } else { %>
								<div class="text-center ani-success animation-in">
									<span class="ico-badge center-block">
										<span class="menu_icon ico-3x tokenSuccess"></span>
									</span>
								</div>
							<% } %>
            				
      						<div class="ani-slideup animation-in">
								<% if(els.get("fullRightsFlag") == "N") { %>
									<h4 class="text-center">Success!</h4>
									<p class="text-center">Your debit/credit card is successfully activated. Please re-login to get full transactional access.</p>
									<div class="clearfix"></div><br> 
									<div class="clearfix"></div>
									<br>
									<div class="row">
										<div class="col-xs-12 text-center">
											<button type="button" class="btn btn-default" id="cardManageLoginBtn">Login</button>
										</div>
									</div>   
								<% } else { %>
									<% if(els.get("reqType") == "CHANGE_EXISTING_PIN") { %>
										<p class="text-center">Your request for Change PIN for the Card <%- els.get("cardManage_MaskedX_CardNumber")%> has been completed successfully.</p>
									<% } else if(els.get("reqType") == "FORGOT_PIN") { %>
										<p class="text-center">Your request for PIN Recovery for the Card No:<%- els.get("cardManage_MaskedX_CardNumber")%> has been completed successfully</p>
									<% } else if(els.get("reqType") == "GENERATE_NEW_PIN") { %>
										<p class="text-center">Your request for PIN generation/activation for the Card <%- els.get("cardManage_MaskedX_CardNumber")%> has been completed successfully.</p>
									<% } else if(els.get("reqType") == "BLOCK_TEMP") { %>
										<p class="text-center">Your request for Temporary Card Block for the Card <%- els.get("cardManage_MaskedX_CardNumber")%> has been completed successfully.</p>
									<% } else if(els.get("reqType") == "UNBLOCK_TEMP") { %>
										<p class="text-center">Your request for Unblock Temporarily Blocked Card for the Card <%- els.get("cardManage_MaskedX_CardNumber")%> has been completed successfully.</p>
									<% } else if(els.get("reqType") == "BLOCK_REPLACE") { %>
										<p class="text-center">Your request for Block and Replace of Card for the Card <%- els.get("cardManage_MaskedX_CardNumber")%> has been completed successfully.</p>
									<% } else if(els.get("reqType") == "BLCK_REPLC") { %>
										<p class="text-center">Your request for Activate New Card for the Card <%- els.get("cardManage_MaskedX_CardNumber")%> has been completed successfully.</p>
									<% } else if(els.get("reqType") == "USD_PAYMENT_GATEWAY") { %>
										<% if(els.get("usdPGT_CurrentStatus") == "Enabled") { %>
											<p class="text-center">The Foreign E-commerce has been enabled for the Card Number <%- els.get("cardManage_MaskedX_CardNumber")%> successfully.</p>
										<% } else if(els.get("usdPGT_CurrentStatus") == "Disabled") { %>
											<p class="text-center">The Foreign E-commerce has been disabled for the Card Number <%- els.get("cardManage_MaskedX_CardNumber")%> successfully.</p>
										<% } %>
									<% } else if(els.get("reqType") == "FOREIGN_TRANS_TQ") { %>
										<% if(els.get("changeStatus") == "ON") { %>
											<p class="text-center">Foreign Transaction(TQ) has been enabled for the Card Number <%- els.get("cardManage_MaskedX_CardNumber")%> </p>
										<% } else {%>
											<p class="text-center">Foreign Transaction(TQ) has been disabled for the Card Number <%- els.get("cardManage_MaskedX_CardNumber")%> </p>
										<% } %>
									<% }%>
									<%if(!isNull(els.get("referenceNumber"))){%>
									<p class="text-center">Reference Number : <%- els.get("referenceNumber")%></p>
									<%}%>
								
									<div class="clearfix"></div><br> 
									<div class="clearfix"></div>
									<br>
									<div class="row">
										<div class="col-xs-12 text-center">
											<button type="button" class="btn btn-default" id="cardManageMakeAnotherBtn">Make Another Request</button>
										</div>
									</div> 
								<%}%>         
          					</div>
          				</div>
        			</div>
      			</div>
    		</section>
		</div>
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
        </ul>
  	</div>
   	<div class="footMenu footer_confirm">
		<!--<a href="javascript:void(0);"  class="mnutoggle" id="mnutoggle"><span class="menu_icon ico-xs menu"></span><%-$.i18n.t('app.wealth.menulabel')%></a> --> 
		<a href="#/transfer"><span class="menu_icon ico-xs transfer"></span><%-$.i18n.t('app.wealth.fntransfer')%></a>
		<a href="javascript:void(0);"><span class="menu_icon ico-xs bpay"></span><%-$.i18n.t('app.wealth.billpay')%></a>
		<a href="#/wealth"><span class="menu_icon ico-xs product"></span><%-$.i18n.t('app.wealth.dashboard')%></a>
		
		<a href="javascript:void(0);"  class="active"><span class="menu_icon ico-xs request"></span><%-$.i18n.t('app.wealth.services')%></a>
		<a href="javascript:void(0);" class="scan_pay"><span class="menu_icon ico-xs qrcode"></span><%-$.i18n.t('app.qrcode.scanandpay')%></a>
	</div>
</div>
