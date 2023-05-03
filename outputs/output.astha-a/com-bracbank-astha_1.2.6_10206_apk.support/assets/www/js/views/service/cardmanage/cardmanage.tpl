<%
	var els = new EncryptedLocalStorage('secret');
	var casaDTO = getAccountDTO();
	var reasontypelistDTO = els.get("reasontypelist");
	var blockReasonListDTO = els.get("blockReasonList");
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
			<% if(els.get("isFromViewOnlyMode") == "true" && els.get("isFromWealthActiavteCard") == "true") { %>
				<a href="#/wealth" class="bacArr">
			<% } else if(els.get("isFromViewOnlyMode") == "true" && els.get("isFromWealthActiavteCard") == "false") { %>
				<a href="#/servicerequest" class="bacArr">
			<% } else { %>
				<a href="#/servicerequest" class="bacArr">
			<% } %>	
      			<i class="fa fa-angle-left" aria-hidden="true"></i>
    			</a>
	      </div>
	      <div class="headerMiddle">
  			<h4  class="p10"><%-$.i18n.t('app.service.card')%></h4>	
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
	       		<!--<label>Reason For Request</label>
	       		<div class="form-group">
	       			<select id="requestreason" class="form-control">
	       				<option value="">Select a Reason for Request</option>
	       				<%_.each(reasontypelistDTO,function(data,index){%>
	       					<option value="<%- data.code%>"><%- data.description%></option>
               			<%});%>
            		</select>  
	       		</div>
	       		<div class='form-group has-error'>
					<p class='help-block error-message has-error' style='color:#a94442' id='requestReasonError'></p>
				</div>-->
				<div id="reasonListDiv"></div>
                <!--<div class='form-group has-error'>
	                <p class='help-block error-message has-error' style='color:#a94442' id='requestReasonError'></p>
                </div>-->
			  	
				<div id="radioButtonDiv"></div>
				<!--<label><%-$.i18n.t('app.service.cardtype')%></label>
				<div class="form-group">
					<div class="col-xs-4">
      					<label class="radio-label">
	        				<input type="radio" name="inlineRadioOptions" id="credit" value="creditCard" checked>Credit Card
	    					<span class="checkmark"></span>
	      				</label>
      				</div>
      				<div class="col-xs-4">
	      				<label class="radio-label">
	        				<input type="radio" name="inlineRadioOptions" id="debit" value="debitCard">Debit Card
	        				<span class="checkmark"></span>
	      				</label>
      				</div>
      				<div class="col-xs-4">
	      				<label class="radio-label">	
	        				<input type="radio" name="inlineRadioOptions" id="prepaid" value="prepaidCard">Prepaid Card
	        				<span class="checkmark"></span>
	      				</label>
      				</div>
    			</div>-->
				
          		<div class='form-group has-error'>
					<p class='help-block error-message has-error' style='color:#a94442' id='cardTypeError'></p>
				</div>
          		<div class="form-group">
					<label>Select Card</label>
	       			<select id="cardList" class="form-control">
	       				<option value="">Select a Card</option>
            		</select>
					<p class="small text-right" id="cardStatusDiv"></p>
					
					<div> 
	       		</div>
	       		<div class='form-group has-error'>
					<p class='help-block error-message has-error' style='color:#a94442' id='cardNumberError'></p>
				</div>
				<div id="FOREIGN_TRANS_TQ_Div">
					<div id="foreignTransTQ_ToggleBtnDiv"></div>
					<div class="form-group">
						<label> Card Pin </label>
						<div class="form-group">
							<input type="tel" id="cardPinForeignTrans" name="cardPinForeignTrans" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="restrictCpyPst cardpinnumericlengthcontrol">
						</div>
						<div class='form-group has-error'>
							<p class='help-block error-message has-error' style='color:#a94442' id='cardPinForeignTrans_Error'></p>
						</div>
					</div>
					
					
				</div>

				<div id="changePinDiv">
					<label>Enter the third 4 digits of the selected card</label>
					<br/>
					<div class="form-group">
						<div class="row">
							<div class="col-xs-3" id="changePin_card_first"></div>
							<div class="col-xs-3">XXXX</div>
							<div class="col-xs-3">
								<input type="tel"  autocomplete='off' style="text-align:center;" autocomplete="off" id="changePin_CardNumber" class="form-control  cardpinnumericlengthcontrol" maxlength="4">
							</div>
							<div class="col-xs-3" id="changePin_card_last"></div>
						</div>
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='changePin_cardNumError'></p>
					</div>
					<div id="changePinExpDateDiv">
						<label>Expiry Date</label>
						<div class="row">
							<div class="col-xs-6 pr5">
								<select id="changePin_cardManage_ExpMonth" name="changePin_cardManage_ExpMonth" class="form-control">
									<option value="" selected="selected" >Month</option>
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
							</div>
							<div class="col-xs-6 p0 pl5">
								<select id="changePin_cardManage_ExpYear" name="changePin_cardManage_ExpYear" class="form-control">
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6 pr5">
								<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="changePin_cardManage_ExpMonthErr"></p>
								</div>
							</div>
							<div class="col-xs-6 pl5">
								<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="changePin_cardManage_ExpYearErr"></p>
								</div>
							</div>
						</div>
					</div>
					<label> CVV </label>
					<div class="form-group">
						<div class="mpinnew">
							<input type="text" autocomplete='off' id="changePin_cardpin" inputmode="numeric" pattern="[0-9]*" class="cardpinnumericlengthcontrol restrictCpyPst">
						</div>
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='changePin_cardpinError'></p>
					</div>
					<label> Enter Old Pin </label>
					<div class="form-group">
						<input type="tel" id="changePin_oldpin" name="changePin_oldpin" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="cardpinnumericlengthcontrol restrictCpyPst">
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='changePin_oldPinError'></p>
					</div>
					<label> Enter New Pin </label>
					<div class="form-group">
						<input type="tel" id="changePin_newpin" name="changePin_newpin" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="cardpinnumericlengthcontrol restrictCpyPst">
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='changePin_newPinError'></p>
					</div>
					<label> Confirm New Pin </label>
					<div class="form-group">
						<input type="tel" id="changePin_confirmpin" name="changePin_confirmpin" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="cardpinnumericlengthcontrol restrictCpyPst">
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='changePin_confirmPinError'></p>
					</div>
				</div>
				<div id="forgotPinDiv">
					<label>Enter the third 4 digits of the selected card</label>
					<br/>
					<div class="form-group">
						<div class="row">
							<div class="col-xs-3" id="forgotPin_card_first"></div>
							<div class="col-xs-3">XXXX</div>
							<div class="col-xs-3">
								<input type="tel" autocomplete="off" style="text-align:center;" id="forgotPin_CardNumber" class="form-control cardpinnumericlengthcontrol " maxlength="4">
							</div>
							<div class="col-xs-3" id="forgotPin_card_last"></div>
						</div>
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='forgotPin_cardNumError'></p>
					</div>
					<div id="forgotPinExpDateDiv">
						<label>Expiry Date</label>
						<div class="row">
							<div class="col-xs-6 pr5">
								<select id="forgotPin_cardManage_ExpMonth" name="forgotPin_cardManage_ExpMonth" class="form-control">
									<option value="" selected="selected" >Month</option>
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
							</div>
							<div class="col-xs-6 p0 pl5">
								<select id="forgotPin_cardManage_ExpYear" name="forgotPin_cardManage_ExpYear" class="form-control">
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6 pr5">
								<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="forgotPin_cardManage_ExpMonthErr"></p>
								</div>
							</div>
							<div class="col-xs-6 pl5">
								<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="forgotPin_cardManage_ExpYearErr"></p>
								</div>
							</div>
						</div>
					</div>
					<label> CVV </label>
					<div class="form-group">
						<div class="mpinnew">
							<input type="text" id="forgotPin_cardpin" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="cardpinnumericlengthcontrol restrictCpyPst">
						</div>
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='forgotPin_cardpinError'></p>
					</div>
					<!--<label>From Account </label>
					<select id="forgotPin_FromAccount" name="Fromacc"class="form-control">
			            <option value="" selected="selected" >Select Account Number</option>
			            <%_.each(casaDTO,function(data,index){%>
							<% if(data.serviceFlag == "Y") {%>
								<option frName="<%-data.accountShortName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
							<% } %>
						<%});%>
		            </select>
		            <div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='forgotPin_FromAccErr'></p>
					</div>-->
					<label> New Pin </label>
					<div class="form-group">
						<input type="tel" id="forgotPin_newpin" name="forgotPin_newpin" type="tel" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="cardpinnumericlengthcontrol restrictCpyPst">
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='forgotPin_newPinError'></p>
					</div>
					<label> Confirm New Pin </label>
					<div class="form-group">
						<input type="tel" id="forgotPin_confirmpin" name="forgotPin_confirmpin" type="tel" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="cardpinnumericlengthcontrol restrictCpyPst">
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='forgotPin_confirmPinError'></p>
					</div>
					<!--<label> Block Reason </label>
					<select id="forgotPin_BlockReason" name="blockReason"class="form-control">
			            <option value="" selected="selected" >Select the block reason</option>
			            <%_.each(blockReasonListDTO,function(data) { %>
			            	<option value="<%- data.code%>"><%- data.description%></option>
			            <% }); %>

		            </select>
		            <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="forgtoPin_blockReasonErr"></p>
					</div>-->
				</div>
				
				<div id="generateNewPinDiv">
					<label>Enter the third 4 digits of the selected card</label>
					<br/>
					<div class="form-group">
						<div class="row">
							<div class="col-xs-3" id="generatePin_card_first"></div>
							<div class="col-xs-3">XXXX</div>
							<div class="col-xs-3">
								<input type="tel" autocomplete="off" style="text-align:center;" id="generatePin_CardNumber" class="form-control cardpinnumericlengthcontrol " maxlength="4">
							</div>
							<div class="col-xs-3" id="generatePin_card_last"></div>
						</div>
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='generatePin_cardNumError'></p>
					</div>
					<div id="newPinExpDateDiv">
						<label>Expiry Date</label>
						<div class="row">
							<div class="col-xs-6 pr5">
								<select id="newPin_cardManage_ExpMonth" name="newPin_cardManage_ExpMonth" class="form-control">
									<option value="" selected="selected" >Month</option>
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
							</div>
							<div class="col-xs-6 p0 pl5">
								<select id="newPin_cardManage_ExpYear" name="newPin_cardManage_ExpYear" class="form-control">
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6 pr5">
								<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="newPin_cardManage_ExpMonthErr"></p>
								</div>
							</div>
							<div class="col-xs-6 pl5">
								<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="newPin_cardManage_ExpYearErr"></p>
								</div>
							</div>
						</div>
					</div>
					<label> CVV </label>
					<div class="form-group">
						<div class="mpinnew">
							<input type="text" id="generatePin_cardpin" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="cardpinnumericlengthcontrol restrictCpyPst">
						</div>
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='generatePin_cardpinError'></p>
					</div>
					<!--<label>From Account </label>
					<select id="generatePin_FromAccount" name="Fromacc"class="form-control">
			            <option value="" selected="selected" >Select Account Number</option>
			            <%_.each(casaDTO,function(data,index){%>
							<% if(data.serviceFlag == "Y") {%>
								<option frName="<%-data.accountShortName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
							<% } %>
						<%});%>
		            </select>
		            <div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='generatePin_FromAccErr'></p>
					</div>-->
					<label> New Pin </label>
					<div class="form-group">
						<input type="tel" id="generatePin_newpin" name="generatePin_newpin" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="restrictCpyPst cardpinnumericlengthcontrol">
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='generatePin_newPinError'></p>
					</div>
					<label> Confirm New Pin </label>
					<div class="form-group">
						<input type="tel" id="generatePin_confirmpin" name="generatePin_confirmpin" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="restrictCpyPst cardpinnumericlengthcontrol">
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='genratePin_confirmPinError'></p>
					</div>
					<!--<label> Block Reason </label>
					<select id="generatePin_BlockReason" name="blockReason"class="form-control">
			            <option value="" selected="selected" >Select the block reason</option>
			            <%_.each(blockReasonListDTO,function(data) { %>
			            	<option value="<%- data.code%>"><%- data.description%></option>
			            <% }); %>

		            </select>
		            <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="generatePin_blockReasonErr"></p>
					</div>-->
				</div>






					<div id="tempBlckDiv" style="display:none">
					 <div class="form-group">
						<label for="opass">Card Status</label>
						<div class="row">
							<div class="col-xs-4">
							<label >
								<p id="cardStatustempDiv"></p>
							</label>
							</div>
							<div class="clearfix"></div>
							<div class="col-xs-12">
							 <!--<div class="checkbox">
								<label>
								<input type="checkbox" id="tempButtoncheck" name="tempButtoncheck">Temporarily  Block
								</label>
							</div>
						<div class='form-group has-error'>
							<p class='help-block error-message has-error' style='color:#a94442' id='cardPinTemp_checkError'></p>
						</div>-->		
							</div>
						</div>
					</div>
					
					<label> Card Pin </label>
					<div class="form-group">
						<input type="tel" id="cardPinTEMPBlk" name="cardPinTEMPBlk" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="restrictCpyPst cardpinnumericlengthcontrol">
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='cardPinTemp_newPinError'></p>
					</div>
					<!--<label>From Account </label>
					<select id="generatePin_FromAccount" name="Fromacc"class="form-control">
			            <option value="" selected="selected" >Select Account Number</option>
			            <%_.each(casaDTO,function(data,index){%>
							<% if(data.serviceFlag == "Y") {%>
								<option frName="<%-data.accountShortName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
							<% } %>
						<%});%>
		            </select>
		            <div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='generatePin_FromAccErr'></p>
					</div>-->
					<!--<div class="form-group">
						<label for="resonList">Remarks</label>
						<select id="resonList" class="form-control">
							<option>Reson for Request</option>
							<option value="tempcardblk">Temporary Card Block</option>
						</select>
					</div>-->
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='reasonError'></p>
					</div>
					<!--<label> Block Reason </label>
					<select id="generatePin_BlockReason" name="blockReason"class="form-control">
			            <option value="" selected="selected" >Select the block reason</option>
			            <%_.each(blockReasonListDTO,function(data) { %>
			            	<option value="<%- data.code%>"><%- data.description%></option>
			            <% }); %>

		            </select>
		            <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="generatePin_blockReasonErr"></p>
					</div>-->
				</div>
				
				
				<div id="usdPaymentGTDiv" style="display:none">
					<div class="form-group">
				 		<label>Change Status</label>
						<div class='row'>
							<div class='col-xs-6'>
								<label class='radio-label trans_label'>
									<input type='radio' name='usdPGT_CurrentStatus' id="enabled" class='currentStatus' value='Enabled'>Enabled
									<span class='checkmark'></span>
								</label>
							</div>
							<div class='col-xs-6'>
								<label class='radio-label trans_label'>
									<input type='radio' name='usdPGT_CurrentStatus' id="disabled" class='currentStatus' value='Disabled'>Disabled
									<span class='checkmark'></span>
								</label>
							</div>
						</div>
				 	</div>
				 	<div id="usdPGT_EnabledStatusDiv">
				 		<div class="form-group">
							<label>Remarks</label>
			       			<select id="usdPGT_remarksList" class="form-control">
		            		</select>
			       		</div>
			       		<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="usdPGT_RemarksNullErr"></p>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6 pr5">
									<label>From Date</label>
									<div class="form-group">
										<input type="date" id="usdPGT_FromDate" name="fromDate" class="form-control" placeholder="dd-mm-yyyy"/>
									</div>
								</div>
								<div class="col-xs-6 p0 pl5">
									<label>From Time</label>
									<div class="form-group">
				                       	<input type="text" id="usdPGT_FromTime" name="fromTime" class="form-control nativedatepicker"/>
				                    </div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6 pr5">
									<div class="form-group has-error">
										<p class="help-block error-message has-error" style="color:#a94442" id="usdPGT_FromDateErr"></p>
									</div>
								</div>
								<div class="col-xs-6 pl5">
									<div class="form-group has-error">
										<p class="help-block error-message has-error" style="color:#a94442" id="usdPGT_FromTimeErr"></p>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="row">
								<div class="col-xs-6 pr5">
									<div class="form-group">
										<label>To Date</label>
										<input type="date" id="usdPGT_ToDate" name="toDate" class="form-control" placeholder="dd-mm-yyyy"/>
									</div>
								</div>
								<div class="col-xs-6 p0 pl5">
									<label>To Time</label>
									<div class="form-group">
				                       	<input type="text" id="usdPGT_ToTime" name="toTime" class="form-control nativedatepicker"/>
				                    </div>
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6 pr5">
									<div class="form-group has-error">
										<p class="help-block error-message has-error" style="color:#a94442" id="usdPGT_ToDateErr"></p>
									</div>
								</div>
								<div class="col-xs-6 pl5">
									<div class="form-group has-error">
										<p class="help-block error-message has-error" style="color:#a94442" id="usdPGT_ToTimeErr"></p>
									</div>
								</div>
							</div>
						</div>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="usdPGT_FromToDateTimeErr"></p>
						</div>
				 	</div>
					<div class="form-group">
						<label>Card Pin</label>
						<div class="form-group">
							<input type="tel" id="usdPGT_cardPin" name="usdPGT_cardPin" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="restrictCpyPst cardpinnumericlengthcontrol">
						</div>
						<div class='form-group has-error'>
							<p class='help-block error-message has-error' style='color:#a94442' id='usdPGT_cardPinError'></p>
						</div>
					</div>
					
				</div>
				
				
				
				
