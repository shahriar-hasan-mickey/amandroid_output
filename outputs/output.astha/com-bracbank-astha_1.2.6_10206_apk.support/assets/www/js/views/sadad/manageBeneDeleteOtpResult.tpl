     <!--Content Starts Here-->

                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
     <li><%-$.i18n.t('app.creditcard.managebene.creditcards')%></li>
     <li class="active"><%-$.i18n.t('app.creditcard.managebene.managebene')%></li>
</ol>
<div class="clearfix"></div>

<!--Breadcrumb Ends Here-->

<div class="alert alert-success text-center">
      <h4><%-$.i18n.t('app.creditcard.managebene.deletesuccess')%></h4>
</div>

        <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.managebene.home')%></a>
        <a href="#/manageBeneficiaryCreditCard" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.managebene.managebenecard')%></a>
               <!--Content Ends Here-->
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });
</script>