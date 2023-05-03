<%
	var els = new EncryptedLocalStorage('secret'); 
	var prepaidCardAccountListDTO = els.get("prepaidCardAccountList");
	var prepaidListArray = "";
	if(!isNull(prepaidCardAccountListDTO)) {
		prepaidListArray = prepaidCardAccountListDTO.filter(function(array) {
			return array.casaflag == "Y";
		});
	}
%>
<div class="pagewrapper">	
	<aside class="mainnav">
  		<div class="text-center userInfo">
    		<div>
      			<img src="images/common/user_default1.png" class="profPic img-circle"/>
			</div>
    		<div>
      			<p class="profilename"><%- els.get("profileName")%></p>
      			<p class="small info"> <%-els.get("lastSuccessfulLogin")%></p>
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
			<%if(!isNull(els.get("unreadMsgCount")) && (els.get("unreadMsgCount") != "0")) { %>
				<span class="badge"><%- els.get("unreadMsgCount")%></span>
			<% } %>
		</a>
       	 <!--<button class="btn-right"><i class="fa fa-search" aria-hidden="true"></i></button>-->
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
                      		<strong class="profilename"><%- els.get("profileName")%></strong>
							<% if(els.get("fullRightsFlag") == "N") { %>
								<p><span class="label label-warning view_only">View Only</span></p>
							<% } %>
                  		</div>
              		</div>
					<% if(els.get("fullRightsFlag") == "N") { %>
						<a href="javascript:void(0);" id="activateCard" alt="Add Beneficiary" class="click_active">
							<small class="scrollviewbtn">Click to Activate Card</small>
						</a>
					<% } %>
          		</div>
          		<div class="dashTab">
					<ul class="nav nav-tabs" role="tablist">
						<li id="item1" role="presentation"><a href="javascript:void(0);" id="accounts_tab"><%-$.i18n.t('app.wealth.accounts')%></a></li>
						<li id="item2" role="presentation"><a href="javascript:void(0);" id="termdeposit_tab"><%-$.i18n.t('app.wealth.termdeposit')%></a></li>
						<li id="item3" role="presentation"><a href="javascript:void(0);" id="creditcard_tab"><%-$.i18n.t('app.wealth.creditcard')%></a></li>
						<li id="item4" role="presentation" class="active"><a href="javascript:void(0);" id="prepaid_tab"><%-$.i18n.t('app.wealth.prepaidcard')%></a></li>
						<li id="item5" role="presentation"><a href="javascript:void(0);" id="loan_tab"><%-$.i18n.t('app.wealth.loans')%></a></li>						
				  	</ul>
				  	<br/>
				  	<div class="tab-content">
						<div role="tabpanel" class="tab-pane active" id="Accounts">
							<%if(isNull(prepaidListArray)) { %>
								<p class="help-block error-message" style="color:#fff; text-align:center;"><%-$.i18n.t('app.product.general.noprecardfound')%></p>
                        	<% } else if(prepaidListArray.length > 0){%>
								<div class="c-cards-stack">       
									<ul class="stack-container">
									<% _.each(prepaidListArray,function(data, index){%>
										<li class="c-cards-stack-item cc_summary_design pp<%- data.productCode %>" productCode="<%- data.productCode %>" currency="<%- data.currencyCode %>" amount="<%- data.availableBalance %>" cardHolderName="<%- data.cardHolderName%>" data-url="#/prepaidcurrentmonth/<%- index%>" availBalance="<%- data.availableBalance%>">
											<div class="cc_container">
												<p class="text-center ccno_wrap">
													<%if(data.accountShortName != null) { %>
														<span class="cc_name"><%- data.accountShortName%></span>
													<% } else {%>
														<span class="cc_name"><%- data.cardHolderName%></span>	
													<% } %>
													<bdi>
														<span class="ccno"><%- data.accountNumber%></span>
													</bdi>
												</p>
												<div class="row cc_balance">
													<div class="col-xs-12">
														<p class="small lbl"><%-$.i18n.t('app.prepaidcard.availbalance')%></p>
														<p class="amt">
															<% if(els.get("dashbaordShowHideFlag") == "Show") { %>
																<% if(data.availableBalance >= 0) {%>												  	
																	<span class="num"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.00", locale:"us"}))%></span>
																<% } else { %>
																	<span class="num neg"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.00", locale:"us"}))%></span>
																<% } %>
															<% } else if(els.get("dashbaordShowHideFlag") == "Hide") { %>
																<% if(data.availableBalance >= 0) {%>												  	
																	<span class="num"><%- data.maskedAvailableBalance%></span>
																<% } else { %>
																	<span class="num neg"><%- data.maskedAvailableBalance%></span>
																<% } %>
															<% } %>
															
															<span class="cur small"><%- data.currencyCode %></span>
														</p>
													</div>
												</div>
											</div>
										</li>
										<!--<li class="c-cards-stack-item card card-default acc card-CC card-CC-gold visa-CC" data-url="#/prepaidcurrentmonth/<%- index%>"">									
									  		<p class="m0"><%- data.cardHolderName%> <span class="logo-xs pull-right"></span></p>
											<span class="menu_icon chip pull-left"></span>
											<div class="clearfix"></div>
											<h4 class="ac-num text-muted text-center">
									  			<%- data.accountNumber%>
											</h4>
											<div class="amt">
									  			<p class="small m0 text-muted"><%-$.i18n.t('app.prepaidcard.availbalance')%></p>									  			
									  			<span class="num"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- data.currencyCode %></span>
											</div>
										</li>-->
										<%});%>
									</ul>							
								</div>
							<%}%>
						</div>
				  	</div>
				</div>
      			<!--<div class="upPay">
					<ul class="list-unstyled">
    					<li class="list-group-item"><h4 class="text-primary"><%-$.i18n.t('app.wealth.upcomingpayments')%></h4></li>
    					<li class="list-group-item">
        					<div class="media">
            					<div class="media-left">
                					<img src="images/common/user_default.png" />
            					</div>
            					<div class="media-body">
                					<p>Credit Card Due</p>
                					<small class="text-muted fhdr d_fdate">17 Nov 2018</small>
            					</div>
            					<div class="media-right">
                					<a href="javascript:void(0);" class="btn btn-primary">
                    					<div class="amt">
                        					<span class="num">2350.<span class="deci">00</span></span>
                        					<span class="small cur dCur">BDT</span>
                        					<i class="fa fa-angle-right" aria-hidden="true"></i>
                    					</div>		
            						</a>
            					</div>
        					</div>
    					</li>
    					<li class="list-group-item">
        					<div class="media">
            					<div class="media-left">
                					<img src="images/common/user_default.png" />
            					</div>
            					<div class="media-body">
                					<p>Standing Instruction</p>
                					<small class="text-muted fhdr d_fdate">18 Nov 2018</small>
        						</div>
            					<div class="media-right">
                					<a href="javasript:void(0);" class="btn btn-primary">
                    					<div class="amt">
                        					<span class="num">150.<span class="deci">00</span></span>
                        					<span class="small cur dCur">BDT</span>
                        					<i class="fa fa-angle-right" aria-hidden="true"></i>
                    					</div>	
                					</a>
            					</div>							
        					</div>
    					</li>
    					<li class="list-group-item">
        					<div class="media">
            					<div class="media-left">
                					<img src="images/common/user_default.png" />
            					</div>
            					<div class="media-body">
                					<p>Loan Instalment</p>
            						<small class="text-muted fhdr d_fdate">27 Nov 2018</small>
            					</div>
            					<div class="media-right">
                					<a href="javascript:void(0);" class="btn btn-primary">
                    					<div class="amt">
                        					<span class="num">4750.<span class="deci">00</span></span>
                        					<span class="small cur dCur">BDT</span>
                        					<i class="fa fa-angle-right" aria-hidden="true"></i>
                    					</div>										
                					</a>	
            					</div>
        					</div>
    					</li>					
					</ul>
				</div>		
				<div class="promo">
  					<div id="myCarousel" class="carousel slide" data-ride="carousel">          
    					<div class="carousel-inner">
      						<div class="item active">
        						<img src="images/common/loan_1.jpg" alt="Los Angeles">
      						</div>
      						<div class="item">
        						<img src="images/common/loan_2.jpg" alt="Chicago">
      						</div>
    					</div>
  					</div>
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
	<div class="area" >
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
</div>
<div class="dash_offers_popup"></div>
<script src="js/library/slip.js"></script>
<script src="js/library/cardStack.js"></script>
<script>
$(document).ready(function() {
	$('.nav-tabs').animate({scrollLeft: $('#item4').position().left});
	if(!isNull(getAdvertisementDTO().advertisement) && getAdvertisementDTO().advertisement.length > 0) {
		loadOffersPopUp();
	}
});
</script>
