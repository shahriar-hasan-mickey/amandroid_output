 <% 
 var els = new EncryptedLocalStorage('secret');
 var scrbeno = els.get("scrbeno");
 console.log("scrbeno",scrbeno);
 var refNumber = els.get("refNumber");
 %>
 <a href="#/managebills" id="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
 <ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/sadad"><%-$.i18n.t('app.menu.billpay')%></a></li>
     <li class="active"><%-$.i18n.t('app.sadad.managebills.deletebills')%></li>
 </ol>
 <div class="clearfix"></div>
 <br/>
 <!-- Breadcrumb Ends Here -->
 <!--Step Control Starts Here-->
 <div class="newWiz">
      <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.managebills.input')%></p></div></div>
      <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.sadad.managebills.verify')%></p></div></div>
      <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.sadad.managebills.confirm')%></p></div></div>
 </div>
 <!--Step Control Ends Here-->
 <!--One Time Billpay Starts Here-->
 <div class="dtl_view">
 <!--Verify Starts Here-->
 <form>
        <div class="alert alert-success text-center">
             <p><%-$.i18n.t('app.sadad.managebills.deletemessage1')%><%-refNumber%></p>
        </div>

        <a href="#/managebills"  class="btn btn-success btn-block"><%-$.i18n.t('button.tools.done')%></a>
        <!--<a href="#/managebills" class="btn btn-primary btn-block" ><%-$.i18n.t('app.sadad.managebills.later')%></a>-->
 </form>
 </div>
<br/>
<script>
		$(document).ready(function()
		{
			$('input').keypress(function(e) {
		        var code = (e.keyCode ? e.keyCode : e.which);
		        if ( (code==13) || (code==10))
		            {
		            $(this).blur();
		            return false;
		            }
		    });
		});
	</script>
               
