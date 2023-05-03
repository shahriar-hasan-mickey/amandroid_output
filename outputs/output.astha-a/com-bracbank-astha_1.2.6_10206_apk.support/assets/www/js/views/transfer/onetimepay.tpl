<%
	var els = new EncryptedLocalStorage('secret'); 
	var prepaidCardAccountListDTO = els.get("prepaidCardAccountList");
	var myaccounts = getAccountDTO(); 
	var beneficiaryDTO = els.get("beneficiaryDTO");
	//var noindex1=els.get("noindex1");
	var minimumAmount = els.get("minAmountPerTransaction");
	var dailylimit = els.get("dailyAvailableLimit");
	var monthlylimit = els.get("monthlyTransactionLimit");
	var pertranslimit = els.get("maxAmountPerTransaction");
	var dailyAvailableCount = els.get("dailyAvailableCount");
	var dailyTransactionCount = els.get("dailyTransactionCount");
	var monthlyAvailableLimit = els.get("monthlyAvailableLimit");
	var monthlyAvailableCount = els.get("monthlyAvailableCount");
	var downtimeNotification = els.get("downtimeNotification");
	if(!isNull(downtimeNotification) && downtimeNotification.length>0) {
		var subTransactionType = els.get("subTransType");
		var downtimeNotificationDetail = downtimeNotification[0].downtimeNotificationDetail;
	}
