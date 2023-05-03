   <!--Content Starts Here-->
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
 <ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
       <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.managebene.creditcards')%></a></li>
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
<form role="form">
       <div class="form-group">
              <label for="Beneficiary"><%-$.i18n.t('app.creditcard.managebene.cardno')%></label>
              <input id="shbcardno" autocomplete='off'  name="shbcardno" type="text" placeholder="<%-$.i18n.t('app.creditcard.managebene.entercardno')%>" class="form-control">
       </div>

         <div class="form-group">
               <label for="nickname"><%-$.i18n.t('app.creditcard.managebene.nickname')%></label>
                <input type="text" autocomplete='off'  placeholder="<%-$.i18n.t('app.creditcard.managebene.enternickname')%>" id="nickname" name="nickname" class="form-control">
          </div>

          <input type="button" class="btn btn-success btn-block" id="validateCardPin" name="validateCardPin" value="<%-$.i18n.t('app.creditcard.managebene.benesubmit')%>" />
           <a class="btn btn-primary btn-block" href="#/manageBeneficiaryCreditCard"><%-$.i18n.t('app.creditcard.managebene.cancel')%></a>
 </form>
  <br/>
         
               <!--Content Ends Here-->
  <script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });

</script>