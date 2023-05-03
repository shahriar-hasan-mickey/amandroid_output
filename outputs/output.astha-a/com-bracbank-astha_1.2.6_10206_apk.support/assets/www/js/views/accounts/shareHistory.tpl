<%
	var els = new EncryptedLocalStorage('secret'); 
	var id = els.get("cardId");
	var statementSharingDTO=els.get("statementSharingDTO");
	var myaccounts = getAccountDTO();
%>

<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
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
			 <a href="#/accdetailstatement" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
	      </div>
	      <div class="headerMiddle">			
			<h4 class="p10"><%-$.i18n.t('app.accounts.statementsharehistory')%></h4>
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>			
	</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content">
    <h3 class="tab-head m0">Share History</h3>
    
    <% _.each(statementSharingDTO,function(data,index){ %>
    
    <% 
	    var dates=data.stmtDate;
		var dates1=dates.split("-");
		var d = dates1[0];
		var m = dates1[1];
		var y = dates1[2];
	%>
    
    <ul class="list-group state-list txnSum">
	  <li class="list-group-item">
          <a href="javascript:void(0);">
            <div class="dater small text-muted">
                <span class="dd d_cd"><%-d%></span>
                <span class="mm d_cm"><%-m%></span>
                <span class="yy d_cy"><%-y%></span>
            </div>
            <p class="text-muted"><%-data.accountNumber%></p>
            <a class="text-primary openPopUp" href="javascript:void(0);" id="<%- index%>" data="<%- data.password%>" ><%-$.i18n.t('app.accounts.viewpassword1')%></a>
            <div class="text-right">
                <p class="text-muted small"><%-data.emailID%></p>
                <p><label class="text-success"><%-data.status%></label></p>
            </div>
          </a>
        </li>
       
     
          </a>
        </li>
        
    </ul>

<%})%>
</section>
<div class="modal fade modernPOP modal-lg" id="viewPass" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-body clearfix text-center">
                <br />
                <p class="text-center">
                    <span class="ico-view center-block">
                        <span class="menu_icon ico-2x"></span>
                    </span>
                </p>
                <h3><%-$.i18n.t('app.accounts.password1')%></h3>
                <p class="text-center" id="share_message"></p>
                <br/>
                <button type="button" class="btn btn-default btn-block" data-dismiss="modal"><%-$.i18n.t('app.accounts.close1')%></button>
            </div>
        </div>
    </div>
</div>



<!-- / success-->	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
