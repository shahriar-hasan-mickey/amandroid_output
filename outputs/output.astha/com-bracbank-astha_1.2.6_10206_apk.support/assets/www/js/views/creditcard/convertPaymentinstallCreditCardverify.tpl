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
var eppflagproduct = els.get("eppflagproduct");
var emiAmountval = els.get("emiAmountval");
%>

<!--Content Starts Here-->
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<ol class="breadcrumb cust_breadcrumb pull-left">
   <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.convertinstall.creditcards')%></a></li>
   <li class="active"><%-$.i18n.t('app.creditcard.convertinstall.cardepp')%></li>
</ol>
 <div class="clearfix"></div>
             <div class="clearfix"></div>
                  
                  
                 <div class="newWiz">
       <div class="steps done"><div>1<p><%-$.i18n.t('app.creditcard.convertinstall.input')%></p></div></div>
       <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.creditcard.cashondemandcc.verify')%></p></div></div>
       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.creditcard.convertinstall.confirm')%></p></div></div>
  </div>

                  <!--Breadcrumb Ends Here-->
              <form action="">
                          <br/>
                          
                          <div class="dtl_view">
                          
                          <table class="table table-bordered table-striped">
                                        <tbody>
                                        <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.creditcardnumber')%></td>
                          <td><%-frmAcctmask%></td>
                      </tr>
                                            <tr>
                          <td><%-$.i18n.t('app.creditcard.convertinstall.txnfee')%></td>
                          <td class="amt"><%-ecurrencyCode%><span class="cur"></span><%- checkAmount($.formatNumber(eamount, {format:"#,###.000", locale:"us"}))%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t( 'app.creditcard.convertinstall.description')%></td>
                          <td><%-emerchant%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t( 'app.creditcard.convertinstall.profitrate')%></td>
                          <td><%-eppprofit%>%&nbsp;<%-$.i18n.t('app.creditcard.convertinstall.monthly')%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t( 'app.creditcard.convertinstall.tenor')%></td>
                          <td><%-eppTenor.replace(/^0+/, '')%> <%-$.i18n.t('app.creditcard.convertinstall.months')%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t( 'app.creditcard.convertinstall.instalamount')%></td>
                          <td class="amt"><%-ecurrencyCode%><span class="cur"></span><%- checkAmount($.formatNumber(emiAmountval, {format:"#,###.000", locale:"us"}))%></td>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t( 'app.creditcard.convertinstall.eppfees')%></td>
                          <td class="amt"><%-ecurrencyCode%><span class="cur"></span><%- checkAmount($.formatNumber(eppfees, {format:"#,###.000", locale:"us"}))%>
						  </td>
                      </tr>
                       <tr>
                        <td colspan="2"><small><%-$.i18n.t('app.transfer.general.vatlabel')%></small></td>
                      </tr>
					             </tbody>
                                    </table>
                          </div>
                          <a class="btn btn-success btn-block" href="#/convertPaymentinstallCreditCardOTP"><%-$.i18n.t('app.creditcard.convertinstall.confirm')%></a>
                          <!--<a class="btn btn-success btn-block" href="#/convertPaymentinstallCreditCardEMI/<%-emerchant%>/<%-ecurrencyCode%>/<%-eamount%>"><%-$.i18n.t('app.creditcard.convertinstall.modify')%></a>-->
						<!--   <%if(eppflagproduct=='Y'){%>
                           <a class="btn btn-primary btn-block" href="#/wealth"><%-$.i18n.t('app.creditcard.convertinstall.cancel')%></a>
                          <%}else{%>
                          <a class="btn btn-primary btn-block" href="#/creditcard"><%-$.i18n.t('app.creditcard.convertinstall.cancel')%></a>
						  <%}%> -->
                      <a class="btn btn-primary btn-block" href="#/creditcard"><%-$.i18n.t('app.creditcard.convertinstall.cancel')%></a>
            </form>
                         

                  <br/>
                  <br/>
               </section>
               <!--Content Ends Here-->
            </div>
            <!--contentwrap Ends here -->
         </div>
         <!--bodywrap starts here -->
         <!-- footer area-->
        
      </div>
      

 <script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });

</script>
  
