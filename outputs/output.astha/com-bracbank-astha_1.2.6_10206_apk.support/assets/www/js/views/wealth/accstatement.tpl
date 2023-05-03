<script src="js/libs/common/appcommon.js"></script>

<%
var els = new EncryptedLocalStorage('secret');
var key = els.get('graphKey');
var devicePlatform = els.get("device.platform");
var emailidd = els.get("emailid");
var emailIdCheck = els.get("emailid");
var isKeyPadNeed =els.get("isKeyPadNeed");
var acccid = els.get("acccid");
var myaccounts = els.get("myaccounts");
var iban = myaccounts[acccid].iban;
var acctype = myaccounts[acccid].accType;
var accountShortName = els.get("accountShortName");
var productName = myaccounts[acccid].productName;

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
						    	<%-$.i18n.t('app.product.general.details')%>
		                   </p>
		               </div>
						<div id="beneficiary" class="collapsePanel panel-collapse collapse">
						
				            <div class="panel-body detailsStmt">
				                <ul class="list-group">
				                <!--
				                     <li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.accounts.accholdername')%>
						               			</small>
						               			<span class="pull-right">
						               			<input type="hidden" id="accountno" name="accountno" value="<%-accdetail.accountNumber%>">
							               			<%if(typeof(accdetail.accountName)!="undefined" || accdetail.accountName!=null ){%>
							               				<%-accdetail.accountName%>							               			
							               			<%}%>	
						               			</span>
						               			</br></br>
					               	 </li>
				                -->
				                
					         		<li class="list-group-item">
					         		
                                        <div class="edit">
                                        	<form role="form" id="editnickname">
                                        	<div class="row">
                                        	
                                        	<div class="col-xs-6">
                                            <small><%-$.i18n.t('app.product.accounts.accountnickname')%></small>
                                            <%if((typeof(accountShortName)!="undefined"|| typeof(accountShortName)!="") && (typeof(acctype)!="undefined"|| typeof(acctype)!="") ){
                                            %>
											<input id="checknicknametype" name="checknicknametype" type="hidden" value="<%- accountShortName%>" />
											<%}else{%>
											<input id="checknicknametype" name="checknicknametype" type="hidden" value="<%- productName%>" />
											<%}%>
											</div>
											
                                            <%if((typeof(accountShortName)!="undefined"|| typeof(accountShortName)!="") && (typeof(acctype)!="undefined"|| typeof(acctype)!="") ){
                                            %>
                                           
                                            
	                                             <% if(typeof(accountShortName)!="undefined"|| typeof(accountShortName)!="" ){
	                                            %>
		                                            <div class="col-xs-6 text-right">
		                                            
		                                            		<span class="userName"><span id="updname"><small><%-accountShortName%></small></span></span>
				                                            <a class="btn btn-sm btn-primary editNick" id="name">
				                                            	<span class="glyphicon glyphicon-pencil"></span>
				                                            </a>
				                                            <input type="hidden" value="NickNameUpdate" class="form-control"  name="NickNameService" id="NickNameService"/>
		                                            </div>
		                                         <%}else{%>   
		                                          <div class="col-xs-6 text-right">
		                                            
		                                            		<span class="userName"><span id="updname"><small><%-productName%></small></span></span>
				                                            <a class="btn btn-sm btn-primary editNick" id="name">
				                                            	<span class="glyphicon glyphicon-pencil"></span>
				                                            </a>
				                                            <input type="hidden" value="NickNameUpdate" class="form-control"  name="NickNameService" id="NickNameService"/>
		                                            </div>
		                                            <%}%>
											 <%}else{%>
											 	<div class="col-xs-6 text-right">
											 			<span class="userName"><span id="updname"><small><%-acctype%></small></span></span>
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
                                            	<span class="nickName"><input  autocomplete='off' type="text" class="form-control input-sm lenthcontrolnameval" maxlength="15" id="nicknameid" name="nicknameid" onkeydown="call(event)"  placeholder="<%-$.i18n.t('app.creditcard.general.nickname')%>"></span>
                                            </div>
                                            <div class="col-xs-5">
	                                            <div class="btn-group btn-group-sm">
		                                           	<a  class="btn btn-success updateNick" id="editname"><span class="glyphicon glyphicon-ok"></span></a>
	                                            	<a  class="btn btn-primary cancelNick" id="clearname"><span class="glyphicon glyphicon-remove"></span></a>
	                                            </div>
                                            </div>
                                        </div>
                                        
                                        <div id="nickerror" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.activatecc.nicknamenotnull')%></font></span></div>
                                        <div id="nickinvaliderror" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.validnickname')%></font></span></div>
                                        
                                     </li>
                                     
					         <!--      	 <li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.accounts.accountname')%>
						               			</small>
						               			<span class="pull-right">
							               			 <%if(typeof(accdetail.customerName)!="undefined"){%>
							               					<%-accdetail.customerName%>
							               			 <%}%>	
						               			</span>
						               			<div class="clearfix"></div>
					               		</li> -->
					        		
                                     
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.accounts.accountnumber')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
						               			<input type="hidden" id="accountno" name="accountno" value="<%-accdetail.accountNumber%>">
							               			<%if(typeof(accdetail.accountNumber)!="undefined"){%>
							               				<%-accdetail.accountNumber%>							               			
							               			<%}%>	
						               			</span>
								</br>
					               		</li>
					               		<!--
					               		<li class="list-group-item">
								               	 <small>
								               	 		<%-$.i18n.t('app.product.accounts.accounttype')%>
								               	 </small>
								               	  <span class="pull-right amt ">
								               	       <%-$.i18n.t('app.product.accounts.accounttypename')%>
									               	   
								               	 </span>
						               	 </li>
						               	 
						               	 <li class="list-group-item">
						               	 <small>
						               	 		<%-$.i18n.t('app.product.accounts.currency')%>
						               	 </small>
						               	 <span class="pull-right">
							               	  <% if (typeof(accdetail.currencyCode) != "undefined" || accdetail.currencyCode!=null) { %>
							               	 		<%-accdetail.currencyCode%>
							               	  <%}%>		
						               	 </span>
					               	 </li> 
					               		-->
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.accounts.accstatus')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
						               			<%if(typeof(accdetail.accountStatusCode)!="undefined"){%>
							               				<%-accdetail.accountStatusCode%>							               			
							               			<%}%>
						               			</span>
						               			</br>
					               		</li>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.accounts.ibannumber')%>
						               			</small>
						               			</br>
						               			<span class="pull-right">
							               			<%if(typeof(iban)!="undefined"){%>
							               			<small>	 
							               				 <%-iban%>
							               			</small>	 
							               			<%}%>	
						               			</span>
						               			</br>
					               		</li>
									<!--	<li class="list-group-item">
										<small><%-$.i18n.t('app.requests.debitcardpos.ptssales')%></small>
										<spanclass="pull-right">&nbsp;&nbsp;&nbsp;<input class="btn btn-success btn-sm" type="button" name="updatebtn" id="updatebtn" value="<%-$.i18n.t('app.requests.debitcardpos.updatebtn')%>">-->
										<!--<a href="#/debitcardlimitcontrolrequest" class="btn btn-success btn-block"><%-$.i18n.t('app.requests.debitcardpos.updatebtn')%></a>-->
										
										<!--</span></li>-->
					              
						           <!--  	 
					                <li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.currentbalance')%>
						                	</small>
						                	<span class="pull-right amt ">
						                	<%-accdetail.currencyCode%>
						                	<% if(accdetail.currentBalance > 0){ %>
							                    <span class="cr"><%- checkAmount($.formatNumber(accdetail.currentBalance, {format:"#,###.000", locale:"us"}))%></span>
							                <% } else { %>
							                    <span class="dr"><%- checkAmount($.formatNumber(accdetail.currentBalance, {format:"#,###.000", locale:"us"}))%></span>
							                <% } %>
						                	</span>
					                	</li>
					                	-->
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.availablebalance')%>
						                	</small>
						                	<span class="pull-right amt ">
						                	<%-accdetail.currencyCode%>
						                	<% if(accdetail.availableBalance > 0){ %>
							                     <span class="cr"><%- checkAmount($.formatNumber(accdetail.availableBalance, {format:"#,###.000", locale:"us"}))%></span>
							                <% } else { %>
							                     <span class="dr"><%-accdetail.currencyCode%>&nbsp;<%- checkAmount($.formatNumber(accdetail.availableBalance, {format:"#,###.000", locale:"us"}))%></span>
							                <% } %>
						                	</span>
					                	</li>
					                	<!--
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.accopendate')%>
						                	</small>
						                	<span class="pull-right amt date_ltr">
						                      	<% if (typeof(accdetail.accountOpenedDate) != "undefined" || accdetail.accountOpenedDate!=null) { %>
									               	 		<%-accdetail.accountOpenedDate%>
									               	   <%}%>
						                	</span>
					                	</li>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.unclrblnce')%>
						                	</small>
						                	<span class="pull-right amt ">
						                      	<% if (typeof(accdetail.unclearBalance) != "undefined" || accdetail.unclearBalance!=null) { %>
									               	 		<%-accdetail.unclearBalance%>
									               	   <%}%>
						                	</span>
					                	</li>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.overdrftlimint')%>
						                	</small>
						                	<span class="pull-right amt ">
						                      	<% if (typeof(accdetail.overdraftLimit) != "undefined" || accdetail.overdraftLimit!=null) { %>
									               	 		<%-accdetail.overdraftLimit%>
									               	   <%}%>
						                	</span>
					                	</li>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.holdamt')%>
						                	</small>
						                	<span class="pull-right amt ">
						                      	<% if (typeof(accdetail.holdAmount) != "undefined" || accdetail.holdAmount!=null) { %>
									               	 		<%-accdetail.holdAmount%>
									               	   <%}%>
						                	</span>
					                	</li>
					                	
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.creditallowed')%>
						                	</small>
						                	<span class="pull-right amt ">
						                      	<% if (typeof(accdetail.creditAllowed) != "undefined" || accdetail.creditAllowed!=null) { %>
									               	 		<%-accdetail.creditAllowed%>
									               	   <%}%>
						                	</span>
					                	</li>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.debitallowed')%>
						                	</small>
						                	<span class="pull-right amt ">
						                      	<% if (typeof(accdetail.debitAllowed) != "undefined" || accdetail.debitAllowed!=null) { %>
									               	 		<%-accdetail.debitAllowed%>
									               	   <%}%>
						                	</span>
					                	</li>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.cirates')%>
						                	</small>
						                	<span class="pull-right amt ">
						                      	<% if (typeof(accdetail.creditInterestRate) != "undefined" || accdetail.creditInterestRate!=null) { %>
									               	 		<%-accdetail.creditInterestRate%>
									               	   <%}%>
						                	</span>
					                	</li>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.dirates')%>
						                	</small>
						                	<span class="pull-right amt ">
						                      	<% if (typeof(accdetail.debitInterestRate) != "undefined" || accdetail.debitInterestRate!=null) { %>
									               	 		<%-accdetail.debitInterestRate%>
									               	   <%}%>
						                	</span>
					                	</li>
					                	
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.branch')%>
						                	</small>
									<br/>
						                	<span class="pull-right amt "><small>
						                      	<% if (typeof(accdetail.branchDescription) != "undefined") { %>
									               	 		<%-accdetail.branchDescription%>
									               	   <%}%>
						                	</small></span>
									<br/>
					                	</li>
					                	-->
					                	<!--<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.accounts.bookbalance')%>
						                	</small>
						                	<span class="pull-right amt">
							                	 <% if (typeof(accdetail.currentBalance) != "undefined") { %>
							                	 		<%- checkAmount($.formatNumber(accdetail.currentBalance, {format:"#,###.00", locale:"us"}))%>
							                	 <%}%>		
						                	</span>
					                	</li>-->
					               <!--
					              	  <li class="list-group-item">
						              	  <small>
						              	  		<%-$.i18n.t('app.product.accounts.productname')%>
						              	  
						              	  <span class="pull-right">
							              	  <% if (typeof(accdetail.productName) != "undefined" || accdetail.productName!= null) { %>
							              	  		<%-accdetail.productName%>
							              	  <%}%>		
						              	  </span></small>
					              	  </li>
					              	  
					              	  <li class="list-group-item">
						              	  <small>
						              	  		<%-$.i18n.t('app.product.accounts.prodescrptn')%>
						              	  </small>
								  <br/>
						              	  <span class="pull-right"><small>
							              	  <% if (typeof(accdetail.productDescription) != "undefined" || accdetail.productDescription!= null) { %>
							              	  		<%-accdetail.productDescription%>
							              	  <%}%>		
						              	  </small></span>
								  <br/>
					              	  </li>-->
					                
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
			    		<input type="hidden" value="<%-accid%>" class="form-control"  name="accno" id="accno"/>
			    		<div class="alert alert-warning" style="padding:7px;"><%-$.i18n.t('app.product.general.filterdisclaimer')%></div><br/>
						<div class="row">
						
							<div class="col-xs-6">
							
								<div class="form-group  has-feedback">
								<% if ( devicePlatform == "Android" ) { %>
									<input type="text" autocomplete='off'  class="form-control nativedatepicker" id="startDate" placeholder="<%-$.i18n.t('app.product.general.startdate')%>" tabindex="1" readonly>
								<%}else{%>
									<input type="text" autocomplete='off'  class="form-control nativedatepicker" id="startDate" placeholder="<%-$.i18n.t('app.product.general.startdate')%>" tabindex="1" readonly>
								<%}%>
									<span class="glyphicon glyphicon-calendar form-control-feedback "></span>
								</div>
								<div id="startDateNull" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.startDateNull')%></font></span></div>
<div id="startDateEmpty" style="display:none" align="center"><span><br/><br/></span></div>
								<div id="startDateValid" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.moi.datevalid1')%></font></span></div>
								<div id="startDateoldyear" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.moi.startDateoldyear')%></font></span></div>
								<div id="fromDateShouldNotBeGreaterThanfutureDate" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.fromDateShouldNotBeGreaterThanfutureDate')%></font></span></div>
								<!--<div class="form-group  has-feedback">
                          		<input type="text" value="" class="form-control" id="startDate" name="startDate" placeholder="<%-$.i18n.t('app.transfer.standinginstruction.start')%>">
                         	   <span class="glyphicon glyphicon-calendar form-control-feedback"></span>
                     		   </div>-->
								<div class="form-group">
								<% if ( devicePlatform == "Android" ) { %>
									<input type="number"  autocomplete='off' maxlength="10" pattern="\d+(\.\d*)?" class="form-control input-sm" id="amtabove" name="amtabove" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>" tabindex="3" />
								<%}else{%>
									<% if(isKeyPadNeed) { %>
										<input type="number"  autocomplete='off'  pattern="\d+(\.\d*)?" inputmode="numeric"  maxlength="10" class="form-control input-sm lenthcontrol" id="amtabove" name="amtabove" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>" tabindex="3" />
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
<div id="endDateEmpty" style="display:none" align="center"><span><br/><br/></span></div>
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
						            <input type="number" autocomplete='off'  maxlength="10" class="form-control input-sm" pattern="\d+(\.\d*)?" id="amtbelow" name="amtbelow" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>" tabindex="4" />
						         <%}else{%>
									<% if(isKeyPadNeed) { %>
										<input type="number"  autocomplete='off'  pattern="\d+(\.\d*)?" inputmode="numeric"  maxlength="10" class="form-control input-sm lenthcontrol" id="amtbelow" name="amtbelow" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>" tabindex="4" />
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
				    	<!--<a href="" id="getstatement" class="btn btn-block btn-success"><%-$.i18n.t('app.product.accounts.getstatement')%></a>-->
					</form>
					</div>
				</div>
			</div>

        <div class="clearfix"></div>
        <div class="accStmt">
           <ul>
            	<%var i=0;%>
            	<%var k=0;%>
             	<% _.each(ministatement,function(data){ %>
	               	<%if(i++<ministatement.length){%>
			<%if(data.flgDrCr!="Dr"){%> 
		            	<li class="cr">
		         <%}else{%>
			 	<li class="dr">
			 <%}%>          	
			                 <!--  	<span class="glyphicon glyphicon-chevron-right pull-right"></span>-->
		                    	 <a href="#/fttransdetails/<%-k%>" id="ftrefnum">
		                    	 <input type="hidden" id="HiddenTranDesc<%-k%>" name="HiddenTranDesc<%-k%>" value="<%-data.narration%>">
								<span class="glyphicon glyphicon-chevron-right pull-right"></span>	
		                        <div class="d_msg">
			                            <p class="date"><span class="date_ltr"><%-data.txnDate%></span></p>
			                            
			                            <%if(data.description!=""){%>
			                               	<p><%-data.description%></p>
			                            <%}else{%>
			                            	 <p><%if((data.description).indexOf("-")!=-1){%>  <%-(data.description).substring(0,(data.description).indexOf("-"))%> 
			                            	 <%}else{%><%-data.description%><%}%>
			                            	 </p>
			                            <%}%>
			                            
			                             <!--
			                            <%if(data.flgDrCr!=""){%>
			                               	<p><%-data.flgDrCr%></p>
			                            <%}%>
			                            
			                            <%if(data.description!=""){%>
			                               	<p><%-data.description%></p>
			                            <%}%>
			                            -->

				                            <p class="ref">
				                            <input type="hidden" id="ftno" name="ftno" value="<%-data.bankReferenceNumber%>">
				                      	   		<%-data.referenceTransactionNo%>
				                            </p>

		                        </div>
		                        <div class="amt">
			                          	<span class="cur">
			                          		 <%-accdetail.currencyCode%>
			                          	</span>
			                          	<span class="type">
			                          		
										</span>
										<span class="type"><%-data.flgDrCr%> </span>
										<% if(data.flgDrCr !="Dr"){ %>
							                     <span class="cr"><%- checkAmount($.formatNumber(data.amount, {format:"#,###.000", locale:"us"}))%></span>
							                <% } else { %>
							                     <span class="dr"><%- checkAmount($.formatNumber(data.amount, {format:"#,###.000", locale:"us"}))%></span>
							          <% } %>
		                        </div>
		                        <div class="amt1">
			                           	<span class="hdr">
			                          		<%-$.i18n.t('app.product.accounts.currentbalance')%>
			                         	 </span>
			                         	 <span class="cur">
			                          		
			                          	</span> 
			                          	<% if(data.runningTotal > 0){ %>
							                     <span class="cr"><%- checkAmount($.formatNumber(data.runningTotal, {format:"#,###.000", locale:"us"}))%></span>
							                <% } else { %>
							                     <span class="dr"><%- checkAmount($.formatNumber(data.runningTotal, {format:"#,###.000", locale:"us"}))%></span>
							          <% } %>
			                          	
		                        </div>
		                        </a>
		                 </li>
	               <%}%>
										<input type="hidden" id="ftno<%-k%>" name="ftno<%-k%>" value="<%-data.referenceTransactionNo%>">
										<%k=k+1;%>
              <% }); %>
              <% if(_.size(ministatement) == 0){%>
              		<div class="alert alert-info alert-sm">
  						<%-$.i18n.t('exception.common.nostatement')%>
  					</div>
              <% } %>
          </ul>
     </div>
	 <input type="hidden" id="transfertype" name="transfertype">
     
     <% if(_.size(ministatement) > 0){%>
     			  <div class="form-group pull-right">
	      			  <label><%-$.i18n.t('app.product.accounts.downloads')%>&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
				      <div class="btn-group"> 
					        <button type="button" id="pdfdownload" name="pdfdownload" class="btn btn-default"><%-$.i18n.t('app.product.accounts.pdf')%></button>
					        <!--<button type="button" id="xlsdownload" name="xlsdownload" class="btn btn-default"><%-$.i18n.t('app.product.accounts.xls')%></button>-->
				      </div>
     			 </div>	
      <!--			 <input type="button" id="emailadvice" name="emailadvice" class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.accounts.emailadvice')%>">
     <%if(emailidd!=null&&emailidd!=''&&emailidd!=undefined&&emailidd!="undefined"){%>
		          <input type="button" id="emailadvice" name="emailadvice" class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.accounts.emailadvice')%>"> 
		         <% } %> -->
			 	  <%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>	
		          	<input type="button" id="emailadvice" name="emailadvice" class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.accounts.emailadvice')%>">
		          <%}%>	
		          <!--<a href="#/wealth" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>-->
	<% } %> 
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
	/*
		function showGraph(){
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
			
		
		   }
		// legend: {show:true, rendererOptions: { numberRows: 1}, location:'e' }
		*/
</script>


<script>

function PDFDownload(){
		var els = new EncryptedLocalStorage('secret');
		var appurl = '';
	    //Retrieve application response mode from local cache
		       
		var appContextPath = els.get('app.context.path');
		       
		       	
		//Setting up application URL
	        	
	    appurl= appContextPath+'account/ministatement/download.pdf';
	    var access_token = els.get("access_token");
	    var acccid = els.get("acccid");
	        		var myaccounts = els.get("myaccounts");
	            	var cdbflag = '';//els.get("cdbflag");
		        	var acctid = myaccounts[acccid].id;
		        	var fromdate = '';//els.get("fromdateacc");
		        	var todate = '';//els.get("todateacc");
		        	var fromamtt='';//els.get("frmamtprod");
		        	var cdbflag = '';//els.get("cdbflag");
		        	var toamtt='';//els.get("toamtprod");
		        	var lastnTxn='';els.get("lastntrans");
		        	var emailRequired ='';
	     			
		
		/* Sensitive data hashing - PT issue fix - Starts */
		        		var my_device_id = getDeviceId();
		        		var appCheckSum = '';//accountNumber+""+my_device_id;
		        		//var hashing = CryptoJS.MD5(appCheckSum);
		        		//appCheckSum = hashing + "";
		
		        		// Note: New key and value as follows "appchecksum:appCheckSum" to be added as part of request param
        /* Sensitive data hashing - PT issue fix - Ends */
        		
		var pdfDownloadUrl = "accountID="+acctid+"&fromDate="+fromdate+"&toDate="+todate+"&fromAmount="+fromamtt+"&toAmount="+toamtt+"&lastnTxn="+lastnTxn+"&emailRequired="+emailRequired+"&appchecksum="+appCheckSum+"&access_token="+access_token+"&download=PDF&type=CASA";
		
		
		var uri = encodeURI(pdfDownloadUrl);
		        	
		fileDownLoadAndViewer(appurl,uri,1,access_token); // 1 for pdf pass the uri and download type
		        	
}

//XLS Download Option
function XLSdownload()
{
	var els = new EncryptedLocalStorage('secret');
	var appurl = '';
	//Retrieve application response mode from local cache
		       
	var appContextPath = els.get('app.context.path');
		       
		       	
	//Setting up application URL
	        	
	appurl= appContextPath+'account/ministatement/download.xls';
	var access_token = els.get('appSessionId');
	var device_id= els.get('device_id');
	var lang_id= els.get("lang_id");
	var accountNumber= $("#accountno").val();
	
	/* Sensitive data hashing - PT issue fix - Starts */
		        		var my_device_id = getDeviceId();
		        		var appCheckSum = accountNumber+""+my_device_id;
		        		var hashing = CryptoJS.MD5(appCheckSum);
		        		appCheckSum = hashing + "";
		
		        		// Note: New key and value as follows "appchecksum:appCheckSum" to be added as part of request param
     /* Sensitive data hashing - PT issue fix - Ends */
        
	var pdfDownloadUrl = "device_id="+device_id+"&appchecksum="+appCheckSum+"&lang_id="+lang_id+"&accountNumber="+accountNumber+"&download=XLS&cardoract=CARD";
	//var pdfRef = window.open(pdfDownloadUrl, '_system', 'location=no');
		        
	var uri = encodeURI(pdfDownloadUrl);
		        	
	fileDownLoadAndViewer(appurl,uri,2,access_token); // 2 for xls pass the uri and download type
	
}

//Email Advice

function sendEmail(){
	Backbone.history.navigate("#/loademailadvice");
}

</script>


<script>
	 $("#search").on("click",function(){
	        $("#datepanel2").slideToggle();
	 });
</script>
<script>  
	(function ($){
		$.fn.inputlengthnameval=function(){
			return this.each(function(){
	    		var makelength=$(this).attr("maxlength");
	     		$(this).on('keyup',function(e){
				var allowedTest ="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890 ";
				var allowedaraTest =/[\u0600-\u06FF]/;					
					var orignalValue=$(this).val();
				
					 for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedTest.indexOf(atchar) != -1){
						}else if(allowedaraTest.test(atchar)){
						}else{
							var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;
						}
					}
					/*for (var i=0;i< orignalValue.length;i++){
						var atchar = orignalValue[i];
						if(allowedaraTest.test(atchar)){
						}else{
						var changeTest =orignalValue.substr(0,i);
							orignalValue=changeTest;
						}
					}*/
					 $(this).val(orignalValue);
	            	 if($(this).val().length>makelength &&  e.keyCode != '8' && e.keyCode != '46' || e.keyCode == '32'){
	            		var values=$(this).val();
						if(e.keyCode != '32') {
			            	values=values.substring(0, values.length - 1);
				      	}
	           			$(this).val(values).focus();
	              		e.preventDefault();
	            	}
	     		});
	   		});
		};
	}(jQuery));
	$('.lenthcontrolnameval').inputlengthnameval();
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
        var username =$(".nickName input").val().trim();
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
