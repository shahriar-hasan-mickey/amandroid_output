<!--Appwrapper Starts Here-->
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
            <% if(els.get("isTransfer") == "true") {%>
				<a href="#/selectbeneficiary" class="bacArr">
			<% } else {%>
				<a href="#/withinselectbene" class="bacArr">
			<% } %>
			  <i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10"><%-$.i18n.t('app.transfer.managebeneficiary.addbrackbankbene')%></h4>	
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
	</header>
	<!-- Header Ends -->
	<!--Bodywrapper Starts Here-->
	<div class="bodywrapper">
		<!-- Actual content area -->
		<div class="contentwrap">
				<section class="content">
    <form method="post" action="#">
        <div class="form-group">
            <label><%-$.i18n.t('app.transfer.managebeneficiary.beneficiarytype')%></label>
            <div class="custRadio_pass custRadio_small">
                <div class="box">
                    <div class="radio">
                        <label>
                            <input type="radio" name="cardType" class="benetype" value="account" id="account">
                            <div class="row bg">
                                <div class="col-xs-12 p0">
                                    <span class="menu_icon ico-xs account"></span>
                                    <span class="small"><%-$.i18n.t('app.transfer.managebeneficiary.account')%></span>
                                </div>
                            </div>
                        </label>
                    </div>
                </div>
                <div class="box">
                    <div class="radio">
                        <label>
                            <input type="radio" name="cardType" class="benetype" value="cards" id="cards">
                            <div class="row bg">
                                <div class="col-xs-12 p0">
                                    <span class="menu_icon ico-xs credit"></span>
                                    <span class="small"><%-$.i18n.t('app.transfer.managebeneficiary.creditcard')%></span>
                                </div>
                            </div>
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <label id="accCardNumberLabel" for="accountnumber"></label>
        <div class="form-group">
            <input type="tel" autocomplete='off'  name="accountnumber" id="accountcard" class="form-control numericlengthcontrol" maxlength="16">
            <div class="row">
               <div class="col-xs-12 small">
                <span class="small text-muted"><i class="fa fa-user" aria-hidden="true"></i> <span id="AccName"></span></span>
               </div>
             </div>
			 <div class="form-group has-error">
				<p class="help-block error-message has-error" style="color:#a94442" id="accountNoErr"></p>
			</div>
        </div>
        <!-- / form-group-->
         <label for="shortname"><%-$.i18n.t('app.transfer.managebeneficiary.shortname')%></label>
        <div class="form-group">
            <input type="text" autocomplete='off'  name="shortname" id="nick_name" class="form-control alphanumericlengthcontrol" maxlength="20">
        </div>
        <div class="form-group has-error">
    		<p class="help-block error-message has-error" style="color:#a94442" id="shortnameError"></p>
		</div>
        <!-- / form-group-->
        <div class="form-group">
            <label><%-$.i18n.t('app.transfer.managebeneficiary.emailaddress')%></label>
            <input type="text" autocomplete='off'  id="emailaddress" maxlength="120" class="form-control inputlengthcontrol">
        </div>
        <div class="form-group has-error">
    		<p class="help-block error-message has-error" style="color:#a94442" id="emailError"></p>
		</div>
        <!-- / form-group-->
        <div class="form-group" id="withinbank_add_authmodeDiv"></div>
        <!-- / form-group-->
        <div class="clearfix"></div>
        <div class="row">
            <div class="col-xs-6 pr5">
                <button type="button" class="btn btn-default btn-block" id="add_benecancel"><%-$.i18n.t('app.transfer.managebeneficiary.cancel')%></button>
            </div>
            <div class="col-xs-6 pl5">
                <button type="button" class="btn btn-primary btn-block" id="add_beneverify"><%-$.i18n.t('app.transfer.managebeneficiary.next')%></button>
            </div>
        </div>
    </form>
</section>	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
		
<script>
 $(document).ready(function () {
  $(".numericonly").keypress(function (e) {
     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57)) {
               return false;
               }
   });
});

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
     $.fn.inputnumericlengthcontrol=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          var allowedTest ="1234567890 ";					
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
$('.numericlengthcontrol').inputnumericlengthcontrol();

(function ($){
     $.fn.inputalphanumericlen=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890\"!#$%&'()*+,-./:<=>?@[\]^_`{|}~";					
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
$('.inputlengthcontrol').inputalphanumericlen();
</script>
<script>
	$(document).ready(function(){
		
	});
</script>
