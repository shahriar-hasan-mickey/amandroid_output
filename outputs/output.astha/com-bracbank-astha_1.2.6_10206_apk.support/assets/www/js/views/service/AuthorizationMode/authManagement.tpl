<%
	var els = new EncryptedLocalStorage('secret');
	var authModeSR = els.get("authModeSR");
	var authTypeSR = els.get("authTypeSR");
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
			<a href="#/servicerequest" class="bacArr">
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    		</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10"><%-$.i18n.t('app.service.authManagement')%></h4>	
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
               	<div class="panel panel-default">
      				<div class="panel-body">
                    	<h4>Current Mode</h4>
                      	<form>
                      		<% if(authModeSR == "SMS") { %>
	        					<div class="custRadio">
	                          		<div class="radio">
	                            		<label>
	                                		<input type="radio" name="authmode" id="smsOrEmail" value="SMS" checked>
	                                		<div class="row bg">
	                                    		<div class="col-xs-3 col-sm-3 pl5 pr5">
	                                      			<img src="images/common/smsOTP.jpg" class="img-thumbnail">
	                                    		</div>
	                                    		<div class="col-xs-9 col-sm-9 pl5"><%-$.i18n.t('app.login.smsoremaillabel')%> (<%-$.i18n.t('app.login.default')%>)
	                                        		<!--<p class="small"><%-$.i18n.t('app.login.onetimepwd')%>(<%-$.i18n.t('app.login.otp')%>).<%-$.i18n.t('app.login.smsoremailtext')%>(<%- maskMobile(els.get("contactNumber"))%>)<%-$.i18n.t('app.login.smsoremailtext1')%>(<%-$.i18n.t('app.login.feeinfo')%>)</p>-->
	                                    		</div>
	                                		</div>
	                            		</label>
	                          		</div>
	                    		</div>
                    		<% } else if(authModeSR == "TOKEN") { %>
                    			<% if(authTypeSR == "HARD") {%>
                    				<div class="custRadio">
		                          		<div class="radio">
		                            		<label>
		                                		<input type="radio" name="authmode" id="hardtoken" value="HARD" checked>
		                                		<div class="row bg">
		                                    		<div class="col-xs-3 col-sm-3 pl5 pr5">
		                                      			<img src="images/common/hardToken.jpg" class="img-thumbnail">
		                                    		</div>
		                                    		<div class="col-xs-9 col-sm-9 pl5"><%-$.i18n.t('app.login.hardwaretokenlabel')%>
		                                      			<p class="small"><%-$.i18n.t('app.login.hardtokentext1')%> (<%-$.i18n.t('app.login.otp')%>) (<%-$.i18n.t('app.login.recommendtxt')%>)</p>
		                                    		</div>
		                                		</div>
		                            		</label>
		                          		</div>
		                    		</div>
                    			<% } else if(authTypeSR == "SOFT") { %>
                    				<div class="custRadio">
		                          		<div class="radio">
		                            		<label>
		                                		<input type="radio" name="authmode" id="softtoken" value="SOFT" checked>
		                                		<div class="row bg">
		                                    		<div class="col-xs-3 col-sm-3 pl5 pr5">
		                                      			<img src="images/common/softToken.jpg" class="img-thumbnail">
		                                    		</div>
		                                    		<div class="col-xs-9 col-sm-9 pl5"><%-$.i18n.t('app.login.softwaretokenlabel')%>
		                                      			<p class="small"><%-$.i18n.t('app.login.softtokentext1')%> (<%-$.i18n.t('app.login.otp')%>) (<%-$.i18n.t('app.login.recommendtxt')%>)</p>
		                                    		</div>
		                                		</div>
		                            		</label>
		                          		</div>
		                    		</div>
                    			<% }%>
                    		<% } %>
                          	<h4><%-$.i18n.t('app.login.otheravailmodes')%></h4>
                          	<% if(authModeSR == "SMS") { %>
	                    		<div class="custRadio">
	                  				<div class="radio">
	                            		<label>
	                                		<input type="radio" name="authmode" id="softtoken" value="SOFT">
	                                		<div class="row bg">
	                                    		<div class="col-xs-3 col-sm-3 pl5 pr5">
	                                      			<img src="images/common/softToken.jpg" class="img-thumbnail">
	                                    		</div>
	                                    		<div class="col-xs-9 col-sm-9 pl5"><%-$.i18n.t('app.login.softwaretokenlabel')%>
	                                      			<p class="small"><%-$.i18n.t('app.login.softtokentext1')%> (<%-$.i18n.t('app.login.otp')%>) (<%-$.i18n.t('app.login.recommendtxt')%>)</p>
	                                    		</div>
	                                		</div>
	                            		</label>
	                          		</div>
	                          		<div class="radio">
	                            		<label>
	                                		<input type="radio" name="authmode" id="hardtoken" value="HARD">
	                                		<div class="row bg">
	                                    		<div class="col-xs-3 col-sm-3 pl5 pr5">
	                                      			<img src="images/common/hardToken.jpg" class="img-thumbnail">
	                                    		</div>
	                                    		<div class="col-xs-9 col-sm-9 pl5"><%-$.i18n.t('app.login.hardwaretokenlabel')%>
	                                      			<p class="small"><%-$.i18n.t('app.login.hardtokentext1')%> (<%-$.i18n.t('app.login.otp')%>) (<%-$.i18n.t('app.login.recommendtxt')%>)</p>
	                                    		</div>
	                                		</div>
	                            		</label>
	                          		</div>
	                        	</div>
                        	<% } else if(authModeSR == "TOKEN") {%>
                        		<div class="custRadio">
	                          		<div class="radio">
	                            		<label>
	                                		<input type="radio" name="authmode" id="smsOrEmail" value="SMS">
	                                		<div class="row bg">
	                                    		<div class="col-xs-3 col-sm-3 pl5 pr5">
	                                      			<img src="images/common/smsOTP.jpg" class="img-thumbnail">
	                                    		</div>
	                                    		<div class="col-xs-9 col-sm-9 pl5"><%-$.i18n.t('app.login.smsoremaillabel')%> (<%-$.i18n.t('app.login.default')%>)
	                                        		<p class="small"><%-$.i18n.t('app.login.onetimepwd')%>(<%-$.i18n.t('app.login.otp')%>).<%-$.i18n.t('app.login.smsoremailtext')%>(<%- maskMobile(els.get("contactNumber"))%>)<%-$.i18n.t('app.login.smsoremailtext1')%>(<%-$.i18n.t('app.login.feeinfo')%>)</p>
	                                    		</div>
	                                		</div>
	                            		</label>
	                          		</div>
	                    		</div>
                        	<% } %>
                        	<div class='form-group has-error'>
								<p class='help-block error-message has-error' style='color:#a94442' id='authManageError'></p>
							</div>
							<div class="form-group" id="authmanage_authmodeDiv"></div>
							<div class="clearfix"></div>
        			  		<div class="row">
        						<div class="col-xs-6 pr5"><button type="button" class="btn btn-default btn-block" id="cancel_btn"><%-$.i18n.t('button.login.cancel')%></button></div>
        						<div class="col-xs-6 pl5"><button type="button" class="btn btn-primary btn-block" id="next_btn"><%-$.i18n.t('button.registration.next')%></button></div>
        			  		</div>
        				</form>
                  	</div>
            	</div>
        	</section>
        </div>
	</div>
</div>
