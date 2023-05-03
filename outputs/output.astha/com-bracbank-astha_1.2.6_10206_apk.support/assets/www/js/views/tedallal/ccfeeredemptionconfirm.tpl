<%
var els = new EncryptedLocalStorage('secret'); 
var creditcardno=els.get("ccnum");
var totalCurrentPoints=els.get("totalCurrentPoints");
var pointsEarnedSinceEnrollment=els.get("creditcardtype1");
%>       
              
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                   <li><a href="#/tedallalhome"><%-$.i18n.t('app.tedallalrewards.tedallalrewards')%></a></li>
                   <li class="active"><%-$.i18n.t('app.tedallalrewards.redemptionofpoints')%></li> 
                  </ol>
                    <div class="clearfix"></div>
                  <!-- Breadcrumb Ends Here -->


                  <!--Step Control Starts Here-->
                   <div class="newWiz">
                  <div class="steps done"><div>1 <p><%-$.i18n.t('app.tedallalrewards.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.tedallalrewards.verify')%></P></div></div>
                  <div class="steps done"><span ></span><div>3<p><%-$.i18n.t('app.tedallalrewards.confirm')%></p> </div></div>
                  </div>
                   <!--Step Control Ends Here-->

                     <form role="form">
                     <div class="alert alert-success text-center">
                     		<%-$.i18n.t('app.tedallalrewards.redemptionsuccess')%>
                     </div>
                    <div class="dtl_view">
                  <table class="table table-bordered table-striped">
                      <tbody>
                       <tr>
                       	<input type="hidden" id="creditnum" value="<%-$.i18n.t('app.requests.homefinance.ccnumber')%>">                       
                          <td><%-$.i18n.t('app.tedallalrewards.ccnumber')%></td>
                          <td><%-creditcardno%></td>
                      </tr>

                      <tr>
                      <input type="hidden" id="availpts" value="<%-$.i18n.t('app.requests.homefinance.availablepts')%>">
                          <td><%-$.i18n.t('app.tedallalrewards.availablerewards')%></td>
                          <td><%- checkAmount($.formatNumber(totalCurrentPoints, {format:"#,###", locale:"us"}))%></td>
                      </tr>
                      <tr>
                      <input type="hidden" id="ptsredeem" value="<%-$.i18n.t('app.requests.homefinance.loyaltypts')%>">
                          <td><%-$.i18n.t('app.tedallalrewards.ptsforccfee')%></td>
                          <td><%-pointsEarnedSinceEnrollment%></td>
                      </tr>
                    </tbody>
                  </table>
                 </div>
                      <div class="clearfix"></div>
                      <br/>

              <a id="submit" class="btn btn-success btn-block" href="#/wealth"><%-$.i18n.t('app.tedallalrewards.home')%></a>
                     </form>


                  <br/>