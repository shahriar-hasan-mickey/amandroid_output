<!--Appwrapper Starts Here-->
<div class="pagewrapper" id="appwrapper">
  <aside class="mainnav" id="mnutogglediv">
    <div class="text-center userInfo">
      <div>
        <img src="images/common/user_default1.png" class="profPic img-circle"/>
      </div>
      <div>
        <p class="profilename"></p>
        <p class="small info">Last login: <span id="lastlogin"></span>
        </p>
        <p class="small info fail">Last failure login: <span id="lastfaillogin"></span>
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
        <li><a href="javascript:void(0);" id="slide_out_statementCertificate"><span class="ico statement_cert"></span>Statement &amp; Certificates</a></li>
        <li>
          <a href="javascript:void(0);" id="slide_out_transfers">
            <span class="ico transfer"></span><%-$.i18n.t('app.wealth.transfers')%> </a>
        </li>
        <li class="scan_pay" id="slide_out_qrcode" aria-controls="qrcode">
          <a href="javascript:void(0);">
            <span class="ico qrcode"></span><%-$.i18n.t('app.qrcode.scanandpay')%> </a>
        </li>
        <li><a href="javascript:void(0);" id="slide_out_positivePay"><span class="ico positive_pay"></span>Positive Pay</a></li>
        <li>
          <a href="javascript:void(0);" id="slide_out_billpay">
            <span class="ico billpay"></span><%-$.i18n.t('app.wealth.billandfee')%> </a>
        </li>
        <li>
          <a href="javascript:void(0);" id="slide_out_managebene">
            <span class="ico beneficiary"></span><%-$.i18n.t('app.wealth.benemanagement')%> </a>
        </li>
        <li>
          <a href="javascript:void(0);">
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
          <a href="#/contact" onclick="postLogRedir()">
            <span class="ico contacts"></span>Contact Us </a>
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
      <a href="#/bkashAddMoneyInit" class="bacArr">
        <i class="fa fa-angle-left" aria-hidden="true"></i>
      </a>
    </div>
    <div class="headerMiddle">
      <h4 class="p4">Transfer Review <p class="small">(Pull Money)</p>
      </h4>
    </div>
    <div class="headerRight">
      <!-- <a href="javascript:void(0);" class="header_logout"><i class="fa fa-power-off" aria-hidden="true"></i></a> -->
    </div>
  </header>
  <div class="bodywrapper">
    <div class="contentwrap">
      <section class="content">
        <form method="post" action="#">
          <div class="veriIconWrap">
            <span class="menu_icon2 ico1x verify"></span>
          </div>
          <div class="veriWrap">
           <div class="media">
                <div class="media-left media-middle">
                   <img class="img-circle" src="images/brand/biller/bKash.png" width="36"/>
                </div>
                <div class="media-body media-middle">
                	bKash
                    <!--<p class="small text-muted">bKash</p>-->
                </div>
                <div class="media-right text-right media-middle">
                    <span class="cur small text-muted">BDT</span>
                </div>
            </div>
              <!-- / media -->
              <div class="media">
                <div class="media-left media-middle">
                  <span class="downArAni"></span>
                </div>
                <div class="media-body media-middle">
                  <%- checkAmount($.formatNumber(els.get("bkashTransferAmount"), {format:"#,###.00", locale:"us"}))%>
                    <span class="cur">BDT</span>
                  </span>
                  <div class="clearfix"></div>
                  <% if(!isNull(els.get("amountInWords"))) { %>
                  	<p class="small"><%- els.get("amountInWords")%></p>
                  <% } %>
                </div>
              </div>
              <!-- / media -->
              <div class="media">
                <div class="media-left media-middle">
                  <img class="img-circle" src="images/common/user_default1.png" width="36" />
                </div>
                <div class="media-body media-middle">
                    <%- els.get("profileName")%>
                    <p class="small text-muted"><%- els.get("bkashFromAccNum")%></p>
                </div>
                <div class="media-right text-right media-middle">
                    <span class="cur small text-muted">BDT</span>
                </div>
              </div>
            </div>
            <!-- / media -->
            <ul class="list-unstyled list-nobrd">
            <li class="list-group-item">
	            <label> Total Pull Money Amount </label>
	            <p><%- checkAmount($.formatNumber(els.get("bkashAddMoneyAmt"), {format:"#,###.00", locale:"us"}))%> BDT</p>
	        </li>
            <li class="list-group-item">
              	<label>Transaction Fee</label>
            	<p><%- checkAmount($.formatNumber(els.get("bkashAddMoneyTotFee"), {format:"#,###.00", locale:"us"}))%> BDT</p>
            </li>
            <li class="list-group-item">
              <label>Total Debit Amount (from bKash)</label>
              <p><%- checkAmount($.formatNumber(els.get("bkashAddMoneyTotAmt"), {format:"#,###.00", locale:"us"}))%> BDT</p>
            </li>
            <% if(!isNull(els.get("bkashTransferRemarks"))) { %>
            	<li class="list-group-item">
	              	<label>Remarks</label>
		            <p><%- els.get("bkashTransferRemarks")%></p>
            	</li>
            <% }%>
          </ul>
           <div class="clearfix"></div>
	          <div class="row">
	            <div class="col-xs-6 pr5">
	              <button type="button" class="btn btn-default btn-block" id="bkashverify_CancelBtn">Cancel</button>
	            </div>
	            <div class="col-xs-6 pl5">
	              <button type="button" class="btn btn-primary btn-block" id="bkashverify_ConfirmBtn">Transfer</button>
	            </div>
	          </div>
	          <br>
          </div>
        </form>
      </section>
    </div>
    <div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <form method="post" action="#">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" id="bkashReqOTPCloseBtn" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button><% if(els.get("bkashAuthMode") == "TOKEN") { %> <h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.registration.otptokenheadertext')%> </h4><% }  else {%> <h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.transferss.verfici')%> </h4><% } %>
        </div>
        <div class="modal-body"><% if(els.get("bkashAuthMode") == "SMS") { %> <p class="small"><%-$.i18n.t('app.registration.opthelptext')%><%- maskMobile(els.get("contactNumber"))%> </p><% } else if(els.get("bkashAuthMode") == "EMAIL") {%> <p class="small"><%-$.i18n.t('app.registration.opthelpemailtext')%><%- maskEmailID(els.get("emailId"))%> </p><% } else if(els.get("bkashAuthMode") == "TOKEN") {%> <p class="small"><%-$.i18n.t('app.registration.opthelptokentext')%> </p><% } else if(els.get("bkashAuthMode") == "ESIGN") {%> <p class="small"><%-$.i18n.t('app.registration.otphelpesigntext')%> </p>
          <p class="small" id="challengeText"></p><% } %> <div class="form-group">
            <div class="pasCode text-center">
              <div class="form-group">
                <input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp1" name="otp1" maxlength="1" class="inputs cardpinnumericlengthcontrol" />
                <input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp2" name="otp2" maxlength="1" class="inputs cardpinnumericlengthcontrol" />
                <input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp3" name="otp3" maxlength="1" class="inputs cardpinnumericlengthcontrol" />
                <input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp4" name="otp4" maxlength="1" class="inputs cardpinnumericlengthcontrol" />
                <input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp5" name="otp5" maxlength="1" class="inputs cardpinnumericlengthcontrol" />
                <input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp6" name="otp6" maxlength="1" class="inputs cardpinnumericlengthcontrol" />
              </div>
            </div>
            <div class="form-group has-error" id="otpNullErrorDiv">
              <p class="help-block error-message" style="color:#a94442; text-align:center;" id="otpNullError"></p>
            </div>
          </div><% if(els.get("bkashAuthMode") == "SMS" || els.get("bkashAuthMode") == "EMAIL") { %> <div class="form-group">
            <div id="OTPcontainer1"></div>
          </div>
          <p class="text-center small">
            <a href="javascript:void(0);" class="resend_button" id="resend_btn10"><%-$.i18n.t('app.transfer.managebeneficiary.resendotp')%> </a>
          </p><% } %>
        </div>
        <div class="modal-footer">
          <div class="row">
            <div class="col-xs-6 pr5">
              <button type="button" id="bkashReqOTPCancel" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
            </div>
            <div class="col-xs-6 pr5">
              <button type="button" class="btn btn-default btn-block otp_done" id="bkashReqOTPVerify"><%-$.i18n.t('app.transfer.managebeneficiary.verify')%> </button>
            </div>
          </div>
        </div>
      </div>
    </form>
  </div>
</div>
  </div>
</div>
<script src="../../../assets/js/library/progressbar.min.js"></script>
