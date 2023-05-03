<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccountslist = els.get("myaccountslodepositdeatillist");
	var depositcategory = els.get("category");
	console.log("depositcategory@@@@@@@@",depositcategory);
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
			<%if(els.get("category") == "RD") { %>
				<h4 class="p10"><%-$.i18n.t('app.product.termdeposits.dpsdepositdetails')%></h4>
			<% } else if(els.get("category") == "TD") {%>
				<h4 class="p10"><%-$.i18n.t('app.product.termdeposits.fddepositdetails')%></h4>
			<% } %>
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>			
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content"  id="deposit_stmt">
    			<div class="dashTab accDet">
    				<div class="vc-card">
            			<ul class="list-unstyled">
            			
                			<li>
                    			<div class="card card-default acc deposit">
                    				<% var depositStatus = myaccountslist.status%>
                    				<% if(depositStatus == "Regular") { %>
                        				<div class="corner-ribbon top-right small label-success"><%- myaccountslist.status%></div>
                    				<% } else if(depositStatus == "Irregular") { %>
                    					<div class="corner-ribbon top-right small label-default"><%- myaccountslist.status%></div>
                    				<% } else if(depositStatus == "Freeze") { %>
                    					<div class="corner-ribbon top-right small label-danger"><%- myaccountslist.status%></div>
                    				<% } %>
                        			<p class="text-right m0">
                            			<span class="logo-xs"></span>
                        			</p>
									<% if(myaccountslist.accountShortName != null && damyaccountslistta.accountShortName != "") { %>
                        			<p class="name"><%- myaccountslist.accountShortName%></p>
										  <% } else { %>
                        			<p class="name"><%- myaccountslist.productName%></p>
										  <% } %>
                        			
                        			<p class="numb small text-muted" style="white-space: nowrap;overflow: hidden;text-overflow: ellipsis;"><%- myaccountslist.accountNumber%></p>
                        			<div class="amt">
										<%if(els.get("category") == "RD") { %>
											  <%"cata7895458787",els.get("category")%>
					        				<p class="small m0 text-muted"><%-$.i18n.t('app.product.termdeposits.currentbalance')%></p>
					    				<% } else if(els.get("category") == "TD") {%>
					    					<%"cata789545458",els.get("category")%>
					    					<p class="small m0 text-muted"><%-$.i18n.t('app.product.termdeposits.principalamount')%></p>
					    				<% } %>
                                        <% if(els.get("avlBalance") >= 0) {%>												  	
											<span class="num"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency")%></span>
										<% } else { %>
											<span class="num neg"><%- checkAmount($.formatNumber(els.get("avlBalance"), {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- els.get("creditcardCurrency")%></span>
										<% } %>
                        			</div>
                    			</div>
            				</li>
        				</ul>
    				</div>
				</div>
				<div class="state-wrap">
    				<ul class="list-unstyled list-nobrd">
    					<li class="list-group-item">
    					<% if(els.get("category") == "RD") { %>
            				<p class="text-muted small"><%-$.i18n.t('app.product.termdeposits.amtatmaturity')%></p>
        				<% } else if(els.get("category") == "TD") { %>
        					<p class="text-muted small"><%-$.i18n.t('app.product.termdeposits.matureamt')%></p>
        				<% } %>
            				<div class="amt">
            					<span class="num"><%- checkAmount($.formatNumber(myaccountslist.maturityAmount, {format:"#,###.00", locale:"us"}))%></span>
                				<span class="small cur dCur text-muted"><%- els.get("creditcardCurrency")%></span>
            				</div>
						</li>
						<%if(els.get("category") == "RD") { %>
	    					<%var settledinstalement= myaccountslist.numberOfSettledInstallments %>
	    					<%if (settledinstalement !== null || settledinstalement !== "" ){%>
		    					<li class="list-group-item mores" style="display: none">
		            				<p class="small text-muted"><%-$.i18n.t('app.product.termdeposits.nooofinstpaid')%></p>
		            				<p><%- settledinstalement %></p>
		    					</li>
	    					<%}%>
	    				    <%var activeinstalement= myaccountslist.numberOfActiveInstallments %>
	    					<%if (activeinstalement !== null || activeinstalement !== ""){%>
		    					<li class="list-group-item mores" style="display: none">
		            				<p class="small text-muted"><%-$.i18n.t('app.product.termdeposits.noofoverdue')%></p>
		        					<p><%- activeinstalement%></p>
		    					</li>
	    				    <%}%>
    					<%}%>
    					<li class="list-group-item">
            				<p class="text-muted small"><%-$.i18n.t('app.product.termdeposits.maturedate')%></p>
            				<% var matDate = myaccountslist.maturityDate; var matDateArr = matDate.split(" "); console.log(matDateArr);%>
            				<div class="dater"><%- matDateArr[2]%>-<%- matDateArr[1]%>-<%- matDateArr[5]%></div>
    					</li>
    					<li class="list-group-item">
            				<p class="text-muted small"><%-$.i18n.t('app.product.termdeposits.openingdate')%></p>
            				<div class="dater"><%- myaccountslist.accountOpenedDate%></div>
    					</li>
    					<% if(els.get("category") == "TD") {%>
	    					<li class="list-group-item">
	            				<p class="text-muted small"><%-$.i18n.t('app.product.termdeposits.renewaldate')%></p>
	        					<div class="dater"><%- myaccountslist.renewalDate%></div>
	    					</li>
	    		        <% } %>
    					
    					
    					<li class="list-group-item">
    					<%if(els.get("category") == "RD") { %>
            				<p class="text-muted small"><%-$.i18n.t('app.product.termdeposits.monthlyinstamt')%></p>
        				<% } else if(els.get("category") == "TD") {%>
        					<p class="text-muted small"><%-$.i18n.t('app.product.termdeposits.principalamount')%></p>
        				<% } %>
            				<div class="amt">
            					<span class="num"><%- checkAmount($.formatNumber(myaccountslist.installmentAmount, {format:"#,###.00", locale:"us"}))%></span>
                				<span class="small cur dCur text-muted"><%- els.get("creditcardCurrency")%></span>
            				</div>
    					</li>
    					<li class="list-group-item text-center">
            				<a href="javascript:void(0);" class="btn btn-primary" id="hideDetails" style="display: none">Less Details <span class="fa fa-chevron-up"></span></a>
            				<a href="javascript:void(0);" class="btn btn-primary" id="showDetails">More Details <span class="fa fa-chevron-down"></span></a>
    					</li>
    					<li class="list-group-item mores" style="display: none">
            				<p class="small text-muted"><%-$.i18n.t('app.product.termdeposits.deptype')%></p>
            				<p><%- myaccountslist.productName%></p>
    					</li>
        				<li class="list-group-item mores" style="display: none">
            				<p class="small text-muted"><%-$.i18n.t('app.product.termdeposits.nickna')%></p>
            				<p><%- myaccountslist.productDescription%></p>
    					</li>
    					<li class="list-group-item mores" style="display: none">
    						<%if(els.get("category") == "RD") { %>
            				<p class="small text-muted"><%-$.i18n.t('app.product.termdeposits.dpsacntnum')%></p>
        				<% } else if(els.get("category") == "TD") {%>
        					<p class="small text-muted"><%-$.i18n.t('app.product.termdeposits.accnum')%></p>
        				<% } %>
        					<p><%- myaccountslist.accountNumber%></p>
    					</li>
    					<li class="list-group-item mores" style="display: none">
            				<p class="small text-muted"><%-$.i18n.t('app.product.termdeposits.accholdername')%></p>
        					<p><%- myaccountslist.accountHolderName%></p>
    					</li>
    					<li class="list-group-item mores" style="display: none">
            				<p class="small text-muted"><%-$.i18n.t('app.product.termdeposits.currency')%></p>
        					<p><%- els.get("creditcardCurrency")%></p>
    					</li>
    					<li class="list-group-item mores" style="display: none">
            				<p class="small text-muted"><%-$.i18n.t('app.product.termdeposits.rateinterest')%></p>
            				<p><%- myaccountslist.rateOfInterest%> </p>
    					</li>
						<%if(!isNull(myaccountslist.status)) { %>
							<li class="list-group-item mores" style="display: none">
								<p class="small text-muted"><%-$.i18n.t('app.product.termdeposits.statuslbl')%></p>
								<p><%- myaccountslist.status%></p>
							</li>
						<% } %>
    					<li class="list-group-item mores" style="display: none">
            				<p class="small text-muted"><%-$.i18n.t('app.product.termdeposits.tenure')%></p>
            				<p><%- myaccountslist.tenure%></p>
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
