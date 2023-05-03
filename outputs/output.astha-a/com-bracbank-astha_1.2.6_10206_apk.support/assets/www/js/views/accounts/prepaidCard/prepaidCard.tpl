<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccountslist = els.get("creditCardDetailDTO");
	console.log(myaccountslist)
	els.set("accShortNme",myaccountslist.accountShortName);
	els.set("prodNme",myaccountslist.productName);
	var id = els.get("ppCardId");
	var email = els.get("emailId");
	var currentMonth = els.get("statementDetails");
	
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
			<a href="javascript:void(0)" class="bacArr" id="backToPreviousPage">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">			
			<h4 class="p10"><%-$.i18n.t('app.wealth.prepaidcard')%></h4>
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>			
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="prepaid">
    			<div class="dashTab">
        			<div class="vc-card">
            			<ul class="list-unstyled">
							<li>
								<a href="#/prepaidcarddetailstatement/<%- id%>">                      
									<div class="cc_summary_design pp<%-els.get("productCode")%>">
										<div class="cc_container">
											<p class="text-center ccno_wrap">
											<%if(myaccountslist.accountShortName != null) { %>
														<span class="cc_name"><%- myaccountslist.accountShortName%></span>
													<% } else {%>
														<span class="cc_name"><%- els.get("cardHolderName")%></span>	
													<% } %>
										<!--	<span class="cc_name"><%- els.get("cardHolderName")%></span>-->
											<bdi>
												<span class="ccno"><%- myaccountslist.accountNumber%></span>
											</bdi>
											</p>
											<div class="row cc_balance">
												<div class="col-xs-12">
													<p class="small lbl"><%-$.i18n.t('app.prepaidcard.availbalance')%></p>
													<p class="amt">
														<% if(els.get("avlBalance") >= 0) {%>												  	
															<span class="num"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span>
														<% } else { %>
															<span class="num neg"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span>
														<% } %>
														<span class="cur small"><%- els.get("creditcardCurrency") %></span>
													</p>
												</div>
											</div>
											</div>
											<div class="has_link_cc"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
										</div>
									</a>
								</li>
								<!--<li>
                    			<a href="#/prepaidcarddetailstatement/<%- id%>" id="prepaidstmtview">
                        			<div class="card card-default acc card-CC card-CC-gold visa-CC">
                            			<p class="m0"><%- myaccountslist.productName%>
                                			<span class="logo-xs pull-right"></span>
                            			</p>
                            			<span class="menu_icon chip pull-left"></span>
                            			<br/>
                            			<strong><%- myaccountslist.cardHolderName%></strong>
                            			<div class="clearfix"></div>
                            			<h4 class="ac-num text-muted text-center">
                                			<%- myaccountslist.accountNumber%>
                            			</h4>
                            			<div class="amt">
                                			<p class="small m0 text-muted"><%-$.i18n.t('app.prepaidcard.availbalance')%></p>                              			
                                			<span class="num"><%- checkAmount($.formatNumber(myaccountslist.availableBalance, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- myaccountslist.currencyCode %></span>
                            			</div>
                            			<div class="has_link"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
                        			</div>
                    			</a>
                			</li>-->
            			</ul>
        			</div>
    			</div>
    			<div class="links">
        			<!--<a href="javascript:void(0);" id="financialsummary" ><%-$.i18n.t('app.ccstatement.financialsummary')%></a>-->
    			</div>    
    			<div class="state-wrap">    
        			<h3 class="dropdown tab-head">
            			<button class="billedStm" id="prepaid_statement_type" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            			</button>
            			<ul class="dropdown-menu" aria-labelledby="unbill">
                			<li>
                    			<a href="javascript:void(0);" id="currmonth"><%-$.i18n.t('app.prepaidcard.currmonth')%></a>
                			</li>
                			<li>
                    			<a href="javascript:void(0);" id="recharges"><%-$.i18n.t('app.prepaidcard.recharges')%></a>
                			</li>
            			</ul>
            			<!--<div class="dropdown pull-right">
                			<button class="btn btn-default dropdown-toggle" type="button" data-toggle="dropdown">
                    			<span class="glyphicon glyphicon-option-vertical"></span>
                			</button>
                			<ul class="dropdown-menu">
                				<li>
	                            	<a href="javascript:void(0);" id="shareBtn"><%-$.i18n.t('app.accounts.share')%></a>
	                        	</li>
                    			<li>
                        			<a href="javasccript:void(0);" id="PCdwldPDF"><%-$.i18n.t('app.creditcardstmt.do1')%></a>
                    			</li>
                    			<li>
                        			<a href="jaavscript:void(0);"><%-$.i18n.t('app.creditcardstmt.do2')%></a>
                    			</li>
                			</ul>
            			</div>-->
        			</h3>    
        			<div id="prepaid_card_list"></div>
    			</div>
			</section>
			<div class="modal fade modernPOP" id="expenseSum" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    			<div class="modal-dialog" role="document">
        			<form method="post" action="info.html">
            			<div class="modal-content">
                			<div class="modal-header">
                    			<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        			<span aria-hidden="true">&times;</span>
                    			</button>
                    			<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.ccstatement.financialsummary')%></h4>
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
			    		<div class="modal fade modernPOP shareme" id="sharePopUp" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  				<div class="modal-dialog modal-lg" role="document">
      				<div class="modal-content">
          				<div class="modal-header">
              				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  				<span aria-hidden="true">&times;</span>
              				</button>
              				<h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.accounts.sharestmt')%></h4>
      					</div>
          				<div class="modal-body">
          					<div class="alert alert-info small">
                      				<small><%-$.i18n.t('app.accounts.mymailinfo')%></small> <%- email%>
                      			</div>
          				</div>
          				<div class="modal-footer">
              				<button type="button" class="btn btn-default btn-block" id="sendBtnPC"><%-$.i18n.t('app.accounts.send')%></button>
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
