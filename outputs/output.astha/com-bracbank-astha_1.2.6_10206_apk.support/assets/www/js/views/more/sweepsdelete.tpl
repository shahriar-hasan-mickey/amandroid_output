 
                  <a href="#/more" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                 <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/more"><%-$.i18n.t('app.more.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.general.sweepstitle')%></li>
                  </ol>


                  <div class="clearfix"></div>

                  <!-- Breadcrumb Ends Here -->

                  <!--Step Control Starts Here-->
                   <div class="newWiz">
                  <div class="steps done"><div>1 <p><%-$.i18n.t('app.transfer.ownaccount.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.transfer.ownaccount.verify')%></P></div></div>
                  <div class="steps"><span ></span><div>3<p><%-$.i18n.t('app.transfer.ownaccount.confirm')%></p> </div></div>
                  </div>


                  <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
               <form role="form">
                 <table class="table table-bordered table-striped">
                    <tbody>
                      
                      <% if (sourceAccount != undefined && sourceAccount!='' && sourceAccount!=null) { %>
                       <tr>
                          <td><%-$.i18n.t('app.dateline.frmaccount')%></td>
                          <td><%-sourceAccount%></td>
                      </tr>
                      <%}%>	
                      <% if (sweepsInstructionType != undefined && sweepsInstructionType!='' && sweepsInstructionType!=null) { %>
                      <tr>
                          <td><%-$.i18n.t('app.more.sweep.sweeptype')%></td>
                          <td><%-sweepsInstructionType%></td>
                      </tr>
                      <%}%>	
                      <% if (transferType != undefined && transferType!='' && transferType!=null) { %>
                      <tr>
                          <td><%-$.i18n.t('app.more.sweep.paymenttype')%></td>
                          <td><%-transferType%></td>
                      </tr>
                      <%}%>	
                      
                      <% if (accountNumber!= undefined && accountNumber!='' && accountNumber!=null && sweepsInstructionType == "TRANSFER WHEN AMT REACH ABOVE LIMIT") { %>
                      <tr>
                          <td><%-$.i18n.t('app.more.sweep.creditacc')%></td>
                          <td><%-accountNumber%></td>
                      </tr>
                      <%}%>	
                      <% if (fromAccount != undefined && fromAccount!='' && fromAccount!=null && sweepsInstructionType == "TRANSFER WHEN AMT REACH BELOW LIMIT") { %>
                      <tr>
                          <td><%-$.i18n.t('app.more.sweep.debitacc')%></td>
                          <td><%-fromAccount%></td>
                      </tr>
                      <%}%>	
                      <% if (firstPaymentDate != undefined && firstPaymentDate!='' && firstPaymentDate!=null) { %>
                      <tr>
                         <td><%-$.i18n.t('app.more.sweep.paymentdate')%></td>
                          <td><span class="date_ltr"><%-firstPaymentDate%></span></td>
                      </tr>
                      <%}%>	
                      <% if (lastPaymentDate!= undefined && lastPaymentDate!='' && lastPaymentDate!=null && transferType=="PAY UP TO SPECIFIED DATE") { %>
                      <tr>
                         <td><%-$.i18n.t('app.more.sweep.lastpaymentdate')%></td>
                          <td><%-lastPaymentDate	%></td>
                      </tr>
                      <%}%>	
                      
                      
                      <% if (amount!= undefined && amount!='' && amount!=null) { %>
                      <tr>
                         <td><%-$.i18n.t('app.more.sweep.payamt')%></td>
                          <td class="amt"><%-amount%></td>
                      </tr>
                      <%}%>	
                       <% if (upperLimit != undefined && upperLimit!='' && upperLimit!=null && sweepsInstructionType == "TRANSFER WHEN AMT REACH ABOVE LIMIT") { %>
                      <tr>
                           <td><%-$.i18n.t('app.more.sweep.upperlmt')%></td>
                          <td><%-upperLimit%></td>
                      </tr>
                      <%}%>	
                       <% if (lowerLimit != undefined && lowerLimit!='' && lowerLimit!=null && sweepsInstructionType == "TRANSFER WHEN AMT REACH BELOW LIMIT") { %>
                      <tr>
                           <td><%-$.i18n.t('app.more.sweep.lowerlimit')%></td>
                          <td><%-lowerLimit%></td>
                      </tr>
                      <%}%>	
                      <% if (remarks != undefined && remarks!='' && remarks!=null) { %>
                      <tr>
                         <td><%-$.i18n.t('app.more.sweep.acremarks')%></td>
                        <td><%-remarks%></td>
                      </tr>
                      <%}%>	
                      <% if (narration!= undefined && narration!='' && narration!=null) { %>
                      <tr>
                          <td><%-$.i18n.t('app.more.sweep.craccremarks')%></td>
                          <td><%-narration%></td>
                      </tr> 
                      <%}%>	       
                    

                    </tbody></table>
                     <% if (isOnline==true) { %>
                        <a href="javascript:void(0)" id="deletesweep" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.managebene.delete')%></a>
                     <%}%>
                        <a href="#/more" class="btn btn-primary btn-block"><%-$.i18n.t('app.product.general.cancel')%></a>
                     </form>
                  </div>
                  <!--Transfers Ends Here-->
                  <br/>
             
