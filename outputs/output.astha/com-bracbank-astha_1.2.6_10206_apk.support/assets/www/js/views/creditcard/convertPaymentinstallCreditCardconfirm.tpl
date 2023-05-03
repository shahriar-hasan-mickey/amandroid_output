<!--Content Starts Here-->
<%
var els = new EncryptedLocalStorage('secret'); 
var errorDescription=els.get("errordesc");
var devicePlatform = els.get("device.platform");
var cccardacctno=els.get("cccardacctno");
var cccardno=els.get("cccardacct");
var errorDescription=els.get("errordesc");
var ecurrencyCode = els.get('ecurrencyCode');
var eamount = els.get('eamount');
var emerchant = els.get('emerchant');
var eppTenor = els.get('tenorEpp');
var eppprofit = els.get('eppProfitRate');
var eppfees = els.get('eppccminlmt');
var frmAcctmask = els.get("acctnomaskk");
//var eppfees = '50.00';
console.log(eamount);
console.log(cccardacctno);
console.log(cccardno);
var emerchant = els.get('emerchant');
var eppflagproduct = els.get("eppflagproduct");
var emiAmountval = els.get("emiAmountval");
%>
		

						<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn">
						<span class="glyphicon glyphicon-chevron-left"></span> </a>
						
						<!-- Breadcrumb Starts Here -->
						<ol class="breadcrumb cust_breadcrumb pull-left">
							<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.unbilled.creditcards')%></a></li>
							<li class="active"><%-$.i18n.t('app.creditcard.convertinstall.cardepp')%></li>
						</ol>

						<div class="clearfix"></div><br/>

						<!--Breadcrumb Ends Here-->
						<div class="alert alert-success">
                  <%-$.i18n.t('app.creditcard.convertinstall.successmsg')%>
                  </div>
				  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.creditcard.convertinstall.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.creditcard.convertinstall.review')%></p></div></div>
                  <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.creditcard.convertinstall.confirm')%></p></div></div>
                  </div>
   
<form action="">
              
              
              
              

                        

                          <br>
                          
                          
                          <div class="dtl_view">
                          
                          <table class="table table-bordered table-striped">
                                        <tbody>
                                        <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.creditcardnumber')%></td>
                          <td><%-frmAcctmask%></td>
                      </tr>
                                        
                                       <!-- <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.refno')%></td>
                          <td>EMI18924312</td>
                      </tr>-->
                      
                                            <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.txnfee')%></td>
                          <td class="amt"><%-ecurrencyCode%><span class="cur"></span><%- checkAmount($.formatNumber(eamount, {format:"#,###.000", locale:"us"}))%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.description')%></td>
                          <td><%-emerchant%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.profitrate')%></td>
                          <td><%-eppprofit%>%&nbsp;<%-$.i18n.t('app.creditcard.convertinstall.monthly')%></td>
                      </tr>
                      
                                                        <!--<tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.instalamount')%></td>
                          <td class="amt"><span class="cur"><%-$.i18n.t('app.creditcard.convertinstall.currencySAR')%></span>1666.00</td>
                      </tr>-->
                      
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.tenor')%></td>
                          <td><%-eppTenor.replace(/^0+/, '')%> <%-$.i18n.t('app.creditcard.convertinstall.months')%></td>
                      </tr>
					  <tr>
                          <td><%-$.i18n.t( 'app.creditcard.convertinstall.instalamount')%></td>
                          <td class="amt"><%-ecurrencyCode%><span class="cur"></span><%- checkAmount($.formatNumber(emiAmountval, {format:"#,###.000", locale:"us"}))%></td>
                      </tr>
                                <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.eppfees')%></td>
                          <td class="amt"><%-ecurrencyCode%><span class="cur"></span><%- checkAmount($.formatNumber(eppfees, {format:"#,###.000", locale:"us"}))%></td>
						  
                      </tr>
                       <tr>
                        <td colspan="2"><small><%-$.i18n.t('app.transfer.general.vatlabel')%></small></td>
                      </tr>
					  <!--<tr>
                      <td colspan="2">
						  <div class="alert alert-info">
						  
											<b style="align:center"><%-$.i18n.t('app.creditcard.convertinstall.onetimefee')%></b>
						  			
						  </div>
						  </td>
                      </tr>-->
                   
                                                             </tbody>
                                    </table>
                          </div>
						             <!--
											  <%if(eppflagproduct=='Y'){%>
											   <a class="btn btn-primary btn-block" href="#/wealth"><%-$.i18n.t('app.creditcard.convertinstall.home')%></a>
											  <%}else{%>
											  <a class="btn btn-primary btn-block" href="#/creditcard"><%-$.i18n.t('app.creditcard.convertinstall.home')%></a>
											  <%}%>
											  -->
                          <a class="btn btn-primary btn-block" href="#/creditcard"><%-$.i18n.t('app.creditcard.convertinstall.home')%></a>
                          
                          

      			</form>