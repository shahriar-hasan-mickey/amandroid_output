<%
	var els = new EncryptedLocalStorage('secret');
	var id = els.get("latrLoanId"); 
	var myaccountslist = els.get("loanAccountList");
	var latrLoanList = myaccountslist[id];
	var LATRloanDTO = els.get("loanAccountDetail");
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
			<h4 class="p10">LATR</h4>
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
    			<div class="dashTab accDet">
        			<div class="vc-card">
            			<ul class="list-unstyled">
                			<li>
                    			<a href="javascript:void(0);">
                        			<div class="card card-default loan">
                            			<p class="text-right m0">
                                			<span class="logo-xs"></span>
                        				</p>
                            			<p class="name"><%- latrLoanList.accountShortName%></p>
                            			<% var status = latrLoanList.imAccountStatus;%>
                            			<% if (status == "A") {%>
                            				<p class="numb small text-muted">LATR Loan | Active</p>
                            			<% } else if (status == "I") {%>
                            				<p class="numb small text-muted">LATR Loan | Inactive</p>
                            			<% } %>
                            			<div class="amt">
                                			<p class="small m0 text-muted"><%-$.i18n.t('app.product.loan.totAvailLimt')%></p>                      		
                                			<% if(latrLoanList.totalLimit >= 0) {%>												  	
												<span class="num"><%- checkAmount($.formatNumber(latrLoanList.totalLimit, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- LATRloanDTO.currencyCode%></span>
											<% } else { %>
												<span class="num neg"><%- checkAmount($.formatNumber(latrLoanList.totalLimit, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- LATRloanDTO.currencyCode%></span>
											<% } %>
                            			</div>
                        			</div>
                				</a>
            				</li>
            			</ul>
        			</div>
    			</div>
    			<!--<div class="links">
        			<a href="#/latrloan/<%- id%>"><%-$.i18n.t('app.product.loan.statement')%></a>
    			</div>-->
    			<div class="state-wrap multi-acc">
						<div class="row">
						<div class="col-xs-6">
							<ul class="list-unstyled list-nobrd">
								<li class="list-group-item">
									<p class="text-muted small"><%-$.i18n.t('app.product.loan.accntnum')%></p>
									<p style="color: black;"><%- LATRloanDTO.accountNumber%></p>
								</li>
								<li class="list-group-item">
									<p class="text-muted small"><%-$.i18n.t('app.product.loan.openingdate')%></p>
								<p style="color: black;"><%- LATRloanDTO.accountOpenedDate%></p>
								</li>
								<% if(LATRloanDTO.disbursedAmount != null){	%>
								<li class="list-group-item">
									<p class="text-muted small"><%-$.i18n.t('app.product.loan.disbursementamt')%> </p>
									<span class="num"><%- checkAmount($.formatNumber(LATRloanDTO.disbursedAmount, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- LATRloanDTO.currencyCode%></span>
								</li>
								<%}%>
								<% if(LATRloanDTO.disbursedAmount != null){	%>
								<li class="list-group-item">
									<p class="text-muted small"><%-$.i18n.t('app.product.loan.overdue')%></p>
									
									<span class="num"><%- checkAmount($.formatNumber(LATRloanDTO.disbursedAmount, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- LATRloanDTO.currencyCode%></span>
								</li>
								<%}%>
							</ul>	
						</div>
			    		<div class="col-xs-6">
				    		<ul class="list-unstyled list-nobrd">
								<li class="list-group-item">
									<p class="text-muted small"><%-$.i18n.t('app.product.loan.duedate')%></p>
									<p style="color: black;"><%-LATRloanDTO.nextDueDate%></p>
								</li>
				        		<li class="list-group-item">
									<p class="text-muted small"><%-$.i18n.t('app.product.loan.daysremaining')%></p>
								<% if(LATRloanDTO.duedateDays > 7){	%>
							<p><span class="label " style="background-color:#5cb85c;"><%- LATRloanDTO.duedateDays%></span></p>
							<% } else if(LATRloanDTO.duedateDays >= 2 && LATRloanDTO.duedateDays <=7 ){	%>
									<p><span class="label label-warning"><%- LATRloanDTO.duedateDays%></span></p>
							<% } else if(LATRloanDTO.duedateDays < 2 ){	%>
								<p><span class="label label-danger"><%- LATRloanDTO.duedateDays%></span></p>
								<% } %>
						</li>
							</ul>
			    		</div>
					</div>
					<!--<hr />
		 			<div class="row">
						<div class="col-xs-6">
							<ul class="list-unstyled list-nobrd">
								<li class="list-group-item">
									<p class="text-muted small">Account No.</p>
									<p class="text-primary">6013XXX2555</p>
								</li>
								<li class="list-group-item">
									<p class="text-muted small">Opening Date</p>
									<p class="d_fdate">12 May 2020</p>
								</li>
								<li class="list-group-item">
									<p class="text-muted small">Settlement Date </p>
									<p class="d_fdate">12 May 2020</p>
								</li>		
								<li class="list-group-item">
									<p class="text-muted small">Tenor</p>
									<p>10</p>
								</li>
								<li class="list-group-item">
									<p class="text-muted small">Disbursement Amount</p>
									<p><span class="num">75,000.<span class="deci">00</span></span> <span class="small cur dCur text-muted">BDT</span></p>
								</li>
							</ul>	
						</div>
			    		<div class="col-xs-6">
				    		<ul class="list-unstyled list-nobrd">
								<li class="list-group-item">
									<p class="text-muted small">Excise Duty</p>
									<p><span class="num">1,000.<span class="deci">00</span></span> <span class="small cur dCur text-muted">BDT</span></p>
								</li>
				        		<li class="list-group-item">
									<p class="text-muted small">Due Date</p>
									<p class="d_fdate">12 May 2020</p>
								</li>
								<li class="list-group-item">
									<p class="text-muted small">Settlement Amount </p>
									<p><span class="num">75,000.<span class="deci">00</span></span> <span class="small cur dCur text-muted">BDT</span></p>
								</li>
								<li class="list-group-item">
									<p class="text-muted small">Days Remaining </p>
									<p><span class="label label-warning">20 Days</span></p>
								</li>
							</ul>
			    		</div>
					</div>
					<hr />
					<div class="row">
						<div class="col-xs-6">
							<ul class="list-unstyled list-nobrd">
								<li class="list-group-item">
									<p class="text-muted small">Account No.</p>
									<p class="text-primary">6013XXX2333</p>
								</li>
								<li class="list-group-item">
									<p class="text-muted small">Opening Date</p>
									<p class="d_fdate">12 May 2020</p>
								</li>
								<li class="list-group-item">
									<p class="text-muted small">Settlement Date </p>
									<p class="d_fdate">12 May 2020</p>
								</li>
								<li class="list-group-item">
									<p class="text-muted small">Tenor</p>
									<p>10</p>
								</li>
								<li class="list-group-item">
									<p class="text-muted small">Disbursement Amount</p>
									<p><span class="num">75,000.<span class="deci">00</span></span> <span class="small cur dCur text-muted">BDT</span></p>
								</li>
							</ul>	
						</div>
			    		<div class="col-xs-6">
				    		<ul class="list-unstyled list-nobrd">
						 		<li class="list-group-item">
									<p class="text-muted small">Excise Duty</p>
									<p><span class="num">1,000.<span class="deci">00</span></span> <span class="small cur dCur text-muted">BDT</span></p>
								</li>
				        		<li class="list-group-item">
									<p class="text-muted small">Due Date</p>
									<p class="d_fdate">12 May 2020</p>
								</li>
								<li class="list-group-item">
									<p class="text-muted small">Settlement Amount </p>
									<p><span class="num">75,000.<span class="deci">00</span></span> <span class="small cur dCur text-muted">BDT</span></p>
								</li>
								<li class="list-group-item">
									<p class="text-muted small">Days Remaining </p>
									<p><span class="label label-success">30 Days</span></p>
								</li>
							</ul>
			    		</div>-->
					</div>
	    		</div>  
			</section>	
		</div>
	</div>
</div>
