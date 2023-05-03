<%
	var els = new EncryptedLocalStorage('secret');
	var beneficiaryDTO = els.get("beneficiaryDTO");
		var myaccounts = getAccountDTO();
%>

<!--Appwrapper Starts Here-->
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
            <%if(els.get("isTransfer") == "true") {%>
                <a href="#/transfer" class="bacArr">
            <% } else {%> 
                <a href="#/withinselectbene" class="bacArr">
            <% } %>
                    <i class="fa fa-angle-left" aria-hidden="true"></i>
                </a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p4"><%-$.i18n.t('app.transferss.paybracbank')%><p class="small"><%-$.i18n.t('app.transferss.paumenttrans')%></p></h4>	
		</div>
		<div class="headerRight">
            <span class="step-badge">1/3</span>
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
        <ul class="step-progress">
            <li class="done"></li>
            <li></li>
            <li></li>
        </ul>
	</header>
    <!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						    <section class="content">
        <div class="logWit small transfer_option">
            <div class="row">
                <div class="col-xs-6 col-sm-6 pr5">
                    <a href="javascript:void(0);" id="WithinBank_ToBeneficiary" class="text-center active">
                        <span class="menu_icon ico-xs toBene"></span>
                        <p class="small m0"><%-$.i18n.t('app.transferss.tobene')%></p>
                    </a>
                </div>
                <div class="col-xs-6 col-sm-6 pl5">
                    <a href="javascript:void(0);" id="WithinBank_OneTimePay" class="text-center">
                        <span class="menu_icon ico-xs onetimepay"></span>
                        <p class="small m0"><%-$.i18n.t('app.transferss.onetimepay')%></p>
                    </a>
                </div>
            </div>
        </div>
        <!-- /logWit -->
        <% if(beneficiaryDTO.length > 0) { %>
        <h4><%-$.i18n.t('app.transferss.selectbeneficiary')%></h4>
        <form method="post" action="#">
        	<div class="radio-list">
            	<% _.each(beneficiaryDTO,function(data,index){ %>
                <div class="radio">
                    <label>
                        <input type="radio" name="bene" value="<%-index%>" data="<%- data.beneInstId%>" id="WithinBank_SelectBeneficiary">
                        <div class="radio-wrap">
                            <div class="row">
                                <div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
                                    <img src="images/common/user_default1.png" class="radiothumb">
                                    <div class="radiobody">
                                        <p><%-data.shortName%></p>
                                        <p class="small text-muted acno"><%-data.accountNumber%></p>
                                        <p class="small text-muted"><%-data.firstName%></p>
                                    </div>
                                </div>
                                <div class="col-xs-4 col-sm-4 col-md-4 col-lg-4 text-right small">
                                    <p class="text-success text-uppercase">
                                        <strong><%-data.statusID%></strong>
                                    </p>
                                    <span class="text-muted"><%- data.imAccountType%></span>
                                </div>
                            </div>
                        </div>
                    </label>
                </div>
                 <%});%>
            </div>
            <!-- / radio-list-->
    
        </form>
    
    <% } else { %>
        			<br>
		            <br>
		            <br>
		            <span class="menu_icon2 ico1x verify"></span>
		            <br>
		            <p class="text-center"><%-$.i18n.t('app.transfer.managebeneficiary.regbene')%></p>
		            <p class="text-center"><%-$.i18n.t('app.transfer.managebeneficiary.addbenepay')%></p>
		            <br>
		            <br>
		            <br>
		            <br>
        		<% } %>
        		 <div class="clearfix"></div>  
            <div class="row">
              <div class="col-xs-8 col-xs-offset-2">
                  <a href="javascript:void(0);" id="WithinBank_AddBene" class="btn btn-primary btn-block">Add Beneficiary</a>
              </div>
    </section>	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
