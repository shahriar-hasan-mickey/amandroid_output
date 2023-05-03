<%
var els = new EncryptedLocalStorage('secret'); 
var feeAmount=els.get("feeAmount");
var feeCurrency=els.get("feeCurrency");
%>

<!--Content Starts Here-->
<a href="#/cashOnDemandCreditCard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.cashondemandcc.creditcards')%></a></li>
<li class="active"><%-$.i18n.t('app.creditcard.cashondemandcc.cod')%></li>
</ol>
<div class="clearfix"></div>
                   <!--Step Control Starts Here-->
                    <div class="newWiz">
                                <div class="steps done">
                                    <div>
                                        1
                                        <p><%-$.i18n.t('app.creditcard.cashondemandcc.input')%></p>
                                    </div>
                                </div>
                                <div class="steps done">
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
                            <!--Step Control Ends Here-->
                  <!--Breadcrumb Ends Here-->
<form name="codotp">
       <div class="dtl_view">
             <table class="table table-bordered table-striped">
                  <tbody>
                       <tr> 
                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.fromcc')%></td>
                          <td><%-frmaccmaskno%></td> 
                          <input type="hidden" id="frmcc" name="frmcc" value="<%-frmacno%>"/>
                      </tr>
                      
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.toaccount')%></td>
                          <td><%-toaccmaskno%></td>
                          <input type="hidden" id="tocc" name="tocc" value="<%-toacc%>"/>
                          
                      </tr>
                      
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.paymentdate')%></td>
                          <td id="paydate"><%-payDate%></td>
                      </tr>
                      
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.paymentremarks')%></td>
                          <td id="remarks"><%-remarks%></td>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.payamount')%></td>
                          <td class="amt"><span>KWD</span>
                          <%- checkAmount($.formatNumber(currency, {format:"#,###.000", locale:"us"}))%>
                          </td>
                          <input type="hidden" id="currency" name="currency" value="<%-currency%>"/>
                      </tr>
                      <%if(feeAmount!="undefined" && feeAmount!="null" && feeAmount!=""){%>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.feeamt')%></td>
                          <td class="amt"><span><%-feeCurrency%></span>
                          <%- checkAmount($.formatNumber(feeAmount, {format:"#,###.000", locale:"us"}))%>
                          </td>
                      </tr>
                      <%}else{%>
                      <%}%>
                      <%if(feeAmount!="undefined" && feeAmount!="null" && feeAmount!=""){%>
                      <tr>
                        <td colspan="2"><small><%-$.i18n.t('app.transfer.general.vatlabel')%></small></td>
                      </tr> 
                      <%}%>
                      <!--<tr>
                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.convertedamount')%></td>
                          <td class="amt"><span>KWD</span>
                           <%- checkAmount($.formatNumber(conamt, {format:"#,###.000", locale:"us"}))%>
                          </td>
                          <input type="hidden" id="convamt" name="convamt" value="<%-conamt%>"/>
                      </tr>-->
                 </tbody>
           </table>
      </div>
                               
		<a id="submitOTP" name="submitOTP" class="btn btn-block btn-success"><%-$.i18n.t('app.creditcard.cashondemandcc.submit')%></a>
        <a href="#/cashOnDemandCreditCard" class="btn btn-block btn-primary"><%-$.i18n.t('app.creditcard.cashondemandcc.back')%></a>
</form>
<br/>
             
               <!--Content Ends Here-->
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });
$(".content").animate({ scrollTop: 0 }, "fast");
</script>