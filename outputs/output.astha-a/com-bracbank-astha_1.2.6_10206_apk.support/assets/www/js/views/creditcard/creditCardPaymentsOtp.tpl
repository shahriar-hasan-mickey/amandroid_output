<%
			var els = new EncryptedLocalStorage('secret'); 			
			 var devicePlatform = els.get("device.platform");
%>
  <!--Content Starts Here-->
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li>Credit Cards</li>
                          <li><a href="#/transfer"><%-$.i18n.t('app.creditcard.ccpayments.creditcards')%></a></li>
                     
                  </ol>
                  <div class="clearfix"></div>

                  <!--Breadcrumb Ends Here-->
                  <!--Step Control Starts Here-->
                    <div class="newWiz">
                  <div class="steps done"><div>1 <p> <%-$.i18n.t('app.creditcard.ccpayments.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<p> <%-$.i18n.t('app.creditcard.ccpayments.verify')%></p></div></div>
                  <div class="steps"><span ></span><div>3<p> <%-$.i18n.t('app.creditcard.ccpayments.confirm')%></p> </div></div>
                  </div>
                  <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                     <form role="form">
  <table class="table table-bordered table-striped">
                      <tbody>
                       <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.fromaccount')%></td>
                          <td id="from"><%-fromacc%></td>
                      </tr>
                      <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.tocc')%></td>
                          <td id="to"><%-toacc%></td>
                      </tr>
                      <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.payamount')%></td>
                          <td class="amt" id="transamt"><span>
                          	<%- checkAmount($.formatNumber(transAmt, {format:"#,###.000", locale:"us"}))%>
                          </td>
                      </tr>
                      <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.paymentremarks')%></td>
                          <td id="payremarks"><%-payRemarks%></td>
                      </tr>
                      <tr>
                          <td> <%-$.i18n.t('app.creditcard.ccpayments.convertedamount')%></td>
                          <td class="amt" id="convertedamt"><span></span>
                          	<%- checkAmount($.formatNumber(conamount, {format:"#,###.000", locale:"us"}))%>
                          </td>
                      </tr>
                      <tr>
                        <td> <%-$.i18n.t('app.creditcard.ccpayments.exchangerate')%></td>
                        <td id="exrate"><%-exchangerate%></td>
                      </tr>
                    </tbody></table>

                        <div class="form-group" id="otp">
                        <% if ( devicePlatform == "Android" ) { %>
			  <input type="number" autocomplete='off' pattern="[0-9]*" class="form-control lenthcontrol"  maxlength="6" id="otp" name="otp" placeholder="<%-$.i18n.t('app.creditcard.ccpayments.enterotp')%>">
			 			<%}else{%>
                          <input type="number" autocomplete='off' pattern="[0-9]*" inputmode="numeric" class="form-control lenthcontrol" maxlength="6" id="otp" name="otp" placeholder=" <%-$.i18n.t('app.creditcard.ccpayments.enterotp')%>">
			 			<%}%>
                        </div>
                        <input type="button" id="submitOTP" name="submitOTP" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.creditcard.ccpayments.confirm')%>" />
                        <a href="#/creditcard" class="btn btn-primary btn-block"> <%-$.i18n.t('app.creditcard.ccpayments.cancel')%></a>
                     </form>
                  </div>

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