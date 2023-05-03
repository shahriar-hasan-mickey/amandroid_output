<%
	var els = new EncryptedLocalStorage('secret'); 
	var transHistoryDetail = getTransferHistoryDTO();
	var transHisWalletList = els.get("transHisWalletList");
%>
<% if(transHistoryDetail.length > 0) { %>
      				<ul class="list-unstyled">
						<%_.each(transHistoryDetail,function(data,index){%>
						<% var transamt = data.txnAmt.replace(/,/g, "");%>
					<li class="list-group-item conItems" id="<%- index%>" data-url="#/fundtransferdetails/<%-index%>" onclick="getSelectedTransDetails(this)">
					<div class="row">
						<div class="col-xs-2 first-col">
						<% if(data.paymentType == "Own Account Transfer" || data.paymentType == "DPS" || data.paymentType == "FD") { %>
							<span class="menu_icon account"></span>
						<% } else if(data.paymentType == "FD ENCASHMENT") { %>
							<span class="menu_icon deposit"></span>
						<% } else if(data.paymentType == "BRAC Bank Transfer") { %>	
							<span class="menu_icon withinbank"></span>
						<% } else if(data.paymentType == "BEFTN"  || data.paymentType == "NPSB" || data.paymentType == "RTGS" || data.paymentType == "OTHER_BANK_BEFTN_ONE_OFF" || data.paymentType == "OTHER_BANK_NBSP_ONE_OFF" || data.paymentType == "OTHER_BANK_RTGS_ONE_OFF") { %>	
							<span class="menu_icon otherbank"></span>
						<% } else if(data.paymentType == "TELETALK" || data.paymentType == "Teletalk MOBILE_TOPUP_RECHARGE_ONE_OFF") { %>	
							<img src="images/brand/biller/TELETALK.png">
						<% } else if(data.paymentType == "GRAMEENPHONE" || data.paymentType == "Grameenphone MOBILE_TOPUP_RECHARGE_ONE_OFF" || data.paymentType == "Grameenphone MOBILE_BILLER") { %>	
							<img src="images/brand/biller/GRAMEENPHONE.png">
						<% } else if(data.paymentType == "ROBI" || data.paymentType == "Robi MOBILE_TOPUP_RECHARGE_ONE_OFF") { %>	
							<img src="images/brand/biller/ROBI.png">
						<% } else if(data.paymentType == "BANGLALINK" || data.paymentType == "Banglalink MOBILE_TOPUP_RECHARGE_ONE_OFF") { %>	
							<img src="images/brand/biller/BANGLALINK.png">
						<% } else if(data.paymentType == "AIRTEL" || data.paymentType == "Airtel MOBILE_TOPUP_RECHARGE_ONE_OFF") { %>	
							<img src="images/brand/biller/AIRTEL.png">
						<% } else if(data.paymentType == "WASA" || data.paymentType == "WASA_ONE_OFF") { %>	
							<img src="images/brand/biller/WASA.png">
						<% } else if(data.paymentType == "DPDC" || data.paymentType == "DPDC_ONE_OFF") { %>	
							<img src="images/brand/biller/DPDC.png">
						<% } else if(data.paymentType == "CARNIVAL" || data.paymentType == "CARNIVAL_ONE_OFF") { %>	
							<img src="images/brand/biller/CARNIVAL.png">
						<% } else if(data.paymentType == "METLIFE" || data.paymentType == "METLIFE_ONE_OFF") { %>	
							<img src="images/brand/biller/METLIFE.png">
						<% } else if(data.paymentType == "GUARDIANLIFE" || data.paymentType == "GUARDIANLIFE_ONE_OFF") { %>	
							<img src="images/brand/biller/GUARDIANLIFE.png">
						<% } else if(data.paymentType == "BRAC UNIVERSITY" || data.paymentType == "BRAC_UNIVERSITY_ONE_OFF") { %>	
							<img src="images/brand/biller/BRAC_UNIVERSITY.png">
						<% } else if(data.paymentType == "NESCO_POSTPAID" || data.paymentType == "NESCO_POSTPAID_ONE_OFF" || data.paymentType == "NESCO") { %>	
							<img src="images/brand/biller/NESCO.png">
						<% } else if(data.paymentType == "DESCO_PREPAID" || data.paymentType == "DESCO_PREPAID_ONE_OFF" || data.paymentType == "DESCO_POSTPAID" || data.paymentType == "DESCO_POSTPAID_ONE_OFF" || data.paymentType == "DESCO" || data.paymentType == "DESCO_ONE_OFF") { %>	
							<img src="images/brand/biller/DESCO.png">
						<% } else if(data.paymentType == "WZPDCL" || data.paymentType == "WZPDCL_ONE_OFF") { %>	
							<img src="images/brand/biller/WZPDCL.png">
						<% } else if(data.paymentType == "LAND_TAX" || data.paymentType == "LAND_TAX_ONE_OFF") { %>	
							<img src="images/brand/biller/LAND_TAX.png">
						<% } else if(data.paymentType == "JALALABAD_GAS" || data.paymentType == "JALALABAD_GAS_ONE_OFF") { %>	
							<img src="images/brand/biller/JALALABAD_GAS.png">
						<% } else if(data.paymentType == "BBL Credit Card Transaction" || data.paymentType == "OWN_BBL_CREDIT_CARD_TRANSACTION" || data.paymentType == "Credit card payment") { %>	
							<span class="menu_icon ccard" style="background-position:-350px -109px"></span>
						<% } else if(data.paymentType == "Scan to pay") { %>
							<span class="menu_icon merchant"></span>
						<% } else if( data.paymentType == "BKASH QR" || data.paymentType == "BKASH_QR" || data.paymentType == "Bkash QR" || data.paymentType == "bKash QR" || data.paymentType == "Bkash_QR" || data.paymentType == "bKash_QR") { %>
							<img src="images/brand/biller/bKash_bangla_logo.png">
						<% } else if( data.paymentType == "WALLET_BKASH_PULL_MONEY" || data.paymentType == "BKASH_PULL_MONEY" ||  data.paymentType == "BKASH PULL MONEY" ||  data.paymentType == "bKash Pull Money" || data.paymentType == "WALLET BKASH PULL MONEY" || data.paymentType == "Pull Money bKash") { %>
							<img src="images/brand/biller/bKash.png">
						<% } else if(data.paymentType == "DP") { %>	
							<span class="menu_icon dp"></span>
						<% } else if(data.paymentType == "RTP") { %>	
							<span class="menu_icon rtp"></span>
						<% } else{%>
							<% var walletType = data.paymentType; %>
							<%_.each(transHisWalletList,function(data1,index1){%>
								<% if(data1.walletcode == walletType) { %>
									<img src="data:image/png;base64,<%-data1.encodedString%>" >
								<% } %>
							<% }); %>
						<%}%>	
						</div>
						<div class="col-xs-5 left-col small">
							<p style="font-weight:bold;"><%- data.paymentType%></p>
							<% if(data.paymentType == "WALLET_BKASH_PULL_MONEY" || data.paymentType == "BKASH_PULL_MONEY" ||  data.paymentType == "BKASH PULL MONEY" ||  data.paymentType == "bKash Pull Money" || data.paymentType == "WALLET BKASH PULL MONEY" || data.paymentType == "Pull Money bKash") { %>
								<p class="trans_data"><span class="text-muted">From:</span> <b><%- data.fromAccountNo%></b></p>
							<% } else {%>
								<p class="trans_data"><span class="text-muted">From:</span> <b><%- data.customerName%></b> <span class="small"><%- data.fromAccountNo%></span></p>
							<% } %>
							<p class="trans_data"><span class="text-muted">To:</span> <b><%- data.beneficaryName%></b> <span class="small"><%- data.toAccountNo%></span></p>
						</div>
						<div class="col-xs-5 right-col text-right">
							<p class="small timestamp"> <%- data.txnDate%>   </p>
							<% if(data.paymentType == "WALLET_BKASH_PULL_MONEY" || data.paymentType == "BKASH_PULL_MONEY" ||  data.paymentType == "BKASH PULL MONEY" ||  data.paymentType == "bKash Pull Money" || data.paymentType == "WALLET BKASH PULL MONEY" || data.paymentType == "Pull Money bKash") { %>
								<p class="amt pos">
									<span class="num"><%- checkAmount($.formatNumber(transamt, {format:"#,###.00", locale:"us"}))%></span>
									<span class="small cur dCur"><%- data.txnCurrency%></span>
								</p>
							<%} else { %>
								<p class="amt neg">
									<span class="num"><%- checkAmount($.formatNumber(transamt, {format:"#,###.00", locale:"us"}))%></span>
									<span class="small cur dCur"><%- data.txnCurrency%></span>
								</p>
							<% } %>
							<p class="small"><span class="text-muted">Ref No.:</span> <%- data.txnRefNo%> </p>
						</div>
					</div>
			</li>

			
	<%});%>
      				</ul>
				<% } else {  $('#page_navigation').hide(); $(".contact_sticky_search").hide(); %>
						<p class="help-block error-message" style="color:#00000; text-align:center;"><%-$.i18n.t('app.product.general.nodatafound')%></p>
				<% } %>

<script>
	function getSelectedTransDetails(selected) {
		var selectedIndex = selected.id;
		els.set("selectedTransIndex",selectedIndex);
		var transHistoryDetail = getTransferHistoryDTO();
		var selectedTransHistoryDetails = transHistoryDetail[selectedIndex];
		els.set("selectedTransHistoryDetailDTO",selectedTransHistoryDetails);
		var url = $(selected).attr("data-url");
		console.log(url);
		window.location.href= url;    	
	}
</script>
