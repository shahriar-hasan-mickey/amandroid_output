
<%
var els = new EncryptedLocalStorage('secret');
	var FDAccounts = getFDEncashmentDTO();
    var indexedAcc = els.get("FDEncashmentIndex");
%><div class="pagewrapper" id="appwrapper">
    <!-- Header area -->
    <aside class="mainnav" id="mnutogglediv">
        <div class="text-center userInfo">
            <div>
                <img src="images/common/user_default1.png" class="profPic img-circle" />
            </div>
            <div>
                <p class="profilename"></p>
                <p class="small info">Last login: <span id="lastlogin"></span></p>
                <p class="small info fail">Last failure login: <span id="lastfaillogin"></span></p>
            </div>
        </div>
        <nav>
            <ul>
                <li class="active">
                    <a href="#/wealth" id="dashboard"> <span class="ico dashboard"></span><%-$.i18n.t('app.wealth.menu')%> </a>
                </li>
                <li class="" data-toggle="collapse" href="#accounts" id="subNav" aria-expanded="false" aria-controls="accounts">
                    <a href="javascript:void(0);"> <span class="ico account"></span><%-$.i18n.t('app.menu.products')%> </a>
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
                    <a href="javascript:void(0);" id="slide_out_statementCertificate"> <span class="ico statement_cert"></span><%-$.i18n.t('app.wealth.sts&cert')%> </a>
                </li>
                <li>
                    <a href="javascript:void(0);" id="slide_out_transfers"> <span class="ico transfer"></span><%-$.i18n.t('app.wealth.transfers')%> </a>
                </li>
                <li class="scan_pay" id="slide_out_qrcode" aria-controls="qrcode">
                    <a href="javascript:void(0);"> <span class="ico qrcode"></span><%-$.i18n.t('app.qrcode.scanandpay')%> </a>
                </li>
                <li>
                    <a href="javascript:void(0);" id="slide_out_positivePay"> <span class="ico positive_pay"></span><%-$.i18n.t('app.wealth.postivepay')%> </a>
                </li>
                <li>
                    <a href="javascript:void(0);" id="slide_out_billpay"> <span class="ico billpay"></span><%-$.i18n.t('app.wealth.billandfee')%> </a>
                </li>
                <li>
                    <a href="javascript:void(0);" id="slide_out_managebene"> <span class="ico beneficiary"></span><%-$.i18n.t('app.wealth.benemanagement')%> </a>
                </li>
                <li>
                   <a href="javascript:void(0);" id="slide_out_transactions"> <span class="ico transactions"></span><%-$.i18n.t('app.wealth.transactions')%> </a>
                </li>
                <li>
                    <a href="javascript:void(0);" id="slide_out_transferlimit" <span class="ico transferLimit"></span><%-$.i18n.t('app.more.general.transferlimit')%> </a>
                </li>
                <!--<li><a href="javascript:void(0);" id="manage_biller"><span class="ico managebiller"></span><%-$.i18n.t('app.wealth.managebillers')%></a></li>-->
                <li>
                    <a href="javascript:void(0);" id="slide_out_services"> <span class="ico service"></span><%-$.i18n.t('app.wealth.servicereq')%> </a>
                </li>
                <li>
                    <a href="javascript:void(0);" id="slide_out_user_settings"> <span class="ico settings"></span><%-$.i18n.t('app.wealth.usersettings')%> </a>
                </li>
                <!--<li><a href="javascript:void(0);"><span class="ico upcoming"></span><%-$.i18n.t('app.wealth.payreminder')%></a></li>-->
                <li>
                    <a href="javascript:void(0);" id="slideout_more"> <span class="ico more"></span><%-$.i18n.t('app.wealth.moreoptions')%> </a>
                </li>
                <li>
                    <a href="javascript:void(0);" id="slideout_contact" onclick="postLogRedir()"> <span class="ico contacts"></span><%-$.i18n.t('app.wealth.contactus')%> </a>
                </li>
                <li>
                    <a href="javascript:void(0);" id="logout" class="btn-logout"> <span class="ico logout"></span><%-$.i18n.t('app.wealth.logout')%> </a>
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
            <a id="encashmentofFDRInit_BackBtn" class="bacArr">
                <i class="fa fa-angle-left" aria-hidden="true"></i>
            </a>
        </div>
        <div class="headerMiddle">
            <h4 class="p10">FDR Encashment</h4>
        </div>
        <div class="headerRight">
            <!-- <a href="../../../index.html" class="header_logout"><i class="fa fa-power-off" aria-hidden="true"></i></a> -->
        </div>
    </header>
    <div class="bodywrapper">
        <div class="contentwrap">
            <section class="content">
                <form>
                    <ul class="list-unstyled list-nobrd row">
                        <li class="list-group-item">
                            <label>FDR Account Number</label>
                            <p><%-FDAccounts[indexedAcc].productDescription%> | <%-FDAccounts[indexedAcc].accountNumber%></p>
                        </li>
                        <li class="list-group-item">
                            <label>Opening Date</label>
                            <p><%-  els.get("FDopenDate")%></p>
                        </li>
                        <li class="list-group-item">
                            <label>Maturity Date</label>
                            <p><%-  els.get("FDmaturityDate")%></p>
                        </li>
                        <li class="list-group-item">
                            <label>FDR Amount</label>
                            <p>
                                <span class="amt">
                                    <%-checkAmount($.formatNumber(  els.get("FDprincipalAmount"), {format:"#,###.00", locale:"us"}))%>
                                    <span class="cur">BDT</span>
                                </span>
                            </p>
                        </li>
                         <%if(!isNull(els.get("FDmaturityIntRate"))){%>
                        <li class="list-group-item">
                            <label>Contract Interest Rate</label>
                            <p> <%- els.get("FDmaturityIntRate")%>%</p>
                        </li>
                        <%}%>
                         <%if(!isNull(els.get("FDmaturityIntAmt"))){%>
                        <li class="list-group-item">
                            <label>Contracted Matured Amount</label>
                            <p>
                                <span class="amt">
                                   <%-checkAmount($.formatNumber(  els.get("FDmaturityIntAmt"), {format:"#,###.00", locale:"us"}))%>
                                    <span class="cur">BDT</span>
                                </span>
                            </p>
                        </li>
                        <%}%>
                        <li class="list-group-item">
                            <label>Credit/Link/Source Account Number</label>
                            <p><%-  els.get("FDlinkAccount")%></p>
                        </li>
                        <%if(!isNull(els.get("FDprematureIntRate"))){%>
                        <li class="list-group-item">
                            <label>Premature Interest Rate</label>
                            <p><%-  els.get("FDprematureIntRate")%>%</p>
                        </li>
                       <%}%>
                       <%if(!isNull(els.get("FDpreMatureIntAmt"))){%>
                            <li class="list-group-item">
                                <label>Interest Amount by Premature Rate</label>
                                <p>
                                    <span class="amt">
                                    <%-checkAmount($.formatNumber(  els.get("FDpreMatureIntAmt"), {format:"#,###.00", locale:"us"}))%>
                                        <span class="cur">BDT</span>
                                    </span>
                                </p>
                            </li>
                        <%}%>
                         <%if(!isNull(els.get("FDlossAmt"))){%>
                            <li class="list-group-item">
                                <label>Loss Amount for Premature Encashment (Contracted Maturity Amount - Premature Encashment Amount)</label>
                                <p>
                                    <span class="amt">
                                        <%- checkAmount($.formatNumber( els.get("FDlossAmt"), {format:"#,###.00", locale:"us"}))%>
                                        <span class="cur">BDT</span>
                                    </span>
                                </p>
                            </li>
                        <%}%>
                        <%if(!isNull(els.get("FDencashAmt"))){%>
                            <li class="list-group-item">
                                <label>Encashment Amount (Principal Amount + Premature Interest Amount) </label>
                                <h3 class="m0">
                                    <span class="amt">
                                        <%-checkAmount($.formatNumber( els.get("FDencashAmt"), {format:"#,###.00", locale:"us"}))%>
                                        <span class="cur">BDT</span>
                                    </span>
                                </h3>
                                <label>Withholding Tax & Excise Duty Applicable </label>
                            </li>
                        <%}%>
                    </ul>

                    <div class="form-group" id="encashment_SelectAuthModeDiv">
                    
                    </div>
                    <div class="form-group">
	                 	<label class="check-label">
	                    	<input type="checkbox" name="transfer" id="FdEncashmentTandC"> I agree to <a href="javascript:void(0);" id="FDEncashmentTAndCPopup">Terms &amp; Conditions</a>
	                      	<span class="checkmark1"></span>
	                	</label>
	              	</div>
	              	<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="fdEncashmentTandCErr"></p>
					</div>

                    <div class="row">
                        <div class="col-xs-6"><button type="button" id="encashmentofFDRInit_CancelBtn" class="btn btn-default btn-block">Cancel</button></div>
                        <div class="col-xs-6"><a  id="encashmentofFDRInit_subBtn" class="btn btn-primary btn-block">Submit</a></div>
                    </div>
                </form>
            </section>
			<div id="termsAndCondPopup"></div>
			
			<div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
			    <div class="modal-dialog" role="document">
			        <form method="post" action="#">
			            <div class="modal-content">
			                <div class="modal-header">
			                    <button type="button" class="close" id="encashmentofFDRVerify_OTPCloseBtn" data-dismiss="modal" aria-label="Close">
			                        <span aria-hidden="true">&times;</span>
			                    </button>
			                    <h4 class="modal-title" id="myModalLabel"></h4>
			                </div>
			                <div class="modal-body">
			                    <p class="small" id="otpHelpText"></p>
							 	<p class="small" id="challengeText"></p>
			                    <div class="form-group">
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
			                            <p class="help-block error-message" style="color: #a94442; text-align: center;" id="otpNullError"></p>
			                        </div>
			                    </div>
			                    <div id="otpContainerDiv"></div>
			                </div>
			                <div class="modal-footer">
			                    <div class="row">
			                        <div class="col-xs-6 pr5">
			                            <button type="button" id="encashmentofFDRVerify_OTPCancelBtn" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
			                        </div>
			                        <div class="col-xs-6 pr5">
			                            <button type="button" class="btn btn-default btn-block otp_done" id="encashmentofFDRVerify_OTPVerifyBtn"><%-$.i18n.t('app.transfer.managebeneficiary.verify')%></button>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </form>
			    </div>
			</div>
 		</div>
    </div>
