  <!--Content Starts Here-->
                  <a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
                     <li><a href="#/creditcard" ><%-$.i18n.t('app.creditcard.managebene.creditcards')%></a></li>
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
                                <div class="steps done">
                                    <span></span>
                                    <div>
                                        2
                                        <p><%-$.i18n.t('app.creditcard.managebene.verify')%></p>
                                    </div>
                                </div>
                                <div class="steps done">
                                    <span></span>
                                    <div>
                                        3
                                        <p><%-$.i18n.t('app.creditcard.managebene.confirm')%></p>
                                    </div>
                                </div>
                            </div>
                            <!--Step Control Ends Here-->
                  <!--Breadcrumb Ends Here-->

							   <div class="alert alert-success text-center">
                        <h4><%-$.i18n.t('app.creditcard.managebene.editsuccess')%></h4>
                        <p><%-$.i18n.t('app.creditcard.managebene.activatecall')%> :800-124-3000.</p>
               </div>






                                    <!--<a href="tel:8001243000" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.managebene.yes')%> </a>-->
                                     <input type="button" class="btn btn-success btn-sm" value="<%-$.i18n.t('app.creditcard.managebene.yes')%>" onClick="calldial();">
                                       <a href="#/manageBeneficiaryCreditCard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.managebene.later')%> </a>
                  <br/>
              
               <!--Content Ends Here-->
               <script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });

</script>
<script>
function calldial(){
			//document.location.href = 'tel:+1-8001243000';
			document.location.href = 'tel:920013323';
		}
</script>