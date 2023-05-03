<%
	var els = new EncryptedLocalStorage('secret');
	var casaDTO = getAccountDTO();
	var casaListArray = "";
	if(!isNull(casaDTO)) {
		casaListArray = casaDTO.filter(function(array) {
			return (array.npsbflag == "Y");
		}); 
	}
	
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
    		<a href="#/transfer" class="bacArr">
        		<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
  		</div>
  		<div class="headerMiddle">
  			<h4  class="p10">BINIMOY</h4>	
  		</div>
  		<div class="headerRight">
	  	</div>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
		    <section class="content" id="BINIMOY">
      			<div class="media payAcc">
              		<div class="media-body media-middle">
	                	<%- els.get("profileName")%>
               	 		<p class="small text-muted m0">NID : <span><%- els.get("nationalID")%></span></p>
                		<p class="small text-muted m0">DOB : <span><%- els.get("dateOfBirth")%></span></p>
                		<p class="small text-muted m0">Mobile No : <span><%- els.get("contactNumber")%></span></p>
                		<p class="small text-muted m0">Email : <span><%- els.get("emailId")%></span></p>
              		</div>
        		</div>	
            <br/>
            <h4>Tag Accounts</h4>
        	<div class="panel panel-info">
				<div class="panel-heading">Default Debit  <span class="pull-right"><i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" data-toggle="modal" data-target="#default_debit"></i></span></div>
						<div class="panel-body">
							<div class="form-group">
								<label>From Account <span class="mandi">*</span></label> 
                				<div class="clearfix"></div>
                    			<a href="javascript:void(0);" class="acc_link qr_select_acc" data-toggle="modal" data-target="#card_accountDebit">
                    				<div id="seltpayvalDebitAcc" style="width:90%;height:5px;">Select Account</div>
                        			<span class="glyphicon glyphicon-triangle-bottom pull-right" aria-hidden="true"></span>
                				</a>
                			<div class="clearfix"></div>
						</div>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="binimoyDebitAccError"></p>
	 					</div>
            			<div class="clearfix"></div>
            			<label for="Alias">Alias <span class="mandi">*</span></label>
						<div class="input-group">
							<span class="input-group-addon" id="Alias">BBL</span>
							<input type="text" class="form-control inputalphanumericlengthcontrol aliasName" id="debitAlias" aria-describedby="Alias" maxlength="24">
						</div>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="binimoyDebitAliasErr"></p>
	 					</div>
            		</div>
        		</div>  
        		
        		<div class="panel panel-info">
					 <div class="panel-heading">DP Default Credit <span class="mandi">*</span><span class="pull-right"><i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" data-toggle="modal" data-target="#dp_default_credit"></i></span></div>
							<div class="panel-body">
								<div class="form-group">
									<label>To Account <span class="mandi">*</span></label> 
	                				<div class="clearfix"></div>
	                    			<a href="javascript:void(0);" class="acc_link qr_select_acc" data-toggle="modal" data-target="#card_accountCredit">
	                        			<div id="seltpayvalCreditAcc" style="width:90%;height:5px;">Select Account</div>
	                        			<span class="glyphicon glyphicon-triangle-bottom pull-right" aria-hidden="true"></span>
	                				</a>
	                			<div class="clearfix"></div>
							</div>
	            			<div class="clearfix"></div>
	            			<div class="form-group has-error">
								<p class="help-block error-message has-error" style="color:#a94442" id="binimoyCreditAccError"></p>
		 					</div>
	            			<label for="Alias">Alias <span class="mandi">*</span></label>
							<div class="input-group">
								<span class="input-group-addon" id="Alias">BBL</span>
								<input type="text" class="form-control inputalphanumericlengthcontrol aliasName" id="creditAlias" aria-describedby="Alias" maxlength="24">
							</div>
							<div class="form-group has-error">
								<p class="help-block error-message has-error" style="color:#a94442" id="binimoyCreditAliasErr"></p>
		 					</div>
	            		</div>
	        		</div> 
	        		
	        		<div class="panel panel-info">
					 <div class="panel-heading">RTP Default Debit<span class="small"> (Optional)</span><span class="pull-right"><i class="fa fa-info-circle pull-right tipsIcon" aria-hidden="true" data-toggle="modal" data-target="#rtp_default_debit"></i></span></div>
							<div class="panel-body">
								<div class="form-group">
									<label>From Account </label> 
	                				<div class="clearfix"></div>
	                    			<a href="javascript:void(0);" class="acc_link qr_select_acc" data-toggle="modal" data-target="#card_rtpDefaultDebit">
	                        			<div id="seltpayvalRTPDebitAcc" style="width:90%;height:5px;">Select Account</div>
	                        			<span class="glyphicon glyphicon-triangle-bottom pull-right" aria-hidden="true"></span>
	                				</a>
	                			<div class="clearfix"></div>
							</div>
	            			<div class="clearfix"></div>
	            			<label for="Alias">Alias</label>
							<div class="input-group">
								<span class="input-group-addon" id="Alias">BBL</span>
								<input type="text" class="form-control inputalphanumericlengthcontrol aliasName" id="rtpDebitAlias" aria-describedby="Alias" maxlength="24">
							</div>
							<div class="form-group has-error">
								<p class="help-block error-message has-error" style="color:#a94442" id="binimoyRTPDebitAliasErr"></p>
		 					</div>
	            		</div>
	        		</div> 
        			
        			<!--<div class="form-group">
							<label>Select Authorisation Mode</label>
							<div class="custRadio_pass">
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="optionsRadios" id="optionsRadios1" value="option2" checked="">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="menu_icon ico-xs sms"></span>
													<span class="small">SMS</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="menu_icon ico-xs mail"></span>
													<span class="small">Mail</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="optionsRadios" id="optionsRadios3" value="option2">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="menu_icon ico-xs fScan"></span>
													<span class="small">Token</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="optionsRadios" id="optionsRadios4" value="option2">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="menu_icon ico-xs esign"></span>
													<span class="small">E-sign</span>
												</div>
											</div>
										</label>
									</div>
								</div>
							</div>
						</div>-->
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="binimoyRegRestrictionErr"></p>
	 					</div>
        			<div class="form-group" id="binimoyRegAuthModeDiv"></div>
        			<div class="form-group">
                     	<label class="check-label">
                        	<input type="checkbox" name="transfer" id="binimoyRegTandC"> I agree to <a href="javascript:void(0);" id="binimoyTAndCPopup" data-target="#termsandcond">Terms &amp; Condition</a>
                          	<span class="checkmark1"></span>
                    	</label>
                  	</div>
                  	<div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="binimoyTandCErr"></p>
 					</div>
                  	<div class="row">
                		<div class="col-xs-6"><button type="button" class="btn btn-default btn-block" id="binimoyTagAccCancelBtn">Cancel</button></div>
                		<div class="col-xs-6"><button type="button" class="btn btn-primary btn-block" id="binimoyTagAccSubmitBtn">Submit</button></div>
                	</div>
			</section>	
	        <div class="modal fade modernPOP" id="default_debit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	            <div class="modal-dialog" role="document">
	                <form method="post" action="#">
	                    <div class="modal-content">
	                        <div class="modal-header">
	                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                <span aria-hidden="true">&times;</span>
	                            </button>
	                            <h4 class="modal-title" id="myModalLabel">Default Debit</h4>
	                        </div>
	                        <div class="modal-body">
	                          <div class="terms_wrap">
                              		<p>Kindly select one of your accounts as default debit from where you want to transfer your money.</p>
 									<p><b>Alias - </b>It is a short name for your selected account. It cannot be changed further. </p>
	    
	                          </div>
	                        </div>
	                   
	                    </div>
	                </form>
	            </div>
	        </div>
	        <div class="modal fade modernPOP" id="dp_default_credit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	            <div class="modal-dialog" role="document">
	                <form method="post" action="#">
	                    <div class="modal-content">
	                        <div class="modal-header">
	                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                <span aria-hidden="true">&times;</span>
	                            </button>
	                            <h4 class="modal-title" id="myModalLabel">DP Default Credit</h4>
	                        </div>
	                        <div class="modal-body">
	                          <div class="terms_wrap">
                              		<p>Kindly select one of your accounts as Direct Payment (DP) default credit where you want to receive your money.</p>
 									<p><b>Alias - </b>It is a short name for your selected account. You can use letters, numbers & special characters. It cannot be changed further.</p>
	    
	                          </div>
	                        </div>
	                   
	                    </div>
	                </form>
	            </div>
	        </div>
	        <div class="modal fade modernPOP" id="rtp_default_debit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	            <div class="modal-dialog" role="document">
	                <form method="post" action="#">
	                    <div class="modal-content">
	                        <div class="modal-header">
	                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	                                <span aria-hidden="true">&times;</span>
	                            </button>
	                            <h4 class="modal-title" id="myModalLabel">RTP Default Debit</h4>
	                        </div>
	                        <div class="modal-body">
	                          <div class="terms_wrap">
                              		<p>Kindly select one of your accounts as RTP Default Debit. Fund will always be transferred/ debited from this account when you accept any request from other Binimoy user.</p>
 									<p>*** Please note - If you have already selected your <b>RTP Default Debit Account</b> with other bank account then selecting new account through Astha will remove the previous account.</p>
 									<p> Now, your newly selected BBL account is your default RTP Default Debit.</p>
 									<p> You can skip selecting <b>RTP Default Debit Account</b> while registering through Astha if you have selected earlier with other bank.</p>
	    
	                          </div>
	                        </div>
	                   
	                    </div>
	                </form>
	            </div>
	        </div>
	        <div class="modal fade trans_popup" id="card_accountDebit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		        <div class="modal-dialog" role="document">
		            <div class="modal-content">
		                <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                        <span aria-hidden="true">&times;</span>
		                    </button>
		                </div>
		                <div class="modal-body">
		                    <div class="qr_details">
		                      <h4>Select Account</h4>
					            <div class="qr_acc_outer">
									
									<% if(!isNull(casaListArray )) { %>
					                <ul class="list-unstyled">
					                    
					                    <%_.each(casaListArray,function(data,index){%>
					                    
					                    <li class="list-group-item accnumtype" acctype="CASA" frName="<%-data.productName%>" value="<%- data.id%>" Accide="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>" accNum="<%-data.accountNumber%>">
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
					            </div>                      
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		    
		    
		    <div class="modal fade trans_popup" id="card_accountCredit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		        <div class="modal-dialog" role="document">
		            <div class="modal-content">
		                <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                        <span aria-hidden="true">&times;</span>
		                    </button>
		                </div>
		                <div class="modal-body">
		                    <div class="qr_details">
		                      <h4>Select Account</h4>
					            <div class="qr_acc_outer">
									
									<% if(!isNull(casaListArray )) { %>
					                <ul class="list-unstyled">
					                    
					                    <%_.each(casaListArray,function(data,index){%>
					                    
					                    <li class="list-group-item accnumtypeclass" acctype="CASA" frName="<%-data.productName%>" value="<%- data.id%>" Accide="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>" accNum="<%-data.accountNumber%>">
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
					            </div>                      
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		    
		    <div class="modal fade trans_popup" id="card_rtpDefaultDebit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		        <div class="modal-dialog" role="document">
		            <div class="modal-content">
		                <div class="modal-header">
		                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		                        <span aria-hidden="true">&times;</span>
		                    </button>
		                </div>
		                <div class="modal-body">
		                    <div class="qr_details">
		                      <h4>Select Account</h4>
					            <div class="qr_acc_outer">
									
									<% if(!isNull(casaListArray )) { %>
					                <ul class="list-unstyled">
					                    
					                    <%_.each(casaListArray,function(data,index){%>
					                    
					                    <li class="list-group-item accnumtypeclassrtp" acctype="CASA" frName="<%-data.productName%>" value="<%- data.id%>" Accide="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>" accNum="<%-data.accountNumber%>">
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
					            </div>                      
		                    </div>
		                </div>
		            </div>
		        </div>
		    </div>
		    
		    <div class="modal fade modernPOP" id="verify" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  			<div class="modal-dialog" role="document">
	  				<form>
	    				<div class="modal-content">
	      					<div class="modal-header">
	        					<button type="button" id="close_btn" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        					<h4 class="modal-title" id="myModalLabel"></h4>
	      					</div>
	      					<div class="modal-body">
							  
                            <p class="small" id="otpHelpText"></p>
							 <p class="small" id="challengeText"></p>
								<div class="form-group">
				  					<div class="pasCode text-center">
					  					<div class="form-group" id="otp">
											<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp1" name="otp1" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp2" name="otp2" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp3" name="otp3" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp4" name="otp4" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp5" name="otp5" maxlength="1" class="inputs numericlengthcontrol"/>
											<input type="tel" autocomplete="off" pattern="[0-9]*" inputmode="numeric" id="otp6" name="otp6" maxlength="1" class="inputs numericlengthcontrol"/>
					  					</div>
				  					</div>
								</div>
								<div class="form-group has-error" id="otpNullErrorDiv">
									<p class="help-block error-message" style="color:#a94442; text-align:center;" id="otpNullError"></p>
						 		</div>
                                <div id="otpContainerDiv"></div>
							</div>
	      					<div class="modal-footer">
								<div class="row">
									<div class="col-xs-6 pr5">
										<button type="button" id="popup_cancel_btn" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
									</div>
									<div class="col-xs-6 pr5">
										<button type="button" id="verifyOTP" class="btn btn-default btn-block"><%- $.i18n.t('button.registration.verify') %></button>
									</div>
								</div>
							</div>
						</div>
		  			</form>
	  			</div>
			</div>
		    <div id="termsAndCondPopup"></div>
		</div>
	</div>
</div>
<script>
(function ($){
     $.fn.inputnumericlength=function() {
        return this.each(function() {
          var makelength=$(this).attr("maxlength");
          $(this).on('input',function(e) { 
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
$('.numericlengthcontrol').inputnumericlength();
$(".numericlengthcontrol").css({'-webkit-text-security': 'disc','-moz-webkit-text-security': 'disc','-moz-text-security': 'disc'});
</script>
<script>
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
$('.inputalphanumericlengthcontrol').inputalphanumericlen();
</script>
<script>
	$(".inputs").keyup(function (e) {
	    if (this.value.length == this.maxLength) {
	    	$(this).next('.inputs').focus();
	    } else if((e.which == 8 || e.which == 46) && (this.value == "")) { 
	    	$(this).prev('.inputs').focus();
	    }
	});
</script>
						 

