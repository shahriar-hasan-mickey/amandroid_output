<%
	var els = new EncryptedLocalStorage('secret'); 
	var id = els.get("cardId");
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
			<a href="#/accountssummary/<%- id%>" id="back_btn" class="bacArr">
			  	<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">
			<h4 class="p10"><%-$.i18n.t('app.accounts.detailedstatement')%></h4>
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
					<label><%-$.i18n.t('app.accdetailstatement.fromamount')%></label>
					<div class="form-group">
						<input type="tel" autocomplete='off' name="fromAmt" id="fromAmt" class="form-control numericlengthcontrol" maxlength="10"/>
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="fromAmtErr"></p>
	 				</div>
	 				<label><%-$.i18n.t('app.accdetailstatement.toamount')%></label>
					<div class="form-group">
						<input type="tel" autocomplete='off' name="toAmt" id="toAmt" class="form-control numericlengthcontrol" maxlength="10"/>
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error"  style="color:#a94442" id="toAmtErr"></p>
	 				</div>
	 				<label><%-$.i18n.t('app.accdetailstatement.filterbytype')%><span style="color:red; font-size:18px;">*</span></label>
					<div class="form-group">
						<select id="typeFilter" name="typeFilter" class="form-control">
							<option value="">Select</option>
							<option value="C">Credit</option>
							<option value="D">Debit</option>
							<option value="B">Both</option>
						</select>
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="filterTypeError"></p>
	 				</div>
	 				<label><%-$.i18n.t('app.accdetailstatement.filterbyperiod')%><span style="color:red; font-size:18px;">*</span></label>
					<div class="form-group">
						<select id="periodFilter" name="periodFilter" class="form-control">
							<option value="">Select</option>
							<option value="twoWeeks">Last 2 Weeks</option>
							<option value="oneMonth">Last 1 Month</option>
							<option value="threeMonths">Last 3 Months</option>
							<option value="sixMonths">Last 6 Months</option>
							<option value="oneYear">Last 1 Year</option>
							<option value="lastFinYear">Last Financial Year</option>
							<option value="specificDate">Select Specific Date </option>
						</select>
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="filterPeriodError"></p>
	 				</div>
	 				<label><%-$.i18n.t('app.accdetailstatement.fromdate')%><span style="color:red; font-size18px;">*</span></label>
					<div class="form-group">
						<input type="date" id="fromDate" name="fromDate" class="form-control" placeholder="dd/mm/yyyy" readonly="true" />
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="fromDateError"></p>
	 				</div>
	 				<label><%-$.i18n.t('app.accdetailstatement.todate')%><span style="color:red; font-size:18px;">*</span></label>
					<div class="form-group">
						<input type="date" id="toDate" name="toDate" class="form-control" placeholder="dd/mm/yyyy" readonly="true" />
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="toDateError"></p>
	 				</div>
					<input type="button" class="btn btn-primary btn-block" name="getstatement" id="getstatement"  value="Get Statement" />
				</form>
			</section>	
		</div>
	</div>
</div>
<script>
$(document).ready(function() {
	$("#fromDate").attr("readonly",true);
	$("#fromDate").attr("type","text");
	$("#toDate").attr("readonly",true);
	$("#toDate").attr("type","text");
	$("#periodFilter").on("change",function() {
	var period = $("#periodFilter option:selected").val();
		if(period == "specificDate") {
			els.set("filterBy","SSD");
			$("#fromDate").removeAttr("readonly");
			$("#fromDate").attr("type","date");
			$("#toDate").removeAttr("readonly");
			$("#toDate").attr("type","date");
		} else {
			$("#fromDate").attr("readonly",true);
			$("#fromDate").attr("type","text");
			$("#toDate").attr("readonly",true);
			$("#toDate").attr("type","text");
		}
	});
});
</script>
<script>
	(function ($){
		 $.fn.numericlength=function() {
			return this.each(function() {
			  var makelength=$(this).attr("maxlength");
			  $(this).on('keyup',function(e) { 
			  var allowedTest ="1234567890";					
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
		
	});
</script>
