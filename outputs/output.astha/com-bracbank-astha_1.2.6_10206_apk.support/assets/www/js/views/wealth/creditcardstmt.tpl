<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>

<%
	var els = new EncryptedLocalStorage('secret'); 
	var email = els.get("emailId");
%>
		<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="accountType.html" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.creditcardstmt.savingaccount')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						  <section class="content" id="account">
  
    <div class="dashTab accDet">
      <!-- Tab panes -->
      <div class="vc-card">
        <ul class="list-unstyled">
          <li>
            <a href="#/accounts">
              <div class="card card-default acc">
                <p class="text-right m0">
                  <span class="logo-xs"></span>
                </p>
                <p class="name">Shakib</p>
                <p class="numb small text-muted">182XXXXXXXXXX64 | Salary Account</p>
                <div class="amt">
                  <p class="small m0 text-muted"><%-$.i18n.t('app.creditcardstmt.currentbalance')%></p>
                  <span class="num">23,000.
                    <span class="deci">56</span>
                  </span>
                  <span class="small cur dCur text-muted">BDT</span>
                </div>
                <div class="has_link"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
              </div>
            </a>
          </li>
        </ul>
      </div>
    </div>
    <!-- / portTab-->
    <!-- Nav tabs -->
    <div class="links">
      <a href="get_statement.html"><%-$.i18n.t('app.creditcardstmt.detailedstatement')%></a>
      <a href="" data-toggle="modal" data-target="#expenseSum"><%-$.i18n.t('app.creditcardstmt.expensesummary')%></a>
      <a href="get_cheque_history.html"><%-$.i18n.t('app.creditcardstmt.chequehistory')%></a>
    </div>
    <!-- / account details-->
    <!-- statement-->
    <div class="state-wrap">
      <!-- Tab panes -->
      <h3 class="tab-head"><%-$.i18n.t('app.creditcardstmt.ministatement')%>
        <div class="dropdown pull-right">
          <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            <span class="glyphicon glyphicon-option-vertical" aria-hidden="true"></span>
          </button>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            <li><a href="#" data-toggle="modal" data-target="#shareme"><%-$.i18n.t('app.creditcardstmt.share')%></a></li>
            <li><a href="share_history.html"><%-$.i18n.t('app.creditcardstmt.sharehistory')%></a></li>
            <li><a href="javascript:void(0);"><%-$.i18n.t('app.creditcardstmt.do1')%></a></li>
            <li><a href="javascript:void(0);"><%-$.i18n.t('app.creditcardstmt.do2')%></a></li>
          </ul>
        </div>
      </h3>
      <ul class="list-group state-list txnSum">
        <li class="list-group-item">
          <div class="dater small text-muted">
            <span class="dd d_cd">18</span>
            <span class="mm d_cm">Nov</span>
            <span class="yy d_cy">2018</span>
          </div>
          <p><%-$.i18n.t('app.creditcardstmt.fundtransfer')%></p>
          <p class="text-muted small">A23FG0008</p>
          <div class="amt neg text-right">
            <span class="type">Dr </span>
            <span class="num">5,000.
              <span class="deci">00</span>
            </span>
            <span class="cur">BDT</span>
          </div>
        </li>
        <li class="list-group-item">
          <div class="dater small text-muted">
            <span class="dd d_cd">18</span>
            <span class="mm d_cm">Nov</span>
            <span class="yy d_cy">2018</span>
          </div>
          <p>Airtel Billpayment</p>
          <p class="text-muted small">ATBP8810</p>
          <div class="amt neg text-right">
            <span class="type">Dr </span>
            <span class="num">5,000.
              <span class="deci">00</span>
            </span>
            <span class="cur">BDT</span>
          </div>
        </li>
        <li class="list-group-item">
          <div class="dater small text-muted">
            <span class="dd d_cd">18</span>
            <span class="mm d_cm">Nov</span>
            <span class="yy d_cy">2018</span>
          </div>
          <p><%-$.i18n.t('app.creditcardstmt.checkdeposit')%></p>
          <p class="text-muted small">CHKDEP996</p>
          <div class="amt pos text-right">
            <span class="type">Cr </span>
            <span class="num">9,000.
              <span class="deci">00</span>
            </span>
            <span class="cur">BDT</span>
          </div>
        </li>
        <li class="list-group-item">
          <div class="dater small text-muted">
            <span class="dd d_cd">18</span>
            <span class="mm d_cm">Nov</span>
            <span class="yy d_cy">2018</span>
          </div>
          <p>ATM Withdrawal </p>
          <p class="text-muted small">&nbsp;</p>
          <div class="amt neg text-right">
            <span class="type">Dr </span>
            <span class="num">4,000.
              <span class="deci">00</span>
            </span>
            <span class="cur">BDT</span>
          </div>
        </li>
        <li class="list-group-item">
          <div class="dater small text-muted">
            <span class="dd d_cd">18</span>
            <span class="mm d_cm">Nov</span>
            <span class="yy d_cy">2018</span>
          </div>
          <p>Fund Transfer</p>
          <p class="text-muted small">FT634098</p>
          <div class="amt neg text-right">
            <span class="type">Dr </span>
            <span class="num">98.
              <span class="deci">00</span>
            </span>
            <span class="cur">BDT</span>
          </div>
        </li>
        <li class="list-group-item">
          <div class="dater small text-muted">
            <span class="dd d_cd">18</span>
            <span class="mm d_cm">Nov</span>
            <span class="yy d_cy">2018</span>
          </div>
          <p>Fund Transfer</p>
          <p class="text-muted small">FT634098</p>
          <div class="amt neg text-right">
            <span class="type">Dr </span>
            <span class="num">6,500.
              <span class="deci">00</span>
            </span>
            <span class="cur">BDT</span>
          </div>
        </li>
        <li class="list-group-item">
          <div class="dater small text-muted">
            <span class="dd d_cd">18</span>
            <span class="mm d_cm">Nov</span>
            <span class="yy d_cy">2018</span>
          </div>
          <p>Airtel Billpayment</p>
          <p class="text-muted small">ATBP8810</p>
          <div class="amt neg text-right">
            <span class="type">Dr </span>
            <span class="num">5,000.
              <span class="deci">00</span>
            </span>
            <span class="cur">BDT</span>
          </div>
        </li>
        <li class="list-group-item">
          <div class="dater small text-muted">
            <span class="dd d_cd">18</span>
            <span class="mm d_cm">Nov</span>
            <span class="yy d_cy">2018</span>
          </div>
          <p>Check Deposit</p>
          <p class="text-muted small">CHKDEP996</p>
          <div class="amt pos text-right">
            <span class="type">Cr </span>
            <span class="num">200.
              <span class="deci">00</span>
            </span>
            <span class="cur">BDT</span>
          </div>
        </li>
        <li class="list-group-item">
          <div class="dater small text-muted">
            <span class="dd d_cd">18</span>
            <span class="mm d_cm">Nov</span>
            <span class="yy d_cy">2018</span>
          </div>
          <p><%-$.i18n.t('app.creditcardstmt.atmwithdrawal')%> </p>
          <p class="text-muted small">&nbsp;</p>
          <div class="amt neg text-right">
            <span class="type">Dr </span>
            <span class="num">11,150.
              <span class="deci">00</span>
            </span>
            <span class="cur">BDT</span>
          </div>
        </li>
        <li class="list-group-item">
          <div class="dater small text-muted">
            <span class="dd d_cd">18</span>
            <span class="mm d_cm">Nov</span>
            <span class="yy d_cy">2018</span>
          </div>
          <p>Fund Transfer</p>
          <p class="text-muted small">FT634098</p>
          <div class="amt neg text-right">
            <span class="type">Dr </span>
            <span class="num">35,890.
              <span class="deci">00</span>
            </span>
            <span class="cur">BDT</span>
          </div>
        </li>
      </ul>
    </div>
    <!-- / state-wrap-->
    <!-- / statement-->
  </section>


  <!-- shareme -->
