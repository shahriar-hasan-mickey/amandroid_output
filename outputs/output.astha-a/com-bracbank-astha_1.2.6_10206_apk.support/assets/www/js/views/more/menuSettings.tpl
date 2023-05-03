<script src="js/libs/common/appcommon.js"></script>
<%
var els = new EncryptedLocalStorage('secret');
var isTouchIdAllowed=els.get("touchAllowedForApp");
var iOS = /iPhone|iPod/.test( navigator.userAgent );
%> 

 <a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/preference"><%-$.i18n.t('app.more.preference.preference')%></a></li>
     <li class="active"><%-$.i18n.t('app.more.preference.menuSettings')%></li>
</ol>

<div class="clearfix"></div>
<br/>

<div class="alert alert-info" role="alert">
<small>
	<%-$.i18n.t('app.more.preference.selectmenu')%>	
</small>
</div>

<div id="errorMenuOrder" style="display:none">
     <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.menuSettings.invalidMenuOrder')%></font></p>
</div>
<div id="dateline" class="panel-group" aria-multiselectable="true" role="tablist">

 <table class="table cust_table trans_bg">
                  <tr>
                    <th width="80%"><small><%-$.i18n.t('app.more.menuSettings.services')%></small></th>
                    <th width="10%"><small><%-$.i18n.t('app.more.menuSettings.order')%></small></th>
                    <th width="10%"><small><%-$.i18n.t('app.more.menuSettings.display')%></small></th>
                  </tr>
                  </table>


<!-- =============DateLine Starts ================= -->
<div class="panel panel-default mnuSet">                       

                        <div id="headingOne" class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent="#accordion" data-target="#datelineCont" aria-expanded="false" aria-controls="collapseTwo">
                           <p class="panel-title " >
                              <span class="mnuIco dateline"></span>
                              <%-$.i18n.t('app.menu.dateline')%><span class="glyphicon glyphicon-chevron-right"></span>
                              
                              <label class="checkinput small pull-right active" id="dateLineCheckLabel">
                              <input type="checkbox"  id="dateLineCheck" class="check-hidden">
                              </label>
                              <select class="form-control input-sm pull-right" id="dateLineMenu">
                                 <option value="1">1</option>
                                 <option value="2">2</option>
                                 <option value="3">3</option>
                                 <option value="4">4</option>
                                 <option value="5">5</option>
                                 <option value="6">6</option>
                                 <option value="7">7</option>
                                 <option value="8">8</option>
								 <option value="9">9</option>
                              </select>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                        <div aria-labelledby="headingOne" role="tabpanel" class="panel-collapse collapse collapsePanel" id="datelineCont">
                           <div class="panel-body">
                              <ul class="list-group" id="dateLineSubMenuCheck">
                                 <li class="list-group-item"><%-$.i18n.t('app.dateline.reminders')%> <label class="checkinput small pull-right active" id="remainderSubMenu">
                                    <input type="checkbox" name="dateLineSubMenuCheck"  class="check-hidden">
                                    </label>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
 <!-- =============DateLine Ends ================= -->
 
 <!-- =============Products Starts ================= -->
 <div class="panel panel-default mnuSet">
                        <div class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent="#accordion" data-target="#products" aria-expanded="false" aria-controls="collapseTwo">
                           <p class="panel-title">
                              <span class="mnuIco products"></span>
                              <%-$.i18n.t('app.product.general.title')%><span class="glyphicon glyphicon-chevron-right"></span>
                              
                              <label class="checkinput small pull-right active" id="productCheckLabel">
                              <input type="checkbox"  class="check-hidden">
                              </label>
                              <select class="form-control input-sm pull-right" id="productMenu">
                                 <option value="1">1</option>
                                 <option value="2">2</option>
                                 <option value="3">3</option>
                                 <option value="4">4</option>
                                 <option value="5">5</option>
                                 <option value="6">6</option>
                                 <option value="7">7</option>
                                 <option value="8">8</option>
								 <option value="9">9</option>
                              </select>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                        <div aria-labelledby="headingTwo" role="tabpanel" class="panel-collapse collapse collapsePanel" id="products">
                           <div class="panel-body">
                              <ul class="list-group" id="productSubMenuCheck">
                                 <li class="list-group-item"><%-$.i18n.t('app.notification.notification')%>
                                    <label class="checkinput small pull-right active" id="notificationSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <div class="clearfix"></div>
                                 <li class="list-group-item"><%-$.i18n.t('app.product.general.casaaccounts')%>
                                    <label class="checkinput small pull-right active" id="accountsSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.product.general.investmentaccounts')%>
                                    <label class="checkinput small pull-right active" id="investSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.product.general.creditcard')%>
                                    <label class="checkinput small pull-right active" id="creditSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.product.general.loan')%>
                                    <label class="checkinput small pull-right active" id="financeSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"> <%-$.i18n.t('app.product.general.investment')%> 
                                    <label class="checkinput small pull-right active" id="timeDepositSubMenu">  
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                  <li class="list-group-item"> <%-$.i18n.t('app.product.rplaccounts.readycashacc')%> 
                                    <label class="checkinput small pull-right active" id="rplSubMenu">  
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
<!-- =============Products Ends ================= -->

<!-- =============Transfer Starts ================= --> 
<div class="panel panel-default mnuSet">
                        <div class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent="#accordion" data-target="#transfers" aria-expanded="false" aria-controls="collapseTwo">
                           <p class="panel-title">
                              
                              <span class="mnuIco transfers"></span>
							  <%-$.i18n.t('app.transfer.ownaccount.transfer')%><span class="glyphicon glyphicon-chevron-right"></span>
                             
                              <label class="checkinput small pull-right active" id="transferCheckLabel">
                              <input type="checkbox"  class="check-hidden">
                              </label>
                              <select class="form-control input-sm pull-right" id="transferMenu">
                                 <option value="1">1</option>
                                 <option value="2">2</option>
                                 <option value="3">3</option>
                                 <option value="4">4</option>
                                 <option value="5">5</option>
                                 <option value="6">6</option>
                                 <option value="7">7</option>
                                 <option value="8">8</option>
								 <option value="9">9</option>
                              </select>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                        <div aria-labelledby="headingTwo" role="tabpanel" class="panel-collapse collapse collapsePanel" id="transfers">
                           <div class="panel-body">
                              <ul class="list-group" id="transferSubMenuCheck">
                                 <li class="list-group-item"><%-$.i18n.t('app.transfer.ownaccount.ownaccount')%>
                                    <label class="checkinput small pull-right active" id="ownAccountSubMenu">
                                    <input type="checkbox"  class="check-hidden" id="ownAccountSubMenuCheck">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.transfer.withinshb.withinshb')%>
                                    <label class="checkinput small pull-right active" id="withinSHBSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.transfer.localtransfer.localtransfer')%>	
                                    <label class="checkinput small pull-right active" id="localSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.transfer.internationaltransfer.internationaltransfer')%>
                                    <label class="checkinput small pull-right active" id="internationalSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.transfer.charitytransfer.charitytransfer')%>
                                    <label class="checkinput small pull-right active" id="charitySubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.transfer.general.standinginstructions')%>
                                    <label class="checkinput small pull-right active" id="siSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.transfer.general.managebeneficiary')%>
                                    <label class="checkinput small pull-right active" id="transManageBeneSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.transfer.general.transferhistory')%>
                                    <label class="checkinput small pull-right active" id="transHistorySubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
<!-- =============Transfer Ends ================= -->

<!-- =============SADAD Starts ================= -->  
<div class="panel panel-default mnuSet">
                        <div class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent="#accordion" data-target="#sadad" aria-expanded="false" aria-controls="collapseTwo">
                           <p class="panel-title">
                              <span class="mnuIco sadad"></span>
                              <%-$.i18n.t('app.sadad.general.title')%><span class="glyphicon glyphicon-chevron-right"></span>

                              <label class="checkinput small pull-right active" id="sadadCheckLabel">
                              <input type="checkbox"  class="check-hidden">
                              </label>
                              <select class="form-control input-sm pull-right" id="sadadMenu">
                                  <option value="1">1</option>
                                 <option value="2">2</option>
                                 <option value="3">3</option>
                                 <option value="4">4</option>
                                 <option value="5">5</option>
                                 <option value="6">6</option>
                                 <option value="7">7</option>
                                 <option value="8">8</option>
								 <option value="9">9</option>
                              </select>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                        <div aria-labelledby="headingTwo" role="tabpanel" class="panel-collapse collapse collapsePanel" id="sadad">
                           <div class="panel-body">
                              <ul class="list-group" id="sadadSubMenuCheck">
                                 <li class="list-group-item"><%-$.i18n.t('app.sadad.general.duebillpayment')%>
                                    <label class="checkinput small pull-right active" id="duebillSubMenu"> 
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.sadad.general.billpaymentinquiry')%>
                                    <label class="checkinput small pull-right active" id="billPaySubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.sadad.general.onetimepayment')%>
                                    <label class="checkinput small pull-right active" id="oneTimeSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.sadad.general.managebills')%>
                                    <label class="checkinput small pull-right active" id="manageBillSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>  
<!-- =============SADAD Ends ================= -->   
<!-- =============MOI Starts ================= -->
 		<div class="panel panel-default mnuSet">
			 <div class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent="#accordion" data-target="#moi" aria-expanded="false" aria-controls="collapseTwo">
                   <p class="panel-title">
                      
                        <span class="mnuIco moi">
                        </span> <%-$.i18n.t('app.menu.moi')%><span class="glyphicon glyphicon-chevron-right"></span>

					<label class="checkinput small pull-right active" id="moiCheckLabel">
			        	<input type="checkbox"  class="check-hidden">
					</label>
				 	<select class="form-control input-sm pull-right" id="moiMenu">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
				 		<option value="4">4</option>
				 		<option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
						<option value="9">9</option>
                     </select>
                    </p>
                    <div class="clearfix"></div>
              </div>	
              <!-- ===========moi sub menu ======= -->
			  <div aria-labelledby="headingTwo" role="tabpanel" class="panel-collapse collapse collapsePanel" id="moi">
	                <div class="panel-body">
				    	<ul class="list-group" id="moiSubMenuCheck">
				    		<li class="list-group-item"><%-$.i18n.t('app.moi.general.moipayments')%>
				     			<label class="checkinput small pull-right active" id="moiPaymentsSubMenu">
				    				<input type="checkbox"  class="check-hidden">
			  					</label>
                            </li>      
                            <li class="list-group-item"><%-$.i18n.t('app.moi.general.moirefunds')%>
				     			<label class="checkinput small pull-right active" id="moiRefundsSubMenu">
				    				<input type="checkbox"  class="check-hidden">
			  					</label>
                            </li>                             
                         </ul>
                     </div>
              </div>
              <!-- ===========moi sub menu ======= -->
       </div>
