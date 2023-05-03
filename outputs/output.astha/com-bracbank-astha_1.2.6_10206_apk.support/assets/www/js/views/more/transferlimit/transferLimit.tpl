<%
	var els = new EncryptedLocalStorage('secret');
	console.log("transfer limit DTO***", els.get("transferLimitDTO"));
	var transferLimitDTO = els.get("transferLimitDTO");
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
  			<h4  class="p10"><%-$.i18n.t('app.more.general.transferlimit')%></h4>	
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
				<div class="clearfix"></div>
	  				<div class="contact_sticky_search">
						<div class="form-group m0">
							<div class="input-group">
								<span class="input-group-addon glyphicon glyphicon-search"></span>
								<input type="text" placeholder="Search" class="form-control" id="transfer_limit_search_box" autocomplete="off"/>
								<span class="search_clear"></span>
							</div>
						</div>
					</div>
					<div class="panel panel-default transfer_limit">
						<div class="panel-body">
		  				<hr />
		  				<% if(!isNull(transferLimitDTO)) { %>
		  					<% _.each(transferLimitDTO,function( data, index ) { %>
								<div class="custProgress transferLimitType">	
									<div class="row">
										<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
											<h3 class="transLimitType" style="font-weight:bold;"> <%- data.description %> </h3>
										</div>			
										<% var limitPercentage = data.limitPercentage; var limitPercentArr = limitPercentage.split(":"); var completedPercent = limitPercentArr[1];%>
										<div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 text-right">
											<div class="progress">
												<div class="progress-bar progress-bar-info" role="progressbar" style="<%- data.limitPercentage%>">
													<span class="sr-only"> <%- completedPercent%> Complete (success)</span>
												</div>
											</div>
										</div>														
									</div>
									<div class="row">
										<% if(!isNull(data.minAmountPerTransaction)) { %>
											<div class="col-xs-6 col-sm-3">
												<p class="text-muted small"><%-$.i18n.t('app.transferss.minimumamount')%></p>
												<p class="amt"> <span class="cur dCur">BDT </span> <%- checkAmount($.formatNumber(data.minAmountPerTransaction, {format:"#,###.00", locale:"us"}))%></p>
											</div>
										<% } %>
										<% if(!isNull(data.maxAmountPerTransaction)) { %>
											<div class="col-xs-6 col-sm-3">
												<p class="text-muted small"><%-$.i18n.t('app.transferss.pertransactionlimit')%></p>
												<p class="amt"> <span class="cur dCur">BDT </span> <%- checkAmount($.formatNumber(data.maxAmountPerTransaction, {format:"#,###.00", locale:"us"}))%></p>
											</div>
										<% } %>
										<div class="col-xs-6 col-sm-3">
											<p class="text-muted small">Limit Per Day</p>
											<p class="amt"> <span class="cur dCur">BDT </span> <%- checkAmount($.formatNumber(data.dailyLocalTransactionLimit, {format:"#,###.00", locale:"us"}))%></p>
										</div>
										<div class="col-xs-6 col-sm-3">
											<p class="text-muted small">Transfer Count</p>
											<% var dailyAvailableCount = data.dailyAvailableCount%>
											<% if(isNull(dailyAvailableCount)) { %>
												<p><span> 0/<%- data.dailyTransactionCount%></span></p>
											<% } else { %>
												<p><span> <%- data.dailyAvailableCount %>/<%- data.dailyTransactionCount%></span></p>
											<% } %>
										</div>
										<% if(!isNull(data.dailyLocalAmountUtilized)) { %>
											<div class="col-xs-6 col-sm-3">
												<p class="text-muted small">Utilized Amount</p>
												<p class="amt"> <span class="cur dCur">BDT </span> <%- checkAmount($.formatNumber(data.dailyLocalAmountUtilized, {format:"#,###.00", locale:"us"}))%></p>
											</div>
										<% } %>
										<% if(!isNull(data.dailyLocalAvailableLimit)) { %>
											<div class="col-xs-6 col-sm-3">
												<p class="text-muted small reset_margin_bottom">Available Limit</p>
												<p class="amt"> <span class="cur dCur">BDT </span> <%- checkAmount($.formatNumber(data.dailyLocalAvailableLimit, {format:"#,###.00", locale:"us"}))%></p>
											</div>
										<% } %>
									</div>                                              
								</div>
							<% }); %>
							<div style="text-align:center; font-weight:bold; padding-top:20px;display:none;" class="nodata">No Data Found</div>
						<% } %>
					</div> 
				</div>
			</section>
		</div>
	</div>
</div>
