<%
	var els = new EncryptedLocalStorage('secret'); 
	var profileimg=els.get("profileName");
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
			<a href="javascript:void(0);" id="backusersettingBtn" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10"><%-$.i18n.t('app.usersettings.general.title')%></h4>	
		</div>
		<div class="headerRight">
      		<a class="header_logout">
				<i class="fa fa-power-off" aria-hidden="true"></i>
			</a>  
 		</div>
	</header>
	<div class="bodywrapper">
		<div class="contentwrap">
			<section class="content" id="settings">
		   		<form>
          			<div class="editPicBox">
              			<div class="addPic">
                  			 <img src="images/common/user_default1.png" class="profPic img-circle"> 
              				<!--<i class="fa fa-plus" aria-hidden="true"></i>
              				<input id="exampleInputFile" type="file"/>-->
      					</div>
              			<p class="profilename"><%-profileimg%></p>
          			</div>
          			<br/>
		  			<ul class="list-unstyled list-setting">			
          				<li class="list-group-item" id="changePwd" style="box-shadow: 1px 2px 10px #cccccc;">
            				<p><a href="javascript:void(0);"><%-$.i18n.t('app.usersettings.general.changepwd')%></a></p>
          				</li>	
          				<li class="list-group-item" id="changeUsername" style="margin-top:20px; box-shadow: 1px 2px 10px #cccccc;">
            				<p><a href="javascript:void(0);"><%-$.i18n.t('app.usersettings.general.changeusername')%></a></p>
          				</li>				
          				<!--<li class="list-group-item">
            				<p><a href="javascript:void(0);" id="changeMpin"><%-$.i18n.t('app.usersettings.general.changempin')%></a></p>
          				</li>-->
          				<li class="list-group-item" id="changeSecureQues" style="margin-top:20px; box-shadow: 1px 2px 10px #cccccc;">
            				<p><a href="javascript:void(0);"><%-$.i18n.t('app.usersettings.general.changesecques')%></a></p>
          				</li>
						  
					<!--	<% if(!isNull(els.get("data_registrationId"))) { %>
							<li class="list-group-item" style="margin-top:20px; box-shadow: 1px 2px 10px #cccccc;">
								<label><%-$.i18n.t('app.usersettings.general.pushnotification')%></label>
								<div class="row">
								  <div class="col-xs-4">
									<label class="radio-label">
									  <input type="radio" class="pushnotification" name="pushnotification" value="Y" id="enableBtn"> <%-$.i18n.t('app.usersettings.general.enable')%>
									  <span class="checkmark"></span>
									</label>
								  </div>
								  <div class="col-xs-4">
									<label class="radio-label">
									  <input type="radio" class="pushnotification" name="pushnotification" value="N" id="disableBtn"> <%-$.i18n.t('app.usersettings.general.disable')%>
									  <span class="checkmark"></span>
									</label>
								  </div>
								</div>
							</li>
						<% } %> -->
						
						<li class="list-group-item has_switch" style="margin-top:20px; box-shadow: 1px 2px 10px #cccccc;">
				            <p class="no-link">
				            	<label class="center-block">Show Balance in Dashboard
				              		<label class="switch pull-right">
				                		<input name="show_balance" type="checkbox" id="show_balance" value="">
				                		<span class="switchslider round"></span>
				              		</label>
				          		</label>
				          	</p>
				          </li>
						
						
          				<!--<li class="list-group-item">
            				<label><%-$.i18n.t('app.usersettings.general.fingerprint')%></label>
            				<div class="row">
              					<div class="col-xs-4">
                					<label class="radio-label">
                  						<input type="radio" checked="checked" name="touch" value="1" id="enableTid"/><%-$.i18n.t('app.usersettings.general.enable')%>
                  						<span class="checkmark"></span>
                					</label>
              					</div>
          						<div class="col-xs-4">
                					<label class="radio-label">
                  						<input type="radio" name="touch" value="0" id="disableTid"/> <%-$.i18n.t('app.usersettings.general.disable')%>
              							<span class="checkmark"></span>
                					</label>
              					</div>	
        					</div>
          				</li>
	      				<li class="list-group-item">
	            			<label><%-$.i18n.t('app.usersettings.general.faceid')%></label>
	        				<div class="row">
	              				<div class="col-xs-4">
	                				<label class="radio-label">
	                  					<input type="radio" name="face" value="1" id="enableFid"/> <%-$.i18n.t('app.usersettings.general.enable')%>
	                  					<span class="checkmark"></span>
	                				</label>
	              				</div>
	              				<div class="col-xs-4">
	                				<label class="radio-label">
	                  					<input type="radio" checked="checked" name="face" value="0" id="disableFid"/> <%-$.i18n.t('app.usersettings.general.disable')%>
	              						<span class="checkmark"></span>
	                				</label>
	          					</div>			
	            			</div>
	          			</li>-->
	    			</ul>
	      		</form>                      
			</section>
			
			<div class="modal fade modernPOP" id="verifyTID" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  			<div class="modal-dialog" role="document">
	  				<form>
	    				<div class="modal-content">
	      					<div class="modal-header">
	        					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        					<h4 class="modal-title" id="myModalLabel"><%- $.i18n.t('app.registration.verificationlabel') %></h4>
	      					</div>
	      					<div class="modal-body">
			  					<p class="small text-center"><%- $.i18n.t('app.registration.opthelptext') %></p>
								<div class="form-group">
				  					<div class="pasCode text-center">
					  					<div class="form-group" id="otp">
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp1" name="otp1" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp2" name="otp2" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp3" name="otp3" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp4" name="otp4" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp5" name="otp5" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp6" name="otp6" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
					  					</div>
				  					</div>
								</div>
								<div class="form-group has-error">
									<p class="help-block error-message" style="color:#a94442; text-align:center;" id="otpNullError"></p>
						 		</div>
								<div class="form-group">
									<div id="OTPcontainer1"></div>
								</div>
	  							<p class="text-center small">
		  							<a href="javascript:void(0);" class="resend_button" id="resend_btn1"><%- $.i18n.t('app.registration.rensendotp') %></a>
	  							</p>
	      					</div>
	      					<div class="modal-footer">
								<div class="row">
									<div class="col-xs-6 pr5">
										<button type="button" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
									</div>
									<div class="col-xs-6 pr5">
										<button type="button" id="verifyTidOTP" class="btn btn-default btn-block"><%- $.i18n.t('button.registration.verify') %></button>
									</div>
								</div>
							</div>
						</div>
		  			</form>
	  			</div>
			</div>
			
			<div class="modal fade modernPOP" id="verifyFID" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  			<div class="modal-dialog" role="document">
	  				<form>
	    				<div class="modal-content">
	      					<div class="modal-header">
	        					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        					<h4 class="modal-title" id="myModalLabel"><%- $.i18n.t('app.registration.verificationlabel') %></h4>
	      					</div>
	      					<div class="modal-body">
			  					<p class="small text-center"><%- $.i18n.t('app.registration.opthelptext') %></p>
								<div class="form-group">
				  					<div class="pasCode text-center">
					  					<div class="form-group" id="otp">
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp1" name="otp1" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp2" name="otp2" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp3" name="otp3" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp4" name="otp4" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp5" name="otp5" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
											<input type="password" autocomplete="off" pattern="[0-9]*" id="otp6" name="otp6" maxlength="1" class="inputs cardpinnumericlengthcontrol"/>
					  					</div>
				  					</div>
								</div>
								<div class="form-group has-error">
									<p class="help-block error-message" style="color:#a94442; text-align:center;" id="otpNullError"></p>
						 		</div>
								<div class="form-group">
									<div id="OTPcontainer"></div>
								</div>
	  							<p class="text-center small">
		  							<a href="javascript:void(0);" class="resend_button" id="resend_btn1"><%- $.i18n.t('app.registration.rensendotp') %></a>
	  							</p>
	      					</div>
	      					<div class="modal-footer">
								<div class="row">
									<div class="col-xs-6 pr5">
										<button type="button" class="btn btn-primary cancel-btn btn-block" data-dismiss="modal">Cancel</button>
									</div>
									<div class="col-xs-6 pr5">
										<button type="button" id="verifyFidOTP" class="btn btn-default btn-block"><%- $.i18n.t('button.registration.verify') %></button>
									</div>
								</div>
							</div>
						</div>
		  			</form>
	  			</div>
			</div>
			
			<div class="modal fade modernPOP" id="successEnableTid" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	        	<div class="modal-dialog" role="document">
	        		<form>
	          			<div class="modal-content">
	            			<div class="modal-body">
	                			<p class="text-center">
	                    			<span class="ico-circle center-block">
	                        			<span class="menu_icon ico-2x check"></span>
	                    			</span>
	                			</p>
	                			<h4 class="text-center"><%-$.i18n.t('app.usersettings.general.success')%>!</h4>
	                			<p class="small text-center"><%-$.i18n.t('app.usersettings.general.tidenablesuccmsg')%></p>
	            			</div>
	            			<div class="modal-footer">
	              				<button type="button" class="btn btn-default btn-block" data-dismiss="modal"><%-$.i18n.t('button.registration.ok')%></button>
	            			</div>
	          			</div>
	            	</form>	
	    		</div>
	      	</div>
	      	
	      	<div class="modal fade modernPOP" id="successDisableTid" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	        	<div class="modal-dialog" role="document">
	        		<form>
	          			<div class="modal-content">
	            			<div class="modal-body">
	                			<p class="text-center">
	                    			<span class="ico-circle center-block">
	                        			<span class="menu_icon ico-2x check"></span>
	                    			</span>
	                			</p>
	                			<h4 class="text-center"><%-$.i18n.t('app.usersettings.general.success')%>!</h4>
	                			<p class="small text-center"><%-$.i18n.t('app.usersettings.general.tiddisablesuccmsg')%></p>
	            			</div>
	            			<div class="modal-footer">
	              				<button type="button" class="btn btn-default btn-block" id="disableTidOk" data-dismiss="modal"><%-$.i18n.t('button.registration.ok')%></button>
	            			</div>
	          			</div>
	            	</form>	
	    		</div>
	      	</div>
	      	
	      	<div class="modal fade modernPOP" id="successEnableFid" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	        	<div class="modal-dialog" role="document">
	        		<form>
	          			<div class="modal-content">
	            			<div class="modal-body">
	                			<p class="text-center">
	                    			<span class="ico-circle center-block">
	                        			<span class="menu_icon ico-2x check"></span>
	                    			</span>
	                			</p>
	                			<h4 class="text-center"><%-$.i18n.t('app.usersettings.general.success')%>!</h4>
	                			<p class="small text-center"><%-$.i18n.t('app.usersettings.general.fidenablesuccmsg')%></p>
	            			</div>
	            			<div class="modal-footer">
	              				<button type="button" class="btn btn-default btn-block" data-dismiss="modal"><%-$.i18n.t('button.registration.ok')%></button>
	            			</div>
	          			</div>
	            	</form>	
	    		</div>
	      	</div>
	      	
	      	<div class="modal fade modernPOP" id="successDiableFid" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	        	<div class="modal-dialog" role="document">
	        		<form>
	          			<div class="modal-content">
	            			<div class="modal-body">
	                			<p class="text-center">
	                    			<span class="ico-circle center-block">
	                        			<span class="menu_icon ico-2x check"></span>
	                    			</span>
	                			</p>
	                			<h4 class="text-center"><%-$.i18n.t('app.usersettings.general.success')%>!</h4>
	                			<p class="small text-center"><%-$.i18n.t('app.usersettings.general.fiddisablesuccmsg')%></p>
	            			</div>
	            			<div class="modal-footer">
	              				<button type="button" class="btn btn-default btn-block" data-dismiss="modal"><%-$.i18n.t('button.registration.ok')%></button>
	            			</div>
	          			</div>
	            	</form>	
	    		</div>
	      	</div>
			
			<!-- Modal -->
			<div class="modal fade modernPOP" id="pushnotify_popup" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog" role="document">
					<form method="post" action="#">
						<div class="modal-content">
							<div class="modal-body">
								<p class="text-center">
									<span class="ico-circle center-block">
										<span class="menu_icon ico-2x check"></span>
									</span>
								</p>
								<h4 class="text-center"><%-$.i18n.t('app.usersettings.general.success')%>!</h4>
								<p class="small text-center" id="notify_popup_msg"></p>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default btn-block" data-dismiss="modal"><%-$.i18n.t('button.registration.ok')%></button>
							</div>
						</div>
					</form>
				</div>
			</div>
			<!-- / modal-->	
		</div>
	</div>
</div>
<script src="js/library/progressbar.min.js"></script>

<script>
	$(document).ready(function() {

		DisableCopyPaste();
		
		
	});
</script>
