 <%
			var els = new EncryptedLocalStorage('secret'); 
			var emailIdCheck = els.get("emailid");
			var feeAmount=els.get("feeAmount");
			var feeCurrency=els.get("feeCurrency");
			var devicePlatform = els.get("device.platform");
 %>

 <!--Content Starts Here-->
 <% if ( devicePlatform == "Android" ) { %>
                  <a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 <%}else{%>
                  <!--<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>-->
 <%}%>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
                     <li><a href="#/creditcard""><%-$.i18n.t('app.creditcard.cashondemandcc.creditcards')%></a></li>
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
                                <div class="steps done">
                                    <span></span>
                                    <div>
                                        3
                                        <p><%-$.i18n.t('app.creditcard.cashondemandcc.confirm')%></p>
                                    </div>
                                </div>
                            </div>
                            <!--Step Control Ends Here-->
                            
                            <div class="alert alert-success">
                 					 <p><%-$.i18n.t('app.creditcard.cashondemandcc.successfullycompleted')%></p>
                  			</div>
                            
              <form name="cashondemandresult">
                                <div class="dtl_view">
                                    <table class="table table-bordered table-striped">
                                        <tbody>
							                     <tr> 
							                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.transno')%></td>
							                          <td id="id1"><%-transactionId%></td>
							                      </tr>
							                      <tr>
							                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.fromcc')%></td>
							                          <td><%-frmcc%></td>
							                      </tr>
							                      <tr>
							                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.toaccount')%></td>
							                          <td><%-tocc%></td>
							                      </tr>
							                      <tr>
							                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.paymentdate')%></td>
							                          <td><%-paydate%></td>
							                      </tr>
							                      <tr>
							                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.paymentremarks')%></td>
							                          <td><%-remarks%></td>
							                      </tr>
							                       <tr>
							                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.payamount')%></td>
							                         		 <td class="amt"><span>KWD</span>
							                         		 <%- checkAmount($.formatNumber(currency, {format:"#,###.000", locale:"us"}))%>
							                         		 </td>
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
							                      </tr>-->
                                        </tbody>
                                    </table>
                                </div>
                                      <a href="#/creditcard" class="btn btn-block btn-success"><%-$.i18n.t('app.creditcard.cashondemandcc.makeanothertransfer')%></a>
                                      <%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
                                      		<a id="emailadvice" name="emailadvice" class="btn btn-block btn-primary"><%-$.i18n.t('app.creditcard.cashondemandcc.emailadvice')%></a>
                                      <%}%>
                                      <a href="#/wealth" class="btn btn-block btn-primary">  <%-$.i18n.t('app.creditcard.cashondemandcc.home')%></a><br/>
                                      </br></br>
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });
$(".content").animate({ scrollTop: 0 }, "fast");
</script>