%>

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
			<% if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
				<a href="#/transfer" class="bacArr">
			<% } else { %>
				<a href="#/selectbeneficiary" class="bacArr">
			<% } %>
				<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p4"><%-$.i18n.t('app.transferss.paymentdetails')%><p class="small"><%-$.i18n.t('app.transferss.paumenttrans1')%></p></h4>	
		</div>
		<div class="headerRight">
			<span class="step-badge">2/3</span>
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
		<ul class="step-progress">
			<li class="done"></li>
            	<li class="done"></li>
			<li></li>
  		</ul>	
	</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						       <section class="content">
        <form method="post" action="#">
        <div class="logWit small transfer_option">
        	<%if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
	        	<% if(subTransactionType == "REGISTERED") { var messageMobile = downtimeNotificationDetail[0].messageMobile; %>
				    <div class="alertCotainer alert alert-info small">
			            <!--<div class="alertLeft top"><i class="fa fa-info-circle" aria-hidden="true"></i></div>-->
			            <div class="alertRight">
			                 <!--<h5>Temporary unavailability of Service</h5>-->
			                <div id="notificationMessage"></div>
			            </div>
			        </div>
		        <% } %>
        	<% } %>
          <div class="row">
          <%if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
	           	<% if(subTransactionType !== "REGISTERED") { %>
		            <div class="col-xs-6 col-sm-6 pr5">
		              <a href="javascript:void(0);" id="WithinBank_ToBeneficiary" class="text-center">
		                <span class="menu_icon ico-xs toBene"></span>
		                <p class="small m0"><%-$.i18n.t('app.transferss.tobene')%></p>
		              </a>
		            </div>
	            <% } %>
            <% } else { %>
            	 <div class="col-xs-6 col-sm-6 pr5">
	              <a href="javascript:void(0);" id="WithinBank_ToBeneficiary" class="text-center">
	                <span class="menu_icon ico-xs toBene"></span>
	                <p class="small m0"><%-$.i18n.t('app.transferss.tobene')%></p>
	              </a>
	            </div>
            <% } %>
            <div class="col-xs-6 col-sm-6 pl5">
              <a href="#/onetimepay" class="text-center active">
                <span class="menu_icon ico-xs onetimepay"></span>
                <p class="small m0"><%-$.i18n.t('app.transferss.onetimepay')%></p>
              </a>
            </div>				
          </div>
        </div><!-- /logWit -->
        <label for="acc"><%-$.i18n.t('app.transferss.payfromaccountcard')%></label>
           <div class="form-group">
             
             <select name="fromaccnum" id="WB_OneTimePay_FromAcc" class="form-control" onchange="removeVald(this)">
                      <option value=""  Accide="" selected="selected"><%-$.i18n.t('app.transferss.selaccnum')%></option>
                   <%_.each(myaccounts,function(data,index){%>
						<% if(data.withinflag == "Y") {%>
							<option acctype="CASA" frName="<%-data.productName%>" Accide="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
						<% } %>
				 <%});%>
            <% if(prepaidCardAccountListDTO !== "" || prepaidCardAccountListDTO !== null || prepaidCardAccountListDTO.length > 0) { %>
				<%_.each(prepaidCardAccountListDTO,function(data,index){%>
					<% if(data.withinflag == "Y") {%>
						<option acctype="PC" frName="<%-data.cardHolderName%>" Accide="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"><%-data.accountNumber%></option>
					<% } %>
				<%});%>
            <% } %>
            </select>             
             <p class="small" id="availBalDiv">
                <span class="small text-muted"><%-$.i18n.t('app.transferss.avlbal')%></span>
                   <span id="availbalance" class="amt small">
                </span>
            </p>
         <span class="small" id="error_acc" style="color:#a94442"></span> 
           </div><!-- / form-group--> 
           <label><%-$.i18n.t('app.transferss.sebeneficiaryaccounttype')%></label> 
           <div class="form-group">
            
            <div class="custRadio_pass custRadio_small">
              <div class="box">
                <div class="radio">
                  <label>
                    <input type="radio" name="avalB" value="account" class="withinOneTimetype" checked>
                    <div class="row bg">
                      <div class="col-xs-12 p0">
                        <span class="menu_icon ico-xs account"></span>
                        <span class="small"><%-$.i18n.t('app.transferss.account')%></span>
                      </div>
                    </div>					  
                  </label>
                </div>
              </div>
              <div class="box">
                <div class="radio">
                  <label>
                    <input type="radio" name="avalB" value="cards" class="withinOneTimetype">
                    <div class="row bg">
                      <div class="col-xs-12 p0">
                        <span class="menu_icon ico-xs credit"></span>
                        <span class="small"><%-$.i18n.t('app.transferss.creditcard')%></span>
                      </div>
                    </div>					  
                  </label>
                </div>
              </div>
            </div>
           </div>
           <label for="accnumber" id="beneTypeLabel"></label>
           <div class="form-group">
             <input type="tel" autocomplete='off'  name="accnumber" id="WithinBank_OneTimePay_AccCardNum" class="form-control numericlengthcontrol" maxLength="16">
             <span id="toacc_name" class="small text-muted"></span>
              <span class="small" id="error_accnum" style="color:#a94442"></span> 
           </div><!-- / form-group-->              
           	<div class="form-group has-error">
				<p class="help-block error-message has-error" style="color:#a94442" id="accountNoErr"></p>
			</div>
        	<div class="row">
            			<div class="col-xs-8 pr5">
            			<div>
            				 <label for="within_onetime_paymentAmount"><%-$.i18n.t('app.transferss.entertransferamount')%></label>
            				 </div>
            			</div>
            			<div class="col-xs-4 pl5">
            				<label for="currency"><%-$.i18n.t('app.transferss.currency')%></label> 
            			</div>
            		</div>
            		<div class="form-group">
                		<div class="row">
                    		<div class="col-xs-8 pr5">
								 <input type="tel"  autocomplete='off'  class="form-control numericlengthcontrol transferAmountClass" data-type="currency" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" onkeyup="withoutstartZero(event,'within_onetime_paymentAmount')" id="within_onetime_paymentAmount" name="within_onetime_paymentAmount" maxLength="20">
            				</div>
                			<div class="col-xs-4 pl5">
                  				<select name="currency" id="currency" class="form-control">
                    				<option value=""></option>
                    			</select>
                			</div>
               <div class="col-xs-12">
                <div class="row">
                  <div class="col-xs-5">
                    <p class="small"><a href="#" class="small text-link" data-toggle="modal" data-target="#TransactionLimit"><%-$.i18n.t('app.transferss.transactionlimits')%></a></p>
                  </div>
                </div>
               </div>
             </div>        
           </div>
           <div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="transfermountError"></p>
 						</div>
           <!--<label for="reason"><%-$.i18n.t('app.transferss.transferreason')%></label>-->
           <!--<div class="form-group">
             <select name="reason" id="reason" class="form-control">
           		<option value=""  selected="selected"><%-$.i18n.t('app.transferss.seltransfer')%></option>
                <option value="monthlyswap">Monthly Swap</option>
                <option value="rent">Rent</option>
                <option value="others">Others</option>
            </select>
              <span class="small" id="error_reason" style="color:#a94442"></span>
           </div>--><!-- / form-group-->
           <div id="othersDiv">
				<label for="remarks">Remarks</label>
				<div class="form-group">
					<input type="text" autocomplete='off'  class="form-control alphanumericlengthcontrol" id="WBOneOff_OtherRemarks" name="remarks" maxLength="16">
				</div>
				<div class="form-group has-error">
					<p class="help-block error-message has-error" style="color:#a94442" id="otherRemaksNullError"></p>
				</div>
			</div>
           <div class="form-group" id="within_onetime_transferDiv"></div><!-- / form-group-->
           <div class="clearfix"></div>
           <div class="alert alert-info small" role="alert" id="withinOneOffShortNotesUIDiv" style="display:none;">
            	<small>
	            	<i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.transferss.msg1note')%>
	            	<div id="withinOneOffShortNotesDiv"></div>
	               	<!--<ul>
	                 	<li><%-$.i18n.t('app.transferss.msg2note')%></li>
	                 	<li><%-$.i18n.t('app.transferss.msg3note')%></li>
	                 	<li><%-$.i18n.t('app.transferss.msg4note')%></li>
	               	</ul>-->
              	</small>
           </div>	
           <div class="clearfix"></div><br>
           <div class="form-group">
		              <label class="check-label">
		                <input type="checkbox" name="transfer" id="termsand"> I agree to the <a href="javascript:void(0);" id="withinBankOneTimeTandCPopup">Terms and Conditions</a>
		                <span class="checkmark1"></span>
		              </label>
		              </div>
		               <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="tandcErr"></p>
					</div>
           
           <div class="row">
             <div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block" id="WB_OneTimePay_CancelBtn">Cancel</button></div>
             <div class="col-xs-6 pl5"><button id="WithinBank_OneTimePay_Confirm" type="button" class="btn btn-primary btn-block">Confirm</button></div>
           </div><br>
       </form>                            
       </section>
       <!-- Modal -->
       <div id="termsAndCondPopup"></div>