<div class="modal fade modernPOP shareme" id="shareme" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
          <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
              </button>
              <h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.creditcardstmt.sharestatement')%></h4>
          </div>
          <div class="modal-body">
              <div class="form-group custRadio_small">
                  <label for="username"><%-$.i18n.t('app.creditcardstmt.send')%> <%-$.i18n.t('app.creditcardstmt.to')%></label>
                  <div class="custRadio_pass modal-radio">
                      <div class="box">
                          <div class="radio">
                              <label>
                                  <input type="radio" name="optionsRadios" id="optionsRadios1" value="<%-$.i18n.t('app.creditcardstmt.mymail')%>" checked="">
                                  <div class="row bg">
                                      <div class="col-xs-12 p0">
                                          <span class="menu_icon ico-xs mail"></span>
                                          <span class="small"><%-$.i18n.t('app.creditcardstmt.mymail')%></span>
                                      </div>
                                  </div>
                              </label>
                          </div>
                      </div>
                      <div class="box">
                          <div class="radio">
                              <label>
                                  <input type="radio" name="optionsRadios" id="optionsRadios2" value="<%-$.i18n.t('app.creditcardstmt.othermail')%>">
                                  <div class="row bg">
                                      <div class="col-xs-12 p0">
                                          <span class="menu_icon ico-xs mail"></span>
                                          <span class="small"><%-$.i18n.t('app.creditcardstmt.othermail')%></span>
                                      </div>
                                  </div>
                              </label>
                          </div>
                      </div>
                  </div>
              </div>
              <div class="clearfix"></div>
              <div class="mymail">
                  <div class="alert alert-info small">
                      <small>You will receive the mail</small> <%- email%></div>
                  </div>
              <div class="othermail" style="display: none">
                  <div class="form-group">
                      <label><%-$.i18n.t('app.creditcardstmt.emailaddress')%></label>
                      <input type="text" name="email" class="form-control" />
                  </div>
                  <div class="form-group">
                      <label><%-$.i18n.t('app.creditcardstmt.setpassword')%></label><i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" data-dismiss="modal" data-toggle="modal" data-target="#usernameTips"></i>
                      <input type="password" name="pass" class="form-control" />
                  </div>
              </div>
          </div>
          <div class="modal-footer">
              <button type="button" data-toggle="modal" data-target="#mailSent" class="btn btn-default btn-block" data-dismiss="modal"><%-$.i18n.t('app.creditcardstmt.send')%></button>
          </div>
      </div>
  </div>
