<%
var els = new EncryptedLocalStorage('secret'); 
var creditcardno=els.get("ccnum");
var totalCurrentPoints=els.get("totalCurrentPoints");
var pointsRedeemedSinceEnrollment=els.get("creditcardtype1");
%>

                                 <a href="#/ccfee" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>

		<ol class="breadcrumb cust_breadcrumb pull-left">
                   <li><a href="#/tedallalhome"><%-$.i18n.t('app.tedallalrewards.tedallalrewards')%></a></li>
                   <li class="active"><%-$.i18n.t('app.tedallalrewards.redemptionofpoints')%></li> 
                                    </ol>

                    <div class="clearfix"></div>

                  <!-- Breadcrumb Ends Here -->
                                    <h3><%-$.i18n.t('app.tedallalrewards.redemptionofpoints')%></h3>
                                    <br/>
                   <!--Step Control Starts Here-->
                   <div class="newWiz">
                  <div class="steps done"><div>1 <p><%-$.i18n.t('app.tedallalrewards.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.tedallalrewards.verify')%></P></div></div>
                  <div class="steps"><span ></span><div>3<p><%-$.i18n.t('app.tedallalrewards.confirm')%></p> </div></div>


                  </div>

                              <form>

                <div class="dtl_view">
                  <table class="table table-bordered table-striped">
                    <tbody>
                       <tr>
                       	<input type="hidden" id="creditnum" value="<%-$.i18n.t('app.tedallalrewards.ccnumber')%>">                       
                          <td><%-$.i18n.t('app.tedallalrewards.ccnumber')%></td>
                          <td><%-creditcardno%></td>
                      </tr>

                      <tr>
                      <input type="hidden" id="availpts" value="<%-$.i18n.t('app.tedallalrewards.availpts')%>">
                          <td><%-$.i18n.t('app.tedallalrewards.availablerewards')%></td>
                          <td> <%- checkAmount($.formatNumber(totalCurrentPoints, {format:"#,###", locale:"us"}))%></td>
                      </tr>
                      <tr>
                      <input type="hidden" id="ptsredeem" value="<%-$.i18n.t('app.tedallalrewards.loyaltypts')%>">
                          <td><%-$.i18n.t('app.tedallalrewards.ptsforccfee')%></td>
                          <td><%- pointsRedeemedSinceEnrollment%></td>
                      </tr>
                    </tbody>
                  </table>
                 </div>


  <a class="btn btn-success btn-block" id="confirm" name="confirm" ><%-$.i18n.t('app.tedallalrewards.confirm')%></a>
  <a class="btn btn-primary btn-block" href="#/ccfee"><%-$.i18n.t('app.tedallalrewards.cancel')%></a>

  </form>