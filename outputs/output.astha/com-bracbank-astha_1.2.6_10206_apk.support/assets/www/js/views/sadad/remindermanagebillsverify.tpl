 <a href="#/reminder/<%-customernumber%>"  id="backverify" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
      <li><a href="#/sadad"><%-$.i18n.t('app.sadad.general.title')%></a></li>
      <li class="active"><%-$.i18n.t('app.sadad.general.managebills')%></li>
</ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  
                     <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
<div class="dtl_view">
                     <!--Verify Starts Here-->
<form role="form" name="remindersubmit">
       <table class="table table-bordered table-striped">
             <tbody>
                     <tr>
                          <td><%-$.i18n.t('app.sadad.managebills.billercompany')%></td>
                          <%if(typeof(billcomp)!="undefined"){%>
                          <td><%-billcomp%></td>
                          <%}%>
                      </tr>
                     
                      <tr>
                          <td><%-$.i18n.t('app.sadad.managebills.servicetype')%></td>
                          <%if(typeof(servicetype)!="undefined"){%>
                          <td><%-servicetype%></td>
                          <%}%>
                      </tr>
                      
                       <tr>
                          <td><%-$.i18n.t('app.sadad.managebills.subno')%></td>
                          <%if(typeof(customernumber)!="undefined"){%>
                          <td id="customer"><%-customernumber%></td>
                          <%}%>
                      </tr>
                     
                      <tr>
                          <td><%-$.i18n.t('app.sadad.managebills.reminderdate')%></td>
                          <%if(typeof(payDate)!="undefined"){%>
                          <td><%-payDate%></td>
                          <%}%>
                      </tr>
                     
                      <tr>
                          <td><%-$.i18n.t('app.sadad.managebills.reminddescription')%></td>
                          <%if(typeof(remindDes)!="undefined"){%>
                          <td><%-remindDes%></td>
                          <%}%>
                      </tr>
                     
                      <tr>
                          <td><%-$.i18n.t('app.sadad.managebills.payamount')%></td>
                          <%if(typeof(transAmt)!="undefined"){%>
                          <td><%-transAmt%></td>
                          <%}%>
                      </tr>
                      
              </tbody>
      </table>
                    <a id="submitotp" name="submitotp" class="btn btn-success btn-block" ><%-$.i18n.t('app.sadad.managebills.confirm')%></a>
                    <a href="#/reminder/<%-customernumber%>" id="backverify" name="backverify" class="btn btn-primary btn-block"><%-$.i18n.t('app.sadad.managebills.cancel')%></a>
 </form>
</div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
