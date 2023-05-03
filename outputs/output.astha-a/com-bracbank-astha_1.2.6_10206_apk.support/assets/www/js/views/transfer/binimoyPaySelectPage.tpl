<%
	var els = new EncryptedLocalStorage('secret');
	var deviceID = getDeviceId();
	//var deviceID = els.get("IDTPRegDeviceID");
	var IDTPRegDeviceID = els.get("IDTPRegDeviceID");	
	console.log("deviceID",deviceID);
	console.log("IDTPRegDeviceID",IDTPRegDeviceID);
	
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
    		<a href="#/transfer" class="bacArr">
        		<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<div class="headerMiddle">
  			<% if(deviceID == IDTPRegDeviceID) { %>
  				<h4  class="p4">BINIMOY <p> VID : <%- els.get("registerdDevice")%></p></h4>
  			<% } else { %>
  				<h4  class="p10">BINIMOY</h4>
  			<% } %>
  		</div>
  		<div class="headerRight">
	  	</div>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
		    <section class="content" id="BINIMOY">
				<form>
					<div class="radiobox binmoydash">
						<% if(deviceID == IDTPRegDeviceID) { %>
							<h4>Fund Transfer</h4>
							<div class="radio">
								<a href="javascript:void(0);" id="directPay">
									<div class="box">
										<span class="menu_icon dp"></span>
										<div class="clearfix"></div>
										<span class="small">Direct Pay</span>
									</div>
								</a>
							</div>
							<div class="radio">
								<a href="javascript:void(0);" id="reqToPay">
									<div class="box">
										<span class="menu_icon rtp"></span>
										<div class="clearfix"></div>
										<span class="small">Request to Pay</span>
									</div>
								</a>
							</div>           
							<div class="radio">
								<a href="javascript:void(0);" id="pendingRTP">
									<div class="box">
										<span class="menu_icon pending"></span>
										<div class="clearfix"></div>
										<span class="small">Pending RTP</span>
									</div>
								</a>
							</div>
					<% } %>
					<div class="clearfix"></div>
					<h4>Profile Management</h4>
					<!--<div class="radio">
						<a href="javascript:void(0);">
							<div class="box">
								<span class="menu_icon newReg"></span>
								<div class="clearfix"></div>
								<span class="small">User Registration</span>
							</div>
						</a>
					</div>
					<div class="radio">
						<a href="javascript:void(0);">
							<div class="box">
								<span class="menu_icon userI"></span>
								<div class="clearfix"></div>
								<span class="small">User Profile</span>
							</div>
						</a>
					</div>
					<div class="radio">
						<a href="javascript:void(0);">
							<div class="box">
								<span class="menu_icon manage_account"></span>
								<div class="clearfix"></div>
								<span class="small">Manage Account</span>
							</div>
						</a>
					</div>-->
					<% if(deviceID == IDTPRegDeviceID) { %>
						<div class="radio">
							<a href="javascript:void(0);" id="deviceRegistration">
								<div class="box">
									<span class="menu_icon device_register"></span>
									<div class="clearfix"></div>
									<span class="small">Device Registration</span>
								</div>
							</a>
						</div>
						<div class="radio">
							<a href="javascript:void(0);" id="pinManagement">
								<div class="box">
									<span class="menu_icon forgotpin"></span>
									<div class="clearfix"></div>
									<span class="small">PIN Management</span>
								</div>
							</a>
						</div>   
					<% } else {%>
						<div class="radio">
							<a href="javascript:void(0);" id="deviceRegistration">
								<div class="box">
									<span class="menu_icon device_register"></span>
									<div class="clearfix"></div>
									<span class="small">Device Registration</span>
								</div>
							</a>
						</div>
					<% } %>   
					<div class="clearfix"></div>
					<% if(deviceID == IDTPRegDeviceID) { %>
						<h4>Additional Features</h4> 
            			<!--<div class="radio">
                			<a href="javascript:void(0);">
                    			<div class="box">
                        			<span class="menu_icon toBene"></span>
                        			<div class="clearfix"></div>
                        			<span class="small">Beneficiary Management</span>
                    			</div>
                			</a>
            			</div>
            			<div class="radio">
                			<a href="transaction_history/history.html">
                    			<div class="box">
									<span class="menu_icon histry"></span>
                        			<div class="clearfix"></div>			
                        			<span class="small">Transaction History</span>
                    			</div>
                			</a>
            			</div>-->
            			<div class="radio">
                			<a href="javascript:void(0);" id="aboutBinimoy">
                    			<div class="box">
                        			<span class="menu_icon abtBINI"></span>
                        			<div class="clearfix"></div>
                        			<span class="small">About Binimoy</span>
                    			</div>
                			</a>
            			</div>
					<% } %>
					</div>
				</form>
			</section>	
		</div>
	</div>
	
</div>
						 

