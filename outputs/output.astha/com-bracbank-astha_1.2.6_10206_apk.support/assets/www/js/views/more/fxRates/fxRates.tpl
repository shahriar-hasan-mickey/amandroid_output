<%
	var els = new EncryptedLocalStorage('secret');
	var exchangeRatesDTO = els.get("exchangeRates"); 
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
			<a href="javascript:void(0);" id="backBtn" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10"><%-$.i18n.t('app.more.general.fxrates')%></h4>	
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
            	<div class="fx-row">
                	<table class="table table-striped">
                    	<thead>
                        	<tr>
                            	<th> <%-$.i18n.t('app.more.fxrates.country')%></th>
                                <th><%-$.i18n.t('app.more.fxrates.cash')%></th>
                                <th><%-$.i18n.t('app.more.fxrates.transfer')%></th>
                              </tr>
                        </thead>
                        <tbody>
	                        <% if(exchangeRatesDTO.length > 0) { %>
	                        	<% _.each(exchangeRatesDTO,function(data){%>
		                        	<tr>
		                            	<td width="30%"><span class="currency" style="background:url(images/common/currency/<%- data.currencyCode%>.png) no-repeat 0 0;"></span><p class="text-muted small"><%- data.currencyName%></p></td>
		                                <td width="35%">
		                                	<p><small><%-$.i18n.t('app.more.fxrates.buy')%></small> : BDT</p>
		                                	<p><%- data.buyRate%></p>
		                                	<p><small><%-$.i18n.t('app.more.fxrates.sell')%></small> : BDT</p>
		                                	<p><%- data.sellRate%></p>
		                                </td>
		                                <td width="35%">
		                                	<p><small><%-$.i18n.t('app.more.fxrates.buy')%></small> : BDT</p>
		                                	<p><%- data.transferBuyRate%></p>
		                                	<p><small><%-$.i18n.t('app.more.fxrates.sell')%></small> : BDT</p>
		                                	<p><%- data.transferSellRate%></p>
		                                </td>
		                            </tr>
		                        <% }); %>
		                    <% } %>   
                       	</tbody>
                   	</table>
               	</div>
			</section>
		</div>
	</div>
</div>
