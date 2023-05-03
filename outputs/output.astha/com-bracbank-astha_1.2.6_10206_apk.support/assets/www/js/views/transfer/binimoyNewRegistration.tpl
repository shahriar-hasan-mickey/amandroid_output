<%
	var els = new EncryptedLocalStorage('secret');
	var casaDTO = getAccountDTO();
	
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
    		<a href="#/binimoytagaccounts" class="bacArr">
        		<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<div class="headerMiddle">
  			<h4  class="p10">BINIMOY</h4>	
  		</div>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
		    <section class="content" id="BINIMOY">
      			<form>
            		<p>User Type <span class="pull-right"><i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" data-toggle="modal" data-target="#usernameTips"></i></span></p>
    				<div class="logWit small">
        				<div class="row">
            				<div class="col-xs-6 col-sm-6 pr5">
                				<a href="javascript:void(0);" class="text-center active">
                    				<span class="menu_icon ico-xs newuser"></span>
                    				<p class="small m0">New to BINIMOY</p>
                				</a>
            				</div>
            				<div class="col-xs-6 col-sm-6 pl5">
                				<a href="#/binimoyexistinguserreg" class="text-center">
                    				<span class="menu_icon ico-xs existing_user"></span>
                    				<p class="small m0">Exisiting BINIMOY User</p>
                				</a>
            				</div>
        				</div>
    				</div>
    				<hr>
    				<div class="panel panel-default">
        				<div class="panel-body">
            				<label for="setup">Set BINIMOY VID <span class="mandi">*</span></label>
            				<div class="input-group">
                				<input type="text" class="form-control alphanumericlengthcontrol" id="binimoyNewVID" aria-describedby="basic-addon2">
                				<span class="input-group-addon" id="basic-addon2">@binimoy</span>
              				</div>
              				<div class="form-group has-error">
								<p class="help-block error-message has-error" style="color:#a94442" id="binimoyNewVIDError"></p>
							</div>
              				<p>&nbsp;</p>
	                  		<p class="small text-muted">
                				<strong>Note:</strong> Only use small letters & numbers, no special characters allowed.
              				</p>
              				<br/>
            				<div class="row">
                				<div class="col-xs-6">
                    				<a href="javascript:void(0);" class="btn btn-default btn-block" id="binimoyNewRegCancelBtn">Cancel</a>
                				</div>
                				<div class="col-xs-6">
                    				<a href="javascript:void(0);" class="btn btn-primary btn-block" id="binimoyNewRegProceedBtn">Next</a>
                				</div>
              				</div>
        				</div>
    				</div>
    			</form>	
			</section>	
			 <div class="modal fade modernPOP" id="usernameTips" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	            <div class="modal-dialog" role="document">
	                <form method="post" action="#">
	                    <div class="modal-content">
	                        <div class="modal-header">
	                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                <span aria-hidden="true">&times;</span>
	                            </button>
	                            <h4 class="modal-title" id="myModalLabel">User Type</h4>
	                        </div>
	                        <div class="modal-body">
	                          	<div class="terms_wrap">
	                              	<p>Every customer can have only one VID for Binimoy transaction. This is your unique number. There cannot be any multiple VID for a single customer.</p>
									<p>New Binimoy User – If you are registering for the first time in Binimoy, tap <b>“New to Binimoy”</b> to set your Binimoy VID (Virtual Identification). Please note you have to use this VID for every bank platform for binimoy transaction. </p>
									<p>Existing User – If you already have Binimoy VID, tap <b>“Existing Binimoy User”</b> to provide your Binimoy VID (Virtual Identification)</p>
	                          	</div>
	                        </div>
	                   
	                    </div>
	                </form>
	            </div>
	        </div>
	        
		</div>
	</div>
</div>
<script>
(function ($){
     $.fn.inputalphanumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e) { 
          var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";					
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
						 

