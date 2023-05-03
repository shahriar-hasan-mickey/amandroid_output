<%
			var els = new EncryptedLocalStorage('secret'); 			
			 var devicePlatform = els.get("device.platform");
%> 
<!--Content Starts Here-->
                  <a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
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
                          <td id="frmcc"><%-frmacno%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.toaccount')%></td>
                          <td id="tocc"><%-toacc%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.paymentdate')%></td>
                          <td id="paydate"><%-payDate%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.payamount')%></td>
                          <td class="amt" id="currency"><span></span>
                          <%- checkAmount($.formatNumber(currency, {format:"#,###.000", locale:"us"}))%>
                          </td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.paymentremarks')%></td>
                          <td id="remarks"><%-remarks%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.creditcard.cashondemandcc.convertedamount')%></td>
                          <td class="amt"id="convamt"><span></span><%-conamt%></td>
                      </tr>

                                        </tbody>
                                    </table>
                                </div>
                                <div id="secError">
								<label><strong><font color="red"><span id="showError"></span></font></strong></label>
								</div>
                                <div class="form-group ">
                                <label for="otp"><%-$.i18n.t('app.creditcard.cashondemandcc.enterotp')%></label>
                                <% if ( devicePlatform == "Android" ) { %>
								<input type="number" autocomplete='off' pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.creditcard.cashondemandcc.enterotp')%>">
								<%}else{%>
                                <input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.creditcard.cashondemandcc.enterotp')%>">
								<%}%>
                            </div>
                            <!--Button Group Starts -->
								 <input type="button" id="submitOTP" name="submitOTP" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.creditcard.cashondemandcc.confirm')%>" />
                                 <a href="#/creditcard" class="btn btn-block btn-primary"><%-$.i18n.t('app.creditcard.cashondemandcc.cancel')%></a>
                            </form>
                  <br/>
             
               <!--Content Ends Here-->
               <script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });

</script>
<script>
(function ($){
     $.fn.inputlength=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keypress',function(e){
           // alert(makelength);
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
               //alert("length shoutnot exceed to"+ +makelength );
                e.preventDefault();
               return false;
             }
              var iOS = /iPad|iPhone|iPod/.test( navigator.userAgent );
            var inputType=$(this).attr("inputmode");
			if(iOS && inputType == "numeric" ){ 
				var old=$(this).val();
            	$(this).val(old+String.fromCharCode(convertNumbers2EnglishLocal(e.keyCode)));
 				e.preventDefault();
            }
            // return true;
          });

        });
     };
}(jQuery));
$('.lenthcontrol').inputlength();
$(".content").animate({ scrollTop: 0 }, "fast");
</script>