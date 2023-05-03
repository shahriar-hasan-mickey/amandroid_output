   <%
var els = new EncryptedLocalStorage('secret'); 
var inclimit=els.get("inclimitVal");
var trandateDate = new Date();
          trandateDate.setMonth(trandateDate.getMonth() + 2 );
          var d = trandateDate.getDate();
          var m = trandateDate.getMonth()+1;
          var y = trandateDate.getFullYear();
          var myDate = '' +  (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;

%>
  
  <!--Content Starts Here-->
 <a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.ccdetails.creditcards')%></a></li>
<li class="active"><%-$.i18n.t('app.creditcard.general.templimitincrease')%></li>
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
                   	
                    		<p><%-$.i18n.t('app.creditcard.templimitincrease.successtemplimit')%></p>
                   </div>
<form name="ccresult">
     <div class="dtl_view">
          <table class="table table-bordered table-striped">
                   <tbody>
                      <tr>
                          <td id="frmnam1" ><%-$.i18n.t('app.creditcard.cclimit.fromcc')%></td>
                          <td id="frmcc1"><%-frmcc%></td>
                      </tr>
                      
                      
                     
                      <tr>
                          <td id="curlimnam1" ><%-$.i18n.t('app.creditcard.cclimit.currentlimit')%></td>
                         		<td class="amt" ><span id="code" class="cur"><%-ccode%></span>
                         		<%- checkAmount($.formatNumber(limits, {format:"#,###.000", locale:"us"}))%>
                         		</td>
                          
                        		 
                          
                      </tr>
                      
                      <tr>
                          <td id="newlimnam" ><%-$.i18n.t('app.creditcard.templimitincrease.newlimit')%></td>
                         		 <td  class="amt"><span><%-ccode%></span>
                         		 	<%- checkAmount($.formatNumber(newLimit, {format:"#,###.000", locale:"us"}))%>
                         		 </td>
                          
                         
                      </tr>
                      
                      <tr>
                          <td id="validity" ><%-$.i18n.t('app.creditcard.templimitincrease.limitexprie')%></td>
                         		 <td  id="expDate">
                         		 	<%-myDate%>
                         		 </td>
                          
                         
                      </tr>
                      
                     <!-- <tr>
                          <td id="frmcc"><%-$.i18n.t('app.creditcard.cclimit.reason')%></td>
                          <td ></td>
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
<script>
/*var trandateDate = new Date();
var d = trandateDate.getDate();
var m = trandateDate.getMonth()+61;
var y = trandateDate.getFullYear();
//var myDate = '' +  (m <= 9 ? '0' + m : m) + '/'+ (d <= 9 ? '0' + d : d) + '/' + y;
var myDate = '' +  (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;
$("#expDate").val(myDate);*/					
</script>