<!-- Unblock Start-->

				<div id="tempUNBlockDiv"  style="display:none">
					 <div class="form-group">
						<label for="opass">Card Status</label>
						<div class="row">
							<div class="col-xs-4">
								<label >
									<p id="cardStatustempunblkDiv"></p>
								</label>
							</div>
							<div class="clearfix"></div>
							<div class="col-xs-12">
							 <!--<div class="checkbox">
								<label>
								<input type="checkbox" id="unblckTemp" name="unblckTemp">Unblock Card
								</label>
							</div>
							<div class='form-group has-error'>
							<p class='help-block error-message has-error' style='color:#a94442' id='cardPinunblk_checkError'></p>
							</div>-->		
							</div>
						</div>
					</div>
					
					<!--<label> Card Pin </label>
					<div class="form-group">
						<input type="tel" id="cardPinTEMPUNBlk" name="cardPinTEMPUNBlk" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="restrictCpyPst cardpinnumericlengthcontrol">
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='cardPinTempUNBL_newPinError'></p>
					</div>-->
					<!--<label>From Account </label>
					<select id="generatePin_FromAccount" name="Fromacc"class="form-control">
			            <option value="" selected="selected" >Select Account Number</option>
			            <%_.each(casaDTO,function(data,index){%>
							<% if(data.serviceFlag == "Y") {%>
								<option frName="<%-data.accountShortName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
							<% } %>
						<%});%>
		            </select>
		            <div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='generatePin_FromAccErr'></p>
					</div>-->
					<!--<div class="form-group">
						<label for="reasonforreqTeMPUNBLCK">Remarks</label>
						<select id="reasonforreqTeMPUNBLCK" class="form-control">
							<option>Reson for Request</option>
							<option value="tempcardblk">Unblock Card</option>
						</select>
					</div>-->
					<div class="form-group">
					<label>Remarks</label>
	       			<select id="reasonforreqTeMPUNBLCK" class="form-control">
	       				
            		</select>
					 
	       		</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='reasonunblkError'></p>
					</div>
					<!--<label> Block Reason </label>
					<select id="generatePin_BlockReason" name="blockReason"class="form-control">
			            <option value="" selected="selected" >Select the block reason</option>
			            <%_.each(blockReasonListDTO,function(data) { %>
			            	<option value="<%- data.code%>"><%- data.description%></option>
			            <% }); %>

		            </select>
		            <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="generatePin_blockReasonErr"></p>
					</div>-->
				</div>

