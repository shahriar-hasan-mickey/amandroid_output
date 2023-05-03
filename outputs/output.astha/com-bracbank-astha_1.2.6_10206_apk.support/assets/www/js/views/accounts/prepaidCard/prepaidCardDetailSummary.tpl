<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccountslist = els.get("creditCardAccountDetail");
	var id = els.get("ppCardId");
	var expiryDate = "";
	var shortname = els.get("accShortNme");
	var prodname = els.get("prodNme");
	
	
	if(myaccountslist.expDate != "" && myaccountslist.expDate!= null) {
		var expiryDateArray = myaccountslist.expDate.split("-");
		expiryDate = expiryDateArray[1]+"-"+expiryDateArray[2];
	}
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
			<a href="#/prepaidcurrentmonth/<%- id%>" id="" class="bacArr">
				<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">			
			<h4 class="p10"><%-$.i18n.t('app.prepaidcard.prepaidcarddetails')%></h4>
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
    			<div class="dashTab">
        			<div class="vc-card">
            			<ul class="list-unstyled">
							<li>                      
								<div class="cc_summary_design pp<%-els.get("productCode")%>">
									<div class="cc_container">
									<p class="text-center ccno_wrap">
									<%if(els.get("accShortNme") != null) { %>
										<span class="cc_name"><%- els.get("accShortNme")%></span>
									<% } else {%>
										<span class="cc_name"><%- els.get("cardHolderName")%></span>	
									<% } %>
									<!--<span class="cc_name"><%- myaccountslist.cardHolderName%></span>-->
									<bdi>
										<span class="ccno"><%- myaccountslist.maskedCCNumber%></span>
									</bdi>
									</p>
									<div class="row cc_balance">
										<div class="col-xs-12">
											<p class="small lbl"><%-$.i18n.t('app.prepaidcard.availbalance')%></p>
											<p class="amt">
												<% if(els.get("avlBalance") >= 0) {%>												  	
													<span class="num"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span>
												<% } else { %>
													<span class="num neg"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span>
												<% } %>
												<span class="cur small"><%- els.get("creditcardCurrency") %></span>
											</p>
										</div>
									</div>
									</div>
									<% if(myaccountslist.cardStatus == "ACTIVE") { %>
										<div class="corner-ribbon top-right small label-success"><%- myaccountslist.cardStatus%></div>
									<% } %>
									<% if(myaccountslist.cardStatus == "INACTIVE" || myaccountslist.cardStatus == "BLOCKED") { %>
										<div class="corner-ribbon top-right small label-danger"><%- myaccountslist.cardStatus%></div>
									<% } %>
								</div>
							</li>
                			<!--<li>
                    			<div class="card card-default card-CC card-CC-gold">
                        			<p class="m0"><%- myaccountslist.maskedCCNumber%>
                            			<span class="logo-xs pull-right"></span>
                        			</p>
                        			<span class="menu_icon chip pull-left"></span>
                        			<br/>
                        			<strong><%- myaccountslist.cardHolderName%></strong>
                        			<div class="clearfix"></div>
                    				<h4 class="ac-num text-muted text-center">
                        				<%- myaccountslist.accountNumber%>
                        			</h4>
                        			<div class="amt">
                            			<p class="small m0 text-muted"><%-$.i18n.t('app.prepaidcard.availbalance')%></p>                           			
                            			<span class="num"><%- checkAmount($.formatNumber(myaccountslist.availableBalance, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- myaccountslist.currencyCode %></span>
                        			</div>
                        			<% if(myaccountslist.cardStatus == "ACTIVE") { %>
										<div class="corner-ribbon top-right small label-success"><%- myaccountslist.cardStatus%></div>
									<% } %>
									<% if(myaccountslist.cardStatus == "INACTIVE" || myaccountslist.cardStatus == "BLOCKED") { %>
										<div class="corner-ribbon top-right small label-danger"><%- myaccountslist.cardStatus%></div>
									<% } %>
                    			</div>
                			</li>-->
            			</ul>
        			</div>
				</div>
    			<div class="state-wrap">
        			<ul class="list-unstyled list-nobrd">
        				<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.prepaidcard.cardholdername')%></p>
                			<p><%- myaccountslist.cardHolderName%></p>
            			</li>
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.prepaidcard.cardnumber')%></p>
                			<p><%- myaccountslist.maskedCCNumber%></p>
            			</li>
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.prepaidcard.cardurrency')%></p>
            				<p>
                				<%- myaccountslist.currencyCode%>
            				</p>
        				</li>
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.prepaidcard.productname')%></p>
                			<p><%- myaccountslist.cardType%></p>
            			</li>
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.prepaidcard.cardstatus')%></p>
                			<p><%- myaccountslist.cardStatus%></p>
            			</li>
            			<li class="list-group-item text-center">
                			<a href="javascript:void(0);" id="hideDetails" class="btn btn-primary"  style="display: none"><%-$.i18n.t('app.product.creditcard.lessdetails')%>
                    			<span class="fa fa-chevron-up"></span>
                			</a>
                			<a href="javascript:void(0);" id="showDetails" class="btn btn-primary" ><%-$.i18n.t('app.product.creditcard.moredetails')%>
                    			<span class="fa fa-chevron-down"></span>
                			</a>
            			</li>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.prepaidcard.expirydate')%></p>
                			<p><%- expiryDate%></p>
            			</li>
            			<% if(myaccountslist.currencyCode == "BDT"){%>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('Local E-commerce Usage')%></p>
            				<p>Enabled</p>
            			</li>
            			<%} else if(myaccountslist.currencyCode == "USD"){%>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('Foreign E-commerce Usage')%></p>
            				<p>Enabled</p>
            			</li>
            			<%}else{%>
            			    <li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.prepaidcard.onlineusage')%></p>
            				<p>Enabled</p>
            			</li>
            			<%}%>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.prepaidcard.cashwithdrawal')%></p>
                			<p>Enabled</p>
            			</li>
            			<% if(myaccountslist.currencyCode != "BDT"){%>
            			<% if(myaccountslist.currencyCode != "USD"){%>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.prepaidcard.availablecashlimit')%></p>
                			<span class="num"><%- checkAmount($.formatNumber(myaccountslist.availableCashLimit, {format:"#,###.00", locale:"us"}))%> <%- myaccountslist.currencyCode%></span>
            			</li>
            			<%}%>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.creditcard.tqlimit')%></p>
                			<p><%- myaccountslist.tqLimit%> <%- myaccountslist.currencyCode%></p>
            			</li>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.creditcard.spendlimit')%></p>
                			<p><%- myaccountslist.spentLimit%> <%- myaccountslist.currencyCode%></p>
            			</li>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.creditcard.availtqlimit')%></p>
                			<p><%- myaccountslist.availableTQLimit%> </p>
            			<%}%>
        			</ul>
    			</div>
			</section>	
		</div>
	</div>
</div>
<script>
$(function() {
    $('#hideDetails').click(function(e){
        e.preventDefault();
        $('.mores').hide();
        $(this).hide();
        $('#showDetails').show();
    });
    $('#showDetails').click(function(e){
        e.preventDefault();
        $('.mores').show();
        $(this).hide();
        $('#hideDetails').show();
    });
});
</script>
