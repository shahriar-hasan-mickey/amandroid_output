<script src="js/libs/common/appcommon.js"></script>

<%
var els = new EncryptedLocalStorage('secret');
var key = els.get('graphKey');
var devicePlatform = els.get("device.platform");
var isKeyPadNeed =els.get("isKeyPadNeed");
var acccid = els.get("depositid");
var mydeposit = els.get("mydeposit");
 var acctid = mydeposit[acccid].id;
var acctno = mydeposit[acccid].accountNumber;

%>

  	<!-- Actual content area -->
	<a href="#/wealth" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
	    <li><a href="#/wealth" ><%-$.i18n.t('app.product.general.title')%></a></li>
	    <li class="active"><%-$.i18n.t('app.product.general.depositstmt')%></li>
	</ol>
	<div class="clearfix"></div><br/>
	<!--Breadcrumb Ends Here-->
            <div class="panel panel-default cust_panel">
		               <div class="panel-heading collapsed" id="account" data-toggle="collapse" data-target="#beneficiary">
		                   <p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;  
						    	<%-$.i18n.t('app.product.termdeposits.title')%>
		                   </p>
		               </div>
						<div id="beneficiary" class="collapsePanel panel-collapse collapse">
						
				            <div class="panel-body detailsStmt">
				                <ul class="list-group">
				 
									<%if(typeof(depositaccdetail.depositType) != "undefined"){%>
					         		<li class="list-group-item">
					         		
                                        <div class="edit">
                                        	<form role="form" id="editnickname">
                                        	<div class="row">
                                        	<div class="col-xs-6">
                                            <small>
                                            <%-$.i18n.t('app.creditcard.general.nickname')%>
                                            
                                            </small>
											<input id="checknicknametype" name="checknicknametype" type="hidden" value="<%- depositaccdetail.productDescription%>" />
											</div>
											
                                            <%if(typeof(depositaccdetail.productDescription) != "undefined"){%>	
                                            
	                                            <div class="col-xs-6 text-right">
	                                            		<span class="userName"><span id="updname"><small><%-depositaccdetail.productDescription%></small></span></span>
			                                            <a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                            <input type="hidden" value="NickNameUpdate" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </div>
	                                            
											 <%}else{%>
											 	<div class="col-xs-6 text-right">
											 			<span class="userName"><span id="updname"><small><%-depositaccdetail.depositType%></small></span></span>
			                                            <a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                             <input type="hidden" value="NickNameAdd" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </div>	
											 <%}%>
											 </div>
											 </form>
                                        </div>
                                        
                                        <div class="update row">
                                            <div class="col-xs-7">
                                            	<span class="nickName"><input type="text" autocomplete='off'  maxlength="15" id="nicknameid" name="nicknameid" onkeydown="call(event)" class="form-control input-sm" placeholder="<%-$.i18n.t('app.creditcard.general.nickname')%>"></span>
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
                                     <% } %>	
                                     <li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.termdeposits.depositname')%>
						               			</small>
						               			<span class="pull-right">
						               				<%if(typeof(depositaccdetail.productName) != "undefined"){%>
							               			<%- depositaccdetail.productName%>
							               			<% } %>
						               			</span>
						               			<br/><br/>
					               		</li>
                                     
					               	 <li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.shbaccounts.depositno')%>
						               			</small>
						               			<span class="pull-right">
						               				<%if(typeof(depositaccdetail.accountNumber) != "undefined"){%>
							               			<%- depositaccdetail.accountNumber%>
							               			<% } %>
						               			</span>
						               			<br/><br/><br/>
					               		</li>
					        		
                                     
					<!--               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.termdeposits.deptype')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
						               		<%if(typeof(depositaccdetail.productDescription) != "undefined"){%>	
						               			<%-depositaccdetail.productDescription	%>
						               		<% } else { %>	
							               		<%-depositaccdetail.depositType	%>
							               	<% } %>
						               			</span>
						               			</br>
					               		</li>			-->
					               		
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.termdeposits.maturedate')%>
						               			</small>
						               			</br>
						               			<span class="pull-right date_ltr">
						               			<%if(typeof(depositaccdetail.maturityDate) != "undefined"){%>
							               			<%-depositaccdetail.maturityDate %>
							               			<% } %>
						               			</span>
						               			</br>
					               		</li>
					               		
					               			 <li class="list-group-item">
						               	 <small>
						               	 		<%-$.i18n.t('app.product.termdeposits.depostatus')%>
						               	 </small>
						               	 <span class="pull-right">
						               	 <%if(typeof(depositaccdetail.imAccountStatus) != "undefined"){%>
							               	 	 <%- depositaccdetail.imAccountStatus %>
							               	 	 <% } %>
						               	 </span>
					               	 </li>
					              
						               	 <li class="list-group-item">
								               	 <small>
								               	 		<%-$.i18n.t('app.product.termdeposits.principalamt')%>
								               	 </small>
								               	 <span class="pull-right">
								               	 <%if(typeof(depositaccdetail.principalBalance) != "undefined"){%>
								               	 <%-depositaccdetail.currencyCode%>
								               	 <% if(depositaccdetail.principalBalance > 0){ %>
							                       		<span class="cr"><%- checkAmount($.formatNumber(depositaccdetail.principalBalance, {format:"#,###.000", locale:"us"}))%></span>
							                		<% } else { %>
							                        	<span class="dr"><%- checkAmount($.formatNumber(depositaccdetail.principalBalance, {format:"#,###.000", locale:"us"}))%></span>
							               			 <% } %>
									              <% } %>
								               	 </span>
						               	 </li>
						               	 
						               	 <li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.termdeposits.rateinterest')%>
						                	</small>
						                	<span class="pull-right amt">
						                	<%if(typeof(depositaccdetail.currentInterestPayRate) != "undefined"){%>
						                	<%- checkAmount( $.formatNumber(depositaccdetail.currentInterestPayRate, {format:"#,###.000", locale:"us"}))%>&nbsp;%
							                	 <% } %>	
						                	</span>
					                	</li>
					                
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.termdeposits.amtmature')%>
						                	</small>
						                	<span class="pull-right amt">
						                	<%-depositaccdetail.currencyCode%>
						                	<%if(typeof(depositaccdetail.maturityAmount) != "undefined"){%>
						                	<% if(depositaccdetail.maturityAmount > 0){ %>
							                       		<span class="cr"><%- checkAmount($.formatNumber(depositaccdetail.maturityAmount, {format:"#,###.000", locale:"us"}))%></span>
							                		<% } else { %>
							                        	<span class="dr"><%- checkAmount($.formatNumber(depositaccdetail.maturityAmount, {format:"#,###.000", locale:"us"}))%></span>
							               			 <% } %>
						                	<% } %>
						                	</span>
					                	</li>
				
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.general.currentbalance')%>
						                	</small>
						                	<span class="pull-right amt">
						                	<%-depositaccdetail.currencyCode%>
						                	<%if(typeof(depositaccdetail.currentBalance) != "undefined"){%>
						                	<% if(depositaccdetail.currentBalance > 0){ %>
							                       		<span class="cr"><%- checkAmount($.formatNumber(depositaccdetail.currentBalance, {format:"#,###.000", locale:"us"}))%></span>
							                		<% } else { %>
							                        	<span class="dr"><%- checkAmount($.formatNumber(depositaccdetail.currentBalance, {format:"#,###.000", locale:"us"}))%></span>
							               			 <% } %>
						                	<% } %>
						                	</span>
					                	</li>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.termdeposits.clearedbal')%>
						                	</small>
						                	<span class="pull-right amt">
						                	<%-depositaccdetail.currencyCode%>
						                	<%if(typeof(depositaccdetail.fundsInClearing) != "undefined"){%>
						                	<% if(depositaccdetail.fundsInClearing > 0){ %>
							                       		<span class="cr"><%- checkAmount($.formatNumber(depositaccdetail.fundsInClearing, {format:"#,###.000", locale:"us"}))%></span>
							                		<% } else { %>
							                        	<span class="dr"><%- checkAmount($.formatNumber(depositaccdetail.fundsInClearing, {format:"#,###.000", locale:"us"}))%></span>
							               	<% } %>
						                	<% } %>
						                	</span>
					                	</li>
					                	
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.transfer.localtransfer.srtdate')%>
						                	</small>
						                	<span class="pull-right date_ltr">
						                	<%if(typeof(depositaccdetail.accountOpenedDate) != "undefined"){%>
						                			<%- depositaccdetail.accountOpenedDate%>
						                			<% } %>
						                	</span>
					                	</li>
					                	
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.timedeposits.tenure')%>
						                	</small>
						                	<span class="pull-right ">
						                	<%if(typeof(depositaccdetail.tenure) != "undefined"){%>
						                			<%- depositaccdetail.tenure%>
						                			<% } %>
						                	</span>
					                	</li>
					                	
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.termdeposits.intdate')%>
						                	</small>
						                	<span class="pull-right date_ltr">
						                	<%if(typeof(depositaccdetail.interestStartDate) != "undefined"){%>
						                			<%- depositaccdetail.interestStartDate%>
						                			<% } %>
						                	</span>
					                	</li>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.termdeposits.fundingact')%>
						                	</small>
						                	<span class="pull-right ">
						                	<%if(typeof(depositaccdetail.fundingAccountNumber) != "undefined"){%>
						                			<%- depositaccdetail.fundingAccountNumber%>
						                			<% } %>
						                	</span>
						                	<br/><br/>
					                	</li>
					                	
					                	<% if(typeof(depositaccdetail.transactionAmount) != "undefined" && depositaccdetail.transactionAmount != null){ %>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.termdeposits.tansacamt')%>
						                	</small>
						                	<span class="pull-right ">
						                	
						                			<%- depositaccdetail.transactionAmount%>
						                			
						                	</span>
						                	<br/><br/>
					                	</li>
					                	<% } %>
					                	
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.termdeposits.princsettact')%>
						                	</small>
						                	<span class="pull-right ">
						                	<%if(typeof(depositaccdetail.principalSettlementAccount) != "undefined"){%>
						                			<%- depositaccdetail.principalSettlementAccount%>
						                			<% } %>
						                	</span>
						                	<br/><br/>
					                	</li>
					                	
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.termdeposits.intsettact')%>
						                	</small>
						                	<span class="pull-right ">
						                	<%if(typeof(depositaccdetail.interestSettlementAccount) != "undefined"){%>
						                			<%- depositaccdetail.interestSettlementAccount%>
						                			<% } %>
						                	</span>
						                	<br/><br/>
					                	</li>
					                	
					                	<% if(typeof(depositaccdetail.lastUpdatedTime) != "undefined" && depositaccdetail.lastUpdatedTime != null){ %>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.termdeposits.lastupdatetime')%>
						                	</small>
						                	<span class="pull-right date_ltr">
						                
						                			<%- depositaccdetail.lastUpdatedTime%>
						                			
						                	</span>
						                	<br/><br/>
					                	</li>
					                	<% } %>
					                	
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.termdeposits.renewaldate')%>
						                	</small>
						                	<span class="pull-right date_ltr">
						                	<%if(typeof(depositaccdetail.renewalDate) != "undefined"){%>
						                			<%- depositaccdetail.renewalDate%>
						                			<% } %>
						                	</span>
					                	</li>
					               
					               <li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.termdeposits.nocreditstatus')%>
						                	</small>
						                	<span class="pull-right ">
						                	<%if(typeof(depositaccdetail.noCreditStatus) != "undefined"){%>
						                			<%- depositaccdetail.noCreditStatus%>
						                			<% } %>
						                	</span>
					                	</li>
					                	  <li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.termdeposits.nodebitstatus')%>
						                	</small>
						                	<span class="pull-right ">
						                	<%if(typeof(depositaccdetail.noDebitStatus) != "undefined"){%>
						                			<%- depositaccdetail.noDebitStatus%>
						                			<% } %>
						                	</span>
					                	</li>
					                
							  		
				             </ul>
				            </div>
			       </div>
           </div>
 
 <!-- Filter -->
 <div class="panel panel-default cust_panel hilit_panel removeBdr">
				<div class="panel-heading collapsed" data-toggle="collapse" data-target="#filter-cont">
					<p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;<%-$.i18n.t('app.product.accounts.searchby')%>:<%-$.i18n.t('app.product.accounts.searchh')%></p>
				</div>
				
				<div id="filter-cont" class="collapsePanel panel-collapse collapse">
			    	<br/>
			    	<form role="form" id="searchby">
			    		<input type="hidden" value="<%-acctno%>" class="form-control"  name="accno" id="accno"/>
			    		<div class="alert alert-warning" style="padding:7px;"><%-$.i18n.t('app.product.general.filterdisclaimer')%></div><br/>
						<div class="row">
							<div class="col-xs-6">
								<div class="form-group  has-feedback">
								<% if ( devicePlatform == "Android" ) { %>
									<input type="text"  autocomplete='off' class="form-control nativedatepicker" id="startDate" placeholder="<%-$.i18n.t('app.product.general.startdate')%>" tabindex="1" readonly>
								<%}else{%>
									<input type="text" autocomplete='off'  class="form-control nativedatepicker" id="startDate" placeholder="<%-$.i18n.t('app.product.general.startdate')%>" tabindex="1" readonly>
								<%}%>
									<span class="glyphicon glyphicon-calendar form-control-feedback "></span>
								</div>
								<div id="startDateNull" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.startDateNull')%></font></span></div>
								<div id="startDateValid" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.moi.datevalid1')%></font></span></div>
																<div id="startDateoldyear" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.moi.startDateoldyear')%></font></span></div>
								<div id="fromDateShouldNotBeGreaterThanfutureDate" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.fromDateShouldNotBeGreaterThanfutureDate')%></font></span></div>
								
								<div class="form-group">
								<% if ( devicePlatform == "Android" ) { %>
									<input type="number" autocomplete='off'  pattern="\d+(\.\d*)?" maxlength="10" class="form-control input-sm" id="amtabove" name="amtabove" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>" tabindex="3" />
								<%}else{%>
									<% if(isKeyPadNeed) { %>
										<input type="number"  autocomplete='off'  pattern="\d+(\.\d*)?" inputmode="numeric"  maxlength="10" class="form-control input-sm lenthcontrol" id="amtabove" name="amtabove" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>" tabindex="3" />
									<% } else { %>
										<input type="number" autocomplete='off'  pattern="\d+(\.\d*)?" maxlength="10" class="form-control input-sm lenthcontrol" id="amtabove" name="amtabove" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>" tabindex="3" />
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
								
								
								<div class="form-group">
								<% if ( devicePlatform == "Android" ) { %>
						            <input type="number" autocomplete='off'  maxlength="10" pattern="\d+(\.\d*)?" class="form-control input-sm" id="amtbelow" name="amtbelow" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>" tabindex="4" />
						         <%}else{%>
									<% if(isKeyPadNeed) { %>
										<input type="number" autocomplete='off'  pattern="\d+(\.\d*)?" inputmode="numeric"  maxlength="10" class="form-control input-sm lenthcontrol" id="amtbelow" name="amtbelow" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>" tabindex="4" />
									<% } else { %>
										<input type="number" autocomplete='off'  pattern="\d+(\.\d*)?" maxlength="10" class="form-control input-sm lenthcontrol" id="amtbelow" name="amtbelow" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>" tabindex="4" />
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
						            <input type="number" autocomplete='off'  maxlength="2" class="form-control input-sm" id="lasttrns" name="lasttrns" placeholder="<%-$.i18n.t('app.product.accounts.lasttrans')%>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" tabindex="4" />
						         <%}else{%>
									<% if(isKeyPadNeed) { %>
										<input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric"  maxlength="2" class="form-control input-sm lenthcontrol" id="lasttrns" name="lasttrns" placeholder="<%-$.i18n.t('app.product.accounts.lasttrans')%>" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" tabindex="4" />
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
					</form>
					</div>
				</div>
			</div>

        <div class="clearfix"></div>
        <div class="accStmt">
           <ul>
            	<%var i=0;%>
            	<%var k=0;%>
             	<% _.each(depositAccountDetailList,function(data){ %>
	               	<%if(i++<depositAccountDetailList.length){%>
			<%if(data.transactionFlag!="Dr"){%> 
		            	<li class="cr">
		         <%}else{%>
			 	<li class="dr">
			 <%}%>          	
			 <a href="#/fttransdetailsTD/<%-k%>" id="ftrefnum">
			                   	<span class="glyphicon glyphicon-chevron-right pull-right"></span>
		                    	 <input type="hidden" id="HiddenTranDesc<%-k%>" name="HiddenTranDesc<%-k%>" value="<%-data.narration%>">

		                        <div class="d_msg">
			                            <p class="date"><span class="date_ltr"><%-data.transactionDate%></span></p>
			                            
			                            <%if(data.transactionDescription!=""){%>
			                               	<p><%-data.transactionDescription%></p>
			                            <%}else{%>
			                            	 <p><%if((data.transactionDescription).indexOf("-")!=-1){%>  <%-(data.transactionDescription).substring(0,(data.transactionDescription).indexOf("-"))%> 
			                            	 <%}else{%><%-data.transactionDescription%><%}%>
			                            	 </p>
			                            <%}%>
			                            
			                             

				                            <p class="ref">
				                            <input type="hidden" id="ftno" name="ftno" value="<%-data.id%>">
				                      	   		<%-data.id%>
				                            </p>

		                        </div>
		                        <div class="amt">
			                          	<span class="cur">
			                          		 <%-depositaccdetail.currencyCode%>
			                          	</span>
			                          	<span class="type">
			                          		
										</span>
										<span class="type"><%-data.transactionFlag%> </span>
										<% if(data.transactionFlag !="Dr"){ %>
							                     <span class="cr"><%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.000", locale:"us"}))%></span>
							                <% } else { %>
							                     <span class="dr"><%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.000", locale:"us"}))%></span>
							          <% } %>
		                        </div>
		                        <div class="amt1">
			                           	<span class="hdr">
			                           	<% if(!(data.currentBalance=="" || data.currentBalance=="null" || data.currentBalance==null || data.currentBalance=="undefined" || data.currentBalance==undefined)){ %>
			                           		<%-$.i18n.t('app.product.accounts.currentbalance')%>
			                           	<% } else { %>
			                          		<%-$.i18n.t('app.product.accounts.currentbalance')%>
			                         	 <% } %>
			                         	 </span>
			                         	 <span class="cur">
			                          		<%-depositaccdetail.currencyCode%> 
			                          	</span> 
			                          	<% if(!(data.currentBalance=="" || data.currentBalance=="null" || data.currentBalance==null || data.currentBalance=="undefined" || data.currentBalance==undefined)){ %>
			                          	<% if(data.runningTotal > 0){ %>
							                     <span class="cr"><%- checkAmount($.formatNumber(data.currentBalance, {format:"#,###.000", locale:"us"}))%></span>
							                <% } else { %>
							                     <span class="dr"><%- checkAmount($.formatNumber(data.currentBalance, {format:"#,###.000", locale:"us"}))%></span>
							          <% } %>
							          <% } else { %>
			                          	<% if(data.runningTotal > 0){ %>
							                     <span class="cr"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span>
							                <% } else { %>
							                     <span class="dr"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span>
							          <% } %>
							          <% } %>
			                          	
		                        </div>
		                   		</a>
		                 </li>
	               <%}%>
										<input type="hidden" id="ftno<%-k%>" name="ftno<%-k%>" value="<%-data.referenceTransactionNo%>">
										<%k=k+1;%>
              <% }); %>
              <% if(_.size(depositAccountDetailList) == 0){%>
              		<div class="alert alert-info alert-sm">
  						<%-$.i18n.t('exception.common.nostatement')%>
  					</div>
              <% } %>
          </ul>
     </div>
	 
     
     <div class="form-group pull-right">
	      			  <label><%-$.i18n.t('app.product.accounts.downloads')%>&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
				      <div class="btn-group"> 
					        <button type="button" id="pdfdownload" name="pdfdownload" class="btn btn-default"><%-$.i18n.t('app.product.accounts.pdf')%></button>
					       <!-- <button type="button" id="xlsdownload" name="xlsdownload" class="btn btn-default"><%-$.i18n.t('app.product.accounts.xls')%></button>-->
				      </div>
     			 </div>


	
	
		




<script>
$(document).ready(function(){
$("#getstatement").attr('disabled','disabled');

});
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
