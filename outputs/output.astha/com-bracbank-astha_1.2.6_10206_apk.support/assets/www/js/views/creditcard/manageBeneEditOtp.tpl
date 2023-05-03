   <%
	var els = new EncryptedLocalStorage('secret'); 
	var cardno = els.get("cardnum");
%>
   
   <!--Content Starts Here-->
                  <a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
                     <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.managebene.creditcards')%> </a></li>
                     <li class="active"><%-$.i18n.t('app.creditcard.managebene.managebene')%> </li>
                  </ol>
                  <div class="clearfix"></div>
                   <!--Step Control Starts Here-->
                    <div class="newWiz">
                                <div class="steps done">
                                    <div>
                                        1
                                        <p><%-$.i18n.t('app.creditcard.managebene.input')%> </p>
                                    </div>
                                </div>
                                <div class="steps done">
                                    <span></span>
                                    <div>
                                        2
                                        <p><%-$.i18n.t('app.creditcard.managebene.verify')%> </p>
                                    </div>
                                </div>
                                <div class="steps">
                                    <span></span>
                                    <div>
                                        3
                                        <p><%-$.i18n.t('app.creditcard.managebene.confirm')%> </p>
                                    </div>
                                </div>
                            </div>
                            <!--Step Control Ends Here-->
                  <!--Breadcrumb Ends Here-->
                <form action="">



                    <div class="dtl_view">
                                        <table class="table table-bordered table-striped">
                      <tbody>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.managebene.benecardno')%> </td>
                          <td><%-cardno%></td>
                      </tr>

                      <tr>
                          <td><%-$.i18n.t('app.creditcard.managebene.benenickname')%> </td>
                          <td><%-name%></td>
                      </tr>
                    </tbody></table>

                         </div>



                                  <input type="button" id="submitOTP" name="submitOTP" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.creditcard.managebene.submit')%>" />
                                   <a href="#/manageBeneEdit" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.managebene.cancel')%> </a>


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

   