  <!--Content Starts Here-->
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
  <li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.resetpincc.creditcards')%></a></li>
  <li class="active"><%-$.i18n.t('app.creditcard.resetpincc.reset')%></li>
</ol>
<div class="clearfix"></div>


                  <!--Breadcrumb Ends Here-->

<form action="">
    <div class="alert alert-success"><%-$.i18n.t('app.creditcard.resetpincc.success')%></div>
    <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.resetpincc.home')%></a>
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