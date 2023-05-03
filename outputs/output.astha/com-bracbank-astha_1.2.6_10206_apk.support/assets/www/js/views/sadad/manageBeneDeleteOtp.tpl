  <!--Content Starts Here-->

 <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
                     <!--Breadcrumb Starts Here-->
    <li><%-$.i18n.t('app.creditcard.managebene.creditcards')%></li>
    <li class="active"><%-$.i18n.t('app.creditcard.managebene.managebene')%></li>
</ol>
<div class="clearfix"></div>

                  <!--Breadcrumb Ends Here-->
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
                            <td><%-$.i18n.t('app.creditcard.managebene.benecardno')%></td>
                            <td id="no"><%-no%></td>
                          </tr>

                          <tr>
                              <td><%-$.i18n.t('app.creditcard.managebene.benenickname')%></td>
                              <td id="name"><%-name%></td>
                          </tr>
          </tbody>
     </table>
      </div>
      <input type="button" id="submitOTP" name="submitOTP" class="btn btn-danger btn-block"  value="<%-$.i18n.t('app.creditcard.managebene.confirmdelete')%>" />
      <a href="#/manageBenedelete" class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.managebene.cancel')%></a>
</form>
<br/>
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });
</script>

 