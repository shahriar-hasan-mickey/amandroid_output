<a href="#/creditcards" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<ol class="breadcrumb cust_breadcrumb pull-left">
 	<li><a href="#/creditcards"><%-$.i18n.t('app.creditcard.managebene.creditcards')%></a></li>
 	<li class="active"><%-$.i18n.t('app.creditcard.managebene.managebene')%></li>
</ol>
<div class="clearfix"></div>
<form role="form">
    <div class="dtl_view">
         <table class="table table-bordered table-striped">

              <thead>
                      <tr>
                      <th colspan="2"><b><%-$.i18n.t('app.creditcard.managebene.deletebenecard')%></b></th>
                      </tr>
              </thead>
              <tbody>
                          <tr> 
                            <td ><%-$.i18n.t('app.creditcard.managebene.benecardno')%></td>
                            <td id="cardno"><%-no%></td>
                          </tr>

                          <tr>
                              <td id=><%-$.i18n.t('app.creditcard.managebene.benenickname')%></td>
                              <td id="nickname"><%-name%></td>
                          </tr>
             </tbody>
       </table>
     </div>
    <a id="validateCardPin" class="btn btn-danger btn-block"><%-$.i18n.t('app.creditcard.managebene.confirmdelete')%></a>
    <a href="#/manageBeneficiaryCreditCard" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.managebene.cancel')%></a>
</form>
<br/>
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });
    $(".content").animate({ scrollTop: 0 }, "fast");
</script>
 
 