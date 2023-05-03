<%
	var els = new EncryptedLocalStorage('secret');
	var casaDTO = getAccountDTO();
%>
<div class="pagewrapper" id="appwrapper">
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
			<a href="#/wealth" class="bacArr">		
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10">Positive Pay</h4>	
		</div>
		<div class="headerRight">
 		</div>
	</header>
	  <div class="bodywrapper">
      	<div class="contentwrap">
			<section class="content">
				<form method="post" action="#">
          			<div class="form-group">
             			<label>Account</label>
         				<select id="positivePayInit_selAcc" name="positivePayInit_selAcc" class="form-control">
							<option value="" selected="selected"><%-$.i18n.t('app.transferss.selaccnum')%></option>
         					<%_.each(casaDTO,function(data,index) { %>
                				<option acctype="CASA" frmname="<%- data.productName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"><%- data.accountNumber%></option>>
                			<% }); %>
         				</select>             
       				</div>
       				<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="acntNumErr"></p>
	 				</div>
           			<div class="form-group">
             			<label>Cheque Leaf Number</label>
             			<input type="tel" id="positivePayInit_ChequeNum" autocomplete='off' name="positivePayInit_ChequeNum" class="form-control inputnumericlengthcontrol" maxlength="8" minlength="1">            
           			</div> 
           			<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="chequeNumErr"></p>
	 				</div>
           			<div class="form-group">
             			<label for="bene">Beneficiary Name</label>
             			<input type="text" id="positivePayInit_BeneName" autocomplete='off' name="positivePayInit_BeneName" class="form-control alphalengthcontrol" minlength="3" maxlength="70">
           			</div>
           			<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="beneNameErr"></p>
	 				</div>
           			<div class="form-group">
             			<label>Amount</label>
             			<input type="tel" id="positivePayInit_Amount" autocomplete='off' name="positivePayInit_Amount" minlength="1" maxlength="9" class="form-control numericlengthcontrol" data-type="currency" onkeyup="withoutstartZero(event,'positivePayInit_Amount')" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$">
           			</div>
           			<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="amountErr"></p>
	 				</div>
           			<div id="positivePay_SelectAuthModeDiv"></div>
           			<div class="clearfix"></div>
       				<div class="alert alert-info small" role="alert">
            			<small><i class="fa fa-info-circle" aria-hidden="true"></i> Note: 
	              			<ul>
	                			<li>As per Bangladesh Bank Positive Pay instruction is required for all interbank clearing cheques for personal account tk. 5 lacs & above and for other accounts tk. 1 lac & above</li>
	                			<li> BRAC Bank Astha only shows you the unclear cheque</li>
	                			<li>In case of mismatch in cheque details, bank may call you to agree to the physical cheque information.</li>
	              			</ul>             
            			</small>
           			</div>	
           			<div class="clearfix"></div>
           			<div class="row">
             			<div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block" id="positivePayInit_CancelBtn">Cancel</button></div>
             			<div class="col-xs-6 pl5"><button type="button" class="btn btn-primary btn-block" id="positivePayInit_SubmitBtn">Submit</button></div>
           			</div>
       			</form>  
        	</section>
        </div>
	</div>
</div>
<script>
			
	$("input[data-type='currency']").on({
	    keyup: function() {
	      formatCurrency($(this));
	    }
	});
		
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
	(function ($){
     $.fn.inputalphanumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 ";					
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
			if(makelength!=""){
	             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
	                e.preventDefault();
	               return false;
	             }
	          }
          });
        });
     };
}(jQuery));
$('.alphanumericlengthcontrol').inputalphanumericlength();

(function ($){
     $.fn.inputalphanumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz ";					
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
			if(makelength!=""){
	             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
	                e.preventDefault();
	               return false;
	             }
	          }
          });
        });
     };
}(jQuery));
$('.alphalengthcontrol').inputalphanumericlength();


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
	$('.inputnumericlengthcontrol').numericlength();
</script>
