<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccountslist = els.get("loanAccountDetail");
	var loanType = els.get("loanType")
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
			<a href="javascript:void(0);" id="backToPreviousPage" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">			
			<h4 class="p10"><%-$.i18n.t('app.product.loan.loandetails')%></h4>
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>			
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="loan_dtls">
    			<div class="dashTab accDet">
        			<div class="vc-card">
            			<ul class="list-unstyled">
            			
                			<li>
                    			<div class="card card-default loan">
                        			<p class="text-right m0">
                            			<span class="logo-xs"></span>
                        			</p>
                        			<p class="name"><%- myaccountslist.productName%></p>
                        			<p class="numb small text-muted"><%- myaccountslist.accountNumber%> | <%- myaccountslist.accountHolderName%></p>
                        			<div class="amt">
                            			<p class="small m0 text-muted"><%-$.i18n.t('app.product.loan.currentoutbal')%></p>			
                            			</span>      
                            			<% if(els.get("avlBalance") >= 0) {%>												  	
											<span class="num"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency")%></span>
										<% } else { %>
											<span class="num neg"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency")%></span>
										<% } %>                     			
                        			</div>
                        			<% if(myaccountslist.loanStatus == "Regular") { %>
                        				<div class="corner-ribbon top-right small label-success"><%- myaccountslist.loanStatus%></div>
                        			<% } else if(myaccountslist.loanStatus == "Over Due" ||  myaccountslist.loanStatus == "In-Active") { %>
                        				<div class="corner-ribbon top-right small label-danger"><%- myaccountslist.loanStatus%></div>
                        			<% } %>
                    			</div>
                			</li>
                		
            			</ul>
        			</div>
    			</div>
			    <div class="state-wrap">
        			<ul class="list-unstyled list-nobrd">
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.product.loan.accntnum')%></p>
                			<p><%- myaccountslist.accountNumber%></p>
            			</li>
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.product.loan.accntcurr')%></p>
                			<p><%- myaccountslist.currencyCode%></p>
            			</li>
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.product.loan.proddesc')%></p>
                			<p><%- myaccountslist.productName%></p>
            			</li>
            			
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.product.loan.loanstatus')%></p>
            				<p><%- myaccountslist.loanStatus%></p>
            			</li>
            			<li class="list-group-item text-center">
                			<a href="javascript:void(0);" id="hideDetails" class="btn btn-primary"  style="display: none"><%-$.i18n.t('app.product.creditcard.lessdetails')%>
                    			<span class="fa fa-chevron-up"></span>
                			</a>
                			<a href="javascript:void(0);" id="showDetails" class="btn btn-primary" ><%-$.i18n.t('app.product.creditcard.moredetails')%>
                    			<span class="fa fa-chevron-down"></span>
                			</a>
            			</li>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.nextpaymentdate')%></p>
                			<p><%- myaccountslist.nextDueDate%></p>
            			</li>
							<%if( loanType != "TL") { %>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.totallimit')%></p>
                			<p><%- myaccountslist.totalLimit%></p>
            			</li>
						<% }%>
						<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.tenure')%></p>
                			<p><%- myaccountslist.tenure%></p>
            			</li>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.loanintrestrate')%></p>
                			<p><%- myaccountslist.interestRate%></p>
            			</li>
						<%if( loanType == "TL") { %>
							<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.installamt')%></p>
                			<span class="num"><%- checkAmount($.formatNumber(myaccountslist.installmentamount, {format:"#,###.00", locale:"us"}))%> <%- myaccountslist.currencyCode%></span>
			            </li>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.nooftotalinstall')%></p>
                			<p><%- myaccountslist.numberoftotalinstallments%></p>
            			</li>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.noofsettledinstall')%></p>
                			<p><%- myaccountslist.numberofsettledinstallments%></p>
            			</li>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.noofremaininginstallments')%></p>
                			<p><%- myaccountslist.numberofactiveinstallment%></p>
            			</li>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.firstinstalldate')%></p>
                			<div class="dater">
                    			<%- myaccountslist.firstInstallmentDate%>
                			</div>
            			</li>
						<% }%>
            			<!--<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.firstinstalldate')%></p>
                			<div class="dater">
                    			<%- myaccountslist.firstInstallmentDate%>
                			</div>
            			</li>-->
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.payfrequency')%></p>
                			<div class="dater">
                    			<%- myaccountslist.repaymentFrequency%>
                			</div>
            			</li>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.loangrantdate')%></p>
                			<div class="dater">
                    			<%- myaccountslist.loangrantdate%>
                			</div>
            			</li>
            			<li class="list-group-item mores" style="display: none">
                			<p class="small text-muted"><%-$.i18n.t('app.product.loan.loanoverdueamt')%></p>
                			<p>
                    			<%- checkAmount($.formatNumber(myaccountslist.dueAmount, {format:"#,###.00", locale:"us"}))%> <%- myaccountslist.currencyCode%>
                			</p>
            			</li>
            		
        			</ul>
    			</div>
			</section>	
		</div>
	</div>
</div>
<script>
$(function() {
    $('#hideDetails').click(function(e){
        e.preventDefault();
        $('.mores').hide();
        $(this).hide();
        $('#showDetails').show();
    });
    $('#showDetails').click(function(e){
        e.preventDefault();
        $('.mores').show();
        $(this).hide();
        $('#hideDetails').show();
    });
});
</script>

