<script src="js/libs/common/appcommon.js"></script>

<%
var els = new EncryptedLocalStorage('secret');
var key = els.get('graphKey');
var devicePlatform = els.get("device.platform");
var emailidd = els.get("emailid");
var emailIdCheck = els.get("emailid");
var isKeyPadNeed =els.get("isKeyPadNeed");
var cccard = els.get("cccard");
var myaccounts = els.get("mycreditcards");
var acctnum = myaccounts[cccard].accountNumber;
%>

  	<!-- Actual content area -->
	<a href="#/wealth" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
	    <li><a href="#/wealth" ><%-$.i18n.t('app.product.general.title')%></a></li>
	    <li class="active"><%-$.i18n.t('app.product.general.accountstmt')%></li>
	</ol>
	<div class="clearfix"></div><br/>
	<!--Breadcrumb Ends Here-->
            <div class="panel panel-default cust_panel hilit_panel">
		               <div class="panel-heading collapsed" id="account" data-toggle="collapse" data-target="#beneficiary">
		                   <p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;  
						    	<%-$.i18n.t('app.creditcard.general.creditcarddetails')%>
		                   </p>
		               </div>
						<div id="beneficiary" class="collapsePanel panel-collapse collapse">
						
				            <div class="panel-body detailsStmt">
				                <ul class="list-group">
					         		<li class="list-group-item">
					         		
                                        <div class="edit">
                                        	<form role="form" id="editnickname">
                                        	<div class="row">
                                        	<div class="col-xs-6">
                                            <small>
                                           
                                            <%-$.i18n.t('app.creditcard.general.nickname')%>
                                            </small>
											<input id="checknicknametype" name="checknicknametype" type="hidden" value="<%- accdetail.cardType%>" />
											</div>
											
                                            <!--
											 <%if(typeof(accdetail.cardType)!="undefined"&& typeof(accdetail.cardType)!="" && accdetail.cardType!=null ){%>
                                            
	                                            <div class="col-xs-6 text-right">
	                                            		<span class="userName"><span id="updname"><small><%-accdetail.cardType%></small></span></span>
			                                            <a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                            <input type="hidden" value="NickNameUpdate" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </div>
	                                            
											 <%}else{%>
											 
											 	<div class="col-xs-6 text-right">
											 			<span class="userName"><span id="updname"><small><%-accdetail.productName%></small></span></span>
			                                            <a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                             <input type="hidden" value="NickNameAdd" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </div>	
											 
											 <%}%>
											 -->
											 <div class="col-xs-6 text-right">
											 			<span class="userName"><span id="updname"><small><%-accdetail.productName%></small></span></span>
			                                            <a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                             <input type="hidden" value="NickNameAdd" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </div>	
											 </div>
											 </form>
                                        </div>
                                        
                                        <div class="update row">
                                            <div class="col-xs-7">
                                            	<span class="nickName"><input type="text"  autocomplete='off' maxlength="15" id="nicknameid" name="nicknameid" onkeydown="call(event)" class="form-control input-sm" placeholder="<%-$.i18n.t('app.creditcard.general.nickname')%>"></span>
                                            </div>
                                            <div class="col-xs-5">
	                                            <div class="btn-group btn-group-sm">
		                                           	<a  class="btn btn-success updateNick" id="editname"><span class="glyphicon glyphicon-ok"></span></a>
	                                            	<a  class="btn btn-primary cancelNick" id="clearname"><span class="glyphicon glyphicon-remove"></span></a>
	                                            </div>
                                            </div>
                                        </div>
                                        
                                        <div id="nickerror" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.activatecc.nicknamenotnull')%></font></span></div>
                                        
                                     </li>
                                     <%if(typeof(acctnum)!="undefined" && acctnum != null && acctnum != '' && acctnum.trim() != ''){%>
					               		<li class="list-group-item">
						               			<small>
						               				 <%-$.i18n.t('app.creditcard.ccdetails.cardtype')%>
						               			</small>
						               			<br/>
						               			<span class="pull-right">
						               			<%if(typeof(accdetail.cardType)!="undefined"&& typeof(accdetail.cardType)!="" && accdetail.cardType!=null ){%>
							               				<%-accdetail.cardType%>
							               		<%}else{%>
							               				<%-accdetail.productName%>
							               		<%}%>							               			
						               			</span>
						               			<br/><br/>
					               		</li>
					               		<%}%>
                                     <!--<%if(typeof(acctnum)!="undefined"){%>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.creditcard.ccdetails.cardnumber')%>
						               			</small>
						               			<span class="pull-right">
						               			<input type="hidden" id="accountno" name="accountno" value="<%-acctnum%>">
							               			
							               				<%-acctnum%>							               			
							               			
						               			</span>
					               		</li>
					               		<%}%>-->	
					               		<%if(typeof(acctnum)!="undefined" && acctnum != null && acctnum != '' && acctnum.trim() != ''){%>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.maskcardnum')%>
						               			</small>
						               			<br/>
						               			<span class="pull-right">
						               			
							               				<%-acctnum%>							               			
						               			</span>
						               			<br/><br/>
					               		</li>
					               		<%}%>
					               		<% if (typeof(accdetail.currencyCode) != "undefined" && accdetail.currencyCode!=null) { %>
					               		<li class="list-group-item">
					               		<small>
						               	 		<%-$.i18n.t('app.product.accounts.currency')%>
						               	 </small>
						               	 <span class="pull-right">
							               	  
							               	 		<%-accdetail.currencyCode%>
						               	 </span>
					               	 </li> 
					               	   <%}%>		
					               	 <li class="list-group-item">
					               	 <small>
						               	 		<%-$.i18n.t('app.product.rplaccounts.outstnddamt')%>
						               	 </small>
						               	 <span class="pull-right">
							               	  <% if (typeof(accdetail.outStandingAmount) != "undefined" && accdetail.outStandingAmount!=null) { %>
							               	 		<%-accdetail.outStandingAmount%>
							               	  <%}%>		
						               	 </span>
					               	 </li> 
					               	  <li class="list-group-item">
					               	 <small>
						               	 		<%-$.i18n.t('app.product.rplaccounts.minamountdue')%>
						               	 </small>
						               	 <span class="pull-right">
							               	  <% if (typeof(accdetail.minimumAmountDue) != "undefined" && accdetail.minimumAmountDue!=null) { %>
							               	 		<%-accdetail.minimumAmountDue%>
							               	  <%}%>		
						               	 </span>
					               	 </li> 
					               	 <% if (typeof(accdetail.pendingAuthorizationAmount) != "undefined" && accdetail.pendingAuthorizationAmount!=null) { %>
					               	  <li class="list-group-item">
					               	 <small>
						               	 		<%-$.i18n.t('app.product.rplaccounts.pendauthamount')%>
						               	 </small>
						               	 <span class="pull-right">
							               	  
							               	 		<%-accdetail.pendingAuthorizationAmount%>
							               	 	
						               	 </span>
					               	 </li> 
					               	  <%}%>	
					               	  <%if(typeof(accdetail.cardHolderName)!="undefined" && accdetail.cardHolderName!=null){%>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.creditcard.blockcc.cardholdername')%>
						               			</small>
						               			<span class="pull-right">
						               			
							               				<%-accdetail.cardHolderName%>							               			
							               			
						               			</span>
					               		</li>
					               		<%}%>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.totcrdlimit')%>
						               			</small>
						               			<span class="pull-right">
							               			
							               			<small>	
							               			<%-accdetail.currencyCode%>
							               			<% if(accdetail.totalCreditLimit > 0){ %>
							                        			<span class="cr"><%- checkAmount($.formatNumber(accdetail.totalCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
							                        <% } else { %>
							                        			<span class="dr"><%- checkAmount($.formatNumber(accdetail.totalCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
							                        <% } %> 
							               			</small>	 
							               			
						               			</span>
					               		</li>
									
					                <li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.creditcard.general.avaliblecreditlimit')%>
						                	</small>
						                	<span class="pull-right amt ">
						                	<%-accdetail.currencyCode%>
						                	<% if(accdetail.availableCreditLimit > 0){ %>
							                       <span class="cr"><%- checkAmount($.formatNumber(accdetail.availableCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
							                <% } else { %>
							                        <span class="dr"><%- checkAmount($.formatNumber(accdetail.availableCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
							                <% } %>
						                	</span>
					                	</li>
					                	<!--<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.rplaccounts.totavlcrdlimit')%>
						                	</small>
						                	<span class="pull-right amt ">
						                	<%-accdetail.currencyCode%>
						                	<% if(accdetail.totalCreditLimit > 0){ %>
							                      <span class="cr"><%- checkAmount($.formatNumber(accdetail.totalCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
							                <% } else { %>
							                     <span class="dr"><%- checkAmount($.formatNumber(accdetail.totalCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
							                <% } %>
						                	</span>
					                	</li>-->
					                	 <% if (typeof(accdetail.paymentDueDate) != "undefined" && accdetail.paymentDueDate!=null) { %>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.rplaccounts.paymentduedate')%>
						                	</small>
						                	<span class="pull-right amt date_ltr">
						                      	<%-accdetail.paymentDueDate	%>
						                	</span>
					                	</li>
					                  <%}%>	
					                  <% if (typeof(accdetail.expDate) != "undefined" && accdetail.expDate!=null) { %>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.rplaccounts.expirydate')%>
						                	</small>
						                	<br/>
						                	<span class="pull-right amt date_ltr">
						                      	<%-accdetail.expDate%>
						                	</span>
						                	<br/><br/>
					                	</li>
					                  <%}%>	
					                  <% if (typeof(accdetail.anniversaryDate) != "undefined" && accdetail.anniversaryDate!=null) { %>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.rplaccounts.anniversydate')%>
						                	</small>
						                	<span class="pull-right amt ">
						                      	<%-accdetail.anniversaryDate%>
						                	</span>
					                	</li>
					                  <%}%>	
					                  <% if (typeof(accdetail.annualInterestRate) != "undefined" && accdetail.annualInterestRate!=null) { %>	
					                    <li class="list-group-item">
					               	     <small>
						               	 		<%-$.i18n.t('app.product.rplaccounts.annualirate')%>
						               	 </small>
						               	 <span class="pull-right">
							               	 		<%-accdetail.annualInterestRate%>
						               	 </span>
					               	 </li> 
					               	  <%}%>		
					               	  <% if (typeof(accdetail.annualServiceCharge) != "undefined" && accdetail.annualServiceCharge!=null) { %>
					               	  <li class="list-group-item">
					               	 <small>
						               	 		<%-$.i18n.t('app.product.rplaccounts.annualsrvcrate')%>
						               	 </small>
						               	 <span class="pull-right">
							               	 		<%-accdetail.annualServiceCharge%>
							               	  	
						               	 </span>
					               	 </li> 
					               	 <%}%>	
					               	 <%if(typeof(accdetail.cardStatus)!="undefined" && accdetail.cardStatus!=null){%>
					               	 <li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.cardstatus')%>
						               			</small>
						               			<span class="pull-right">
						               			
							               				<%-accdetail.cardStatus%>							               			
							               			
						               			</span>
					               		</li>
					               		<%}%>
					               		<%if(typeof(accdetail.initialCardValue)!="undefined" && accdetail.initialCardValue!=null){%>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.initialcardval')%>
						               			</small>
						               			<span class="pull-right">
						               			
							               				<%-accdetail.initialCardValue%>							               			
							               			
						               			</span>
					               		</li>
					               		<%}%>
					               		<%if(typeof(accdetail.membershipNumber)!="undefined" && accdetail.membershipNumber!=null){%>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.membershipno')%>
						               			</small>
						               			<span class="pull-right">
							               				<%-accdetail.membershipNumber%>							               			
							               			
						               			</span>
					               		</li>
					               		<%}%>
					               		<%if(typeof(accdetail.nameAsOnPassport)!="undefined" && accdetail.nameAsOnPassport!=null){%>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.nameasonpass')%>
						               			</small>
						               			<span class="pull-right">
							               				<%-accdetail.nameAsOnPassport%>							               			
							               			
						               			</span>
					               		</li>
					               		<%}%>
					               		<%if(typeof(accdetail.monthlyRecovery)!="undefined" && accdetail.monthlyRecovery!=null){%>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.monthlyrecovry')%>
						               			</small>
						               			<span class="pull-right">
							               				<%-accdetail.monthlyRecovery%>							               			
						               			</span>
					               		</li>
					               		<%}%>
					               		<%if(typeof(accdetail.rewardPointsRedeemed)!="undefined" && accdetail.rewardPointsRedeemed!=null){%>
					                	<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.rewardsmiles')%>
						               			</small>
						               			<span class="pull-right">
							               				<%-accdetail.rewardPointsRedeemed%>							               			
						               			</span>
					               		</li>
					               		<%}%>
					               		<%if(typeof(accdetail.emailAddress1)!="undefined" && accdetail.emailAddress1!=null){%>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.accounts.prodescrptn')%>
						               			</small>
						               			<span class="pull-right">
						               			
							               				<%-accdetail.emailAddress1%>							               			
						               			</span>
					               		</li>
					               		<%}%>
					               		<%if(typeof(accdetail.emailAddress1)!="undefined" && accdetail.emailAddress1!=null){%>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.monthornextdue')%>
						               			</small>
						               			<span class="pull-right">
							               				<%-accdetail.emailAddress1%>							               			
						               			</span>
					               		</li>
					               		<%}%>
				             </ul>
				            </div>
			       </div>
           </div>
           <div class="panel panel-default cust_panel hilit_panel removeBdr">
				<div class="panel-heading collapsed" data-toggle="collapse" data-target="#filter-cont">
					<p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;<%-$.i18n.t('app.product.accounts.searchby')%>:<%-$.i18n.t('app.product.accounts.searchh')%></p>
				</div>
				<!-- As per requirment expanded the advance search -->
				<div id="filter-cont" class="collapsePanel panel-collapse collapse">
			    	<br/>
			    	<form role="form" id="searchby">
			    		<input type="hidden" value="<%-acctnum%>" class="form-control"  name="accno" id="accno"/>
			    		<div class="alert alert-warning" style="padding:7px;"><%-$.i18n.t('app.product.general.filterdisclaimer')%></div><br/>
						<div class="row">
							<div class="col-xs-6">
								<div class="form-group  has-feedback">
								<% if ( devicePlatform == "Android" ) { %>
									<input type="text" autocomplete='off'  class="form-control nativedatepicker" id="startDate" placeholder="<%-$.i18n.t('app.product.general.startdate')%>" tabindex="1" readonly>
								<%}else{%>
									<input type="text"  autocomplete='off' class="form-control nativedatepicker" id="startDate" placeholder="<%-$.i18n.t('app.product.general.startdate')%>" tabindex="1" readonly>
								<%}%>
									<span class="glyphicon glyphicon-calendar form-control-feedback "></span>
								</div>
								<div id="startDateNull" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.startDateNull')%></font></span></div>
								<div id="startDateValid" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.moi.datevalid1')%></font></span></div>
								<div id="startDateoldyear" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.moi.startDateoldyear')%></font></span></div>
								<div id="fromDateShouldNotBeGreaterThanfutureDate" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.fromDateShouldNotBeGreaterThanfutureDate')%></font></span></div>
								<!--<div class="form-group  has-feedback">
                          		<input type="text" value="" class="form-control" id="startDate" name="startDate" placeholder="<%-$.i18n.t('app.transfer.standinginstruction.start')%>">
                         	   <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                     		   </div>-->
								<div class="form-group">
								<% if ( devicePlatform == "Android" ) { %>
									<input type="number" autocomplete='off'  maxlength="10" class="form-control input-sm" pattern="\d+(\.\d*)?" id="amtabove" name="amtabove" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>" tabindex="3" />
								<%}else{%>
									<% if(isKeyPadNeed) { %>
										<input type="number" autocomplete='off'  inputmode="numeric"  pattern="\d+(\.\d*)?" maxlength="10" class="form-control input-sm lenthcontrol" id="amtabove" name="amtabove" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>" tabindex="3" />
									<% } else { %>
										<input type="number" autocomplete='off'  maxlength="10" pattern="\d+(\.\d*)?" class="form-control input-sm lenthcontrol" id="amtabove" name="amtabove" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>" tabindex="3" />
									<% } %>
								<%}%>
								</div>
								<div id="amtaboveNull" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.amtaboveisnotnull')%></font></span></div>
								<div id="amtabovelength" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.lengthlimit')%></font></span></div>
							</div>
							<div class="col-xs-6">
								<div class="form-group  has-feedback">
								<% if ( devicePlatform == "Android" ) { %>
									<input type="text" autocomplete='off'  class="form-control nativedatepicker"  id="endtDate" placeholder="<%-$.i18n.t('app.product.general.enddate')%>" tabindex="2" readonly>
								<%}else{%>
									<input type="text" autocomplete='off'  class="form-control nativedatepicker"  id="endtDate" placeholder="<%-$.i18n.t('app.product.general.enddate')%>" tabindex="2" readonly>
								<%}%>
									<span class="glyphicon glyphicon-calendar form-control-feedback "></span>
								</div>
								<div id="endDateNull" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.endDateNull')%></font></span></div>
								<div id="toDateShouldNotBeGreaterThanCurrDate" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.toDateShouldNotBeGreaterThanCurrDate')%></font></span></div>
								<div id="toDateShouldNotBeGreaterThanfutureDate" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.toDateShouldNotBeGreaterThanfutureDate')%></font></span></div>
								<div id="toDateShouldBeGreaterThanFromDate" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.toDateShouldBeGreaterThanFromDate')%></font></span></div>
								
								<!--<div class="form-group  has-feedback">
                          <input type="date" value="" class="form-control" id="endDate" name="endDate" placeholder="<%-$.i18n.t('app.transfer.standinginstruction.end')%>">
                          <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                      </div>-->
								<div class="form-group">
								<% if ( devicePlatform == "Android" ) { %>
						            <input type="number" autocomplete='off'  maxlength="10" pattern="\d+(\.\d*)?" class="form-control input-sm" id="amtbelow" name="amtbelow" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>" tabindex="4" />
						         <%}else{%>
									<% if(isKeyPadNeed) { %>
										<input type="number" autocomplete='off'   pattern="\d+(\.\d*)?" inputmode="numeric"  maxlength="10" class="form-control input-sm lenthcontrol" id="amtbelow" name="amtbelow" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>" tabindex="4" />
									<% } else { %>
										<input type="number"  autocomplete='off'  pattern="\d+(\.\d*)?" maxlength="10" class="form-control input-sm lenthcontrol" id="amtbelow" name="amtbelow" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>" tabindex="4" />
									<% } %>
						            
						         <%}%>						         
								</div>
								<div id="amtbelowNull" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.amtbelowisnotnull')%></font></span></div>
								<div id="amtbelowlength" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.lengthlimit')%></font></span></div>
							<div id="amtbelowgreater" style="display:none" align="center"><span><font color="red" id="greatamt"></font></span></div>
							</div>
						</div>
						
						<div class="form-group">
								<% if ( devicePlatform == "Android" ) { %>
						            <input type="number"  autocomplete='off' maxlength="2" class="form-control input-sm" id="lasttrns" name="lasttrns" placeholder="<%-$.i18n.t('app.product.accounts.lasttrans')%>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" tabindex="4" />
						         <%}else{%>
									<% if(isKeyPadNeed) { %>
										<input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric"  maxlength="2" class="form-control input-sm lenthcontrol" id="lasttrns" name="lasttrns" placeholder="<%-$.i18n.t('app.product.accounts.lasttrans')%>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" tabindex="4" />
									<% } else { %>
										<input type="number" autocomplete='off'  maxlength="2" class="form-control input-sm lenthcontrol" id="lasttrns" name="lasttrns" placeholder="<%-$.i18n.t('app.product.accounts.lasttrans')%>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" tabindex="4" />
									<% } %>
						         <%}%>						         
						</div>
						<div id="lasttransval" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.lasttransvalue')%></font></span></div>
							
							
						<div class="form-group paymentMode">
									<div data-toggle="buttons" class="btn-group btn-group-justified" id="selectbutton">
										<label class="btn btn-default payNow">
										<input type="radio" id="option1" name="options" value="C"><%-$.i18n.t('app.creditcard.ccdetails.crdit')%>
										</label>
										<label class="btn btn-default payLater">
										<input type="radio" id="option2" name="options" value="D"><%-$.i18n.t('app.creditcard.ccdetails.debit')%>
										</label>
										<label class="btn btn-default rePeat active">
										<input type="radio" id="option3" name="options" value="B"><%-$.i18n.t('app.creditcard.ccdetails.both')%>
										</label>									
									</div>
						</div>		
						<!--
						<div class="form-group">
					        <select class="form-control" placeholder=<%-$.i18n.t('app.product.accounts.channel')%> id="channel"> 
						        <option selected="selected"><%-$.i18n.t('app.product.accounts.all')%></option>
						        <option><%-$.i18n.t('app.product.accounts.mobile')%></option>
						        <option><%-$.i18n.t('app.product.accounts.web')%></option>
						        <option><%-$.i18n.t('app.product.accounts.tablet')%></option>
					        </select>
						</div>
						-->
						<div id="toDateShouldNotBeGreaterThanCurrDate" style="display:none" align="center">
							<span>
								<font color="red"><%-$.i18n.t('validation.wealth.toDateShouldNotBeGreaterThanCurrDate')%></font>
							</span>
						</div>
						<div id="toDateShouldBeGreaterThanFromDate" style="display:none" align="center">
							<span>
								<font color="red"><%-$.i18n.t('validation.wealth.toDateShouldBeGreaterThanFromDate')%></font>
							</span>
						</div></br>
				    	<input type="button" id="getstatement" class="btn btn-block btn-success" value="<%-$.i18n.t('app.product.general.filterbutton')%>" >
				    	<!--<a href="" id="getstatement" class="btn btn-block btn-success"><%-$.i18n.t('app.product.accounts.getstatement')%></a>-->
					</form>
					</div>
				</div>
			</div>
						<div class="clearfix"></div>
						  <div class="btn-group btn-group-justified paymentMode">
                        <a class="btn btn-default font-xs active" id="currstmt"><%-$.i18n.t('app.creditcard.ccdetails.curstmt')%></a>
                        <a class="btn btn-default font-xs" id="pendstmt"><%-$.i18n.t('app.creditcard.ccdetails.pendtransac')%></a>
                        <!-- <a class="btn btn-default" href="creditcard_stmt_billed.html">Billed</a>-->
                      </div>
                      <br/>
                      <div id="cccurrentload"></div>
                      <div id="ccpendingload"></div>
                      
                  <!--    <div id="outstandStmt">
                              <div class="accStmt">

                                        <br/>
        							   <ul>
        							   <li class="dr">
        									<a>
        										<div class="d_msg">
        											<p class="date">05/01/2015</p>
        											<p>Wordsworth Book Store</p>
        										</div>
        										<div class="amt"><span class="cur">INR</span><span class="type">Dr   </span>5,000.00</div>
        									</a>
    								   </li>
                                       <li class="dr">
        									<a>
        										<div class="d_msg">
        											<p class="date">08/01/2015</p>
        											<p>Wordsworth Book Store</p>
        										</div>
        										<div class="amt"><span class="cur">INR</span><span class="type">Dr   </span>5,000.00</div>
        									</a>
    								   </li>
                                </ul>
                              </div>
                          </div> -->
                        <br/>
						<div class="form-group pull-right" id="pdfload" style="display:none">
							<label><%-$.i18n.t('app.creditcard.ccdetails.download')%>&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
							<div class="btn-group">
								<button type="button" id="pdfdownload" class="btn btn-default active"><%-$.i18n.t('app.creditcard.ccdetails.pdf')%></button>
								<!--<button type="button" class="btn btn-default"><%-$.i18n.t('app.creditcard.ccdetails.xls')%></button>
								<button type="button" class="btn btn-default">CSV</button> -->
							</div>
                            </div>
                         

		 <!--				<input id="emailadvice" type="button" class="btn btn-success btn-block" value="<%-$.i18n.t('app.creditcard.ccdetails.email')%>">	-->
						<br/>
           
           <!--
			<div class="btn-group btn-group-justified paymentMode">
                        <a class="btn btn-default" id="currstmt" href="javascript:void(0)"><%-$.i18n.t('app.product.creditcard.currstmt')%></a>
                        <a class="btn btn-default" id="pendstmt" href="javascript:void(0)"><%-$.i18n.t('app.product.creditcard.pendingtransc')%></a>
                      </div>

                          <div class="accStmt" >
                              <div class="ccStmt" style="display:none">

                                        <br/>
        							   <ul>
        							   <li class="dr">
        									<a>
        										<div class="d_msg">
        											<p class="date">05/01/2015</p>
        											<p>Wordsworth Book Store</p>
        										</div>
        										<div class="amt"><span class="cur">INR</span><span class="type">Dr   </span>5,000.00</div>
        									</a>
    								   </li>
                                       <li class="dr">
        									<a>
        										<div class="d_msg">
        											<p class="date">08/01/2015</p>
        											<p>Wordsworth Book Store</p>
        										</div>
        										<div class="amt"><span class="cur">INR</span><span class="type">Dr   </span>5,000.00</div>
        									</a>
    								   </li>
                                </ul>
                              </div>
                            </div>  
                            
                              <div class="accStmt" >
                              <div class="penStmt" style="display:none">

                                        <br/>
        							   <ul>
        							   <li class="dr">
        									<a>
        										<div class="d_msg">
        											<p class="date">08/07/2019</p>
        											<p>Dues bill</p>
        										</div>
        										<div class="amt"><span class="cur">INR</span><span class="type">Dr   </span>5,00.00</div>
        									</a>
    								   </li>
                                       <li class="dr">
        									<a>
        										<div class="d_msg">
        											<p class="date">04/01/2019</p>
        											<p>jenkin mall</p>
        										</div>
        										<div class="amt"><span class="cur">INR</span><span class="type">Dr   </span>200.00</div>
        									</a>
    								   </li>
                                </ul>
                              </div>
                              </div>
                          

                          <br/>
						<div class="form-group pull-right">
							<label>Downloads&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
							<div class="btn-group">
								<button type="button" id="pdfdownload" name="pdfdownload" class="btn btn-default"><%-$.i18n.t('app.product.accounts.pdf')%></button>
					        <button type="button" id="xlsdownload" name="xlsdownload" class="btn btn-default"><%-$.i18n.t('app.product.accounts.xls')%></button>
							</div>
                            </div>
						<div id="toDateShouldNotBeGreaterThanCurrDate" style="display:none" align="center">
							<span>
								<font color="red"><%-$.i18n.t('validation.wealth.toDateShouldNotBeGreaterThanCurrDate')%></font>
							</span>
						</div>
						<div id="toDateShouldBeGreaterThanFromDate" style="display:none" align="center">
							<span>
								<font color="red"><%-$.i18n.t('validation.wealth.toDateShouldBeGreaterThanFromDate')%></font>
							</span>
						</div></br>
					</form>
				</div>
			</div>-->

        <div class="clearfix"></div>
        
     <br/>
     
     
     

<link rel="stylesheet" type="text/css" href="js/libs/jqplot-master/jquery.jqplot.css" />
<script src="js/libs/jqplot-master/jquery.jqplot.min.js"></script>
<script src="js/libs/jqplot-master/plugins/jqplot.pieRenderer.min.js"></script>
<script>
$(document).ready(function(){
$("#getstatement").attr('disabled','disabled');

            		
                     $('input').keypress(function(e) {
		        var code = (e.keyCode ? e.keyCode : e.which);
		        if ( (code==13) || (code==10))
		            {
		            $(this).blur();
		            return false;
		            }
		    });
});	
/*		function showGraph(){
			var pieRenderer = function() {
				var els = new EncryptedLocalStorage('secret');
				var key = els.get('graphKey');
				var per = els.get('graphVal');
				var data = [[]];
				for(k=0;k<key.length;k++){
					data[0].push([key[k],per[k]]);
				}
			    return data;
		  	};
		  	var plot;
		  	var renderGraph = function() {
			    plot = jQuery.jqplot('chartdiv', [], {
			    	seriesColors:["#D6AE01","#6C4675","#EA899A","#2271B3","#57A639","#5D9B9B","#3F888F",'#f2fa00', '#ff9500', '#001dfa', '#ff00a2', '#00ff2f', '#953579', '#4b5de4', '#d8b83f', '#ff5800', '#0085cc', '#c747a3', '#cddf54', '#FBD178', '#26B4E3', '#bd70c7', '#f2fa00'],			    	
			    	title : '',
			      	dataRenderer: pieRenderer,
				  	grid:{borderColor: 'white',  shadow: false},
			      	seriesDefaults:
 			      	{
						shadow : false,
						renderer : jQuery.jqplot.PieRenderer,
						rendererOptions : {
							showDataLabels: true,
				               dataLabels: 'percent',       
				               dataLabelFormatString: '%.2f%%',
				               dataLabelPositionFactor: 1.15,
				               shadow: false,
				               dataLabelThreshold:0,
				               sliceMargin: 5,
				               startAngle: 0,
				               dataLabelCenterOn:true
						}
				  	}, 
			      	legend: {
			      		rendererOptions: {
			                numberRows: 2
			            },
						show : true,
						location : 's'
					}
			    });
			}

		    var resizeGraph = function() {
		        if (plot)
		            plot.destroy();
		        renderGraph();
		    }
			
			setTimeout(function() {
      			resizeGraph();
			}, 200);
			
		
		   }*/
		// legend: {show:true, rendererOptions: { numberRows: 1}, location:'e' }
</script>





<script>
	 $("#search").on("click",function(){
	        $("#datepanel2").slideToggle();
	 });
</script>
<script>
     $(".editNick").on("click",function()
     {
        $(".edit").hide();
        $(".update").show();
        var nickname =$(".userName span").text();
        if(nickname!=''){
	    	$('#nicknameid').val(nickname);
	    }
     });
     $(".updateNick").on("click",function()
     {
        var username =$(".nickName input").val();
        if(username!=""){
	        $('.userName').text(username);
	        $(".update").hide();
	        $('.edit').show();
	        $('#nickerror').hide();
	    }
     });
     $('.cancelNick').on("click",function()
     {
        $(".edit").show();
        $(".update").hide();
        var nickname =$(".userName span").text();
        $('#nickerror').hide();
        if(nickname!=''){
	    	$('#nicknameid').val(nickname);
	    }else{
	    	$('#nicknameid').val('');
	    }
     });

     $(".edit").show();
     $(".update").hide();
</script>

<script>
/*$('input[type=date]').bind("change",function(){
	//alert("Yes");
	var dateval = $(this).val();
	//alert("Yes "+ dateval);
	var datenewval = dateval.split("-");
	var newDateVal = datenewval[1]+"/"+datenewval[0]+"/"+datenewval[2]; 
	//alert("Yes "+ newDateVal);
	$(this).val(newDateVal);
});*/
</script>

<script>
function call(e) {
        if (document.getElementById('nicknameid').value.length == 0) {
            if (e.keyCode == 32) {
                e.preventDefault();
            }
        }
}
</script>
<script>

var fromdateDatee = new Date();
var diff = (90*1000*60*60*24);
var fromdateDate = new Date(fromdateDatee.getTime() - diff);

var d = fromdateDate.getDate();
var m = fromdateDate.getMonth()+1;
var y = fromdateDate.getFullYear();
//var myDate = '' +  (m <= 9 ? '0' + m : m) + '/'+ (d <= 9 ? '0' + d : d) + '/' + y;
var myDate = '' +  (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;
//$("#startDate").val(myDate);					
</script>
<script>
var trandateDate = new Date();
var d = trandateDate.getDate();
var m = trandateDate.getMonth()+1;
var y = trandateDate.getFullYear();
//var myDate = '' +  (m <= 9 ? '0' + m : m) + '/'+ (d <= 9 ? '0' + d : d) + '/' + y;
var myDate = '' +  (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;
//$("#endtDate").val(myDate);					
</script>
<script>
(function ($){
     $.fn.inputlength=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keypress',function(e){
           // alert(makelength);
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
               //alert("length shoutnot exceed to"+ +makelength );
                e.preventDefault();
               return false;
             }
            // return true;
          });

        });
     };
}(jQuery));
$('.lenthcontrol').inputlength();
</script>

<script>
$('#amtabove').on('input', function () {
        this.value = this.value.match(/^\d+\.?\d{0,3}/);
    });
   $('#amtbelow').on('input', function () {
        this.value = this.value.match(/^\d+\.?\d{0,3}/);
    });
</script>

 <script>
     	 $(document).ready(function()
     		 {
                     
                     $('input').keypress(function(e) {
		        var code = (e.keyCode ? e.keyCode : e.which);
		        if ( (code==13) || (code==10))
		            {
		            $(this).blur();
		            return false;
		            }
		    });
              });
      </script> 
