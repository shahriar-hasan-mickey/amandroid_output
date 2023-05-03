<%
	var els = new EncryptedLocalStorage('secret');
	var currencyListsDTO = els.get("currencyLists");
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
			<a href="javascript:void(0);" id="backBtn" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10"><%-$.i18n.t('app.more.general.currencyconverter')%></h4>	
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
            	<form>
            		<label><%-$.i18n.t('app.more.currencyconverter.fromcur')%></label>
                	<div class="form-group">   
                        <select class="form-control" id="fromAmount">
                        	<option value="">Select a From Currency</option>
                        	<%_.each(currencyListsDTO,function(data){ %>
           						<option value="<%- data.code%>"><%- data.code%></option>
           					<%});%>
                        </select>
                    </div>
                    <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="fromCurrError"></p>
	 				</div>
	 				<label><%-$.i18n.t('app.more.currencyconverter.tocur')%></label>
                    <div class="form-group">
	                    <select class="form-control" id="toAmount">
	                    	<option value="">Select a To Currency</option>
	                    	<%_.each(currencyListsDTO,function(data){ %>
           						<option value="<%- data.code%>"><%- data.code%></option>
           					<%});%>
	                    </select>
                    </div>
                    <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="toCurrError"></p>
	 				</div>
                    <div class="form-group">
                    	<label><option><%-$.i18n.t('app.more.currencyconverter.enteramt')%></option></label>
						<input type="tel" id="amt" name="amt" maxlength="20" class="form-control numericlengthcontrol" onkeyup="withoutstartZero(event,'amt')"  data-type="currency" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" >										          				 						
                        <p class="small" id="exchangeRateDiv">
                        	<span class="small text-muted">
                        		<%-$.i18n.t('app.more.currencyconverter.banksellrate')%>
                        	</span>
                        	<span id="exchangeRate" class="small text-muted"> </span> 
                        </p>
                    </div>
                    <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="amtNullError"></p>
	 				</div>
                    <div id="convertedAmountDiv">
	                    <div class="alert alert-info text-center">
	                        <small>Converted Amount</small><br/><b> <span id="convertedAmount"></span></b>
	                    </div>
	                    <div class="alert alert-info" id="currConvShortNotesUIDiv" style="display:none;">
	                    	<small>Note:</small>
	                    	<small><div id="currConvShortNotesDiv"></div></small>
	                    	<!--<ul class="list-unstyled checkstyle">
	                           	<li class="list-group-item">The rate coming is for swift transfer</li>
	                            <li class="list-group-item">The rates are indicative only and may be changed at any time based on market directive</li>
                        	</ul>-->
	                    </div>
                    </div>
                    <div class="clearfix"></div>
                	<div class="row">
                    	<div class="col-xs-6"><button type="button" id="cancel" class="btn btn-default btn-block"><%-$.i18n.t('button.login.cancel')%></button></div>
                        <div class="col-xs-6"><button type="button" id="convert" class="btn btn-primary btn-block"><%-$.i18n.t('button.more.convert')%></button></div>
                    </div>
                </form>
			</section>	
		</div>
	</div>
</div>
<script>
(function ($){
	$.fn.numericlength=function() {
		return this.each(function() {
			var makelength=$(this).attr("maxlength");
			$(this).on('keyup',function(e) { 
			var allowedTest ="1234567890,";					
			var orignalValue=$(this).val();
			for(var i=0;i<orignalValue.length;i++) {
				var atchar = orignalValue[i];
				if(allowedTest.indexOf(atchar) != -1) {
				} else {
					var changeTest =orignalValue.substr(0,i);
					orignalValue=changeTest;
				}
			}
			$(this).val(orignalValue);
			if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
				e.preventDefault();
				return false;
			}
		});
	});
};
}(jQuery));
$('.numericlengthcontrol').numericlength();
</script>
<script>
	$(document).ready(function(){
		$('input').keypress(function(e) {
			var code = (e.keyCode ? e.keyCode : e.which);
			if ( (code==13) || (code==10)) {
				$(this).blur();
				return false;
			}
		});
		
		
	});
</script>


<script>

// Jquery Dependency

$("input[data-type='currency']").on({
    keyup: function() {
      formatCurrency($(this));
    }
});


</script>

