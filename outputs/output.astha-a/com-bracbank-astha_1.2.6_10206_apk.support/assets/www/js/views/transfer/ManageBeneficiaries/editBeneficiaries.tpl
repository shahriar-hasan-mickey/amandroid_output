<%
	var els = new EncryptedLocalStorage('secret');
	var beneficiaryDTO = els.get("beneficiaryDTO");
	var noindex=els.get("noindex");
	var accountNumber=beneficiaryDTO[noindex].accountNumber;
	var accountholdername=beneficiaryDTO[noindex].firstName;
	var shortName=beneficiaryDTO[noindex].shortName;
	var emailaddress=beneficiaryDTO[noindex].emailAddress;
	var beneType=beneficiaryDTO[noindex].imAccountType;
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
			<% if(els.get("isTransferPageFlag") == "true") { %>
				<a href="#/selectbeneficiary" class="bacArr">
			<% } else if(els.get("isTransferPageFlag") == "false") {%>
				<a href="#/withinselectbene" class="bacArr">
			<% } %>
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<div class="headerMiddle">
  			<h4 class="p10"><%-$.i18n.t('app.transfer.managebeneficiary.editdeletebene')%></h4>
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
        		<form method="post">
            		<div class="editPicBox">
                		<div class="addPic">
                    		<img src="images/common/user_default1.png" alt="Profile Image">
                    		<i class="fa fa-plus" aria-hidden="true"></i>
                    		<input id="exampleInputFile" type="file">
                		</div>
                		<p><%-accountholdername%></p>
            		</div>
            		<ul class="list-unstyled list-nobrd row">
                		<li class="list-group-item">
                    		<label><%-$.i18n.t('app.transfer.managebeneficiary.beneficiarytype')%></label>
                    		<p class="small" id="cardtype"><%-beneType%></p>
                </li>
                <li class="list-group-item">
                    <label><%-$.i18n.t('app.transfer.managebeneficiary.acccardnumber')%></label>
                    <p class="small" id="accountnum"><%-accountNumber%></p>
                </li>
                <li class="list-group-item">
                    <label><%-$.i18n.t('app.transfer.managebeneficiary.accountcardholdername')%></label>
                    <p class="small" id="accholdername"><%-accountholdername%></p>
                </li>
				<% if(emailaddress != "" && emailaddress != null) { %>
					<li class="list-group-item">
						<label><%-$.i18n.t('app.transfer.managebeneficiary.emailaddress')%></label>
						<p class="small" id="email"><%-emailaddress%></p>
					</li>
				<% } %>
            </ul>
            <label for="shortname"><%-$.i18n.t('app.transfer.managebeneficiary.shortname')%></label>
            <div class="form-group">
                <input type="text"  autocomplete='off' name="shortname" id="shortname" class="form-control alphanumericlengthcontrol" value="<%-shortName%>" maxlength="20">
            </div>
			<div class="form-group has-error">
				<p class="help-block error-message has-error" style="color:#a94442" id="shortnameError"></p>
			</div>
            <!-- / form-group-->
            <div class="form-group" id="withinbank_edit_authmodeDiv"></div>
            <!-- / form-group-->
            <!--<div class="clearfix"></div>
               <div class="col-xs-12 text-center">
                 <input id="fav" class="icon-fav user-success" type="checkbox">
                 <label for="fav" class="bene-fav1"> <span class="fa fa-heart-o unchecked"></span> <span class="fa fa-heart checked"></span> Make as favourite </label>
               </div>-->
            <div class="clearfix"></div>
			<br>
            <div class="row">
                <div class="col-xs-3 pr5"></div>
                <div>
                    <button type="button" id="bene_save" class="btn btn-primary btn-block"><%-$.i18n.t('app.transfer.managebeneficiary.save')%></button>
                </div>
				<div class="col-xs-3 pr5"></div>
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
</script>
<script>
	$(document).ready(function(){
		
	});
</script>
