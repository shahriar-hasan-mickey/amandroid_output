<%
	var els = new EncryptedLocalStorage('secret');
	var walletTransferBeneList = els.get("selectedWalletBeneDTO");
	var selectedWalletTransferBeneId = els.get("selectedWalletTransferBeneId");
	var selectedIndex = els.get("selectedWalletTransferBeneInd");
	var selectedWalletBeneInfo = walletTransferBeneList[selectedIndex];
	var casaDTO = getAccountDTO();
	var ccListDTO = getCreditCardDTO();
	var pcListDTO = getPrepaidCardDTO();
	var selectedInd = els.get("fromAccInd");
	var fromAccType = els.get("fromAccType");
	if(fromAccType == "CASA") {
		var selectedFromAccInfo = casaDTO[selectedInd];
	} else if(fromAccType == "CC") {
		selectedFromAccInfo = ccListDTO[selectedInd];
	} else {
		var selectedFromAccInfo = pcListDTO[selectedInd];
	}
	var transferAmount = els.get("walletTransferAmount");
	var transactionfee = els.get("fromExchangeRate");
	var fees = els.get("fee");
	var convertedAmount = els.get("convertedAmount");
	var debitCurrency = els.get("debitCurrency");
	var currency = els.get("walletCurrency");
	var transactionChargesCurrency = els.get("transactionChargesCurrency");
	if(fromAccType == "CC" || fromAccType == "PC") { 
		var formAccName = els.get("walletFromAcntName");
	} else {
		var formAccName = (selectedFromAccInfo.productName == null || selectedFromAccInfo.productName == "null" || selectedFromAccInfo.productName =="") ? selectedFromAccInfo.cardHolderName : selectedFromAccInfo.productName;
	}
	
	if(els.get("isWalletOneTimePay") == "true"){
		var toname= els.get("walletToAccName");
		console.log("Testttt",toname);
	} else {
		var toname=selectedWalletBeneInfo.shortName;
		console.log("Testttt222222",toname);
	}
%>
<div class="pagewrapper" id="appwrapper" >
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="trans_ani">
   				<div class="container">
        			<div class="dTable-wrap">
            			<div class="dTable-middle">
                			<div class="text-center transLogo">
                    			<img src="images/brand/logo.svg" width="50%"/>
                			</div>
                			<div class="moneyani"></div>
                			<div class="trans-ppl">
                    			<div class="row">
                        			<div class="col-xs-4 col-sm-4 text-center">
                            			<img src="images/common/user_default1.png" />
                            			<p class="text-center"><%- formAccName%></p>
                        			</div>
                        			<div class="col-xs-4 col-sm-4 text-center">
                            			<br/>
                        			</div>
                        			<div class="col-xs-4 col-sm-4 text-center">
                            			<img src="images/common/user_default1.png" />
                            			<p class="text-center"><%-toname%></p>
                        			</div>
                    			</div>
                			</div>
                			<br/>
                			<br/>
                			<br/>			
                			<p class="text-center"><%- $.i18n.t('validation.statementfilter.pressagain') %></p>
                			<br/>
                			<br/>
                			<br/>
            			</div>
        			</div>
    			</div>
			</section>	
		</div>
	</div>
    <div class="area">
    	<ul class="circles">
        	<li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
        </ul>
    </div>	
</div>			