<!-- Unblock End -->

<!-- Block replaced Start-->
				<div id="blckndReplcDiv" style="display:none">
				<div class="form-group">
						<label for="opass">Card Status</label>
						<div class="row">
							<div class="col-xs-4">
							<label >
								<p id="cardPinBkckndREPLCDiv"></p>
							</label>
							</div>
							
						</div>
					</div>

					<!--<div class="form-group">
						<label for="opass">Select Authorization Mode</label>
						<div class="row">
							<div class="col-xs-4">
							<label class="radio-label">
								<input type="radio" checked="checked" name="authReq" value="SMS"> SMS
								<span class="checkmark"></span>
							</label>
							</div>
							<div class="col-xs-4">
							<label class="radio-label">
								<input type="radio" name="authReq" value="EMAIL"> EMAIL
								<span class="checkmark"></span>
							</label>
							</div>
						</div>
					</div>

					<div class="form-group">
             <label>Select Authorization Mode</label>
             <div class="custRadio_pass">
               <div class="box">
                 <div class="radio">
                   <label>
                     <input type="radio" name="authReq" id="authReq" value="SMS" checked>
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
                     <input type="radio" name="authReq" id="authReq2" value="EMAIL">
                     <div class="row bg">
                       <div class="col-xs-12 p0">
                         <span class="menu_icon ico-xs mail"></span>
                         <span class="small">Mail</span>
                       </div>
                     </div>					  
                   </label>
                 </div>                      
               </div>
               
            </div>
           </div>--><!-- / form-group-->
           <!--<div class="clearfix"></div>-->
					
					<label> Card Pin </label>
					<div class="form-group">
						<input type="tel" id="cardPinBkckndREPLC" name="cardPinBkckndREPLC" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="restrictCpyPst cardpinnumericlengthcontrol">
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='cardPinTempBLRP_newPinError'></p>
					</div>


					<div class="form-group">
						<label for="opass">Replacement Required</label>
						<div class="row">
							<div class="col-xs-4">
							<label class="radio-label">
								<input type="radio" checked="checked" name="replcReq" value="YES"> Yes
								<span class="checkmark"></span>
							</label>
							</div>
							<div class="col-xs-4">
							<label class="radio-label">
								<input type="radio" name="replcReq" value="NO"> No
								<span class="checkmark"></span>
							</label>
							</div>
						</div>
					</div>
					<!--<label>From Account </label>
					<select id="generatePin_FromAccount" name="Fromacc"class="form-control">
			            <option value="" selected="selected" >Select Account Number</option>
			            <%_.each(casaDTO,function(data,index){%>
							<% if(data.serviceFlag == "Y") {%>
								<option frName="<%-data.accountShortName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
							<% } %>
						<%});%>
		            </select>
		            <div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='generatePin_FromAccErr'></p>
					</div>-->
					
					<!--<label> Block Reason </label>
					<select id="BkckndREPLC_BlockReason" name="blockReason"class="form-control">
			            <option value="" selected="selected" >Select the block reason</option>
			            <%_.each(blockReasonListDTO,function(data) { %>
			            	<option value="<%- data.code%>"><%- data.description%></option>
			            <% }); %>

		            </select>
		            <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="generatePin_blockReasonErr"></p>
			    </div>-->
	</div>