<div class="modal fade modernPOP" id="TransactionLimit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <form method="post" action="info.html">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.transferss.transactionlimit')%></h4>
                    </div>
                    <div class="modal-body">
                        <p class="text-center">
                            <span class="ico-badge center-block">
                                <span class="menu_icon ico-3x translimit"></span>
                            </span>
                        </p>
                        <div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-6">
										<p>
											<span class="small"><%-$.i18n.t('app.transferss.minimumamount')%></span>
											<br>
											<span class="amt small">
												<%- checkAmount($.formatNumber(minimumAmount, {format:"#,###.00", locale:"us"}))%>
												<span class="cur"><%-$.i18n.t('app.transferss.bdt')%></span>
											</span>
										</p>
									</div>
									<div class="col-xs-6">
										<p>
											<span class="small"><%-$.i18n.t('app.transferss.dailylimit')%></span>
											<br>
											<span class="amt small">
												<%- checkAmount($.formatNumber(dailylimit, {format:"#,###.00", locale:"us"}))%>
												<span class="cur"><%-$.i18n.t('app.transferss.bdt')%></span>
											</span>
										</p>
									</div>
								</div>
							</div>
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-6">
										<p>
											<span class="small"><%-$.i18n.t('app.transferss.pertransactionlimit')%></span>
											<br>
											<span class="amt small">
												<%- checkAmount($.formatNumber(pertranslimit, {format:"#,###.00", locale:"us"}))%>
												<span class="cur"><%-$.i18n.t('app.transferss.bdt')%></span>
											</span>
										</p>
									</div>
									<div class="col-xs-6">
										<p>
										<span class="small"><%-$.i18n.t('app.transferss.availabletransfercount')%></span>
										<br>
										<span class="amt small"><%- dailyAvailableCount%>
										</span>
									   </p>
									</div>
								</div>
							</div>
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-6">
										<p>
											<span class="small"><%-$.i18n.t('app.transferss.monthavalimit')%></span>
											<br>
											<span class="amt small">
												<%- checkAmount($.formatNumber(monthlyAvailableLimit, {format:"#,###.00", locale:"us"}))%>
												<span class="cur"><%-$.i18n.t('app.transferss.bdt')%></span>
											</span>
										</p>
									</div>
									<div class="col-xs-6">
										 <p>
										<span class="small"><%-$.i18n.t('app.transferss.monthavalcount')%></span>
										<br>
										<span class="amt small"><%- monthlyAvailableCount%>
										</span>
									   </p>
									</div>
								</div>
							</div>
						</div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- / modal-->	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
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
		
	});

	
function removeVald(selected){
	console.log(selected.value)
	if(!isNull(selected.value)){
	//$("#error_acc").next().remove();
	//$("#error_acc").html("");
	$(".help-inline").first().html("");
	}
}
</script>


<script>

// Jquery Dependency

$("input[data-type='currency']").on({
    keyup: function() {
      formatCurrency($(this));
    }
});




</script>
