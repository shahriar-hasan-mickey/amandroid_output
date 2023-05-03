 <!-- Breadcrumb Starts Here -->
 <ol class="breadcrumb cust_breadcrumb pull-left">
       <li><a href="#/sadad"><%-$.i18n.t('app.menu.billpay')%></a></li>
   <li class="active"><%-$.i18n.t('app.sadad.managebills.addbills')%></li>
 </ol>

 <div class="clearfix"></div><br/>
 <div class="newWiz">
        <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.managebills.input')%></p></div></div>
        <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.sadad.managebills.verify')%></p></div></div>
        <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.sadad.managebills.confirm')%></p></div></div>
 </div>
 <div class="dtl_view">
		 <form>
		        <div class="alert alert-success text-center">
		                <p><%-$.i18n.t('app.sadad.managebills.addbillmessage1')%></p>
		                <!-- <p><%-$.i18n.t('app.sadad.managebills.addbillmessage2')%></p>
		                <p><b><%-$.i18n.t('app.sadad.managebills.addbillmessage3')%></b></p> -->
		        </div>
		        			<a href="#/billpayInquiry" class="btn btn-success btn-block" ><%-$.i18n.t('app.sadad.managebills.paythisbill')%></a>
		                    <a href="#/addbills" class="btn btn-success btn-block" ><%-$.i18n.t('app.sadad.managebills.addanotherbill')%></a>
		                    <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.managebills.home')%></a>
		 </form>
 </div><br/>
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