<!-- =============MOI Ends ================= --> 
<!-- =============Credit Card Starts ================= -->   
<div class="panel panel-default mnuSet">
                        <div class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent="#accordion" data-target="#cc" aria-expanded="false" aria-controls="collapseTwo">
                           <p class="panel-title">
                              <span class="mnuIco creditcard"></span>
                              <%-$.i18n.t('app.menu.creditcardlabel')%><span class="glyphicon glyphicon-chevron-right"></span>

                              <label class="checkinput small pull-right active" id="creditCheckLabel">
                              <input type="checkbox"  class="check-hidden">
                              </label>
                              <select class="form-control input-sm pull-right" id="creditCardMenu">
                                 <option value="1">1</option>
                                 <option value="2">2</option>
                                 <option value="3">3</option>
                                 <option value="4">4</option>
                                 <option value="5">5</option>
                                 <option value="6">6</option>
                                 <option value="7">7</option>
                                 <option value="8">8</option>
								 <option value="9">9</option>
								 <option value="10">10</option>
								 <option value="11">11</option>
                              </select>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                        <div aria-labelledby="headingTwo" role="tabpanel" class="panel-collapse collapse collapsePanel" id="cc">
                           <div class="panel-body">
                              <ul class="list-group" id="creditSubMenuCheck">
                              	  <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.vcccdetail')%>
                                    <label class="checkinput small pull-right active" id="virtualcreditDetailSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.creditcarddetails')%>
                                    <label class="checkinput small pull-right active" id="creditDetailSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.outstandingauthorization')%>
                                    <label class="checkinput small pull-right active" id="creditOutStandSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.unbilledstatements')%>
                                    <label class="checkinput small pull-right active" id="creditUnBilledSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.billedstatements')%>
                                    <label class="checkinput small pull-right active" id="creditBilledSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.creditcardpayments')%>
                                    <label class="checkinput small pull-right active" id="creditPaymentsSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.managebeneficiarycreditcard')%>
                                    <label class="checkinput small pull-right active" id="creditManageBeneSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.cashondemandlabel')%>
                                    <label class="checkinput small pull-right active" id="creditCashOnDemandSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.parmanentlimit')%>
                                    <label class="checkinput small pull-right active" id="creditLimitSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.resetcreatenewpin')%>
                                    <label class="checkinput small pull-right active" id="creditResetPinSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.activatecreditcard')%>
                                    <label class="checkinput small pull-right active" id="creditActivateSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.blockcreditcard')%>
                                    <label class="checkinput small pull-right active" id="creditBlockSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
								 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.convertpmtinstall')%>
                                    <label class="checkinput small pull-right active" id="convertpmtinstallSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.templimitincrease')%>
                                    <label class="checkinput small pull-right active" id="temporarylimitSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.creditcard.general.ccusagectrl')%>
                                    <label class="checkinput small pull-right active" id="creditcardusagectrlSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>  
<!-- =============Credit Card Ends ================= -->  


<!-- =============Accounts Starts ================= -->   
<div class="panel panel-default mnuSet">
                        <div class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent="#accordion" data-target="#acc" aria-expanded="false" aria-controls="collapseTwo">
                           <p class="panel-title">
                              <span class="mnuIco accounts"></span>
                              <%-$.i18n.t('app.menu.accounts')%><span class="glyphicon glyphicon-chevron-right"></span>

                              <label class="checkinput small pull-right active" id="accountsCheckLabel">
                              <input type="checkbox"  class="check-hidden">
                              </label>
                              <select class="form-control input-sm pull-right" id="accountsMenu">
                                 <option value="1">1</option>
                                 <option value="2">2</option>
                                 <option value="3">3</option>
                                 <option value="4">4</option>
                                 <option value="5">5</option>
                                 <option value="6">6</option>
                                 <option value="7">7</option>
                                 <option value="8">8</option>
								 <option value="9">9</option>
                              </select>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                        <div aria-labelledby="headingTwo" role="tabpanel" class="panel-collapse collapse collapsePanel" id="acc">
                           <div class="panel-body">
                             <ul class="list-group" id="accountsSubMenuCheck">
                              	<!-- Service Request Sub Menu -->
                              	<li class="list-group-item"><%-$.i18n.t('app.requests.additionalAccount.additionalAccountOpeningMenu')%>
                                    <label class="checkinput small pull-right active" id="applyAdditionAccountSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
								<li class="list-group-item"><%-$.i18n.t('app.requests.debitcardpos.debitpossale')%>
                                    <label class="checkinput small pull-right active" id="debitcardposSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.requests.debitcardusagectrl.debitcardusgctrl')%>
                                    <label class="checkinput small pull-right active" id="debitcardctrlSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>								 
                                 <li class="list-group-item"><%-$.i18n.t('app.requests.landing.chequebookreq')%>
                                    <label class="checkinput small pull-right active" id="checkBookSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.requests.landing.debitcardactivate')%>
                                    <label class="checkinput small pull-right active" id="activateDebitSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.requests.landing.debitcardblock')%>
                                    <label class="checkinput small pull-right active" id="blockDebitSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
								 
                              </ul>
                           </div>
                        </div>
                     </div>  
<!-- =============Account Ends ================= -->  

<!-- =============Tedallal Starts ================= -->
 		<div class="panel panel-default mnuSet">
                 <div class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent="#accordion" data-target="#tedallal" aria-expanded="false" aria-controls="collapseTwo">
             
                   <p class="panel-title">                   
                        <span class="mnuIco tedallal"></span> <%-$.i18n.t('app.menu.tedallalrewards')%><span class="glyphicon glyphicon-chevron-right"></span>
			          </a>
					<label class="checkinput small pull-right active" id="tedallalCheckLabel">
			        	<input type="checkbox"  class="check-hidden">
					</label>
				 	<select class="form-control input-sm pull-right" id="tedallalMenu">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
				 		<option value="4">4</option>
				 		<option value="5">5</option>
                        <option value="6">6</option>
                        <option value="7">7</option>
                        <option value="8">8</option>
						<option value="9">9</option>
                     </select>
                    </p>
                    <div class="clearfix"></div>
              </div>	
               <div aria-labelledby="headingTwo" role="tabpanel" class="panel-collapse collapse collapsePanel" id="tedallal">
	                <div class="panel-body">
				    	<ul class="list-group" id="tedallalSubMenuCheck">
				    		<li class="list-group-item"><%-$.i18n.t('app.tedallalrewards.redemptionofpoints')%>
				     			<label class="checkinput small pull-right active" id="redemOfPointsSubMenu">
				    				<input type="checkbox"  class="check-hidden">
			  					</label>
                            </li>      
                            <li class="list-group-item"><%-$.i18n.t('app.tedallalrewards.enquiryofpoints')%>
				     			<label class="checkinput small pull-right active" id="enquiryOfPointsSubMenu">
				    				<input type="checkbox"  class="check-hidden">
			  					</label>
                            </li>   
                            <li class="list-group-item"><%-$.i18n.t('app.tedallalrewards.stmtofpoints')%>
				     			<label class="checkinput small pull-right active" id="stmtOfPointsSubMenu">
				    				<input type="checkbox"  class="check-hidden">
			  					</label>
                            </li>                          
                         </ul>
                     </div>
       </div>
    </div>
<!-- =============Tedallal Ends ================= --> 
  
<!-- =============More Menu  Starts ================= -->   
<div class="moreMnu">
                     <div class="panel panel-default mnuSet">
                        <div id="headingOne" role="tab" class="panel-heading"> <!-- style="background: none !important;" -->
                           <p class="panel-title ">

                              <span class="mnuIco more"></span>
                              <%-$.i18n.t('app.more.general.title')%><span class="glyphicon glyphicon-chevron-down"></span>

                              <label class="checkinput small pull-right" id="moreCheckLabel">
                              <input type="checkbox"  disabled class="check-hidden">
                              </label>
                             <select class="form-control input-sm pull-right" id="moreMenu">
                                 <option value="1">1</option>
                                 <option value="2">2</option>
                                 <option value="3">3</option>
                                 <option value="4">4</option>
                                 <option value="5">5</option>
                                  <option value="6">6</option>
                                  <option value="7">7</option>
                                 <option value="8">8</option>
								 <option value="9">9</option>
                              </select>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                     </div>
					<!--*********Charts ******* -->
                     <div class="panel panel-default mnuSet">
                        <div id="headingOne" role="tab" class="panel-heading collapsed">
                           <p class="panel-title " name="MoreSubMenuCheck">
                              <a role="button">
                              <span class="mnuIco pfm"></span>
                              <%-$.i18n.t('app.more.general.charts')%>
                              </a>
                              <label class="checkinput small pull-right active" id="chartsSubMenu">
                              <input type="checkbox"  class="check-hidden">
                              </label>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                     </div>
                     <!--*********Service Requests ******* -->
                     <div class="panel panel-default mnuSet">
                        <div class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent="#accordion" data-target="#serReq" aria-expanded="false" aria-controls="collapseTwo">
                           <p class="panel-title" name="MoreSubMenuCheck">

                              <span class="mnuIco serReq"></span>
                              <%-$.i18n.t('app.more.general.servicerequests')%><span class="glyphicon glyphicon-chevron-right"></span>
                              
                              <label class="checkinput small pull-right active" id="requestCheckLabel">
                              <input type="checkbox"  class="check-hidden">
                              </label>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                        <div aria-labelledby="headingTwo" role="tabpanel" class="panel-collapse collapse collapsePanel" id="serReq">
                           <div class="panel-body">
                              <ul class="list-group" id="requestSubMenuCheck">
                              	<!-- Service Request Sub Menu -->
                                 <li class="list-group-item"><%-$.i18n.t('app.requests.landing.applycreditcard')%>
                                    <label class="checkinput small pull-right active" id="applyCreditSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.requests.landing.applypersonalfin')%>
                                    <label class="checkinput small pull-right active" id="applyPersonalSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.requests.landing.applyhomefin')%>
                                    <label class="checkinput small pull-right active" id="applyHomeSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                  <!--<li class="list-group-item"><%-$.i18n.t('app.requests.landing.applyreadycash')%>
                                    <label class="checkinput small pull-right active" id="applyReadyCashSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>-->
                              </ul>
                           </div>
                        </div>
                     </div>
                     <!--*********Tools ******* -->
                     <div class="panel panel-default mnuSet">
                        <div class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent="#accordion" data-target="#tools" aria-expanded="false" aria-controls="collapseTwo">
                           <p class="panel-title" name="MoreSubMenuCheck">
                              
                              <span class="mnuIco tools text-center"></span>
                              <%-$.i18n.t('app.more.general.tools')%> <span class="glyphicon glyphicon-chevron-right"></span>

                              <label class="checkinput small pull-right active" id="toolsCheckLabel">
                              <input type="checkbox"  class="check-hidden">
                              </label>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                        <div aria-labelledby="headingTwo" role="tabpanel" class="panel-collapse collapse collapsePanel" id="tools">
                           <div class="panel-body">
                           <!-- Tools Sub Menu -->
                              <ul class="list-group" id="toolsSubMenuCheck">
                                <!-- <li class="list-group-item"><%-$.i18n.t('app.more.tool.creditfind')%>
                                    <label class="checkinput small pull-right active" id="creditCardFindSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>-->
                                 <li class="list-group-item"><%-$.i18n.t('app.more.tool.fincalc')%>
                                    <label class="checkinput small pull-right active" id="financeCalSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.tool.curconvert')%>
                                    <label class="checkinput small pull-right active" id="currencyConvertSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.tool.gnexrate')%>
                                    <label class="checkinput small pull-right active" id="fxRateSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.tool.tdrates')%>
                                    <label class="checkinput small pull-right active" id="tdRateSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.tool.availlimits')%>
                                    <label class="checkinput small pull-right active" id="availableLimitSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.tool.locate')%>
                                    <label class="checkinput small pull-right active" id="locateSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <!--*********Preference ******* -->
                     <div class="panel panel-default mnuSet">
                        <div class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent="#accordion" data-target="#preference" aria-expanded="false" aria-controls="collapseTwo">
                           <p class="panel-title" name="MoreSubMenuCheck">
                              
                              <span class="mnuIco preference text-center"></span>
                              <%-$.i18n.t('app.more.general.preferences')%> <span class="glyphicon glyphicon-chevron-right"></span>

                              <label class="checkinput small pull-right " id="preferenceCheckLabel">
                              <input type="checkbox"  disabled class="check-hidden">
                              </label>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                        <div aria-labelledby="headingTwo" role="tabpanel" class="panel-collapse collapse collapsePanel" id="preference">
                           <div class="panel-body">
                           <!-- Preference Sub Menu -->
                              <ul class="list-group" id="preferenceSubMenuCheck">
                                 <li class="list-group-item"><%-$.i18n.t('app.more.preference.changepassword')%>
                                    <label class="checkinput small pull-right active" id="changePasswordSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.preference.changempin')%>
                                    <label class="checkinput small pull-right active" id="changeMpinSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <% if(isTouchIdAllowed == "Y" && iOS) { %>
                                 <li class="list-group-item"><%-$.i18n.t('app.touchid.changeTouchID')%>
                                    <label class="checkinput small pull-right active" id="changeEnableTouchIDSubMenu">
                                    <input type="checkbox" disabled class="check-hidden">
                                    </label>
                                 </li>
                                 <% } %>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.preference.changelanguage')%>
                                    <label class="checkinput small pull-right active" id="changeLanguageSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.preference.enableotp')%>
                                    <label class="checkinput small pull-right active" id="enableOtpSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.preference.profileupdation')%>
                                    <label class="checkinput small pull-right active" id="profileUpdateSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.preference.menuSettings')%>
                                    <label class="checkinput small pull-right " id="menuSettingsSubMenu">
                                    <input type="checkbox" disabled class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.preference.changetheme')%>
                                    <label class="checkinput small pull-right " id="themeSettingsSubMenu">
                                    <input type="checkbox" class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.pushNotification.pushNotifyTitle')%>
                                    <label class="checkinput small pull-right " id="pushNotifySubMenu">
                                    <input type="checkbox" class="check-hidden">
                                    </label>
                                 </li>
                                <!--<li class="list-group-item"><%-$.i18n.t('app.more.pushNotification.proximityPushTitle')%>
                                    <label class="checkinput small pull-right " id="proximityPushSubMenu">
                                    <input type="checkbox" class="check-hidden">
                                    </label>
                                 </li>-->
                              </ul>
                           </div>
                        </div>
                     </div>
                        <!--*********Estatement ******* -->
                     <div class="panel panel-default mnuSet">
                      <div id="headingOne" role="tab" class="panel-heading collapsed">
                           <p class="panel-title" name="MoreSubMenuCheck">
                           <a role="button">                              
                              <span class="mnuIco estatement text-center"></span>
                              <%-$.i18n.t('app.more.general.estatement')%> 
                              <label class="checkinput small pull-right " id="estatementCheckLabel">
                              <input type="checkbox"  disabled class="check-hidden">
                              </label>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                     </div>
                      <!--*********IPO ******* -->
                     <div class="panel panel-default mnuSet">
                        <div class="panel-heading collapsed" role="tab" data-toggle="collapse" data-parent="#accordion" data-target="#ipo" aria-expanded="false" aria-controls="collapseTwo">
                           <p class="panel-title" name="MoreSubMenuCheck">
                              
                              <span class="mnuIco ipo text-center"></span>
                              <%-$.i18n.t('app.more.general.ipo')%> <span class="glyphicon glyphicon-chevron-right"></span>

                              <label class="checkinput small pull-right " id="ipoCheckLabel">
                              <input type="checkbox"  disabled class="check-hidden">
                              </label>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                        <div aria-labelledby="headingTwo" role="tabpanel" class="panel-collapse collapse collapsePanel" id="ipo">
                           <div class="panel-body">
                           <!-- Preference Sub Menu -->
                              <ul class="list-group" id="ipoSubMenuCheck">
                                 <li class="list-group-item"><%-$.i18n.t('app.more.investmentipo.iposubscription')%>
                                    <label class="checkinput small pull-right active" id="ipoSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.investmentipo.ipoenquiry')%>
                                    <label class="checkinput small pull-right active" id="ipoEnquirySubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                     <!--*********Message Center ******* -->
                    <!-- 
                    	<div class="panel panel-default mnuSet">
                        <div id="headingTwo" role="tab" class="panel-heading collapsed">
                           <p class="panel-title" name="MoreSubMenuCheck">
                              <a aria-controls="collapseTwo" aria-expanded="false" href="#msgCenter" data-parent="#accordion" data-toggle="collapse" role="button" class="collapsed">
                              <span class="mnuIco msgCenter text-center"></span>
                              <%-$.i18n.t('app.more.general.messagecentre')%>
                              </a>
                              <label class="checkinput small pull-right active" id="messageCheckLabel">
                              <input type="checkbox"  class="check-hidden">
                              </label>
                           </p>
                           <div class="clearfix"></div>
                        </div>
                        <div aria-labelledby="headingTwo" role="tabpanel" class="panel-collapse collapse" id="msgCenter">
                           <div class="panel-body"> -->
                            <!-- Message Center Sub Menu
                     -->
                     <!--    
                     			<ul class="list-group" id="messageSubMenuCheck">
                                 <li class="list-group-item"><%-$.i18n.t('app.more.messagecentre.compose')%>
                                    <label class="checkinput small pull-right active" id="composeMsgSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.messagecentre.inbox')%>
                                    <label class="checkinput small pull-right active" id="inboxSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                                 <li class="list-group-item"><%-$.i18n.t('app.more.messagecentre.sentItems')%>
                                    <label class="checkinput small pull-right active" id="sentMsgSubMenu">
                                    <input type="checkbox"  class="check-hidden">
                                    </label>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div> 
                    -->
                     </div>                                     
             </div>
             
  <a class="btn btn-success btn-block" id="menuSettingsSumbit" ><%-$.i18n.t('app.more.menuSettings.save')%></a>
