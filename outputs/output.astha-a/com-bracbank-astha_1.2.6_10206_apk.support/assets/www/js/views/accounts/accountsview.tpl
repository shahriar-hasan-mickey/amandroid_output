<%
	var els = new EncryptedLocalStorage('secret'); 
	//var casaAcnt = els.get("casaAccountDetail");
	var category = els.get("accountCategory");
	var casaAccountDetailDTO = els.get("casaAccountDetail");
	var status = els.get("casaStatus");
	var id = els.get("cardId");
	var myaccounts=els.get("myaccounts");
	var acctype1=myaccounts[id].category;
	var debitCardDetails = els.get("creditCardAccountList");
	console.log("debitCardDetails",debitCardDetails);
	var accNumberData = []
	if(!isNull(debitCardDetails)){
	 	_.each(debitCardDetails,function(data){ 
			if(data.accountNumber == myaccounts[id].accountNumber) { 
				accNumberData.push(data.maskedCCNumber);
			} 
		});
	}
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
			<a href="#/accountssummary/<%- id %>" class="bacArr">
				<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">
        			<h4 class="p10"><%-$.i18n.t('app.accounts.accountdetails')%></h4>
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>			
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="accStament">
    			<div class="dashTab accDet">
        			<div class="vc-card">
            			<ul class="list-unstyled">
                			<li>
                				<div class="card card-default acc dc_no">
                        			<p class="text-right m0">
  										<span class="logo-xs"></span>
    								</p>
									<p class="name"><%- els.get("cardHolderName")%></p>
    								<% if( category == "SBA" ) { %>
    									<p class="numb small text-muted"><%- casaAccountDetailDTO.accountNumber%> | Savings Account </p>
    								<% } else if(category == "CAA") { %>
    									<p class="numb small text-muted m0"><%- casaAccountDetailDTO.accountNumber%> | Current Account </p>
    								<% } %>
									<%if(!isNull(accNumberData)){%>
											<p class="numb small text-muted m0"><%- accNumberData.join(" | ")%></p>
									<%}%>
    								<!--<div class="amt">
                            			<p class="small m0 text-muted"><%-$.i18n.t('app.wealth.availbalance')%></p>                           			                           		
                            			<% if(casaAccountDetailDTO.availableBalance >= 0) {%>												  	
											<span class="num"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency") %></span>
										<% } else { %>
											<span class="num"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency") %></span>
										<% } %>
                        			</div>-->
                        			
                        			<% if(casaAccountDetailDTO.availableBalance >= 0) { %>
										<div class="amt pos">
											<p class="small m0 text-muted"><%-$.i18n.t('app.wealth.availbalance')%></p>                                		
												<% if(status != "D"){ %>
	                            			<span class="num"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency") %></span> 
											<% }else{ %>
												<span class="num zer"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency") %></span> 
											<% } %>
										</div>	
									<% } else if( casaAccountDetailDTO.availableBalance < 0){ %>
									<div class="amt neg">
										<p class="small m0 text-muted"><%-$.i18n.t('app.wealth.availbalance')%></p>                                		
										<% if(status != "D"){ %>
                            			<span class="num neg"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency") %></span> 
									<% }else{ %>
												<span class="num zer"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency") %></span> 
												<% } %>
									</div>	
									
									<% } %>
                        			<% if(status == "I" ) { %>
                        				<div class="corner-ribbon top-right small label-danger">Inactive</div>
                        			<% } else if(status == "A") {  %>
                        				<div class="corner-ribbon top-right small label-success">Active</div>
                        			<% } else if(status == "D"){ %>
										<div class="corner-ribbon top-right small label-default">Dormant</div>
									<% } %>
                				</div>
                			</li>
            			</ul>
        			</div>
    			</div>
    			<div class="state-wrap">
        			<ul class="list-unstyled list-nobrd">
    					<li class="list-group-item mores" id="hideDetails1" >
            				<p class="small text-muted"><%-$.i18n.t('app.accounts.accname')%></p>
            				<p><%- casaAccountDetailDTO.accountName%></p>
        				</li>
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.accounts.currentbalance')%></p>
            				<div class="amt">
                				<!--<span class="num"><%- casaAccountDetailDTO.currentBalance%></span>-->
                				<span class="num"><%- checkAmount($.formatNumber(casaAccountDetailDTO.currentBalance, {format:"#,###.00", locale:"us"}))%></span> <span><%- els.get("creditcardCurrency") %></span>
            				</div>
    					</li>
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.accounts.unclearedamount')%></p>
                			<div class="amt">
                    			<!--<span class="num"><%- casaAccountDetailDTO.unclearBalance%></span>-->
                    			<span class="num"><%- checkAmount($.formatNumber(casaAccountDetailDTO.unclearBalance, {format:"#,###.00", locale:"us"}))%></span>
                			</div>
        				</li> 
        				
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.accounts.overdraftlimit')%></p>
                			<div class="amt">
                    			<span class="num"><%- casaAccountDetailDTO.overdraftLimit%></span>
                    			<!--<span class="num"><%- checkAmount($.formatNumber(casaAccountDetailDTO.overdraftLimit, {format:"#,###.00", locale:"us"}))%></span>-->
                			</div>
            			</li>
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.accounts.holdamt')%></p>
                			<div class="amt">
                    			<!--<span class="num"><%- casaAccountDetailDTO.holdAmount%></span>-->
                    			<span class="num"><%- checkAmount($.formatNumber(casaAccountDetailDTO.holdAmount, {format:"#,###.00", locale:"us"}))%></span>
                			</div>
        				</li>
        				<% if(casaAccountDetailDTO.debitInterestRate!= null) { %>
	            			<!--<li class="list-group-item">
	                			<p class="text-muted small"><%-$.i18n.t('app.accounts.loanintrate')%></p>
	                			<p><%- casaAccountDetailDTO.debitInterestRate%></p>
	            			</li>-->
            			<% } %>
            			<li class="list-group-item">
                			<p class="text-muted small"><%-$.i18n.t('app.accounts.availablerewardpoint')%> </p>
                			<p><%- casaAccountDetailDTO.rewardPoints%></p>
            			</li>
            			<li class="list-group-item text-center">
                			<a href="javascript:void(0);" id="hideDetails" class="btn btn-primary"  style="display: none">Less Details
                    			<span class="fa fa-chevron-up"></span>
                			</a>
                			<a href="javascript:void(0);" id="showDetails" class="btn btn-primary" >More Details
                    			<span class="fa fa-chevron-down"></span>
                			</a>
            			</li>
            			<div id="a1" style="display: none">
            				<li class="list-group-item mores" id="hideDetails1" >
                				<p class="small text-muted"><%-$.i18n.t('app.accounts.nickname')%></p>
                				<p><%- casaAccountDetailDTO.accountShortName%></p>
            				</li>
            				<li class="list-group-item mores" id="hideDetails2" >
                				<p class="small text-muted"><%-$.i18n.t('app.accounts.branchname')%></p>
                				<p><%- casaAccountDetailDTO.branchDescription%></p>
            				</li>
            				
            				
            				<li class="list-group-item mores" id="hideDetails5">
                			<p class="text-muted small"><%-$.i18n.t('app.accounts.accounttype')%></p>
                			<% if(acctype1 == "SBA") { %>
                				<p> Savings Account </p>
                			<% } else if(acctype1 == "CAA") {%>
                				<p> Current Account </p>
                			<% } %>
        				</li>
        				<li class="list-group-item mores" id="hideDetails4">
                			<p class="text-muted small"><%-$.i18n.t('app.accounts.accountcurrency')%></p>
                			<div class="amt">
                    			<span class="num"><%- casaAccountDetailDTO.currencyCode%></span>
                			</div>
        				</li> 
        				
        				
            				<% var acntopendate = casaAccountDetailDTO.accountOpenedDate; var acntopendateArr = acntopendate.split("-");%>
            				<li class="list-group-item mores" id="hideDetails3">
                				<p class="small text-muted"><%-$.i18n.t('app.accounts.accountopeningdat')%></p>
                				<p>
                    				<div class="dater">
                        				<span class="dd d_cd"><%- acntopendateArr[0]%></span>
                        				<span class="mm d_cm"><%- acntopendateArr[1]%></span>
                        				<span class="yy d_cy"><%- acntopendateArr[2]%></span>
                    				</div>
                				</p>
            				</li>
            				<li class="list-group-item mores" id="hideDetails4" >
                				<p class="small text-muted"><%-$.i18n.t('app.accounts.nomineename')%></p>
                				<p><%- casaAccountDetailDTO.nomineeName%></p>
            				</li>
           				</div>
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
