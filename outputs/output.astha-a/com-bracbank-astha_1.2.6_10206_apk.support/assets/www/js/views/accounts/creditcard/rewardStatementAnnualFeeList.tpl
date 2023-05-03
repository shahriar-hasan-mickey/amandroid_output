<%
	var els = new EncryptedLocalStorage('secret'); 
	var creditCardAccountDetail = els.get("creditCardAccountDetail");
	var id = els.get("creditCardId");
	var rewardpointsInquiryListDTO = getRewardPointsinquiryListDTO();
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
			<a href="#/rewardponitssummary/<%- id%>" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">			
			<h4 class="p10">Transaction Details</h4>
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>			
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
    			<div class="row">
       		 		<div class="col-xs-12">
       		 			<% if(!isNull(rewardpointsInquiryListDTO) && rewardpointsInquiryListDTO.length > 0) { %>
	            			<ul class="list-group state-list txnSum">
	        				 <%_.each(rewardpointsInquiryListDTO,function(data,index){%>
	        				 	<% var txndate = data.transactionDate; var txnDateArr = txndate.split("-");%>
	        				 	<li class="list-group-item">
	                      			<a href="javascript:void(0);" class="rewardStatementAnnualFeeList" index="<%- index%>" rewardFlag="<%- data.rewardFlag%>" postingDate="<%- data.postingDate%>" transactionSeqNo="<%- data.transactionSeqNo%>" requiredRewardPoints="<%- data.requiredRewardPoints%>" schemeCode="<%- data.schemeCode%>" transactionCode="<%- data.transactionCode%>" transactionCurrencyCode="<%- data.transactionCurrencyCode%>" billingCurrencyCode="<%- data.billingCurrencyCode%>" billingAmount="<%- data.billingAmount%>" mcc="<%- data.mcc%>" rewardPointRedeemIndicator="<%- data.rewardPointRedeemIndicator%>" transactionDate="<%- data.transactionDate%>" transactionDescription="<%- data.transactionDescription%>" transactionAmount="<%- data.transactionAmount%>" cardNumber="<%- data.cardNumber%>">
	                        			<span class="pull-right glyphicon glyphicon-chevron-right arrow-icon"></span>
	                    				<div class="dater small text-muted">
											<span class="dd d_cd"><%- txnDateArr[0] %></span>
											<span class="mm d_cm"><%- txnDateArr[1] %></span>
											<span class="yy d_cy"><%- txnDateArr[2] %></span>
										</div>
	                        			<p><%- data.transactionDescription%></p>
	                        			<p class="text-muted small"><%- data.transactionSeqNo%></p>
	                        			<div class="amt neg text-right">
	                            			<span class="type">Dr </span>
				                            <span class="num"><%- checkAmount($.formatNumber(data.billingAmount, {format:"#,###.00", locale:"us"})) %></span>
	                            			<span class="cur"><%- data.billingCurrencyCode%></span>
	                        			</div>
	                      			</a>
	                			</li>
	        				 <% });%>
	                		</ul>
                		<% } else { %>
                			<div class="alert alert-info small">
                				<p style="text-align:center;">No annual fee due available to pay for the selected card</p>
	                        </div>
                		<% } %>
            		</div>
    			</div>
			</section>	
			<div id="transactionRewardPopup"></div>
		</div>
	</div>
</div>	
