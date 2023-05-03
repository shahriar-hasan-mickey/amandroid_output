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
			<a href="javascript:void(0);" id="backBtn" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">			
			<h4 class="p10"><%-$.i18n.t('app.product.termdeposits.depositaccount')%></h4>
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>			
	</header>	
				<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content">
<form method="post">
            <div class="veriIconWrap">
              <span class="menu_icon2 ico1x verify"></span>					
            </div>	
				
                <ul class="list-unstyled list-nobrd">
				    <li class="list-group-item"><strong>Applicant Details</strong></li>
                    <li class="list-group-item">
                        <label>Deposit Type</label>
                        <p>Fixed Deposit</p>
                    </li>
                    <li class="list-group-item">
                        <label>Source Account</label>
                        <p>4893335421236864</p>
                    </li> 
					<li class="list-group-item">
                      <label>Amount</label>
                      <p>
                          <span class="amt small">1000.
                              <span class="des">00</span>
                              <span class="cur">BDT</span>
                          </span>
                      </p>
                    </li> 					
                    <li class="list-group-item">
                        <label>Product type</label>
                        <p>Type 1</p>
                    </li>
					<li class="list-group-item">
                        <label>Tenure</label>
                        <p>1 Year</p>
                    </li>
					<li class="list-group-item">
                        <label>Rate of Interest</label>
                        <p>10%</p>
                    </li>					
                    <li class="list-group-item">
                        <label> Maturity Amount</label>
                        <p>
                            <span class="amt small">12500.
                                <span class="des">00</span>
                                <span class="cur">BDT</span>
                            </span>
                        </p>
                    </li>   
                    <li class="list-group-item">
                        <label>Opt for renewal</label>
                        <p>Yes</p>
                    </li>
					<li class="list-group-item">
                        <label>Renew  principal and interest</label>
                        <p>test</p>
                    </li>
					<li class="list-group-item">
                        <label>Renew  principal and credit interest to link account</label>
                        <p>test</p>
                    </li>
					<li class="list-group-item">
                        <label>Credit Account</label>
                        <p>5863335421236864</p>
                    </li>
					<li class="list-group-item">
                        <label>Percentage</label>
                        <p>10%</p>
                    </li>
					<li class="list-group-item">
                        <label>Purpose of FDR account opening</label>
                        <p>Saving</p>
                    </li>
					<li class="list-group-item"><strong>Nominee Details</strong></li>
					<li class="list-group-item">
                        <label>Nominee 1</label>
                        <p>Abdul Raziq - <span class="text-muted">Son - 18 Years</span></p>
                    </li>
					<li class="list-group-item">
                        <label>Nominee 2</label>
                        <p>Fathima  - <span class="text-muted">Wife - 45 Years</span></p>
                    </li>
					
                </ul>
				
            <div class="clearfix"></div>
            <br>
            <div class="row">
                <div class="col-xs-6 pr5">
                    <button type="button" class="btn btn-default btn-block" id="applydepositinitiatecancel">Cancel</button>
                </div>
                <div class="col-xs-6 pl5">
                    <button type="button" class="btn btn-primary btn-block" data-toggle="modal" data-target="#verify" id="applydepositinitiateverify">Confirm</button>
                </div>
            </div>
          </form>
</section>
<!-- Modal -->
<div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <form method="post" action="#">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <h4 class="modal-title" id="myModalLabel">Verification</h4>
                </div>
                <div class="modal-body">
                    <p class="small">Please enter the OTP that was sent to your registered mobile number +971-50-XXXXXXX</p>
                    <div class="form-group">
                        <div class="pasCode text-center">
                            <div class="form-group">
                                <input type="password" value="2" />
                                <input type="password" value="2" />
                                <input type="password" value="2" />
                                <input type="password" value="2" />
                                <input type="password" value="2" />
                                <input type="password" value="2" />
                            </div>
                        </div>
                    </div>
                    <!-- / form-group-->
                    <div class="form-group">
                        <div id="OTPcontainer1"></div>
                    </div>
                    <p class="text-center small">
                        <a href="javascript:void(0);" class="resend_button2" id="resend_btn">Resend OTP</a>
                    </p>
                </div>
                <div class="modal-footer">
                  <div class="row">
                      <div class="col-xs-6 pr5">
                          <button type="button" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
                      </div>
                      <div class="col-xs-6 pl5">
                        <button type="button" class="btn btn-default btn-block otp_done" id="applydepositconfirm">Confirm</button>
                    </div>
                  </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- / modal-->		
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
	