<!-- Block replaced End-->

<!-- Active card Start -->

		<div id="actNEwCRDDiv" style="display:none">
				<div class="form-group">
						<label for="opass">Card Status</label>
						<div class="row">
							<div class="col-xs-4">
							<label >
								Active
							</label>
							</div>
							
						</div>
					</div>

					
					<div id="actNCrdExpDateDiv">
						<label>Expiry Date</label>
						<div class="row">
							<div class="col-xs-6 pr5">
								<select id="AcrNcrd_cardManage_ExpMonth" name="AcrNcrd_cardManage_ExpMonth" class="form-control">
									<option value="" selected="selected" >Month</option>
									<option value="01">01</option>
									<option value="02">02</option>
									<option value="03">03</option>
									<option value="04">04</option>
									<option value="05">05</option>
									<option value="06">06</option>
									<option value="07">07</option>
									<option value="08">08</option>
									<option value="09">09</option>
									<option value="10">10</option>
									<option value="11">11</option>
									<option value="12">12</option>
								</select>
							</div>
							<div class="col-xs-6 p0 pl5">
								<select id="AcrNcrd_cardManage_ExpYear" name="AcrNcrd_cardManage_ExpYear" class="form-control">
								</select>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-6 pr5">
								<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="AcrNcrd_cardManage_ExpMonthErr"></p>
								</div>
							</div>
							<div class="col-xs-6 pl5">
								<div class="form-group has-error">
									<p class="help-block error-message has-error" style="color:#a94442" id="AcrNcrd_cardManage_ExpYearErr"></p>
								</div>
							</div>
						</div>
					</div>
					<label> CVV </label>
					<div class="from-group">
						<div class="mpinnew">
							<input type="text" id="AcrNcrd_cardpin" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="cardpinnumericlengthcontrol restrictCpyPst">
						</div>
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='AcrNcrd_cardpinError'></p>
					</div>
					<!--<label>From Account </label>
					<select id="generatePin_FromAccount" name="Fromacc"class="form-control">
			            <option value="" selected="selected" >Select Account Number</option>
			            <%_.each(casaDTO,function(data,index){%>
							<% if(data.serviceFlag == "Y") {%>
								<option frName="<%-data.accountShortName%>" value="<%- data.id%>" id="<%- index%>" data="<%- data.currencyCode%>"> <%-data.accountNumber%></option>
							<% } %>
						<%});%>
		            </select>
		            <div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='generatePin_FromAccErr'></p>
					</div>-->
					<label> New Pin </label>
					<div class="form-group">
						<input type="tel" id="AcrNcrd_newpin" name="AcrNcrd_newpin" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="restrictCpyPst cardpinnumericlengthcontrol">
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='crNcrd_newPinError'></p>
					</div>
					<label> Confirm New Pin </label>
					<div class="form-group">
						<input type="tel" id="AcrNcrd_confirmpin" name="AcrNcrd_confirmpin" maxlength="4" autocomplete="off" inputmode="numeric" pattern="[0-9]*" class="restrictCpyPst cardpinnumericlengthcontrol">
					</div>
					<div class='form-group has-error'>
						<p class='help-block error-message has-error' style='color:#a94442' id='crNcrd_confirmPinError'></p>
					</div>
					<!--<label> Block Reason </label>
					<select id="generatePin_BlockReason" name="blockReason"class="form-control">
			            <option value="" selected="selected" >Select the block reason</option>
			            <%_.each(blockReasonListDTO,function(data) { %>
			            	<option value="<%- data.code%>"><%- data.description%></option>
			            <% }); %>

		            </select>
		            <div class="form-group has-error">
						<p class="help-block error-message has-error" style="color:#a94442" id="generatePin_blockReasonErr"></p>
					</div>-->
				</div>

