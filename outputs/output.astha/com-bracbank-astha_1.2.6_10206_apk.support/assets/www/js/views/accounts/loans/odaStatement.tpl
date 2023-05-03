<%
	var els = new EncryptedLocalStorage('secret');
	var id = els.get("odaId"); 
	var loanMiniStmt = els.get("loanAccountMiniStatementList");
	var odaLoanStatement = loanMiniStmt.tranDetails;
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
			<a href="#/overdraftloan/<%- id%>" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">			
			<h4 class="p10"><%-$.i18n.t('app.product.loan.odastatement')%></h4>
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
    			<h3 class="tab-head">Statements
    			<div class="dropdown pull-right">
		        	<button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
    					<span class="glyphicon glyphicon-option-vertical" aria-hidden="true"></span>
  					</button>
  					<ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
    					<!--<li><a href="javascript:void(0);" id="shareBtn"><%-$.i18n.t('app.accounts.share')%></a></li>-->
        				<li><a href="javascript:void(0);" id="LSdwldPDF"><%-$.i18n.t('app.accounts.dwldpdf')%></a></li>
  					</ul>
				</div>
    			</h3>
    			<ul class="list-group state-list txnSum">
    				<%if(odaLoanStatement.length > 0) { %>
	    				<% _.each(odaLoanStatement,function(data) { %>
	    					<li class="list-group-item">
	    					<% var txndate = data.valueDate; var txnDateArr = txndate.split("-"); console.log(txnDateArr); %>
		        				<div class="dater small text-muted">
		            				<span class="dd d_cd"><%- txnDateArr[0]%></span>
		            				<span class="mm d_cm"><%- txnDateArr[1]%></span>
		            				<span class="yy d_cy"><%- txnDateArr[2]%></span>
		        				</div>
		        				<p><%- data.description %></p>
		        				<p><%- data.currency %></p>
		        				<% var flag = data.flgDrCr;%>
	                    		<% if( flag == "Cr") { %>
            						<div class="amt pos text-right">
            							<span class="num"><%- checkAmount($.formatNumber(data.amount, {format:"#,###.00", locale:"us"}))%></span>
	            					</div>
            					<% } else if(flag == "Dr") { %>
            						<div class="amt neg text-right">
            							<span class="num"><%- checkAmount($.formatNumber(data.amount, {format:"#,###.00", locale:"us"}))%></span>
	            					</div>
            					<% } %>
								<div class="amt text-right small">
									<span class="num"><%- checkAmount($.formatNumber(data.runningBalance, {format:"#,###.00", locale:"us"}))%></span>
		            				<span class="cur"><%- data.currency %></span>
		    					</div>
		    				<%});%>
		    			</li>
		    		<% } %>
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
                              					<input type="radio" name="mailOptions" id="myMail" value="myMail" checked="">
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
                                  				<input type="radio" name="mailOptions" id="otherMail" value="otherMail">
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
                      				<input type="text" autocomplete='off' id="emailId" name="emailId" class="form-control" />
              					</div>
              					<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="emailNullError"></p>
				 				</div>
                  				<div class="form-group">
                  					<label><%-$.i18n.t('app.accounts.setpassword')%></label>
                      				<i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" id="usernametip"></i>
                      				<input type="password" autocomplete='off' id="passwd" name="passwd" milength="8" maxlength="20" class="form-control restrictCpyPst" />
                  				</div>
                  				<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="PwdNullError"></p>
				 				</div>
              				</div>
          				</div>
          				<div class="modal-footer">
              				<button type="button" class="btn btn-default btn-block" id="LS_sendButton"><%-$.i18n.t('app.accounts.send')%></button>
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


<script>
	$(document).ready(function(){
		DisableCopyPaste();
	});
</script>