</div>

<script src="js/library/progressbar.min.js"></script>
<script src="js/libs/bootstrap/bootstrap-pincode-input.js"></script>
<script>
    $(document).ready(function () {
        $("#mpininput").pincodeInput({ complete: function (value, e) {} });

        DisableCopyPaste();

        $("input").keypress(function (e) {
            var code = e.keyCode ? e.keyCode : e.which;
            if (code == 13 || code == 10) {
                $(this).blur();
                return false;
            }
        });
    });
</script>
<script>
    $(".cardinputs").keyup(function (e) {
        if (this.value.length == this.maxLength) {
            $(this).parent().next().find(".cardinputs").focus();
        } else if ((e.which == 8 || e.which == 46) && this.value == "") {
            $(this).parent().prev().find(".cardinputs").focus();
        }
    });

    (function ($) {
        $.fn.numericlength = function () {
            return this.each(function () {
                var makelength = $(this).attr("maxlength");
                $(this).on("keyup", function (e) {
                    var allowedTest = "1234567890";
                    var orignalValue = $(this).val();
                    for (var i = 0; i < orignalValue.length; i++) {
                        var atchar = orignalValue[i];
                        if (allowedTest.indexOf(atchar) != -1) {
                        } else {
                            var changeTest = orignalValue.substr(0, i);
                            orignalValue = changeTest;
                        }
                    }
                    $(this).val(orignalValue);
                    if ($(this).val().length >= makelength && e.keyCode != "8" && e.keyCode != "46") {
                        e.preventDefault();
                        return false;
                    }
                });
            });
        };
    })(jQuery);
    $(".numericlengthcontrol").numericlength();

    (function ($) {
        $.fn.cardpinnumericlength = function () {
            return this.each(function () {
                var makelength = $(this).attr("maxlength");
                $(this).on("input ", function (e) {
                    var allowedTest = "1234567890";
                    var orignalValue = $(this).val();

                    for (var i = 0; i < orignalValue.length; i++) {
                        var atchar = orignalValue[i];
                        if (allowedTest.indexOf(atchar) != -1) {
                            $(this).next(".inputs").focus();
                        } else {
                            var changeTest = orignalValue.substr(0, i);
                            orignalValue = changeTest;
                        }
                    }
                    $(this).val(orignalValue);
                    if ($(this).val().length >= makelength && e.keyCode != "8" && e.keyCode != "46") {
                        e.preventDefault();
                        return false;
                    }
                });
                $(this).on("keyup", function (e) {
                    if ((e.which == 8 || e.which == 46) && this.value == "") {
                        $(this).prev(".inputs").focus();
                        return false;
                    }
                });
            });
        };
    })(jQuery);
    $(".cardpinnumericlengthcontrol").cardpinnumericlength();
    $(".cardpinnumericlengthcontrol").css({ "-webkit-text-security": "disc", "-moz-webkit-text-security": "disc", "-moz-text-security": "disc" });
</script>
			
