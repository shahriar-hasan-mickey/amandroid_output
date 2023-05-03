<!--Content Starts Here-->
<%
var els = new EncryptedLocalStorage('secret'); 
var cccardacctno=els.get("cccardacctno");
var cccardno=els.get("cccardacct");
var errorDescription=els.get("errordesc");
var ecurrencyCode = els.get('ecurrencyCode');
var eamount = els.get('eamount');
var emerchant = els.get('emerchant');
var eppprofit = els.get('eppProfitRate');
console.log(eamount);
var frmAcctmask = els.get("acctnomaskk");
var eppflagproduct = els.get("eppflagproduct");
var eppfees = els.get('eppccminlmt');
%>
		

						<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn">
						<span class="glyphicon glyphicon-chevron-left"></span> </a>
						
						<!-- Breadcrumb Starts Here -->
						<ol class="breadcrumb cust_breadcrumb pull-left">
							<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.unbilled.creditcards')%></a></li>
							<li class="active"><%-$.i18n.t('app.creditcard.convertinstall.cardepp')%></li>
						</ol>

						<div class="clearfix"></div><br/>
						<div class="newWiz">
	            <div class="steps done">
	                <div>
	                    1
	                    <p><%-$.i18n.t('app.creditcard.cashondemandcc.input')%></p>
	                </div>
	            </div>
	            <div class="steps">
	                <span></span>
	                <div>
	                    2
	                    <p><%-$.i18n.t('app.creditcard.cashondemandcc.verify')%></p>
	                </div>
	            </div>
	            <div class="steps">
	                <span></span>
	                <div>
	                    3
	                    <p><%-$.i18n.t('app.creditcard.cashondemandcc.confirm')%></p>
	                </div>
	            </div>
	</div>
						<!--Breadcrumb Ends Here-->

                      
<form action="">
              
              
              


                        

                          <br>
                          
                          
                          <div class="dtl_view">
                          
                          <table class="table table-bordered table-striped">
                                        <tbody>
                                        <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.creditcardnumber')%></td>
                          <td><%-frmAcctmask%></td>
                      </tr>
                                            <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.txnfee')%></td>
                          <td class="amt"><%-ecurrencyCode%><span class="cur"></span>
						  <%- checkAmount($.formatNumber(eamount, {format:"#,###.000", locale:"us"}))%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.description')%></td>
                          <td><%-emerchant%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.profitrate')%></td>
                          <td><%-eppprofit%>%&nbsp;<%-$.i18n.t('app.creditcard.convertinstall.monthly')%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.tenor')%></td>
                          <td>
                          <select class="form-control" name="tenorTypes" id="tenorTypes">
                               <option value="" selected>
                                <%-$.i18n.t('app.creditcard.convertinstall.tenorsel')%>
                                </option>
                       <% _.each(eppMerchantplns,function(data){ %>
                        <%if(typeof(data.epp_TENURE)!="undefined"){%>
                                <option value="<%-data.epp_TENURE%>~<%-data.epp_PLANNO%>~<%-data.epp_PROFIT%>">
                                <%-data.epp_TENURE.replace(/^0+/, '')%> <%-$.i18n.t('app.creditcard.convertinstall.months')%>
                                </option>   
                                 <%}%>                   
                            <% }); %>
                       
                  </select>
                  <div id="errortenorsel" style="display:none">
								<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.creditcard.convertinstall.errtenorsel')%></font></p>
					</div>
                          
                          </td>
                      </tr>
					  <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.eppfees')%></td>
                          <td class="amt"><%-ecurrencyCode%><span class="cur"></span><%- checkAmount($.formatNumber(eppfees, {format:"#,###.000", locale:"us"}))%></td>
						  
                      </tr>
                        <tr>
                        <td colspan="2"><small><%-$.i18n.t('app.transfer.general.vatlabel')%></small></td>
                      </tr> 
					  <tr>
                      <td colspan="2">
						  <div>
						  
											<b style="align:center"><%-$.i18n.t('app.creditcard.convertinstall.onetimefee')%></b>
						  			
						  </div>
						  </td>
                      </tr>
                                                             </tbody>
                                    </table>
									<div class="amt2" style="display:none" id="convDivId">
	                        <span class="hdr"><%-$.i18n.t('app.creditcard.convertinstall.instalamount')%></span>
				       		<span id="displayamt"> </span>
					 </div>
						
					  <div class="form-group">
	                        <label class="checkinput small  pull-left">
		                        <input type="checkbox" class="check-hidden" id="iagreee" name="iagreee" /><%-$.i18n.t('app.creditcard.convertinstall.t&cdisp')%>
		                        <a href="javascript:void(0);" id="termandcondition" name="termandcondition"><%-$.i18n.t('app.creditcard.convertinstall.t&cdispp')%></a>
								<!--<p><%-$.i18n.t('app.creditcard.convertinstall.t&cdisppp')%></p>-->
		                        
	                        </label>
	                      </div>
						  <br/>
						  <div class="clearfix"></div>
						  <div id="errortermscond" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('validation.newregistration.iagreee')%></font></p>
                          </div>
						<br/>
						  <!--<div class="alert alert-info alert-sm">
                     <strong><%-$.i18n.t('app.registration.note')%></strong> 
					 <ul>
							<li><%-$.i18n.t('app.creditcard.convertinstall.t&cdisp1')%></li>
							<li><%-$.i18n.t('app.creditcard.convertinstall.t&cdisp2')%></li>
							<li><%-$.i18n.t('app.creditcard.convertinstall.t&cdisp3')%></li>
					</ul>
                      </div>-->
                          </div>
                          <a id="convertPaymentinstallCreditCardverify" name="convertPaymentinstallCreditCardverify" class="btn btn-success btn-block" ><%-$.i18n.t('app.creditcard.convertinstall.submit')%></a>
						  <!--
						  <%if(eppflagproduct=='Y'){%>
                          <a class="btn btn-primary btn-block" href="#/wealth"><%-$.i18n.t('app.creditcard.convertinstall.cancel')%></a>
						  <%}else{%>
                          <a class="btn btn-primary btn-block" href="#/convertPaymentinstallCreditCard"><%-$.i18n.t('app.creditcard.convertinstall.cancel')%></a>
						  <%}%>
						  -->
						  <a class="btn btn-primary btn-block" href="#/creditcard"><%-$.i18n.t('app.creditcard.convertinstall.cancel')%></a>

      			</form>