</div>
<!-- / shareme-->
<!-- Modal -->
<div class="modal fade modernPOP" id="usernameTips" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <form method="post" action="#">
            <div class="modal-content">
                <div class="modal-body">
                    <p class="text-center">
                        <span class="ico-circle center-block">
                            <span class="menu_icon ico-2x alert"></span>
                        </span>
                    </p>
                    <h4 class="text-center"><%-$.i18n.t('app.creditcardstmt.userpass')%></h4>
                    <ul class="list-unstyled checkstyle">
                        <li class="list-group-item check"><%-$.i18n.t('app.creditcardstmt.con1')%></li>
                        <li class="list-group-item check"><%-$.i18n.t('app.creditcardstmt.con2')%></li>
                        <li class="list-group-item check"><%-$.i18n.t('app.creditcardstmt.con3')%></li>
                    </ul>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default btn-block" data-dismiss="modal" data-toggle="modal" data-target="#shareme"><%-$.i18n.t('app.creditcardstmt.ok')%></button>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- / modal-->
<!-- Expense Summary -->
<div class="modal fade modernPOP" id="expenseSum" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
      <form method="post" action="info.html">
          <div class="modal-content">
              <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                  </button>
                  <h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.creditcardstmt.expensesummary')%></h4>
              </div>
              <div class="modal-body clearfix">
                  <div id="canvas-holder" style="position: relative; height:200px;width:200px; margin:0 auto;margin-top:35px;">
                      <canvas id="chart-area"></canvas>
                  </div>
                  <div id="oneLegend" class="chart-legend-container"></div>
              </div>
          </div>
      </form>
  </div>
</div>
<!-- / Expense Summary-->
<!-- success -->
<div class="modal fade modernPOP" id="mailSent" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
      <div class="modal-content">
          <div class="modal-body clearfix text-center">
              <br />
              <p class="text-center">
                  <span class="ico-circle center-block">
                      <span class="menu_icon ico-2x check"></span>
                  </span>
              </p>
              <h3><%-$.i18n.t('app.creditcardstmt.mailsent')%></h3>
              <p class="text-center"><%-$.i18n.t('app.creditcardstmt.mail3')%></p>
              <button type="button" class="btn btn-default btn-block" data-dismiss="modal"><%-$.i18n.t('app.creditcardstmt.ok')%></button>
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
<!-- / modal-->
<script src="js/library/bootstrap.min.js"></script>
<script src="js/library/slip.js"></script>
<script src="js/library/cardStack.js"></script>
<script src="js/common.js"></script>
		<script>
			
	function applyrpl(){
	Backbone.history.navigate("#/applyreadycashrequest");
	}
	</script>
	<script>
	
	$('.sett').click(function(event){
    //event.stopPropagation();
    
	});
		function ccard(i){
	var ccno=$('#ccno'+i).val();
	var cc_nick_name = $('#cc_nick_name'+i).val();
	var eppeligiblecardflagg = $('#eppeligiblecardflagg'+i).val();
	var creditmask = $('#creditmask'+i).val();
	var els=new EncryptedLocalStorage('secret');
	els.set("ccardno","");
	els.set("ccardno",ccno);
	els.set("cc_nick_name","");
	els.set("cc_nick_name",cc_nick_name);
	
	var ccaccno=$('#ccaccno'+i).val();
	els.set("ccardaccno","");
	els.set("ccardaccno",ccaccno);
	
	
	els.set("eppeligiblecardflagg","");
	els.set("eppeligiblecardflagg",eppeligiblecardflagg);
	els.set("creditmask","");
	els.set("acctnomaskk",creditmask);
	Backbone.history.navigate("#/ccstatement");
	}
</script>