<!-- Active card End -->
				<!--<div id="blockReasonDiv">
					<label> Block Reason </label>
						<select id="cardManage_BlockReason" name="blockReason"class="form-control">
				            <option value="" selected="selected" >Select the block reason</option>
			            </select>
			            <div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="cardManage_blockReasonErr"></p>
						</div>
				</div>-->
				<div class="clearfix"></div>
				<div class="alert alert-info small" role="alert" id="cardManageNotesUIDiv" style="display:none;">
					<small>
						<i class="fa fa-info-circle" aria-hidden="true"></i> <%-$.i18n.t('app.transferss.msg1note')%>
						 <div id="cardManageNotesDiv"></div>
					</small>
				</div>
				<div class="form-group" id="cardmanage_authmodeDiv"></div>
				<div class="form-group" id="tq_termsAndConditions">
						<label class="check-label"  >
							<input type="checkbox" name="transfer" id="termsand" > I agree to <a  id="onTermsandConditions">Terms &amp; Condition</a>
							<span class="checkmark1"></span>
						</label>
						<div class="form-group has-error">
							<p class="help-block error-message has-error" style="color:#a94442" id="tandcErr"></p>
						</div>
				</div>
				<!--<div id="authMode">
					<label><%-$.i18n.t('app.transferss.selectauthmode')%></label>
            		<div class="form-group">
                		<div class="custRadio_pass">
                    		<div class="box">
                        		<div class="radio">
                            		<label>
                                		<input type="radio" name="optionsRadios" id="sms" value="SMS" checked>
                                		<div class="row bg">
                                    		<div class="col-xs-12 p0">
                                        		<span class="menu_icon ico-xs sms"></span>
                                        		<span class="small"><%-$.i18n.t('app.transferss.sms')%></span>
                                    		</div>
                                		</div>
                            		</label>
                        		</div>
                    		</div>
                    		<div class="box">
                        		<div class="radio">
                            		<label>
                                		<input type="radio" name="optionsRadios" id="email" value="EMAIL">
                            			<div class="row bg">
                                			<div class="col-xs-12 p0">
                                    			<span class="menu_icon ico-xs mail"></span>
                                    			<span class="small"><%-$.i18n.t('app.transferss.mail')%></span>
                                			</div>
                            			</div>
                            		</label>
                        		</div>
                    		</div>
                    		<div class="box">
                        		<div class="radio">
                            		<label>
                                		<input type="radio" name="optionsRadios" id="token" value="TOKEN">
                                		<div class="row bg">
                                    		<div class="col-xs-12 p0">
                                        		<span class="menu_icon ico-xs fScan"></span>
                                        		<span class="small"><%-$.i18n.t('app.transferss.token')%></span>
                                    		</div>
                                		</div>
                            		</label>
                        		</div>
                    		</div>
                    		<div class="box">
                        		<div class="radio">
                            		<label>
                                		<input type="radio" name="optionsRadios" id="esign" value="Esign">
                                		<div class="row bg">
                                    		<div class="col-xs-12 p0">
                                        		<span class="menu_icon ico-xs esign"></span>
                                        		<span class="small"><%-$.i18n.t('app.transferss.esign')%></span>
                                    		</div>
                                		</div>
                            		</label>
                        		</div>
                    		</div>
                		</div>
            		</div>
				</div>-->
					
				<div class="row">
	    			<div class="col-xs-6 pr5">
	        			<button type="button" class="btn btn-default btn-block" id="cardmanageBackBtn"><%-$.i18n.t('app.transferss.cancel')%></button>
	    			</div>
	    			<div class="col-xs-6 pl5">
	        			<button id="cardmanageNextBtn" type="button" class="btn btn-primary btn-block"><%-$.i18n.t('app.transferss.next')%></button>
	    			</div>
				</div>
       		</section>
       </div>
   </div>
   <div id="termsAndCondPopup"></div>
