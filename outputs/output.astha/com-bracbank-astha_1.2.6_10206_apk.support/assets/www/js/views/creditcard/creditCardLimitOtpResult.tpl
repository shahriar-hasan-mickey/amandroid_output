   <%
var els = new EncryptedLocalStorage('secret'); 
var inclimit="Permanent";//els.get("inclimitVal");
%>
  
  <!--Content Starts Here-->
 <a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.ccdetails.creditcards')%></a></li>
<li class="active"><%-$.i18n.t('app.creditcard.general.parmanentlimit')%></li>
</ol>
                  <div class="clearfix"></div>
                   <!--Step Control Starts Here-->
                    <div class="newWiz">
                                <div class="steps done">
                                    <div>
                                        1
                                        <p><%-$.i18n.t('app.creditcard.cclimit.input')%></p>
                                    </div>
                                </div>
                                <div class="steps done">
                                    <span></span>
                                    <div>
                                        2
                                        <p><%-$.i18n.t('app.creditcard.cclimit.verify')%></p>
                                    </div>
                                </div>
                                <div class="steps done">
                                    <span></span>
                                    <div>
                                        3
                                        <p><%-$.i18n.t('app.creditcard.cclimit.confirm')%></p>
                                    </div>
                                </div>
                            </div>
                            <!--Step Control Ends Here-->
                  <!--Breadcrumb Ends Here-->
                   <div class="alert alert-success">
                   	<% if(inclimit == "Permanent" ) { %>
                 			<p><%-$.i18n.t('app.creditcard.cashondemandcc.successPermanent')%></p>
                    <% } else if (inclimit == "Temporary" ) { %>
                    		<p><%-$.i18n.t('app.creditcard.cashondemandcc.successTemporary')%></p>
                    <% } %>
                  </div>
<form name="ccresult">
     <div class="dtl_view">
          <table class="table table-bordered table-striped">
               <tbody>
                      <tr>
                           <td><%-$.i18n.t('app.creditcard.cclimit.refno')%></td>
                           <td><%-referenceNumber%></td>
                      </tr>
					  <tr>
                          <td><%-$.i18n.t('app.creditcard.cclimit.fromcc')%></td>
                          <td><%-frmcc%></td>
                      </tr>
                      
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.cclimit.currentlimit')%></td>
                          <td class="amt"><span class="cur"><%-ccode%></span>
                          		<%- checkAmount($.formatNumber(limits, {format:"#,###.000", locale:"us"}))%>
                          </td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.cclimit.newcardlimit')%></td>
                          <td class="amt"><span><%-ccode%></span>
                          	   <%- checkAmount($.formatNumber(newLimit, {format:"#,###.000", locale:"us"}))%>
                          </td>
                      </tr>
                      <!--<tr>
                          <td><%-$.i18n.t('app.creditcard.cclimit.reason')%></td>
                          <td></td>
                      </tr>-->
               </tbody>
          </table>
     </div>
    <a href="#/wealth"  class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.cclimit.home')%></a>
</form>
                  <br/>
                  <br/>
             
               <!--Content Ends Here-->
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });
$(".content").animate({ scrollTop: 0 }, "fast");
</script>