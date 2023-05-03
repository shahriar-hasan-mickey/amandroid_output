<%
	var els = new EncryptedLocalStorage('secret'); 
	var domesticBank = els.get("domesticBank");
	var domesticroutingnum = els.get("domesticroutingnum");
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
			<a href="javascript:void(0);" id="OB_addBene_BankBtn" class="bacArr">
				<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10"><%-$.i18n.t('app.transfer.managebeneficiary.addotherbankbene')%></h4>	
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
          			<label><%-$.i18n.t('app.transfer.managebeneficiary.beneficiarytype')%></label>
           			<div class="form-group">
            			<div class="custRadio_pass custRadio_small">
              				<div class="box">
                				<div class="radio">
                  					<label>
                						<input type="radio" name="choice" value="account" data="Account" class="type" id="account">
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
                    					<input type="radio" name="choice" data="Credit Card" value="card" class="type" id="card">
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
          			<label><%-$.i18n.t('app.transfer.managebeneficiary.transferchannel')%></label><i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" data-toggle="modal" data-target="#transferchannel"></i>
           			<div class="form-group">
             			<div class="row">
               				<div class="col-xs-7">
                  				<label class="radio-label trans_label">
                    				<input type="radio" checked="checked" name="transfer" class="transBeneType" id="beftn" value="beftn"><%-$.i18n.t('app.transfer.managebeneficiary.npsbtype')%>
                    				<span class="checkmark"></span>
                  				</label>
                			</div>
                			<div class="col-xs-5">
                  				<label class="radio-label trans_label">
                    				<input type="radio" name="transfer" class="transBeneType" id="npsb" value="npsb"> <%-$.i18n.t('app.transfer.managebeneficiary.npsb')%>
                					<span class="checkmark"></span>
                  				</label>
                			</div>
             			</div>             
       				</div>
           			<div id="bankBranch">
	           			<label for="benebank"><%-$.i18n.t('app.transfer.managebeneficiary.beneficiarybank')%></label>
	           			<div class="form-group">
	           				<div class="input-group search">
				                <input type="text" class="form-control" id="bankName" disabled="true" style="text-indent:10px;">
				                <span class="input-group-btn">
				                	<button class="btn btn-default search_b popupSearch" id="bankPopup" type="button">
				                    	<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				                  	</button>
			                	</span>
			              	</div>
	           			</div>
	           			<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="bankNullError"></p>
		 				</div>
		 			</div>
		 			<div id="branchDiv">
	           			<label for="benebranch">Beneficiary Branch</label>
	           			<div class="form-group">
	        				<div class="input-group search">
				                <input type="text" class="form-control" id="branchName" disabled="true" style="text-indent:10px;">
				                <span class="input-group-btn">
				                	<button class="btn btn-default search_b popupSearch" id="branchPopup" type="button" data-toggle="modal">
				                    	<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
				                  	</button>
			                	</span>
			              	</div>
	 					</div> 
	 					<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="branchNullError"></p>
		 				</div>
		 				<div id="RoutingDistDiv">
		 					<label><%-$.i18n.t('app.transfer.managebeneficiary.routingnumber')%></label>
		        			<div class="form-group">
		         				<div id="routingNum" class="small"></div>
		           			</div>
		           			<label>District</label>
		       				<div class="form-group">
		             			<div id="dist" class="small"></div>
		           			</div>
	           			</div>
           			</div>
           			<label for="acc" id="benetypelabel"></label>
           			<div class="form-group">
             			<input type="text" autocomplete='off'  id="accId" name="accId" class="form-control inputlengthcontrol" maxlength="17"/>
           			</div>
           			<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="accountNoErr"></p>
					</div>
           			<label for="accName" id="beneNameLabel"></label>
           			<div class="form-group">
             			<input type="text" autocomplete='off'  id="accName" name="accName" class="form-control alphanumericlengthcontrol" maxlength="22">
       				</div>
       				<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="accNameError"></p>
					</div>
           			<label for="sname"><%-$.i18n.t('app.transfer.managebeneficiary.shortname')%></label>
           			<div class="form-group">
             			<input type="text" autocomplete='off'  id="shortName" name="shortName" class="form-control alphanumericlengthcontrol" maxlength="20">
       				</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="shortnameError"></p>
					</div>
       				<label for="eaddress"><%-$.i18n.t('app.transfer.managebeneficiary.emailaddress')%></label>
           			<div class="form-group">
             			<input type="text" autocomplete='off'  id="eaddress" class="form-control inputlengthcontrol" maxlength="120">
           			</div>
                    <div class="form-group has-error">
			    		<p class="help-block error-message has-error" style="color:#a94442" id="emailError"></p>
	 				</div>
           			<div class="form-group" id="otherbank_add_authmodeDiv"></div>
       				<div class="clearfix"></div>
       				<div class="row">
         				<div class="col-xs-6 pr5"><button type="button" id="cancelBtn" class="btn btn-default btn-block"><%-$.i18n.t('app.transfer.managebeneficiary.cancel')%></button></div>
						<div class="col-xs-6 pl5"><button type="button" id="nextbtn" class="btn btn-primary btn-block"><%-$.i18n.t('app.transfer.managebeneficiary.next')%></button></div>           
      				</div>
      			</form>                        
   			</section>
   			
   			<div class="modal fade modernPOP" id="transferchannel" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		        <div class="modal-dialog" role="document">
		            <form method="post" action="#">
		                <div class="modal-content">
		                    <div class="modal-header">
		                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                            <span aria-hidden="true">&times;</span>
		                        </button>
		                        <h4 class="modal-title" id="myModalLabel">Transfer Channel</h4>
		                    </div>
		                     <div class="modal-body">
		                        <h4> Instant Transfer (NPSB) </h4>
		                        <ul style="margin-left:-27px;">
			                        <li>Instant Transfer(NPSB) is generally use for instant fund transfers.</li>
			                        <li>Fees not required for Internet Banking Fund Transfer transactions.</li>
		                        </ul>
		                        <h4> Regular Transfer (BEFTN) </h4>
		                        <ul style="margin-left:-27px;">
			                        <li>Regular Transfer (BEFTN) is generally use for regular fund transfers.</li>
			                        <li>Regular Transfer (BEFTN) system provides fast, convenient, reliable and secure domestic payment and collection of funds.</li>
			                        <li>Fees not required.</li>
		                        </ul>
		                        <h4>High Value Transfer (RTGS)</h4>
		                        <ul style="margin-left:-27px;">
		                        <li>High Value Transfer (RTGS) is generally use for large-value interbank funds transfers & transactions are settled as soon as they are executed.</li>
		                        <li>Safe, secured and efficient interbank payment system.</li>
		                        </ul>
		                    </div>
		                    <div class="modal-footer">
		                        <button type="button" class="btn btn-default btn-block" data-dismiss="modal">Ok</button>
		                    </div>
		                </div>
		            </form>
		        </div>
		    </div>
   			
   			<div class="modal fade modernPOP selectBank" id="bankBranchPopup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        		<div class="modal-dialog" role="document">
            		<form>
                		<div class="modal-content">
                    		<div class="modal-header">
                        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            		<span aria-hidden="true">&times;</span>
                        		</button>
                        		<h4 class="modal-title" id="myModalHeaderLabel"></h4>
                    		</div>
                    		<div class="modal-body">                        
                        		<div class="form-group">
                          			<div class="input-group search">
                            			<input type="text" class="form-control" id="searchTab" style="text-indent:10px">
	                            		<span class="input-group-addon"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></span>
                          			</div>
                        		</div> 
                      			<div class="form-group" id="bankBranchList"></div>
								<div class="nodata" style="text-align:center; display:none">No records found</div>
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
    (function ($){
     $.fn.inputalphanumericlen=function() {
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
	               $(this).val($(this).val().substr(0, makelength));
				   e.preventDefault();
	               return false;
	             }
	          }
          });
        });
     };
}(jQuery));

$('.alphanumericlengthcontrol').inputalphanumericlen();	

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
