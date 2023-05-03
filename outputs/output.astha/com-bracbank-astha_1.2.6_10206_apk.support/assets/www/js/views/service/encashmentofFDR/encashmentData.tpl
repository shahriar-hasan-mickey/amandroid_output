<%
var els = new EncryptedLocalStorage('secret');
	var FDAccounts = getFDEncashmentDTO();
%>
		<div class="pagewrapper" id="appwrapper">
		  <aside class="mainnav" id="mnutogglediv">
		    <div class="text-center userInfo">
		      <div>
		        <img src="images/common/user_default1.png" class="profPic img-circle">
		      </div>
		      <div>
		        <p class="profilename"></p>
		        <p class="small info"><%-$.i18n.t('app.wealth.lastlogin1')%><span id="lastlogin"></span>
		        </p>
		        <p class="small info fail"><%-$.i18n.t('app.wealth.lastfailiurelogin1')%> <span id="lastfaillogin"></span>
		        </p>
		      </div>
		    </div>
		    <nav>
		      <ul>
		        <li class="active">
		          <a href="#/wealth" id="dashboard">
		            <span class="ico dashboard"></span><%-$.i18n.t('app.wealth.menu')%> </a>
		        </li>
		        <li class="" data-toggle="collapse" href="#accounts" id="subNav" aria-expanded="false" aria-controls="accounts">
		          <a href="javascript:void(0);">
		            <span class="ico account"></span><%-$.i18n.t('app.menu.products')%> </a>
		        </li>
		        <ul class="collapse" id="accounts">
		          <li>
		            <a href="javascript:void(0);" id="slide_out_savings"><%-$.i18n.t('app.wealth.accounts')%> </a>
		          </li>
		          <li>
		            <a href="javascript:void(0);" id="slide_out_deposits"><%-$.i18n.t('app.wealth.termdeposit')%> </a>
		          </li>
		          <li>
		            <a href="javascript:void(0);" id="slide_out_creditcard"><%-$.i18n.t('app.wealth.creditcard')%> </a>
		          </li>
		          <li>
		            <a href="javascript:void(0);" id="slide_out_prepaidcard"><%-$.i18n.t('app.wealth.prepaidcard')%> </a>
		          </li>
		          <li>
		            <a href="javascript:void(0);" id="slide_out_loan"><%-$.i18n.t('app.wealth.loans')%> </a>
		          </li>
		        </ul>
		        <li>
		          <a href="javascript:void(0);" id="slide_out_statementCertificate">
		            <span class="ico statement_cert"></span><%-$.i18n.t('app.wealth.sts&cert')%> </a>
		        </li>
		        <li>
		          <a href="javascript:void(0);" id="slide_out_transfers">
		            <span class="ico transfer"></span><%-$.i18n.t('app.wealth.transfers')%> </a>
		        </li>
		        <li class="scan_pay" id="slide_out_qrcode" aria-controls="qrcode">
		          <a href="javascript:void(0);">
		            <span class="ico qrcode"></span><%-$.i18n.t('app.qrcode.scanandpay')%> </a>
		        </li>
		        <li>
		          <a href="javascript:void(0);" id="slide_out_positivePay">
		            <span class="ico positive_pay"></span><%- $.i18n.t('app.wealth.postivepay') %></a>
		        </li>
		        <li>
		          <a href="javascript:void(0);" id="slide_out_billpay">
		            <span class="ico billpay"></span><%-$.i18n.t('app.wealth.billandfee')%> </a>
		        </li>
		        <li>
		          <a href="javascript:void(0);" id="slide_out_managebene">
		            <span class="ico beneficiary"></span><%-$.i18n.t('app.wealth.benemanagement')%> </a>
		        </li>
		        <li>
		         <a href="javascript:void(0);" id="slide_out_transactions">
		            <span class="ico transactions"></span><%-$.i18n.t('app.wealth.transactions')%> </a>
		        </li>
		        <li>
		          <a href="#/transferlimits">
		            <span class="ico transferLimit"></span><%-$.i18n.t('app.more.general.transferlimit')%> </a>
		        </li>
		        <!--<li><a href="javascript:void(0);" id="manage_biller"><span class="ico managebiller"></span><%-$.i18n.t('app.wealth.managebillers')%></a></li>-->
		        <li>
		          <a href="javascript:void(0);" id="slide_out_services">
		            <span class="ico service"></span><%-$.i18n.t('app.wealth.servicereq')%> </a>
		        </li>
		        <li>
		          <a href="javascript:void(0);" id="slide_out_user_settings">
		            <span class="ico settings"></span><%-$.i18n.t('app.wealth.usersettings')%> </a>
		        </li>
		        <!--<li><a href="javascript:void(0);"><span class="ico upcoming"></span><%-$.i18n.t('app.wealth.payreminder')%></a></li>-->
		        <li>
		          <a href="javascript:void(0);" id="slideout_more">
		            <span class="ico more"></span><%-$.i18n.t('app.wealth.moreoptions')%> </a>
		        </li>
		        <li>
		          <a href="javascript:void(0);" id="slideout_contact" onclick="postLogRedir()">
		            <span class="ico contacts"></span><%- $.i18n.t('app.wealth.contactus') %> </a>
		        </li>
		        <li>
		          <a href="javascript:void(0);" id="logout" class="btn-logout">
		            <span class="ico logout"></span><%-$.i18n.t('app.wealth.logout')%> </a>
		        </li>
		      </ul>
		    </nav>
		  </aside>
		  <header class="appheader">
		    <div class="headerLeft">
		      <button type="button" id="mnutoggle" class="btn btn-default mnutoggle">
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <a href="#/servicerequest" class="bacArr">
		        <i class="fa fa-angle-left" aria-hidden="true"></i>
		      </a>
		    </div>
		    <div class="headerMiddle">
		      <h4 class="p10"><%- $.i18n.t('app.product.termdeposits.EncashmentofFDR') %></h4>
		    </div>
		    <div class="headerRight">
		      <!-- <a href="../../../index.html" class="header_logout"><i class="fa fa-power-off" aria-hidden="true"></i></a> -->
		    </div>
		  </header>
		  <div class="bodywrapper">
		    <div class="contentwrap">
		      <section class="content" id="encashment_FDR">
		        <div class="dateline encashment">
		          <ul class="list-unstyled">
				  <%if(!isNull(FDAccounts)){%>
				   <%_.each(FDAccounts,function(data,index){%>
		            <li>
		              <a id="moveToFDInitiate" indexValue = "<%-index%>">
		                <div class="media">
		                  <div class="media-body">
		                    <p><%-data.productDescription%></p>
		                    <small class="text-muted"><%-data.accountNumber%></small>
		                  </div>
		                  <div class="media-right">
		                    <p class="amt">
		                      <span class="amt"><%- checkAmount($.formatNumber(data.principalAmount, {format:"#,###.00", locale:"us"}))%></span>
		                      <span class="cur dCur"><%-data.currency%></span>
		                    </p>
		                  </div>
		                  <div class="ico">
		                    <i class="fa fa-chevron-right" aria-hidden="true"></i>
		                  </div>
		                </div>
		              </a>
		            </li>
					<%})%>
					<%}else{%>
					<p style="text-align:center;"><%-$.i18n.t('app.product.general.nodataavail')%></p>
					<%}%>
		          </ul>
		        </div>
		    </div>
		    </section>
		  </div>
		</div>
		</div>
