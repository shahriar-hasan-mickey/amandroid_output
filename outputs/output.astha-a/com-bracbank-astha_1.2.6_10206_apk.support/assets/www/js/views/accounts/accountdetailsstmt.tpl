<%
	var els = new EncryptedLocalStorage('secret'); 
	var email = els.get("emailId");
	
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
			<a href="javascript:void(0);" id="chequedeatil" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
	      </div>
	      <div class="headerMiddle">			
			<h4 class="p10"><%-$.i18n.t('app.accounts.chequehistory')%></h4>
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
    			<h3 class="tab-head"><%-$.i18n.t('app.accounts.chequehistory')%>
    				<div class="dropdown pull-right">
          				<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
            				<span class="glyphicon glyphicon-option-vertical"></span>
          				</button>
          				<ul class="dropdown-menu">
            				<li>
              					<a href="javascript:void(0);" id="shareBtn"><%-$.i18n.t('app.accounts.share')%></a>
        					</li>
            				<li>
              					<a href="javascript:void(0);"><%-$.i18n.t('app.creditcardstmt.do1')%></a>
            				</li>
            				<li>
              					<a href="javascript:void(0);"><%-$.i18n.t('app.creditcardstmt.do2')%></a>
            				</li>
          				</ul>
        			</div>
				</h3>
    			<ul class="list-group state-list txnSum">
    				<li class="list-group-item">
          				<a href="javascript:void(0);" id="getdetailstmtview">
            				<div class="dater small text-muted">
                				<span class="dd d_cd">18</span>
                				<span class="mm d_cm">Nov</span>
                				<span class="yy d_cy">2018</span>
            				</div>
            				<p>Lorem Ipsum</p>
            				<p class="text-muted small">Chq#12312</p>
            				<div class="amt neg text-right">
                				<span class="num">5,000.
                    				<span class="deci">00</span>
                				</span>
            				</div>
          				</a>
        			</li>
        			<li class="list-group-item">
          				<a href="javascript:void(0);" id="getdetailstmtview">
            				<div class="dater small text-muted">
                				<span class="dd d_cd">18</span>
                				<span class="mm d_cm">Nov</span>
                				<span class="yy d_cy">2018</span>
            				</div>
            				<p>Lorem Ipsum</p>
            				<p class="text-muted small">Chq#12312</p>
            				<div class="amt pos text-right">
                				<span class="num">7,000.
                    				<span class="deci">00</span>
                				</span>
            				</div>
          				</a>
    				</li>
        			<li class="list-group-item">
          				<a href="javascript:void(0);" id="getdetailstmtview">
            				<div class="dater small text-muted">
                				<span class="dd d_cd">18</span>
                				<span class="mm d_cm">Nov</span>
                				<span class="yy d_cy">2018</span>
            				</div>
            				<p>Lorem Ipsum</p>
            				<p class="text-muted small">Chq#12312</p>
            				<div class="amt neg text-right">
                				<span class="num">5,000.
                    				<span class="deci">00</span>
                				</span>
            				</div>
          				</a>
    				</li>
    				<li class="list-group-item">
          				<a href="javascript:void(0);" id="getdetailstmtview">
            				<div class="dater small text-muted">
                				<span class="dd d_cd">18</span>
        						<span class="mm d_cm">Nov</span>
            					<span class="yy d_cy">2018</span>
            				</div>
            				<p>Lorem Ipsum</p>
            				<p class="text-muted small">Chq#12312</p>
            				<div class="amt pos text-right">
                				<span class="num">7,000.
                    				<span class="deci">00</span>
            					</span>
            				</div>
          				</a>
        			</li>
        			<li class="list-group-item">
          				<a href="javascript:void(0);" id="getdetailstmtview">
            				<div class="dater small text-muted">
                				<span class="dd d_cd">18</span>
                				<span class="mm d_cm">Nov</span>
                				<span class="yy d_cy">2018</span>
            				</div>
        					<p>Lorem Ipsum</p>
            				<p class="text-muted small">Chq#12312</p>
            				<div class="amt neg text-right">
                				<span class="num">5,000.
                    				<span class="deci">00</span>
                				</span>
            				</div>
          				</a>
        			</li>
        			<li class="list-group-item">
          				<a href="javascript:void(0);" id="getdetailstmtview">
            				<div class="dater small text-muted">
                				<span class="dd d_cd">18</span>
            					<span class="mm d_cm">Nov</span>
                				<span class="yy d_cy">2018</span>
            				</div>
            				<p>Lorem Ipsum</p>
            				<p class="text-muted small">Chq#12312</p>
            				<div class="amt pos text-right">
                				<span class="num">7,000.
                    				<span class="deci">00</span>
                				</span>
            				</div>
          				</a>
        			</li>
        			<li class="list-group-item">
          				<a href="javascript:void(0);" id="getdetailstmtview">
        					<div class="dater small text-muted">
                				<span class="dd d_cd">18</span>
                				<span class="mm d_cm">Nov</span>
                				<span class="yy d_cy">2018</span>
            				</div>
            				<p>Lorem Ipsum</p>
            				<p class="text-muted small">Chq#12312</p>
            				<div class="amt neg text-right">
                				<span class="num">5,000.
                    				<span class="deci">00</span>
            					</span>
            				</div>
         				</a>
        			</li>
			        <li class="list-group-item">
          				<a href="javascript:void(0);" id="getdetailstmtview">
            				<div class="dater small text-muted">
                				<span class="dd d_cd">18</span>
                				<span class="mm d_cm">Nov</span>
                				<span class="yy d_cy">2018</span>
            				</div>
            				<p>Lorem Ipsum</p>
        					<p class="text-muted small">Chq#12312</p>
            				<div class="amt pos text-right">
                				<span class="num">7,000.
                    				<span class="deci">00</span>
                				</span>
            				</div>
          				</a>
        			</li>
    			</ul>
			</section>

			<div class="modal fade modernPOP shareme" id="shareme" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  				<div class="modal-dialog modal-lg" role="document">
      				<div class="modal-content">
          				<div class="modal-header">
              				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  				<span aria-hidden="true">&times;</span>
              				</button>
              				<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.accounts.sharestmt')%></h4>
      					</div>
          				<div class="modal-body">
          					<div class="form-group custRadio_small">
                  				<label for="username"><%-$.i18n.t('app.accounts.sendto')%></label>
              					<div class="custRadio_pass modal-radio">
                  					<div class="box">
                      					<div class="radio">
                          					<label>
                              					<input type="radio" name="optionsRadios" id="myMail" value="myMail" checked="">
                              					<div class="row bg">
                                  					<div class="col-xs-12 p0">
                                      					<span class="menu_icon ico-xs mail"></span>
                                      					<span class="small"><%-$.i18n.t('app.accounts.mymail')%></span>
                                  					</div>
                              					</div>
                          					</label>
                      					</div>
                  					</div>
                      				<div class="box">
                          				<div class="radio">
                              				<label>
                                  				<input type="radio" name="optionsRadios" id="otherMail" value="otherMail">
                              					<div class="row bg">
                                      				<div class="col-xs-12 p0">
                                          				<span class="menu_icon ico-xs mail"></span>
                                          				<span class="small"><%-$.i18n.t('app.accounts.othermail')%></span>
                                      				</div>
                                  				</div>
                              				</label>
                          				</div>
                      				</div>
              					</div>
              				</div>
              				<div class="clearfix"></div>
              				<div class="mymail" id="myMailDiv">
                  				<div class="alert alert-info small">
                      				<small><%-$.i18n.t('app.accounts.mymailinfo')%></small> <%- email%>
                      			</div>
                  			</div>
              				<div class="othermail" id="otherMailDiv">
                  				<div class="form-group">
                      				<label><%-$.i18n.t('app.accounts.emailaddress')%></label>
                      				<input type="text" autocomplete='off' name="email" class="form-control" />
              					</div>
                  				<div class="form-group">
                      				<label><%-$.i18n.t('app.accounts.setpassword')%></label>
                      				<i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" id="usernametip"></i>
                      				<input type="password" autocomplete='off' name="pass" class="form-control" />
                  				</div>
              				</div>
          				</div>
          				<div class="modal-footer">
              				<button type="button" class="btn btn-default btn-block" id="sendBtn"><%-$.i18n.t('app.accounts.send')%></button>
          				</div>
      				</div>
  				</div>
			</div>
			<div class="modal fade modernPOP" id="usernameTips" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    			<div class="modal-dialog" role="document">
    				<form>
            			<div class="modal-content">
                			<div class="modal-body">
                    			<p class="text-center">
                        			<span class="ico-circle center-block">
                        				<span class="menu_icon ico-2x alert"></span>
                    				</span>
                    			</p>
                    			<h4 class="text-center"><%-$.i18n.t('app.registration.passwordtiplabel')%></h4>
                				<ul class="list-unstyled checkstyle">
                        			<li class="list-group-item check"><%-$.i18n.t('app.registration.passwordtip1')%></li>
                    				<li class="list-group-item check"><%-$.i18n.t('app.registration.passwordtip2')%></li>
                    				<li class="list-group-item check"><%-$.i18n.t('app.registration.passwordtip3')%></li>
                    			</ul>
                			</div>
                			<div class="modal-footer">
                    			<button type="button" class="btn btn-default btn-block" id="ok"><%-$.i18n.t('app.accounts.ok')%></button>
                			</div>
        				</div>
        			</form>
    			</div>
			</div>
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
              				<h3><%-$.i18n.t('app.accounts.mailsent')%>!</h3>
              				<p class="text-center"><%-$.i18n.t('app.accounts.mailsuccmsg')%></p>
              				<button type="button" class="btn btn-default btn-block" data-dismiss="modal"><%-$.i18n.t('app.accounts.ok')%></button>
          				</div>
      				</div>
  				</div>
			</div>
		</div>
	</div>
</div>
