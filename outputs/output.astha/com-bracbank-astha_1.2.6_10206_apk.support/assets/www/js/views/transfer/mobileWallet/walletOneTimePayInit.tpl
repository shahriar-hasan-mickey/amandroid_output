<%
	var els = new EncryptedLocalStorage('secret');
	var casaDTO = getAccountDTO();
	var ccListDTO = getCreditCardDTO();
	var pcListDTO = getPrepaidCardDTO();
	var ccListArray = "";
	var pcListArray = "";
	var casaListArray = "";
	
	if(!isNull(ccListDTO)) {
		ccListArray = ccListDTO.filter(function(array) {
			return (array.merchantType != "" && array.walletflag == "Y");
		});
	}	
	
	if(!isNull(pcListDTO)) {
		pcListArray = pcListDTO.filter(function(array) {
			return (array.merchantType != "" && array.walletflag == "Y");
		});
	}
	
	if(!isNull(casaDTO)) {
		casaListArray = casaDTO.filter(function(array) {
			return (array.walletflag == "Y");
		}); 
	}
	
	var minimumAmount = els.get("minAmountPerTransaction");
	var dailylimit = els.get("dailyAvailableLimit");
	var monthlylimit = els.get("monthlyTransactionLimit");
	var pertranslimit = els.get("maxAmountPerTransaction");
	var dailyAvailableCount = els.get("dailyAvailableCount");
	var dailyTransactionCount = els.get("dailyTransactionCount");
	var monthlyAvailableLimit = els.get("monthlyAvailableLimit");
	var monthlyAvailableCount = els.get("monthlyAvailableCount");
	var downtimeNotification = els.get("downtimeNotification");
	if(!isNull(downtimeNotification) && downtimeNotification.length > 0) {
		var subTransactionType = els.get("subTransType");
		var downtimeNotificationDetail = downtimeNotification[0].downtimeNotificationDetail;
	}
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
				<% if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
					<a href="#/transfer" class="bacArr">
				<% }  else { %>
					<a href="#/wallettransfertobeneselect" class="bacArr">
				<% } %>		
           			<i class="fa fa-angle-left" aria-hidden="true"></i>
            	</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p4"><%- $.i18n.t('app.transferss.paymentdetails')%><p class="small">(Fund Transfer)</p></h4>	
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
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content">
        		<form>
            		<div class="logWit small transfer_option">
            			<%if(!isNull(downtimeNotification)  && downtimeNotification.length>0) { %>
				        	<% if(subTransactionType == "REGISTERED") { var messageMobile = downtimeNotificationDetail[0].messageMobile;%>
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
		                        		<a href="javascript:void(0);" id="walletToBeneficiary" class="text-center">
		                            		<span class="menu_icon ico-xs toBene"></span>
		                            		<p class="small m0"><%-$.i18n.t('app.transferss.tobenelabel')%></p>
		                        		</a>
		                    		</div>	
                    			 <% } %>
                			 <% } else { %>
            			 		<div class="col-xs-6 col-sm-6 pr5">
	                        		<a href="javascript:void(0);" id="walletToBeneficiary" class="text-center">
	                            		<span class="menu_icon ico-xs toBene"></span>
	                            		<p class="small m0"><%-$.i18n.t('app.transferss.tobenelabel')%></p>
	                        		</a>
	                    		</div>	
                			 <% } %>
	                    		<div class="col-xs-6 col-sm-6 pl5">
	                        		<a href="javascript:void(0);" class="text-center active">
	                            		<span class="menu_icon ico-xs onetimepay"></span>
	                            		<p class="small m0"><%-$.i18n.t('app.transferss.onetimepaylabel')%></p>
	                        		</a>
	                    		</div>
                		</div>
            		</div>
            		<!--<label for="acc"><%-$.i18n.t('app.transferss.fromacc')%></label>
            		<div class="form-group">
						<select name="fromaccnum" id="walletOneTimeFromAcc" class="form-control" onchange="removeVald(this)">
                 			<option value="" selected="selected"><%-$.i18n.t('app.transferss.selaccnum')%></option>
                    		<%_.each(casaDTO,function(data,index){%>
				                 <% if(data.walletflag == "Y") {%>
									<option acctype="CASA" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
								<% } %>
							<%});%>
						 	<% if(!isNull(ccListDTO) && ccListDTO.length > 0) {%>
			                      <%_.each(ccListDTO,function(data,index){%>
			                         <% if(data.walletflag == "Y") {%>
										<option acctype="CC" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
									<% } %>
								<%});%>
			                <% } %>
							<% if(!isNull(pcListDTO) && pcListDTO.length > 0) {%>
			                      <%_.each(pcListDTO,function(data,index){%>
			                         <% if(data.walletflag == "Y") {%>
										<option acctype="PC" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
									<% } %>
								<%});%>
			                <% } %>
                		</select>
                		<p class="small" id="availableBalDiv">
                    		<span class="small text-muted" ><%-$.i18n.t('app.transferss.availbal')%></span>
                    		<span id="availbal" class="amt small">
                    		</span>
                		</p>
            		</div>
            		<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="fromAcntNumErr"></p>
	 				</div>-->
	 				
	 				
	 				<div class="form-group">
						<label for="crdaccid"><%-$.i18n.t('app.qrcode.payfromcard')%></label>
						<a style="outline:none;" href="javascript:void(0)" class="acc_link" id="walletOneTimeFromAcc"  data-toggle="modal" data-target="#card_account"><div id="seltpayval" style="width:90%;height:5px;">Select Account/Card</div><span class="glyphicon glyphicon-triangle-bottom pull-right" aria-hidden="true"></span></a> 
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="fromAcntNumErr"></p>
	 					</div>
						<p class="small m0" id="availableBalDiv">
			                <span class="small text-muted"><%-$.i18n.t('app.qrcode.avlbal')%></span>
			                <span id="availbal" class="amt small"> </span>
			            </p> 
					</div>
	 				
					<label for="acc">To <%- els.get("walletType")%> Account</label>
            		<div class="form-group">
						<div class="input-group">
							<% if(els.get("walletType") == "Rocket") { %>
								<input type="tel" autocomplete='off'  name="accnumber" id="walletOneTimeAccNum" class="form-control numericlengthcontrol" maxlength="12">
							<% } else { %>
								<input type="tel" autocomplete='off'  name="accnumber" id="walletOneTimeAccNum" class="form-control numericlengthcontrol" maxlength="11">
							<% } %>
							<span class="input-group-addon phonebook_ioc_outer">
								<a href="javascript:void(0);" id="walletOnetimephonebookbtn" class="phonebook_ioc"></a>
							</span>
						</div>						
						<% if(els.get("walletType") != "Rocket") { %>
						<div class="row">
                   			<div class="col-xs-12 small">
                    			<span class="small text-muted"><i class="fa fa-user" aria-hidden="true"></i> <span id="walletOneTimeAccName"></span></span>
                   			</div>
                 		</div>
                 		<% } %>
            		</div>
            		<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="toAccNumErr"></p>
	 				</div>
	 				<div id="rocketAccNameDiv">
		 				<label for="accname">Rocket Account Name</label>
	            		<div class="form-group">
			     			<input type="text" autocomplete='off'  id="rocketOneTimeAccNAme" name="rocketAccName" class="form-control alphanumericlengthcontrol" maxlength="20">
						</div>
					</div>
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="accNameError"></p>
					</div>
            		<div class="row">
            			<div class="col-xs-8 pr5">
            				<label for="amt"><%-$.i18n.t('app.transferss.entertransferamount')%></label>
            			</div>
            			<div class="col-xs-4 pl5">
            				<label for="curr" class="text-right">Currency</label>
            			</div>
            		</div>
            		<div class="form-group">
                		<div class="row">
                    		<div class="col-xs-8 pr5">
								<input type="tel" autocomplete='off'  class="form-control numericlengthcontrol transferAmountClass" data-type="currency" pattern="^\$\d{1,3}(,\d{3})*(\.\d+)?$" onkeyup="withoutstartZero(event,'walletOnepaymentAmount')" id="walletOnepaymentAmount" name="walletOnepaymentAmount" maxLength="20">
            				</div>
                			<div class="col-xs-4 pl5">
                  				<select name="currency" id="currency" class="form-control">
                    				<option value="BDT" selected>BDT</option>
                    			</select>
                			</div>
                			<div class="col-xs-12">
                    			<div class="row">
                        			<div class="col-xs-5 pr5">
                            			<p class="small">
                                			<a href="javascript:void(0);" class="small text-link" data-toggle="modal" data-target="#TransactionLimit"><%-$.i18n.t('app.transferss.transactionlimits')%></a>
                            			</p>
                        			</div>
                    			</div>
                			</div>
            			</div>
        			</div>
        			<div class="row">
	        			<div class="col-xs-8 pr5">
	        				<div class="form-group has-error">
								<p class="help-block error-message has-error" style="color:#a94442" id="transAmountError"></p>
	 						</div>
	 					</div>
	 					<div class="col-xs-4 pl5">
	        				<div class="form-group has-error">
								<p class="help-block error-message has-error" style="color:#a94442" id="currError"></p>
	 						</div>
	 					</div>
        			</div>
            		<!--<label for="reason"><%-$.i18n.t('app.transferss.transferreason')%></label>
        			<div class="form-group">
        				<select name="purposetransfer" id="purposetransfer" class="form-control">
       						<option value=""  selected="selected"><%-$.i18n.t('app.transferss.seltransfer')%></option>
    						<option value="monthlyswap">Monthly Swap</option>
	                    	<option value="rent">Rent</option>
	                    	<option value="others">Others</option>
        				</select>
					</div>-->
					<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="reasonNullError"></p>
					</div>
					<!--<div id="othersDiv">-->
						<label>Remarks</label>
						<div class="form-group">
							<input type="text" class="form-control alphanumericlengthcontrol" id="walletOneOffOtherRemarks" name="otherRemarks" maxLength="16">
						</div>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="otherRemaksNullError"></p>
						</div>
					<!--</div>-->
            		<div class="form-group" id="wallet_onetime_transferDiv"></div>
            		<div class="clearfix"></div>
			         <!--<div class="alert alert-info small" role="alert">
		             	<small>
		                	<i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.transferss.msg1note')%>
		                	<ul>
                          		<li><%-$.i18n.t('app.transferss.msg2note')%></li>
	                            <li><%-$.i18n.t('app.transferss.msg3note')%></li>
	                            <li><%-$.i18n.t('app.transferss.msg4note')%></li>
	                        </ul>
	                    </small>
			         </div>-->
			          <div class="form-group">
		              <label class="check-label">
		                <input type="checkbox" name="transfer" id="termsand"> I agree to the <a href="javascript:void(0);" id="walletOneTimeTandCPopup">Terms and Conditions</a>
		                <span class="checkmark1"></span>
		              </label>
		              </div>
		               <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="tandcErr"></p>
					</div>
            		<div class="row">
                		<div class="col-xs-6 pr5">
                    		<button type="button" class="btn btn-default btn-block" id="walletOneTimeInitCancel"><%-$.i18n.t('button.transfer.cancel')%></button>
                		</div>
                		<div class="col-xs-6 pl5">
                    		<button type="button" class="btn btn-primary btn-block" id="walletOneTimePayNow"><%-$.i18n.t('app.transferss.paynow')%></button>
                		</div>
            		</div>
        		</form>
    		</section>
			 <div id="termsAndCondPopup"></div>
			 
			 
			 <div class="modal fade trans_popup" id="card_account" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="qr_details">
                      <h4>Select Account/Card</h4>
			            <div class="qr_acc_outer">
							
							<% if(!isNull(casaListArray )) { %>
			                 <h4>CASA Account</h4>
			                <ul class="list-unstyled">
			                    
			                    <%_.each(casaListArray,function(data,index){%>
			                    
			                    <li class="list-group-item acccardtypenum" acctype="CASA" frName="<%-data.productName%>" value="<%- data.id%>" Accide="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>">
			                           <label class="radio-label">
			                            <div class="row">
			                                <div class="col-xs-2 first-col">
			                                 <span class="menu_icon account"></span>
			                                </div>
			                                <div class="col-xs-10">
			                                    <p class="acc_txt"><%-data.accountShortName%></p>
			                                    <p class="acc_cat"><span class="selectAccNumber"><%-data.accountNumber%></span></p>
			                                </div>
			                            </div>
			                            <input type="radio" name="transfer"> 
			                            <span class="checkmark"></span>
			                        </label>
			                    </li>
			                     
			                    <%});%>
			                    
			                </ul>
			               <%}%>			            
			            
			                <% if(!isNull(ccListArray)) { %>
			                <h4><%-$.i18n.t('app.qrcode.creditcard')%></h4>
			                <ul class="list-unstyled">
			                    
			                    <%_.each(ccListArray,function(data,index){%>
			                     
			                    <li class="list-group-item acccardtypenum" acctype="CC" frName="<%-data.productName%>" merchantType="<%-data.merchantType%>" value="<%- data.id%>" Accide="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>">
			                           <label class="radio-label">
			                            <div class="row">
			                                <div class="col-xs-2 first-col">
			                                 <% if(data.merchantType == "VISA" ) { %>
			                                    <span class="menu_icon visa"></span>
			                                 <% } else { %>   
			                                 	 <span class="menu_icon mastercard"></span>
			                                 <%}%>
			                                </div>
			                                <div class="col-xs-10">
			                                    <p class="acc_txt"><%-data.productName%></p>
			                                    <p class="acc_cat"><%-data.merchantType%> | <span class="selectAccNumber"><%-data.accountNumber%></span></p>
			                                </div>
			                            </div>
			                            <input type="radio" name="transfer"> 
			                            <span class="checkmark"></span>
			                        </label>
			                    </li>
			                    
			                    <%});%>
			                    
			                </ul>
			                <%}%>
			                <% if(!isNull(pcListArray )) { %>
			                 <h4><%-$.i18n.t('app.qrcode.prepaidcard')%></h4>
			                <ul class="list-unstyled">
			                    
			                    <%_.each(pcListArray,function(data,index){%>
			                    
			                    <li class="list-group-item acccardtypenum" acctype="PC" frName="<%-data.productName%>" merchantType="<%-data.merchantType%>" value="<%- data.id%>" Accide="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>">
			                           <label class="radio-label">
			                            <div class="row">
			                                <div class="col-xs-2 first-col">
			                                 <% if(data.merchantType == "VISA" ) { %>
			                                    <span class="menu_icon visa"></span>
			                                 <% } else { %>   
			                                 	 <span class="menu_icon mastercard"></span>
			                                 <%}%>
			                                </div>
			                                <div class="col-xs-10">
			                                    <p class="acc_txt"><%-data.productName%></p>
			                                    <p class="acc_cat"><%-data.merchantType%> | <span class="selectAccNumber"><%-data.accountNumber%></span></p>
			                                </div>
			                            </div>
			                            <input type="radio" name="transfer"> 
			                            <span class="checkmark"></span>
			                        </label>
			                    </li>
			                     
			                    <%});%>
			                    
			                </ul>
			               <%}%>
			            </div>                      

                    </div>
                </div>
            </div>
        </div>
    </div>
			 
			<div class="modal fade modernPOP" id="TransactionLimit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <form method="post" action="info.html">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        <h4 class="modal-title" id="myModalLabel"><%-$.i18n.t('app.transferss.translimit')%></h4>
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
		</div>
	</div>
</div>
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

	function removeVald(selected){
	console.log(selected.value)
	if(!isNull(selected.value)){
	//$("#availableBalDiv").next().remove();
	//$("#fromAcntNumErr").html("");
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