<a class="btn btn-primary btn-block" href="#/preference"><%-$.i18n.t('app.transfer.localtransfer.cancel')%></a>
<br>

<script>
$(document).ready(function(){
var els = new EncryptedLocalStorage('secret');
var accountHolder=els.get("isAccountHolder");
	//============Menu Orderiong===============//
	var menuOrder=els.get("mainMenuOrder");
	_.each(menuOrder,function(data){
		if(data.mtc_programid == "MTC2090"){		
			$("#dateLineMenu").prop('selectedIndex', (data.menu_order)-1);
		}else if(data.mtc_programid == "MTC3000"){		
			$("#productMenu").prop('selectedIndex', (data.menu_order)-1);
		}else if(data.mtc_programid == "MTC1007"){		
			$("#transferMenu").prop('selectedIndex', (data.menu_order)-1);
		}else if(data.mtc_programid == "MTC1008"){		
			$("#sadadMenu").prop('selectedIndex', (data.menu_order)-1);
		}else if(data.mtc_programid == "MTC1005"){		
			$("#creditCardMenu").prop('selectedIndex', (data.menu_order)-1);
		}else if(data.mtc_programid == "MTC1004" && accountHolder == 'Y'){		
			$("#accountsMenu").prop('selectedIndex', (data.menu_order)-1);
		}else if(data.mtc_programid == "MTC3020"){		
			$("#moreMenu").prop('selectedIndex', (data.menu_order)-1);
		}else if(data.mtc_programid == "MTC2050"){		
			$("#moiMenu").prop('selectedIndex', (data.menu_order)-1);
		}else if(data.mtc_programid == "MTC9000"){		
			$("#tedallalMenu").prop('selectedIndex', (data.menu_order)-1);
		} 
	});
	//=====================Menu Display==================//
	var menuVisibilityList =els.get("menuVisibilityList");

	var MPIN_FLAG=els.get("mpinStatus");
		var menuVisibilityList =els.get("menuVisibilityList");
   if(menuVisibilityList["MTC2090"]){
      (menuVisibilityList["MTC2090"].menu_status == "Y") ? $('#dateLineCheckLabel').addClass("active") :$('#dateLineCheckLabel').removeClass("active");//dateline main menu
   }
   if(menuVisibilityList["MTC2091"]){
            (menuVisibilityList["MTC2091"].menu_status == "Y") ? $('#remainderSubMenu').addClass("active") :$('#remainderSubMenu').removeClass("active");//======dateline sub menu========// //Remainders
         }
         if(menuVisibilityList["MTC3000"]){
       (menuVisibilityList["MTC3000"].menu_status == "Y") ? $('#productCheckLabel').addClass("active") :$('#productCheckLabel').removeClass("active");//Products Main Menu
    }
    if(menuVisibilityList["MTC3001"]){
            (menuVisibilityList["MTC3001"].menu_status == "Y") ? $('#notificationSubMenu').addClass("active") :$('#notificationSubMenu').removeClass("active");//======products sub menu========////notification
         }
         if(menuVisibilityList["MTC3002"]){
            (menuVisibilityList["MTC3002"].menu_status == "Y") ? $('#accountsSubMenu').addClass("active") :$('#accountsSubMenu').removeClass("active");//accounts
         }
         if(menuVisibilityList["MTC3005"]){
            (menuVisibilityList["MTC3005"].menu_status == "Y") ? $('#financeSubMenu').addClass("active") :$('#financeSubMenu').removeClass("active");//finance
         }
         if(menuVisibilityList["MTC3004"]){
            (menuVisibilityList["MTC3004"].menu_status == "Y") ? $('#creditSubMenu').addClass("active") :$('#creditSubMenu').removeClass("active");//credit
         }
         if(menuVisibilityList["MTC3006"]){
            (menuVisibilityList["MTC3006"].menu_status == "Y") ? $('#timeDepositSubMenu').addClass("active") :$('#timeDepositSubMenu').removeClass("active");//loan
         }
         if(menuVisibilityList["MTC3003"]){
            (menuVisibilityList["MTC3003"].menu_status == "Y") ? $('#investSubMenu').addClass("active") :$('#investSubMenu').removeClass("active");//invest
         }
         if(menuVisibilityList["MTC3007"]){
            (menuVisibilityList["MTC3007"].menu_status == "Y") ? $('#rplSubMenu').addClass("active") :$('#rplSubMenu').removeClass("active");//rpl
         }
         if(menuVisibilityList["MTC1007"]){
      (menuVisibilityList["MTC1007"].menu_status == "Y") ? $('#transferCheckLabel').addClass("active") :$('#transferCheckLabel').removeClass("active");//Transfer Main Menu
   }
   if(menuVisibilityList["MTC1018"]){
            (menuVisibilityList["MTC1018"].menu_status == "Y") ? $('#ownAccountSubMenu').addClass("active") :$('#ownAccountSubMenu').removeClass("active");//======products sub menu========////own account
         }
         if(menuVisibilityList["MTC1019"]){
            (menuVisibilityList["MTC1019"].menu_status == "Y") ? $('#withinSHBSubMenu').addClass("active") :$('#withinSHBSubMenu').removeClass("active");//within SHB
         }
         if(menuVisibilityList["MTC1020"]){
            (menuVisibilityList["MTC1020"].menu_status == "Y") ? $('#localSubMenu').addClass("active") :$('#localSubMenu').removeClass("active");//Local
         }
         if(menuVisibilityList["MTC1021"]){
            (menuVisibilityList["MTC1021"].menu_status == "Y") ? $('#internationalSubMenu').addClass("active") :$('#internationalSubMenu').removeClass("active");//international
            }
            if(menuVisibilityList["MTC2060"]){
            (menuVisibilityList["MTC2060"].menu_status == "Y") ? $('#charitySubMenu').addClass("active") :$('#charitySubMenu').removeClass("active");//charity
         }
         if(menuVisibilityList["MTC2061"]){
            (menuVisibilityList["MTC2061"].menu_status == "Y") ? $('#siSubMenu').addClass("active") :$('#siSubMenu').removeClass("active");//si transfer
         }
         if(menuVisibilityList["MTC2063"]){
            (menuVisibilityList["MTC2063"].menu_status == "Y") ? $('#transManageBeneSubMenu').addClass("active") :$('#transManageBeneSubMenu').removeClass("active");//manage bene
         }
         if(menuVisibilityList["MTC2062"]){
            (menuVisibilityList["MTC2062"].menu_status == "Y") ? $('#transHistorySubMenu').addClass("active") :$('#transHistorySubMenu').removeClass("active");//si transfer
         }
         if(menuVisibilityList["MTC1008"]){
      (menuVisibilityList["MTC1008"].menu_status == "Y") ? $('#sadadCheckLabel').addClass("active") :$('#sadadCheckLabel').removeClass("active");//Sadad Main Menu
         }
         if(menuVisibilityList["MTC2001"]){
            (menuVisibilityList["MTC2001"].menu_status == "Y") ? $('#duebillSubMenu').addClass("active") :$('#duebillSubMenu').removeClass("active");//due bill
         }
         if(menuVisibilityList["MTC2000"]){
            (menuVisibilityList["MTC2000"].menu_status == "Y") ? $('#billPaySubMenu').addClass("active") :$('#billPaySubMenu').removeClass("active");//bill bay
         }
         if(menuVisibilityList["MTC1023"]){
             (menuVisibilityList["MTC1023"].menu_status == "Y") ? $('#oneTimeSubMenu').addClass("active") :$('#oneTimeSubMenu').removeClass("active");//One Time
          }
          if(menuVisibilityList["MTC2002"]){
             (menuVisibilityList["MTC2002"].menu_status == "Y") ? $('#manageBillSubMenu').addClass("active") :$('#manageBillSubMenu').removeClass("active");//manageBill
          }
          if(menuVisibilityList["MTC2050"]){
      (menuVisibilityList["MTC2050"].menu_status == "Y") ? $('#moiCheckLabel').addClass("active") :$('#moiCheckLabel').removeClass("active");//MOI Main Menu
   }
   if(menuVisibilityList["MTC1022"]){
             (menuVisibilityList["MTC1022"].menu_status == "Y") ? $('#moiPaymentsSubMenu').addClass("active") :$('#moiPaymentsSubMenu').removeClass("active");//======MOI sub menu========////moiPayments
          }
          if(menuVisibilityList["MTC2051"]){
             (menuVisibilityList["MTC2051"].menu_status == "Y") ? $('#moiRefundsSubMenu').addClass("active") :$('#moiRefundsSubMenu').removeClass("active");//moiRefunds
          }
          if(menuVisibilityList["MTC1005"]){
      (menuVisibilityList["MTC1005"].menu_status == "Y") ? $('#creditCheckLabel').addClass("active") :$('#creditCheckLabel').removeClass("active");//Credit Card Main Menu
   }
   if(menuVisibilityList["MTC1040"]){
             (menuVisibilityList["MTC1040"].menu_status == "Y") ? $('#virtualcreditDetailSubMenu').addClass("active") :$('#virtualcreditDetailSubMenu').removeClass("active");//======Virtual Credit card sub menu========////card detail 
          }
      if(menuVisibilityList["MTC1017"]){
             (menuVisibilityList["MTC1017"].menu_status == "Y") ? $('#creditDetailSubMenu').addClass("active") :$('#creditDetailSubMenu').removeClass("active");//======Credit card sub menu========////card detail 
          }
          if(menuVisibilityList["MTC2070"]){
             (menuVisibilityList["MTC2070"].menu_status == "Y") ? $('#creditOutStandSubMenu').addClass("active") :$('#creditOutStandSubMenu').removeClass("active"); //OutStand 
          }
          if(menuVisibilityList["MTC1016"]){
             (menuVisibilityList["MTC1016"].menu_status == "Y") ? $('#creditUnBilledSubMenu').addClass("active") :$('#creditUnBilledSubMenu').removeClass("active"); //UnBilled
          }
          if(menuVisibilityList["MTC1015"]){
             (menuVisibilityList["MTC1015"].menu_status == "Y") ? $('#creditPaymentsSubMenu').addClass("active") :$('#creditPaymentsSubMenu').removeClass("active"); //ManageBene 
          }
          if(menuVisibilityList["MTC2072"]){
             (menuVisibilityList["MTC2072"].menu_status == "Y") ? $('#creditManageBeneSubMenu').addClass("active") :$('#creditManageBeneSubMenu').removeClass("active");   //billed
          }
          if(menuVisibilityList["MTC2071"]){
             (menuVisibilityList["MTC2071"].menu_status == "Y") ? $('#creditBilledSubMenu').addClass("active") :$('#creditBilledSubMenu').removeClass("active");  //billed
          }
          if(menuVisibilityList["MTC2073"]){
             (menuVisibilityList["MTC2073"].menu_status == "Y") ? $('#creditCashOnDemandSubMenu').addClass("active") :$('#creditCashOnDemandSubMenu').removeClass("active");  //CashOnDemand
          }
            if(menuVisibilityList["MTC2074"]){
             (menuVisibilityList["MTC2074"].menu_status == "Y") ? $('#creditLimitSubMenu').addClass("active") :$('#creditLimitSubMenu').removeClass("active"); //Limit
          }
              if(menuVisibilityList["MTC2075"]){
             (menuVisibilityList["MTC2075"].menu_status == "Y") ? $('#creditResetPinSubMenu').addClass("active") :$('#creditResetPinSubMenu').removeClass("active"); //ResetPin
          }
              if(menuVisibilityList["MTC2075"]){
             (menuVisibilityList["MTC2075"].menu_status == "Y") ? $('#creditActivateSubMenu').addClass("active") :$('#creditActivateSubMenu').removeClass("active"); //Activate  
             } 
              if(menuVisibilityList["MTC2077"]){   
             (menuVisibilityList["MTC2077"].menu_status == "Y") ? $('#creditBlockSubMenu').addClass("active") :$('#creditBlockSubMenu').removeClass("active"); //Block
          }
              if(menuVisibilityList["MTC2022"]){
            (menuVisibilityList["MTC2022"].menu_status == "Y") ? $('#convertpmtinstallSubMenu').addClass("active") :$('#convertpmtinstallSubMenu').removeClass("active");  //Convert
         }
             if(menuVisibilityList["MTC1919"]){
            (menuVisibilityList["MTC1919"].menu_status == "Y") ? $('#temporarylimitSubMenu').addClass("active") :$('#temporarylimitSubMenu').removeClass("active");  //Convert
         }
             if(menuVisibilityList["MTC6016"]){
            (menuVisibilityList["MTC6016"].menu_status == "Y") ? $('#creditcardusagectrlSubMenu').addClass("active") :$('#creditcardusagectrlSubMenu').removeClass("active"); //Convert
         }
             if(menuVisibilityList["MTC1004"]){
      (menuVisibilityList["MTC1004"].menu_status == "Y") ? $('#accountsCheckLabel').addClass("active") :$('#accountsCheckLabel').removeClass("active");//Accounts Main Menu
   }
       if(menuVisibilityList["MTC3023"]){
             (menuVisibilityList["MTC3023"].menu_status == "Y") ? $('#checkBookSubMenu').addClass("active") :$('#checkBookSubMenu').removeClass("active");  //======more sub menu child starts========////CheckBook     
             }    
              if(menuVisibilityList["MTC3027"]){
             (menuVisibilityList["MTC3027"].menu_status == "Y") ? $('#activateDebitSubMenu').addClass("active") :$('#activateDebitSubMenu').removeClass("active");   //Activate Debit  
          }
              if(menuVisibilityList["MTC3028"]){                  
             (menuVisibilityList["MTC3028"].menu_status == "Y") ? $('#blockDebitSubMenu').addClass("active") :$('#blockDebitSubMenu').removeClass("active");   //block debit
          }
              if(menuVisibilityList["MTC2017"]){
            (menuVisibilityList["MTC2017"].menu_status == "Y") ? $('#debitcardposSubMenu').addClass("active") :$('#debitcardposSubMenu').removeClass("active");   //debitcard
         }
          if(menuVisibilityList["MTC6666"]){
            (menuVisibilityList["MTC6666"].menu_status == "Y") ? $('#debitcardctrlSubMenu').addClass("active") :$('#debitcardctrlSubMenu').removeClass("active");   //debitcard
         }
             if(menuVisibilityList["MTC2008"]){
            (menuVisibilityList["MTC2008"].menu_status == "Y") ? $('#applyAdditionAccountSubMenu').addClass("active") :$('#applyAdditionAccountSubMenu').removeClass("active");  //apply additional account
         }
             if(menuVisibilityList["MTC9000"]){
      (menuVisibilityList["MTC9000"].menu_status == "Y") ? $('#tedallalCheckLabel').addClass("active") :$('#tedallalCheckLabel').removeClass("active");  //Tedallal Main Menu
   }
       if(menuVisibilityList["MTC9001"]){
               (menuVisibilityList["MTC9001"].menu_status == "Y") ? $('#redemOfPointsSubMenu').addClass("active") :$('#redemOfPointsSubMenu').removeClass("active");//======redemOfPointsSubMenu=======////card detail 
            }
                if(menuVisibilityList["MTC9002"]){
             (menuVisibilityList["MTC9002"].menu_status == "Y") ? $('#enquiryOfPointsSubMenu').addClass("active") :$('#enquiryOfPointsSubMenu').removeClass("active");  //enquiryOfPointsSubMenu 
          }
              if(menuVisibilityList["MTC9003"]){
             (menuVisibilityList["MTC9003"].menu_status == "Y") ? $('#stmtOfPointsSubMenu').addClass("active") :$('#stmtOfPointsSubMenu').removeClass("active");  //stmtOfPointsSubMenu
          }
              if(menuVisibilityList["MTC3020"]){
       (menuVisibilityList["MTC3020"].menu_status == "Y") ? $('#moreCheckLabel').addClass("active") :$('#moreCheckLabel').removeClass("active");   //More Main Menu
    }
        if(menuVisibilityList["MTC3021"]){
                (menuVisibilityList["MTC3021"].menu_status == "Y") ? $('#chartsSubMenu').addClass("active") :$('#chartsSubMenu').removeClass("active");  //======more sub menu starts========////Charts
             }
             if(menuVisibilityList["MTC3022"]){
              (menuVisibilityList["MTC3022"].menu_status == "Y") ? $('#requestCheckLabel').addClass("active") :$('#requestCheckLabel').removeClass("active");  //Service Requestore sub menu child starts========////CheckBook
               }
        if(menuVisibilityList["MTC3024"]){
                     (menuVisibilityList["MTC3024"].menu_status == "Y") ? $('#applyCreditSubMenu').addClass("active") :$('#applyCreditSubMenu').removeClass("active");  //ApplyCredit
                      }
        if(menuVisibilityList["MTC3025"]){
                     (menuVisibilityList["MTC3025"].menu_status == "Y") ? $('#applyPersonalSubMenu').addClass("active") :$('#applyPersonalSubMenu').removeClass("active"); //ApplyPersonal
                      }
        if(menuVisibilityList["MTC3026"]){
                     (menuVisibilityList["MTC3026"].menu_status == "Y") ? $('#applyHomeSubMenu').addClass("active") :$('#applyHomeSubMenu').removeClass("active");   //Apply Home
                      }
        if(menuVisibilityList["MTC3029"]){
                     (menuVisibilityList["MTC3029"].menu_status == "Y") ? $('#applyReadyCashSubMenu').addClass("active") :$('#applyReadyCashSubMenu').removeClass("active");  //Ready Cash request   
                      }
        if(menuVisibilityList["MTC3080"]){                  
         (menuVisibilityList["MTC3080"].menu_status == "Y") ? $('#toolsCheckLabel').addClass("active") :$('#toolsCheckLabel').removeClass("active");  //Tools
          }
            //(menuVisibilityList["MTC3081"].menu_status == "Y") ? $('#creditCardFindSubMenu').addClass("active") :$('#creditCardFindSubMenu').removeClass("active");   //Tools sub menu starts//credit Card Find
        if(menuVisibilityList["MTC3082"]){
                      (menuVisibilityList["MTC3082"].menu_status == "Y") ?  $('#financeCalSubMenu').addClass("active") :$('#financeCalSubMenu').removeClass("active");  //Finance Cal
                    }
        if(menuVisibilityList["MTC3083"]){ 
                      (menuVisibilityList["MTC3083"].menu_status == "Y") ?  $('#currencyConvertSubMenu').addClass("active") :$('#currencyConvertSubMenu').removeClass("active"); // currency convert
                       }
        if(menuVisibilityList["MTC3084"]){ 
                      (menuVisibilityList["MTC3084"].menu_status == "Y") ?  $('#fxRateSubMenu').addClass("active") :$('#fxRateSubMenu').removeClass("active"); //fx Rate
                       }
        if(menuVisibilityList["MTC3085"]){ 
                      (menuVisibilityList["MTC3085"].menu_status == "Y") ?  $('#tdRateSubMenu').addClass("active") :$('#tdRateSubMenu').removeClass("active"); //td Rate
                       }
        if(menuVisibilityList["MTC3086"]){ 
                      (menuVisibilityList["MTC3086"].menu_status == "Y") ?  $('#availableLimitSubMenu').addClass("active") :$('#availableLimitSubMenu').removeClass("active");   //available Limit
                       }
        if(menuVisibilityList["MTC3087"]){ 
                      (menuVisibilityList["MTC3087"].menu_status == "Y") ?  $('#locateSubMenu').addClass("active") :$('#locateSubMenu').removeClass("active");    //locate us
                       }
        if(menuVisibilityList["MTC3040"]){ 
              (menuVisibilityList["MTC3040"].menu_status == "Y") ?  $('#preferenceCheckLabel').addClass("active") :$('#preferenceCheckLabel').removeClass("active");    //Preference 
               }
        if(menuVisibilityList["MTC3041"]){ 
                     (menuVisibilityList["MTC3041"].menu_status == "Y") ?  $('#changePasswordSubMenu').addClass("active") :$('#changePasswordSubMenu').removeClass("active");//Preference sub menu starts//Change Password
                      }
        if(menuVisibilityList["MTC3042"]){ 
                      (menuVisibilityList["MTC3042"].menu_status == "Y") ?  $('#changeMpinSubMenu').addClass("active") :$('#changeMpinSubMenu').removeClass("active");  //Change Mpin
                       }
        if(menuVisibilityList["MTC3043"]){ 
                      (menuVisibilityList["MTC3043"].menu_status == "Y") ?  $('#changeLanguageSubMenu').addClass("active") :$('#changeLanguageSubMenu').removeClass("active");   //Change Language
                       }
        if(menuVisibilityList["MTC3044"]){ 
                      (menuVisibilityList["MTC3044"].menu_status == "Y") ?  $('#enableOtpSubMenu').addClass("active") :$('#enableOtpSubMenu').removeClass("active"); //Enable Otp
                       }
        if(menuVisibilityList["MTC3045"]){ 
                      (menuVisibilityList["MTC3045"].menu_status == "Y") ?  $('#profileUpdateSubMenu').addClass("active") :$('#profileUpdateSubMenu').removeClass("active");  //Profile Update
                       }
        if(menuVisibilityList["MTC3046"]){ 
                      (menuVisibilityList["MTC3046"].menu_status == "Y") ?  $('#menuSettingsSubMenu').addClass("active") :$('#menuSettingsSubMenu').removeClass("active"); //Menu Settings
                       }
        if(menuVisibilityList["MTC3047"]){ 
                      (menuVisibilityList["MTC3047"].menu_status == "Y") ?  $('#themeSettingsSubMenu').addClass("active") :$('#themeSettingsSubMenu').removeClass("active");  //Theme Settings
                       }
        if(menuVisibilityList["MTC3048"]){ 
                      (menuVisibilityList["MTC3048"].menu_status == "Y") ?  $('#pushNotifySubMenu').addClass("active") :$('#pushNotifySubMenu').removeClass("active");  //Push Notify 
                       }
        if(menuVisibilityList["MTC3049"]){ 
                      (menuVisibilityList["MTC3049"].menu_status == "Y") ?  $('#proximityPushSubMenu').addClass("active") :$('#proximityPushSubMenu').removeClass("active");  //Proximity Push Notify 
                       }
        if(menuVisibilityList["MTC9020"]){ 
             (menuVisibilityList["MTC9020"].menu_status == "Y") ?  $('#ipoCheckLabel').addClass("active") :$('#ipoCheckLabel').removeClass("active"); //ipo main menu   
              }
        if(menuVisibilityList["MTC9021"]){    
                      (menuVisibilityList["MTC9021"].menu_status == "Y") ?  $('#ipoSubMenu').addClass("active") :$('#ipoSubMenu').removeClass("active"); //iposubscription
                       }
        if(menuVisibilityList["MTC9022"]){ 
                      (menuVisibilityList["MTC9022"].menu_status == "Y") ?  $('#ipoEnquirySubMenu').addClass("active") :$('#ipoEnquirySubMenu').removeClass("active");  //ipo enquiry
                       }
        if(menuVisibilityList["MTC9010"]){ 
                      
             (menuVisibilityList["MTC9010"].menu_status == "Y") ?  $('#estatementCheckLabel').addClass("active") :$('#estatementCheckLabel').removeClass("active");  //estatement main menu  
              }
        if(menuVisibilityList["MTC9011"]){       
                      (menuVisibilityList["MTC9011"].menu_status == "Y") ?  $('#estatementSubMenu').addClass("active") :$('#estatementSubMenu').removeClass("active");  //estatement subscription
                       }
        if(menuVisibilityList["MTC9012"]){ 
                      (menuVisibilityList["MTC9012"].menu_status == "Y") ?  $('#estatemenySummarySubMenu').addClass("active") :$('#estatemenySummarySubMenu').removeClass("active");   //estatement summary
                       }
                      
             /* (menuVisibilityList["MTC3060"].menu_status == "Y") ?  $('#messageCheckLabel').addClass("active") :$('#messageCheckLabel').removeClass("active");  //moreMessage
                     (menuVisibilityList["MTC3061"].menu_status == "Y") ?  $('#composeMsgSubMenu').addClass("active") :$('#composeMsgSubMenu').removeClass("active");   //Message Center sub menu starts//compose message
                      (menuVisibilityList["MTC3062"].menu_status == "Y") ?  $('#inboxSubMenu').addClass("active") :$('#inboxSubMenu').removeClass("active");   //Inbox
                      (menuVisibilityList["MTC3063"].menu_status == "Y") ?  $('#sentMsgSubMenu').addClass("active") :$('#sentMsgSubMenu').removeClass("active");  //Sent items*/
      
      //=====================Disable Admin Blocked Menu Items==================//
      //==========================All Main Menu=========================//
      //dateLine
        if(menuVisibilityList["MTC2090"]){ 
      (menuVisibilityList["MTC2090"].menu_status_at_admin == "N") ?  $('#dateLineMenu').attr("disabled","true") :$('#dateLineMenu').removeAttr("disabled"); //drop down
       }
        if(menuVisibilityList["MTC2090"]){ 
      
      (menuVisibilityList["MTC2090"].menu_status_at_admin == "N") ?  $('#dateLineCheckLabel input').attr("disabled","true") :$('#dateLineCheckLabel input').removeAttr("disabled"); //check box
      //products
       }
        if(menuVisibilityList["MTC3000"]){ 
      (menuVisibilityList["MTC3000"].menu_status_at_admin == "N") ?  $('#productMenu').attr("disabled","true") :$('#productMenu').removeAttr("disabled");   //drop down
       }
        if(menuVisibilityList["MTC3000"]){ 
      (menuVisibilityList["MTC3000"].menu_status_at_admin == "N") ?  $('#productCheckLabel input').attr("disabled","true") :$('#productCheckLabel input').removeAttr("disabled");   //check box
       }
        if(menuVisibilityList["MTC1007"]){ 
      //transfer
      (menuVisibilityList["MTC1007"].menu_status_at_admin == "N") ?  $('#transferMenu').attr("disabled","true") :$('#transferMenu').removeAttr("disabled"); //Sent items
       }
        if(menuVisibilityList["MTC1007"]){ 
      (menuVisibilityList["MTC1007"].menu_status_at_admin == "N") ?  $('#transferCheckLabel input').attr("disabled","true") :$('#transferCheckLabel input').removeAttr("disabled"); //Sent items
       }
        if(menuVisibilityList["MTC1008"]){ 
      //sadad
      (menuVisibilityList["MTC1008"].menu_status_at_admin == "N") ?  $('#sadadMenu').attr("disabled","true") :$('#sadadMenu').removeAttr("disabled"); //drop down
       }
        if(menuVisibilityList["MTC1008"]){ 
      (menuVisibilityList["MTC1008"].menu_status_at_admin == "N") ?  $('#sadadCheckLabel input').attr("disabled","true") :$('#sadadCheckLabel input').removeAttr("disabled"); //check box
       }
        if(menuVisibilityList["MTC2050"]){ 
      //moi
      (menuVisibilityList["MTC2050"].menu_status_at_admin == "N") ?  $('#moiMenu').attr("disabled","true") :$('#moiMenu').removeAttr("disabled");  //drop down
       }
        if(menuVisibilityList["MTC2050"]){ 
      (menuVisibilityList["MTC2050"].menu_status_at_admin == "N") ?  $('#moiCheckLabel input').attr("disabled","true") :$('#moiCheckLabel input').removeAttr("disabled");  //check box
       }
        if(menuVisibilityList["MTC1005"]){ 
      //credit card menu
      (menuVisibilityList["MTC1005"].menu_status_at_admin == "N") ?  $('#creditCardMenu').attr("disabled","true") :$('#creditCardMenu').removeAttr("disabled");   //drop down
       }
        if(menuVisibilityList["MTC1005"]){ 
      (menuVisibilityList["MTC1005"].menu_status_at_admin == "N") ?  $('#creditCheckLabel input').attr("disabled","true") :$('#creditCheckLabel input').removeAttr("disabled");  //check box 
       }
        if(menuVisibilityList["MTC1004"]){                   
      //accounts menu
      (menuVisibilityList["MTC1004"].menu_status_at_admin == "N") ?  $('#accountsMenu').attr("disabled","true") :$('#accountsMenu').removeAttr("disabled"); //drop down
       }
        if(menuVisibilityList["MTC1004"]){ 
      (menuVisibilityList["MTC1004"].menu_status_at_admin == "N") ?  $('#accountsCheckLabel input').attr("disabled","true") :$('#accountsCheckLabel input').removeAttr("disabled"); //check box 
       }
        if(menuVisibilityList["MTC9000"]){                   
      //tedallal
      (menuVisibilityList["MTC9000"].menu_status_at_admin == "N") ?  $('#tedallalMenu').attr("disabled","true") :$('#tedallalMenu').removeAttr("disabled"); //drop down
   }
        if(menuVisibilityList["MTC9000"]){      
      (menuVisibilityList["MTC9000"].menu_status_at_admin == "N") ?  $('#tedallalCheckLabel input').attr("disabled","true") :$('#tedallalCheckLabel input').removeAttr("disabled"); //check box
      }
           
      //more 
      //(menuVisibilityList["MTC3020"].menu_status_at_admin == "N") ?  $('#moreMenu').attr("disabled","true") :$('#moreMenu').removeAttr("disabled"); //drop down
      //(menuVisibilityList["MTC3020"].menu_status_at_admin == "N") ?  $('#moreCheckLabel input').attr("disabled","true") :$('#moreCheckLabel input').removeAttr("disabled"); //check box
      //==========================All SubMenu=========================//
      //dateline sub menu
        if(menuVisibilityList["MTC2091"]){      
      (menuVisibilityList["MTC2091"].menu_status_at_admin == "N") ?  $('#remainderSubMenu input').attr("disabled","true") :$('#remainderSubMenu input').removeAttr("disabled");  //checkbox down
      }
        if(menuVisibilityList["MTC2091"]){      
      (menuVisibilityList["MTC2091"].menu_status_at_admin == "N") ?  $('#remainderSubMenu').addClass("adminDisabled") :$('#remainderSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3001"]){      
      //products sub menu
      (menuVisibilityList["MTC3001"].menu_status_at_admin == "N") ?  $('#notificationSubMenu input').attr("disabled","true") :$('#notificationSubMenu input').removeAttr("disabled");  //checkbox down
      }
        if(menuVisibilityList["MTC3001"]){ 

      (menuVisibilityList["MTC3001"].menu_status_at_admin == "N") ?  $('#notificationSubMenu').addClass("adminDisabled") :$('#notificationSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3002"]){ 
      (menuVisibilityList["MTC3002"].menu_status_at_admin == "N") ?  $('#accountsSubMenu input').attr("disabled","true") :$('#accountsSubMenu input').removeAttr("disabled"); //checkbox down
      }
        if(menuVisibilityList["MTC3002"]){ 
      (menuVisibilityList["MTC3002"].menu_status_at_admin == "N") ?  $('#accountsSubMenu').addClass("adminDisabled") :$('#accountsSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3005"]){ 
      (menuVisibilityList["MTC3005"].menu_status_at_admin == "N") ?  $('#financeSubMenu input').attr("disabled","true") :$('#financeSubMenu input').removeAttr("disabled");   //checkbox down
      }
        if(menuVisibilityList["MTC3005"]){ 
      (menuVisibilityList["MTC3005"].menu_status_at_admin == "N") ?  $('#financeSubMenu').addClass("adminDisabled") :$('#financeSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3004"]){ 
      (menuVisibilityList["MTC3004"].menu_status_at_admin == "N") ?  $('#creditSubMenu input').attr("disabled","true") :$('#creditSubMenu input').removeAttr("disabled");  //checkbox down
      }
        if(menuVisibilityList["MTC3004"]){ 
      (menuVisibilityList["MTC3004"].menu_status_at_admin == "N") ?  $('#creditSubMenu').addClass("adminDisabled") :$('#creditSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3006"]){ 
      (menuVisibilityList["MTC3006"].menu_status_at_admin == "N") ?  $('#timeDepositSubMenu input').attr("disabled","true") :$('#timeDepositSubMenu input').removeAttr("disabled"); //checkbox down
      }
        if(menuVisibilityList["MTC3006"]){ 
      (menuVisibilityList["MTC3006"].menu_status_at_admin == "N") ?  $('#timeDepositSubMenu').addClass("adminDisabled") :$('#timeDepositSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3003"]){ 
      (menuVisibilityList["MTC3003"].menu_status_at_admin == "N") ?  $('#investSubMenu input').attr("disabled","true") :$('#investSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC3003"]){ 
      (menuVisibilityList["MTC3003"].menu_status_at_admin == "N") ?  $('#investSubMenu').addClass("adminDisabled") :$('#investSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC1018"]){ 
      //transfer sub menu
      (menuVisibilityList["MTC1018"].menu_status_at_admin == "N") ?  $('#ownAccountSubMenu input').attr("disabled","true") :$('#ownAccountSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC1018"]){ 
      (menuVisibilityList["MTC1018"].menu_status_at_admin == "N") ?  $('#ownAccountSubMenu').addClass("adminDisabled") :$('#ownAccountSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC1019"]){ 
      (menuVisibilityList["MTC1019"].menu_status_at_admin == "N") ?  $('#withinSHBSubMenu input').attr("disabled","true") :$('#withinSHBSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC1019"]){ 
      (menuVisibilityList["MTC1019"].menu_status_at_admin == "N") ?  $('#withinSHBSubMenu').addClass("adminDisabled") :$('#withinSHBSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC1020"]){ 
      (menuVisibilityList["MTC1020"].menu_status_at_admin == "N") ?  $('#localSubMenu input').attr("disabled","true") :$('#localSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC1020"]){ 
      (menuVisibilityList["MTC1020"].menu_status_at_admin == "N") ?  $('#localSubMenu').addClass("adminDisabled") :$('#localSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC1021"]){ 
      (menuVisibilityList["MTC1021"].menu_status_at_admin == "N") ?  $('#internationalSubMenu input').attr("disabled","true") :$('#internationalSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC1021"]){ 
      (menuVisibilityList["MTC1021"].menu_status_at_admin == "N") ?  $('#internationalSubMenu').addClass("adminDisabled") :$('#internationalSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2060"]){ 
      (menuVisibilityList["MTC2060"].menu_status_at_admin == "N") ?  $('#charitySubMenu input').attr("disabled","true") :$('#charitySubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2060"]){ 
      (menuVisibilityList["MTC2060"].menu_status_at_admin == "N") ?  $('#charitySubMenu').addClass("adminDisabled") :$('#charitySubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2061"]){ 
      (menuVisibilityList["MTC2061"].menu_status_at_admin == "N") ?  $('#siSubMenu input').attr("disabled","true") :$('#siSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2061"]){ 
      (menuVisibilityList["MTC2061"].menu_status_at_admin == "N") ?  $('#siSubMenu').addClass("adminDisabled") :$('#siSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2063"]){ 
      (menuVisibilityList["MTC2063"].menu_status_at_admin == "N") ?  $('#transManageBeneSubMenu input').attr("disabled","true") :$('#transManageBeneSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2063"]){ 
      (menuVisibilityList["MTC2063"].menu_status_at_admin == "N") ?  $('#transManageBeneSubMenu').addClass("adminDisabled") :$('#transManageBeneSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2062"]){ 
      (menuVisibilityList["MTC2062"].menu_status_at_admin == "N") ?  $('#transHistorySubMenu input').attr("disabled","true") :$('#transHistorySubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2062"]){ 
      (menuVisibilityList["MTC2062"].menu_status_at_admin == "N") ?  $('#transHistorySubMenu').addClass("adminDisabled") :$('#transHistorySubMenu').removeClass("adminDisabled");
   }
		//sadad sub menu
       if(menuVisibilityList["MTC2001"]){ 
      (menuVisibilityList["MTC2001"].menu_status_at_admin == "N") ?  $('#duebillSubMenu input').attr("disabled","true") :$('#duebillSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2001"]){ 
      (menuVisibilityList["MTC2001"].menu_status_at_admin == "N") ?  $('#duebillSubMenu').addClass("adminDisabled") :$('#duebillSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2000"]){ 
      (menuVisibilityList["MTC2000"].menu_status_at_admin == "N") ?  $('#billPaySubMenu input').attr("disabled","true") :$('#billPaySubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2000"]){ 
      (menuVisibilityList["MTC2000"].menu_status_at_admin == "N") ?  $('#billPaySubMenu').addClass("adminDisabled") :$('#billPaySubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC1023"]){ 
      (menuVisibilityList["MTC1023"].menu_status_at_admin == "N") ?  $('#oneTimeSubMenu input').attr("disabled","true") :$('#oneTimeSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC1023"]){ 
      (menuVisibilityList["MTC1023"].menu_status_at_admin == "N") ?  $('#oneTimeSubMenu').addClass("adminDisabled") :$('#oneTimeSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2002"]){ 
      (menuVisibilityList["MTC2002"].menu_status_at_admin == "N") ?  $('#manageBillSubMenu input').attr("disabled","true") :$('#manageBillSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2002"]){ 
      (menuVisibilityList["MTC2002"].menu_status_at_admin == "N") ?  $('#manageBillSubMenu').addClass("adminDisabled") :$('#manageBillSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC1022"]){ 
      //moi sub menu
      (menuVisibilityList["MTC1022"].menu_status_at_admin == "N") ?  $('#moiPaymentsSubMenu input').attr("disabled","true") :$('#moiPaymentsSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC1022"]){ 
      (menuVisibilityList["MTC1022"].menu_status_at_admin == "N") ?  $('#moiPaymentsSubMenu').addClass("adminDisabled") :$('#moiPaymentsSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2051"]){ 
      (menuVisibilityList["MTC2051"].menu_status_at_admin == "N") ?  $('#moiRefundsSubMenu input').attr("disabled","true") :$('#moiRefundsSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2051"]){ 
      (menuVisibilityList["MTC2051"].menu_status_at_admin == "N") ?  $('#moiRefundsSubMenu').addClass("adminDisabled") :$('#moiRefundsSubMenu').removeClass("adminDisabled");
      }
      if(menuVisibilityList["MTC1040"]){ 
      //credit card sub menu
      (menuVisibilityList["MTC1040"].menu_status_at_admin == "N") ?  $('#virtualcreditDetailSubMenu input').attr("disabled","true") :$('#virtualcreditDetailSubMenu input').removeAttr("disabled");
      }
      if(menuVisibilityList["MTC1040"]){ 
      (menuVisibilityList["MTC1040"].menu_status_at_admin == "N") ?  $('#virtualcreditDetailSubMenu').addClass("adminDisabled") :$('#virtualcreditDetailSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC1017"]){ 
      //credit card sub menu
      (menuVisibilityList["MTC1017"].menu_status_at_admin == "N") ?  $('#creditDetailSubMenu input').attr("disabled","true") :$('#creditDetailSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC1017"]){ 
      (menuVisibilityList["MTC1017"].menu_status_at_admin == "N") ?  $('#creditDetailSubMenu').addClass("adminDisabled") :$('#creditDetailSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2070"]){ 
      (menuVisibilityList["MTC2070"].menu_status_at_admin == "N") ?  $('#creditOutStandSubMenu input').attr("disabled","true") :$('#creditOutStandSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2070"]){ 
      (menuVisibilityList["MTC2070"].menu_status_at_admin == "N") ?  $('#creditOutStandSubMenu').addClass("adminDisabled") :$('#creditOutStandSubMenu').removeClass("adminDisabled"); 
      }
        if(menuVisibilityList["MTC1016"]){ 
      (menuVisibilityList["MTC1016"].menu_status_at_admin == "N") ?  $('#creditUnBilledSubMenu input').attr("disabled","true") :$('#creditUnBilledSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC1016"]){ 
      (menuVisibilityList["MTC1016"].menu_status_at_admin == "N") ?  $('#creditUnBilledSubMenu').addClass("adminDisabled") :$('#creditUnBilledSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2071"]){ 
      (menuVisibilityList["MTC2071"].menu_status_at_admin == "N") ?  $('#creditBilledSubMenu input').attr("disabled","true") :$('#creditBilledSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2071"]){ 
      (menuVisibilityList["MTC2071"].menu_status_at_admin == "N") ?  $('#creditBilledSubMenu').addClass("adminDisabled") :$('#creditBilledSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC1015"]){ 
      (menuVisibilityList["MTC1015"].menu_status_at_admin == "N") ?  $('#creditPaymentsSubMenu input').attr("disabled","true") :$('#creditPaymentsSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC1015"]){ 
      (menuVisibilityList["MTC1015"].menu_status_at_admin == "N") ?  $('#creditPaymentsSubMenu').addClass("adminDisabled") :$('#creditPaymentsSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2072"]){ 
      (menuVisibilityList["MTC2072"].menu_status_at_admin == "N") ?  $('#creditManageBeneSubMenu input').attr("disabled","true") :$('#creditManageBeneSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2072"]){ 
      (menuVisibilityList["MTC2072"].menu_status_at_admin == "N") ?  $('#creditManageBeneSubMenu').addClass("adminDisabled") :$('#creditManageBeneSubMenu').removeClass("adminDisabled"); 
      }
        if(menuVisibilityList["MTC2073"]){  
      (menuVisibilityList["MTC2073"].menu_status_at_admin == "N") ?  $('#creditCashOnDemandSubMenu input').attr("disabled","true") :$('#creditCashOnDemandSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2073"]){ 
      (menuVisibilityList["MTC2073"].menu_status_at_admin == "N") ?  $('#creditCashOnDemandSubMenu').addClass("adminDisabled") :$('#creditCashOnDemandSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2074"]){ 
      (menuVisibilityList["MTC2074"].menu_status_at_admin == "N") ?  $('#creditLimitSubMenu input').attr("disabled","true") :$('#creditLimitSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2074"]){ 
      (menuVisibilityList["MTC2074"].menu_status_at_admin == "N") ?  $('#creditLimitSubMenu').addClass("adminDisabled") :$('#creditLimitSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2075"]){ 
      (menuVisibilityList["MTC2075"].menu_status_at_admin == "N") ?  $('#creditResetPinSubMenu input').attr("disabled","true") :$('#creditResetPinSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2075"]){ 
      (menuVisibilityList["MTC2075"].menu_status_at_admin == "N") ?  $('#creditResetPinSubMenu').addClass("adminDisabled") :$('#creditResetPinSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2076"]){ 
      (menuVisibilityList["MTC2076"].menu_status_at_admin == "N") ?  $('#creditActivateSubMenu input').attr("disabled","true") :$('#creditActivateSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2076"]){ 
      (menuVisibilityList["MTC2076"].menu_status_at_admin == "N") ?  $('#creditActivateSubMenu').addClass("adminDisabled") :$('#creditActivateSubMenu').removeClass("adminDisabled"); 
      }
        if(menuVisibilityList["MTC2077"]){                  
      (menuVisibilityList["MTC2077"].menu_status_at_admin == "N") ?  $('#creditBlockSubMenu input').attr("disabled","true") :$('#creditBlockSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2077"]){ 
      (menuVisibilityList["MTC2077"].menu_status_at_admin == "N") ?  $('#creditBlockSubMenu').addClass("adminDisabled") :$('#creditBlockSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2022"]){ 
      (menuVisibilityList["MTC2022"].menu_status_at_admin == "N") ?  $('#convertpmtinstallSubMenu input').attr("disabled","true") :$('#convertpmtinstallSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2022"]){ 
      (menuVisibilityList["MTC2022"].menu_status_at_admin == "N") ?  $('#convertpmtinstallSubMenu').addClass("adminDisabled") :$('#convertpmtinstallSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC1919"]){ 
      (menuVisibilityList["MTC1919"].menu_status_at_admin == "N") ?  $('#temporarylimitSubMenu input').attr("disabled","true") :$('#temporarylimitSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC1919"]){ 
      (menuVisibilityList["MTC1919"].menu_status_at_admin == "N") ?  $('#temporarylimitSubMenu').addClass("adminDisabled") :$('#temporarylimitSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC6016"]){ 
      (menuVisibilityList["MTC6016"].menu_status_at_admin == "N") ?  $('#creditcardusagectrlSubMenu input').attr("disabled","true") :$('#creditcardusagectrlSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC6016"]){ 
      (menuVisibilityList["MTC6016"].menu_status_at_admin == "N") ?  $('#creditcardusagectrlSubMenu').addClass("adminDisabled") :$('#creditcardusagectrlSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3023"]){ 
      //Accounts sub menu
      (menuVisibilityList["MTC3023"].menu_status_at_admin == "N") ?  $('#checkBookSubMenu input').attr("disabled","true") :$('#checkBookSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC3023"]){ 
      (menuVisibilityList["MTC3023"].menu_status_at_admin == "N") ?  $('#checkBookSubMenu').addClass("adminDisabled") :$('#checkBookSubMenu').removeClass("adminDisabled");   
      }
        if(menuVisibilityList["MTC3027"]){   
      (menuVisibilityList["MTC3027"].menu_status_at_admin == "N") ?  $('#activateDebitSubMenu input').attr("disabled","true") :$('#activateDebitSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC3027"]){ 
      (menuVisibilityList["MTC3027"].menu_status_at_admin == "N") ?  $('#activateDebitSubMenu').addClass("adminDisabled") :$('#activateDebitSubMenu').removeClass("adminDisabled");    
      }
        if(menuVisibilityList["MTC3028"]){      
      (menuVisibilityList["MTC3028"].menu_status_at_admin == "N") ?  $('#blockDebitSubMenu input').attr("disabled","true") :$('#blockDebitSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC3028"]){ 
      (menuVisibilityList["MTC3028"].menu_status_at_admin == "N") ?  $('#blockDebitSubMenu').addClass("adminDisabled") :$('#blockDebitSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC2017"]){ 
      (menuVisibilityList["MTC2017"].menu_status_at_admin == "N") ?  $('#debitcardposSubMenu input').attr("disabled","true") :$('#debitcardposSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2017"]){ 
      (menuVisibilityList["MTC2017"].menu_status_at_admin == "N") ?  $('#debitcardposSubMenu').addClass("adminDisabled") :$('#debitcardposSubMenu').removeClass("adminDisabled");
      }
      
      if(menuVisibilityList["MTC6666"]){ 
      (menuVisibilityList["MTC6666"].menu_status_at_admin == "N") ?  $('#debitcardctrlSubMenu input').attr("disabled","true") :$('#debitcardctrlSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC6666"]){ 
      (menuVisibilityList["MTC6666"].menu_status_at_admin == "N") ?  $('#debitcardctrlSubMenu').addClass("adminDisabled") :$('#debitcardctrlSubMenu').removeClass("adminDisabled");
      }
      
        if(menuVisibilityList["MTC2008"]){ 
      (menuVisibilityList["MTC2008"].menu_status_at_admin == "N") ?  $('#applyAdditionAccountSubMenu input').attr("disabled","true") :$('#applyAdditionAccountSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC2008"]){ 
      (menuVisibilityList["MTC2008"].menu_status_at_admin == "N") ?  $('#applyAdditionAccountSubMenu').addClass("adminDisabled") :$('#applyAdditionAccountSubMenu').removeClass("adminDisabled");
      }
      
      var account=els.get("isAccountHolder");
      console.log("account ",account);
      if( account == "N"){
         $('#applyAdditionAccountSubMenu input').attr("disabled","true");
         $('#accountsMenu').attr("disabled","true");  //drop down
         $('#accountsCheckLabel input').attr("disabled","true");  //check box                    
      }
       //tedallal menu
        if(menuVisibilityList["MTC9001"]){ 
       (menuVisibilityList["MTC9001"].menu_status_at_admin == "N") ?  $('#redemOfPointsSubMenu input').attr("disabled","true") :$('#redemOfPointsSubMenu input').removeAttr("disabled");
        }
        if(menuVisibilityList["MTC9001"]){ 
      (menuVisibilityList["MTC9001"].menu_status_at_admin == "N") ?  $('#redemOfPointsSubMenu').addClass("adminDisabled") :$('#redemOfPointsSubMenu').removeClass("adminDisabled");
       }
        if(menuVisibilityList["MTC9002"]){ 
      (menuVisibilityList["MTC9002"].menu_status_at_admin == "N") ?  $('#enquiryOfPointsSubMenu input').attr("disabled","true") :$('#enquiryOfPointsSubMenu input').removeAttr("disabled");
       }
        if(menuVisibilityList["MTC9002"]){ 
      (menuVisibilityList["MTC9002"].menu_status_at_admin == "N") ?  $('#enquiryOfPointsSubMenu').addClass("adminDisabled") :$('#enquiryOfPointsSubMenu').removeClass("adminDisabled"); 
       }
        if(menuVisibilityList["MTC9003"]){ 
      (menuVisibilityList["MTC9003"].menu_status_at_admin == "N") ?  $('#stmtOfPointsSubMenu input').attr("disabled","true") :$('#stmtOfPointsSubMenu input').removeAttr("disabled");
       }
        if(menuVisibilityList["MTC9003"]){ 
      (menuVisibilityList["MTC9003"].menu_status_at_admin == "N") ?  $('#stmtOfPointsSubMenu').addClass("adminDisabled") :$('#stmtOfPointsSubMenu').removeClass("adminDisabled");
       }
         
      //more sub menu
      if(menuVisibilityList["MTC3021"]){ 
      (menuVisibilityList["MTC3021"].menu_status_at_admin == "N") ?  $('#chartsSubMenu input').attr("disabled","true") :$('#chartsSubMenu input').removeAttr("disabled");
       }
        if(menuVisibilityList["MTC3021"]){ 
      (menuVisibilityList["MTC3021"].menu_status_at_admin == "N") ?  $('#chartsSubMenu').addClass("adminDisabled") :$('#chartsSubMenu').removeClass("adminDisabled");
       }
        if(menuVisibilityList["MTC3022"]){ 
      (menuVisibilityList["MTC3022"].menu_status_at_admin == "N") ?  $('#requestCheckLabel input').attr("disabled","true") :$('#requestCheckLabel input').removeAttr("disabled");
       }
        if(menuVisibilityList["MTC3022"]){ 
      (menuVisibilityList["MTC3022"].menu_status_at_admin == "N") ?  $('#requestCheckLabel').addClass("adminDisabled") :$('#requestCheckLabel').removeClass("adminDisabled");
       }
        if(menuVisibilityList["MTC3080"]){ 
      (menuVisibilityList["MTC3080"].menu_status_at_admin == "N") ?  $('#toolsCheckLabel input').attr("disabled","true") :$('#toolsCheckLabel input').removeAttr("disabled");
      }
       if(menuVisibilityList["MTC3080"]){ 
      (menuVisibilityList["MTC3080"].menu_status_at_admin == "N") ?  $('#toolsCheckLabel').addClass("adminDisabled") :$('#toolsCheckLabel').removeClass("adminDisabled");
       }
       
      //(menuVisibilityList["MTC3040"].menu_status_at_admin == "N") ?  $('#preferenceCheckLabel input').attr("disabled","true") :$('#preferenceCheckLabel input').removeAttr("disabled");
      //(menuVisibilityList["MTC3040"].menu_status_at_admin == "N") ?  $('#preferenceCheckLabel').addClass("adminDisabled") :$('#preferenceCheckLabel').removeClass("adminDisabled");
       if(menuVisibilityList["MTC3060"]){ 
      (menuVisibilityList["MTC3060"].menu_status_at_admin == "N") ?  $('#messageCheckLabel input').attr("disabled","true") :$('#messageCheckLabel input').removeAttr("disabled");
       }
        if(menuVisibilityList["MTC3060"]){ 
      (menuVisibilityList["MTC3060"].menu_status_at_admin == "N") ?  $('#messageCheckLabel').addClass("adminDisabled") :$('#messageCheckLabel').removeClass("adminDisabled");
       }
      //service request sub menu    
      if(menuVisibilityList["MTC3024"]){ 
      (menuVisibilityList["MTC3024"].menu_status_at_admin == "N") ?  $('#applyCreditSubMenu input').attr("disabled","true") :$('#applyCreditSubMenu input').removeAttr("disabled");
       }
        if(menuVisibilityList["MTC3024"]){
      (menuVisibilityList["MTC3024"].menu_status_at_admin == "N") ?  $('#applyCreditSubMenu').addClass("adminDisabled") :$('#applyCreditSubMenu').removeClass("adminDisabled");
       }
        if(menuVisibilityList["MTC3025"]){
      (menuVisibilityList["MTC3025"].menu_status_at_admin == "N") ?  $('#applyPersonalSubMenu input').attr("disabled","true") :$('#applyPersonalSubMenu input').removeAttr("disabled");
       }
        if(menuVisibilityList["MTC3025"]){
      (menuVisibilityList["MTC3025"].menu_status_at_admin == "N") ?  $('#applyPersonalSubMenu').addClass("adminDisabled") :$('#applyPersonalSubMenu').removeClass("adminDisabled");
       }
        if(menuVisibilityList["MTC3026"]){
      (menuVisibilityList["MTC3026"].menu_status_at_admin == "N") ?  $('#applyHomeSubMenu input').attr("disabled","true") :$('#applyHomeSubMenu input').removeAttr("disabled");
       }
        if(menuVisibilityList["MTC3026"]){
      (menuVisibilityList["MTC3026"].menu_status_at_admin == "N") ?  $('#applyHomeSubMenu').addClass("adminDisabled") :$('#applyHomeSubMenu').removeClass("adminDisabled");
       }
        if(menuVisibilityList["MTC3029"]){
      (menuVisibilityList["MTC3029"].menu_status_at_admin == "N") ?  $('#applyReadyCashSubMenu input').attr("disabled","true") :$('#applyReadyCashSubMenu input').removeAttr("disabled");
       }
        if(menuVisibilityList["MTC3029"]){
      (menuVisibilityList["MTC3029"].menu_status_at_admin == "N") ?  $('#applyReadyCashSubMenu').addClass("adminDisabled") :$('#applyReadyCashSubMenu').removeClass("adminDisabled");  
       } 			
		//tools sub menu
		//(menuVisibilityList["MTC3081"].menu_status_at_admin == "N") ?  $('#creditCardFindSubMenu input').attr("disabled","true") :$('#creditCardFindSubMenu input').removeAttr("disabled");
		//(menuVisibilityList["MTC3081"].menu_status_at_admin == "N") ?  $('#creditCardFindSubMenu').addClass("adminDisabled") :$('#creditCardFindSubMenu').removeClass("adminDisabled");
       if(menuVisibilityList["MTC3082"]){
		(menuVisibilityList["MTC3082"].menu_status_at_admin == "N") ?  $('#financeCalSubMenu input').attr("disabled","true") :$('#financeCalSubMenu input').removeAttr("disabled");
        }
        if(menuVisibilityList["MTC3082"]){
		(menuVisibilityList["MTC3082"].menu_status_at_admin == "N") ?  $('#financeCalSubMenu').addClass("adminDisabled") :$('#financeCalSubMenu').removeClass("adminDisabled");
        }
        if(menuVisibilityList["MTC3083"]){
		(menuVisibilityList["MTC3083"].menu_status_at_admin == "N") ?  $('#currencyConvertSubMenu input').attr("disabled","true") :$('#currencyConvertSubMenu input').removeAttr("disabled");
        }
        if(menuVisibilityList["MTC3083"]){
		(menuVisibilityList["MTC3083"].menu_status_at_admin == "N") ?  $('#currencyConvertSubMenu').addClass("adminDisabled") :$('#currencyConvertSubMenu').removeClass("adminDisabled");
        }
        if(menuVisibilityList["MTC3084"]){
		(menuVisibilityList["MTC3084"].menu_status_at_admin == "N") ?  $('#fxRateSubMenu input').attr("disabled","true") :$('#fxRateSubMenu input').removeAttr("disabled");
        }
        if(menuVisibilityList["MTC3084"]){
		(menuVisibilityList["MTC3084"].menu_status_at_admin == "N") ?  $('#fxRateSubMenu').addClass("adminDisabled") :$('#fxRateSubMenu').removeClass("adminDisabled");
        }
        if(menuVisibilityList["MTC3085"]){
		(menuVisibilityList["MTC3085"].menu_status_at_admin == "N") ?  $('#tdRateSubMenu input').attr("disabled","true") :$('#tdRateSubMenu input').removeAttr("disabled");
        }
        if(menuVisibilityList["MTC3085"]){
		(menuVisibilityList["MTC3085"].menu_status_at_admin == "N") ?  $('#tdRateSubMenu').addClass("adminDisabled") :$('#tdRateSubMenu').removeClass("adminDisabled");
        }
        if(menuVisibilityList["MTC3086"]){
		(menuVisibilityList["MTC3086"].menu_status_at_admin == "N") ?  $('#availableLimitSubMenu input').attr("disabled","true") :$('#availableLimitSubMenu input').removeAttr("disabled");
        }
        if(menuVisibilityList["MTC3086"]){
		(menuVisibilityList["MTC3086"].menu_status_at_admin == "N") ?  $('#availableLimitSubMenu').addClass("adminDisabled") :$('#availableLimitSubMenu').removeClass("adminDisabled");
        }
        if(menuVisibilityList["MTC3087"]){
		(menuVisibilityList["MTC3087"].menu_status_at_admin == "N") ?  $('#locateSubMenu input').attr("disabled","true") :$('#locateSubMenu input').removeAttr("disabled");
        }
        if(menuVisibilityList["MTC3087"]){
		(menuVisibilityList["MTC3087"].menu_status_at_admin == "N") ?  $('#locateSubMenu').addClass("adminDisabled") :$('#locateSubMenu').removeClass("adminDisabled");
        }
		//preference sub menu
       if(menuVisibilityList["MTC3041"]){
		(menuVisibilityList["MTC3041"].menu_status_at_admin == "N") ?  $('#changePasswordSubMenu input').attr("disabled","true") :$('#changePasswordSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC3041"]){
		(menuVisibilityList["MTC3041"].menu_status_at_admin == "N") ?  $('#changePasswordSubMenu').addClass("adminDisabled") :$('#changePasswordSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3042"]){
		(menuVisibilityList["MTC3042"].menu_status_at_admin == "N") ?  $('#changeMpinSubMenu input').attr("disabled","true") :$('#changeMpinSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC3042"]){
		(menuVisibilityList["MTC3042"].menu_status_at_admin == "N") ?  $('#changeMpinSubMenu').addClass("adminDisabled") :$('#changeMpinSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3043"]){
		(menuVisibilityList["MTC3043"].menu_status_at_admin == "N") ?  $('#changeLanguageSubMenu input').attr("disabled","true") :$('#changeLanguageSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC3043"]){
		(menuVisibilityList["MTC3043"].menu_status_at_admin == "N") ?  $('#changeLanguageSubMenu').addClass("adminDisabled") :$('#changeLanguageSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3045"]){
		(menuVisibilityList["MTC3045"].menu_status_at_admin == "N") ?  $('#profileUpdateSubMenu input').attr("disabled","true") :$('#profileUpdateSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC3045"]){
		(menuVisibilityList["MTC3045"].menu_status_at_admin == "N") ?  $('#profileUpdateSubMenu').addClass("adminDisabled") :$('#profileUpdateSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3044"]){
		(menuVisibilityList["MTC3044"].menu_status_at_admin == "N") ?  $('#enableOtpSubMenu input').attr("disabled","true") :$('#enableOtpSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC3044"]){
		(menuVisibilityList["MTC3044"].menu_status_at_admin == "N") ?  $('#enableOtpSubMenu').addClass("adminDisabled") :$('#enableOtpSubMenu').removeClass("adminDisabled");
      }
      //(menuVisibilityList["MTC3046"].menu_status_at_admin == "N") ?  $('#menuSettingsSubMenu input').attr("disabled","true") :$('#menuSettingsSubMenu input').removeAttr("disabled");
      //(menuVisibilityList["MTC3046"].menu_status_at_admin == "N") ?  $('#menuSettingsSubMenu').addClass("adminDisabled") :$('#menuSettingsSubMenu').removeClass("adminDisabled");
        if(menuVisibilityList["MTC3047"]){
		(menuVisibilityList["MTC3047"].menu_status_at_admin == "N") ?  $('#themeSettingsSubMenu input').attr("disabled","true") :$('#themeSettingsSubMenu input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC3047"]){
		(menuVisibilityList["MTC3047"].menu_status_at_admin == "N") ?  $('#themeSettingsSubMenu').addClass("adminDisabled") :$('#themeSettingsSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3048"]){
		(menuVisibilityList["MTC3048"].menu_status_at_admin == "N") ?  $('#pushNotifySubMenu input').attr("disabled","true") :$('#pushNotifySubMenu input').removeAttr("disabled"); //push notify
      }
        if(menuVisibilityList["MTC3049"]){
		(menuVisibilityList["MTC3049"].menu_status_at_admin == "N") ?  $('#proximityPushSubMenu input').attr("disabled","true") :$('#proximityPushSubMenu input').removeAttr("disabled"); //Proximity Push notify
      }
        if(menuVisibilityList["MTC3048"]){
		(menuVisibilityList["MTC3048"].menu_status_at_admin == "N") ?  $('#pushNotifySubMenu').addClass("adminDisabled") :$('#pushNotifySubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC3049"]){
		(menuVisibilityList["MTC3049"].menu_status_at_admin == "N") ?  $('#proximityPushSubMenu').addClass("adminDisabled") :$('#proximityPushSubMenu').removeClass("adminDisabled");
      }
        if(menuVisibilityList["MTC9020"]){
		(menuVisibilityList["MTC9020"].menu_status_at_admin == "N") ?  $('#ipoCheckLabel input').attr("disabled","true") :$('#ipoCheckLabel input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC9021"]){
		(menuVisibilityList["MTC9021"].menu_status_at_admin == "N") ?  $('#ipoSubMenu').addClass("adminDisabled") :$('#ipoSubMenu').removeClass("adminDisabled");//ipo subscription
      }
        if(menuVisibilityList["MTC9022"]){
		(menuVisibilityList["MTC9022"].menu_status_at_admin == "N") ?  $('#ipoEnquirySubMenu').addClass("adminDisabled") :$('#ipoEnquirySubMenu').removeClass("adminDisabled");//ipo summary
      }
        if(menuVisibilityList["MTC9010"]){
		(menuVisibilityList["MTC9010"].menu_status_at_admin == "N") ?  $('#estatementCheckLabel input').attr("disabled","true") :$('#estatementCheckLabel input').removeAttr("disabled");
      }
        if(menuVisibilityList["MTC9011"]){
		(menuVisibilityList["MTC9011"].menu_status_at_admin == "N") ?  $('#estatementSubMenu').addClass("adminDisabled") :$('#estatementSubMenu').removeClass("adminDisabled");//estatement subscription
      }
        if(menuVisibilityList["MTC9012"]){
		(menuVisibilityList["MTC9012"].menu_status_at_admin == "N") ?  $('#estatemenySummarySubMenu').addClass("adminDisabled") :$('#estatemenySummarySubMenu').removeClass("adminDisabled");//estatement summary
      }
		if(MPIN_FLAG=="0" || MPIN_FLAG=="00") {
		}else{
			$('#pushNotifySubMenu input').attr("disabled","true");
			$('#proximityPushSubMenu input').attr("disabled","true");
			$('#changeMpinSubMenu input').attr("disabled","true");
			$('#enableOtpSubMenu input').attr("disabled","true");
		}
		
		
		//message sub menu
		/*(menuVisibilityList["MTC3061"].menu_status_at_admin == "N") ?  $('#composeMsgSubMenu input').attr("disabled","true") :$('#composeMsgSubMenu input').removeAttr("disabled");
		(menuVisibilityList["MTC3061"].menu_status_at_admin == "N") ?  $('#composeMsgSubMenu').addClass("adminDisabled") :$('#composeMsgSubMenu').removeClass("adminDisabled");
		(menuVisibilityList["MTC3062"].menu_status_at_admin == "N") ?  $('#inboxSubMenu input').attr("disabled","true") :$('#inboxSubMenu input').removeAttr("disabled");
		(menuVisibilityList["MTC3062"].menu_status_at_admin == "N") ?  $('#inboxSubMenu').addClass("adminDisabled") :$('#inboxSubMenu').removeClass("adminDisabled");
		(menuVisibilityList["MTC3063"].menu_status_at_admin == "N") ?  $('#sentMsgSubMenu input').attr("disabled","true") :$('#sentMsgSubMenu input').removeAttr("disabled");
		(menuVisibilityList["MTC3063"].menu_status_at_admin == "N") ?  $('#sentMsgSubMenu').addClass("adminDisabled") :$('#sentMsgSubMenu').removeClass("adminDisabled");*/
});
</script>

<script>
         $(function(){

             $(".mnuSet .panel-heading .form-control").on("click",function(event)
             {
                event.stopPropagation();
             });
          /*   $(".mnuSet .panel-heading label").on("click",function(e)
             {
               //alert($(e.target).attr("class"));
               if(!$(e.target).is(".check-hidden")){
                e.stopPropagation();
                }
             });*/
             
           
             
         });
</script>