</div>
<script src="js/libs/bootstrap/bootstrap-pincode-input.js"></script>
<script>
	$(document).ready(function() {

		
		
		$('#changePin_cardpin').pincodeInput({inputs:3, complete:function(value, e) {  	
		}});

		
		
		$('input').keypress(function(e) {
			var code = (e.keyCode ? e.keyCode : e.which);
			if ( (code==13) || (code==10)) {
				$(this).blur();
				return false;
			}
		});
		$('#forgotPin_cardpin').pincodeInput({inputs:3, complete:function(value, e){  	
        }});
		
		$('input').keypress(function(e) {
			var code = (e.keyCode ? e.keyCode : e.which);
			if ( (code==13) || (code==10)) {
				$(this).blur();
				return false;
			}
		});
		
		$('#generatePin_cardpin').pincodeInput({inputs:3, complete:function(value, e){  	
        }});
		
		$('#changePin_oldpin').pincodeInput({inputs:4, complete:function(value, e){  	
        }});
		
		$('#changePin_newpin').pincodeInput({inputs:4, complete:function(value, e){  	
        }});
		
		$('#changePin_confirmpin').pincodeInput({inputs:4, complete:function(value, e){  	
        }});
		
		$('#generatePin_newpin').pincodeInput({inputs:4, complete:function(value, e){  	
        }});
		
		$('#generatePin_confirmpin').pincodeInput({inputs:4, complete:function(value, e){  	
        }});
		
		$('#forgotPin_newpin').pincodeInput({inputs:4, complete:function(value, e){  	
        }});
		
		$('#forgotPin_confirmpin').pincodeInput({inputs:4, complete:function(value, e){  	
        }});

		$('#cardPinTEMPBlk').pincodeInput({inputs:4, complete:function(value, e){  	
        }});

		$('#cardPinForeignTrans').pincodeInput({inputs:4, complete:function(value, e){  	
        }});

		$('#cardPinTEMPUNBlk').pincodeInput({inputs:4, complete:function(value, e){  	
        }});


		$('#cardPinBkckndREPLC').pincodeInput({inputs:4, complete:function(value, e){  	
        }});

		$('#AcrNcrd_newpin').pincodeInput({inputs:4, complete:function(value, e){  	
        }});
        
        $('#usdPGT_cardPin').pincodeInput({inputs:4, complete:function(value, e){  	
        }});
		
		$('#AcrNcrd_confirmpin').pincodeInput({inputs:4, complete:function(value, e){  	
        }});
		$('#AcrNcrd_cardpin').pincodeInput({inputs:3, complete:function(value, e){  	
        }});
		
		
		$('input').keypress(function(e) {
			var code = (e.keyCode ? e.keyCode : e.which);
			if ( (code==13) || (code==10)) {
				$(this).blur();
				return false;
			}
		});

		DisableCopyPaste();
	});
	$(".cardinputs").keyup(function (e) {
	    if (this.value.length == this.maxLength) {
	    	$(this).parent().next().find('.cardinputs').focus();  
	    } else if((e.which == 8 || e.which == 46) && (this.value == "")) {
	    	$(this).parent().prev().find('.cardinputs').focus();  
	    }
	});

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
		 $.fn.cardpinnumericlength=function() {
			return this.each(function() {
			  var makelength=$(this).attr("maxlength");
			  $(this).on('input ',function(e) { 
			  var allowedTest ="1234567890";					
			  var orignalValue=$(this).val();
			 
			  for(var i=0;i<orignalValue.length;i++) {
				var atchar = orignalValue[i];
				if(allowedTest.indexOf(atchar) != -1) {
					$(this).next('.inputs').focus();
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
			   $(this).on('keyup',function(e) { 
				    if((e.which == 8 || e.which == 46) && (this.value == "")) { 
				$(this).prev('.inputs').focus();
				return false;
			  }
			   });
			});
		 };
	}(jQuery));
	$('.cardpinnumericlengthcontrol').cardpinnumericlength();
	$(".cardpinnumericlengthcontrol").css({'-webkit-text-security': 'disc','-moz-webkit-text-security': 'disc','-moz-text-security': 'disc'});
</script>
<script>
$(function(){
    var todayDate = new Date();
    
    var month = todayDate.getMonth() + 1;
    var day = todayDate.getDate();
    var year = todayDate.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();
    
    var maxDate = year + '-' + month + '-' + day;

    // or instead:
    // var maxDate = todayDate.toISOString().substr(0, 10);

    $('#usdPGT_FromDate').attr('min', maxDate);
    $("#usdPGT_ToDate").attr('min',maxDate);
});
	
</script>
