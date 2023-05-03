   <!--Content Starts Here-->
                  <a href="#creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
                     <li><a href="#creditcard"><%-$.i18n.t('app.creditcard.managebene.creditcards')%></a></li>
                     <li class="active"><%-$.i18n.t('app.creditcard.managebene.managebene')%></li>
                  </ol>
                  <div class="clearfix"></div>
                   <!--Step Control Starts Here-->
                    <div class="newWiz">
                                <div class="steps done">
                                    <div>
                                        1
                                        <p><%-$.i18n.t('app.creditcard.managebene.input')%></p>
                                    </div>
                                </div>
                                <div class="steps">
                                    <span></span>
                                    <div>
                                        2
                                        <p><%-$.i18n.t('app.creditcard.managebene.verify')%></p>
                                    </div>
                                </div>
                                <div class="steps">
                                    <span></span>
                                    <div>
                                        3
                                        <p><%-$.i18n.t('app.creditcard.managebene.confirm')%></p>
                                    </div>
                                </div>
                            </div>
                            <!--Step Control Ends Here-->
                  <!--Breadcrumb Ends Here-->
                 <form>

                            <div class="dtl_view">
                            <table class="table">
                            <tr>
                            <td><%-$.i18n.t('app.creditcard.managebene.benecardno')%></td>
                            <td id="card"><%-card%></td>
                            </tr>
                            </table>
                            </div>


                             <div class="form-group">
                               <label for="nickname"><%-$.i18n.t('app.creditcard.managebene.beneficiaryname')%></label>
			       <input type="text"  autocomplete='off'   maxlength="20"  class="form-control lenthcontroluserid" id="nickname" name="nickname" placeholder="<%-$.i18n.t('app.sadad.managebills.nickname')%>" />
                             </div>
                                   <input type="button" class="btn btn-success btn-block" id="validateCardPin"  value="<%-$.i18n.t('app.creditcard.managebene.submit')%>" />
                                    <a href="#/manageBeneficiaryCreditCard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.managebene.cancel')%></a>
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
function b(o){
  //o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
  o.value=o.value.replace(/([^0-9A-Za-z\s])/g,"");
}
</script>


<script>
(function ($){
     $.fn.inputlengthuserid=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keyup',function(e){
           $(this).val($(this).val().replace(/([^0-9A-Za-z\s])/g,""));
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
                e.preventDefault();
               return false;
             }
          });
			
        });
     };
}(jQuery));
$('.lenthcontroluserid').inputlengthuserid();
</script>
 