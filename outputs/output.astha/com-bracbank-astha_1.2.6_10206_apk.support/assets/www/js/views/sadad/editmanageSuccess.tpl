<% 
 var els = new EncryptedLocalStorage('secret');
 var editBillList=els.get("editBillList");
 var billerCategory=editBillList[0];
 var billerCompany=editBillList[1];
 var customerNumber=editBillList[2];
 var nickName=editBillList[3];
 var connectiontype= editBillList[4];
 var scrbeno=els.get("scrbeno");
 var refNumber= els.get("refNumber");
 %>

<a href="#/managebills" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 <!-- Breadcrumb Starts Here -->
 <ol class="breadcrumb cust_breadcrumb pull-left">
       <li><a href="#/sadad"><%-$.i18n.t('app.menu.billpay')%></a></li>
       <li class="active"><%-$.i18n.t('app.sadad.managebills.editbills')%></li>
 </ol>
<div class="clearfix"></div><br/>
   <!-- Breadcrumb Ends Here -->
<div class="newWiz">
      <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.managebills.input')%></p></div></div>
      <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.sadad.managebills.verify')%></p></div></div>
      <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.sadad.managebills.confirm')%></p></div></div>
</div>
<!--Step Control Ends Here-->
<!--Step Control Ends Here-->
<div class="dtl_view">
     <form>
           <div class="alert alert-success text-center">
                        <p><%-$.i18n.t('app.sadad.managebills.editbillmessage')%><%-refNumber%></p>
                        <!-- <p><%-$.i18n.t('app.sadad.managebills.editbillmessage2')%></p>
                        <p><br/><b><%-$.i18n.t('app.sadad.managebills.addbillmessage3')%></b><br/>
                        </p> -->                       
            </div>
         <!--   <div>
            <h2><%-$.i18n.t('app.sadad.managebills.transacthead')%></h2>
             <p><%-$.i18n.t('app.sadad.managebills.billercategory')%></p>
                        <h5><%-billerCategory%></h5>
                         <p><%-$.i18n.t('app.sadad.managebills.billercompany')%></p>
                        <h5><%-billerCompany%></h5>
                         <p><%-$.i18n.t('app.sadad.managebills.custno')%></p>
                        <h5><%-customerNumber%></h5>                        
                         <p><%-$.i18n.t('app.sadad.managebills.nickname')%></p>
                        <h5><%-nickName%></h5>
                         <p><%-$.i18n.t('app.sadad.managebills.connectiontype')%></p>
                        <p><%-connectiontype%></p>
                        </div>-->
            <a href="#/managebills" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.managebills.home')%></a>
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
