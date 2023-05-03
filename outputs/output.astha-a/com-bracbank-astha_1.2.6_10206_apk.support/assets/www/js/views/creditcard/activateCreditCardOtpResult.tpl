        <!--Content Starts Here-->
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
   <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.activatecc.creditcards')%></a></li>
   <li class="active"><%-$.i18n.t('app.creditcard.activatecc.activate')%></li>
</ol>
<div class="clearfix"></div>
                  <!--Breadcrumb Ends Here-->
<form>
   <br>
  <div class="alert alert-success"><%-$.i18n.t('app.creditcard.activatecc.activatesuccess')%> </div>
        <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.activatecc.home')%></a>
        <a href="#/creditcard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.activatecc.activateanothercard')%></a>
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