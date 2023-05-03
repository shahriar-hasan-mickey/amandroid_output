  <!--Content Starts Here-->
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.cclimit.creditcards')%></a></li>
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
                                <div class="steps">
                                    <span></span>
                                    <div>
                                        3
                                        <p><%-$.i18n.t('app.creditcard.cclimit.confirm')%></p>
                                    </div>
                                </div>
                            </div>
                            <!--Step Control Ends Here-->
                  <!--Breadcrumb Ends Here-->
 <form name="ccotp">
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
                         		<%- checkAmount($.formatNumber(limit, {format:"#,###.000", locale:"us"}))%>
                         		</td>
                          
                        		 
                          
                      </tr>
                      
                      <tr>
                          <td id="newlimnam" ><%-$.i18n.t('app.creditcard.cclimit.newlimitrequired')%></td>
                         		 <td  class="amt"><span><%-ccode%></span>
                         		 	<%- checkAmount($.formatNumber(newlimit, {format:"#,###.000", locale:"us"}))%>
                         		 </td>
                          
                         
                      </tr>
                      
                     <!-- <tr>
                          <td id="frmcc"><%-$.i18n.t('app.creditcard.cclimit.reason')%></td>
                          <td ></td>
                      </tr>-->
                  </tbody>
             </table>
       </div>
     
       <form>
       <input type="hidden" id="frmnam" name="name" value="<%-$.i18n.t('app.creditcard.cclimit.fromcc')%>">
		<input type="hidden" id="inclimnam" name="name" value="<%-$.i18n.t('app.creditcard.cclimit.limitincreasetype')%>">
		<input type="hidden"  id="curlimnam" name="name" value="<%-$.i18n.t('app.creditcard.cclimit.currentlimit')%>">
		<input type="hidden" id="newlimnam" name="name" value="<%-$.i18n.t('app.creditcard.cclimit.newlimitrequired')%>">
		<input type="hidden" id="frmcc" name="value" value="<%-frmcc%>">		
		<input type="hidden"  id="limits" name="value" value="<%-limit%>">
		<input type="hidden" id="newLimit"  name="value" value="<%-newlimit%>">
		</form>
       <input type="button" id="submitOTP" name="submitOTP" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.creditcard.cclimit.submit')%>" />
       <a href="#/creditcard"  class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.cclimit.cancel')%></a>
</form>
<div id="serial" name="serial">
</div>
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