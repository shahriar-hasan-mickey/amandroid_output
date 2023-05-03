<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>

<%
	var els = new EncryptedLocalStorage('secret'); 
%>
	<div class="pagewrapper">	
	  
    
    <aside class="mainnav">
        <div class="text-center userInfo">
            <div>
              <img src="images/common/1234.png" class="profPic img-circle">
            </div>
            <div>
              <p>Shakib Umar</p>
              <p class="small">CIF ID 876767369223</p>
              <p class="small info">Savings A/C, Gulshan branch</p>
              <p class="small info">Last login: <%-els.get("lastSuccessfulLogin")%></p>
				  <%if(isNull(<%-els.get("lastFailureLogin")%>)){%>
				  <p class="small info">Last failure login: <%-els.get("lastFailureLogin")%></p>
				  <%}%>
            </div>            
        </div>
    
<nav>
        <ul>
        <li class="active"><a href="javascript:void(0);" id="accountsback"><span class="ico dashboard"></span><%-$.i18n.t('app.wealth.menu')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico upcoming"></span><%-$.i18n.t('app.wealth.upcomingpayments')%></a></li>
        <li class="" data-toggle="collapse" href="#accounts" id="subNav" aria-expanded="false" aria-controls="accounts"><a href="#"><span class="ico account"></span><%-$.i18n.t('app.wealth.accounts')%></a></li>        
        <ul class="collapse" id="accounts">
           <li><a href="javascript:void(0);"><%-$.i18n.t('app.wealth.savings')%></a></li>
           <li><a href="javascript:void(0);"><%-$.i18n.t('app.wealth.creditcard')%></a></li>
           <li><a href="javascript:void(0);"><%-$.i18n.t('app.wealth.prepaid')%></a></li>
           <li><a href="javascript:void(0);"><%-$.i18n.t('app.wealth.loans')%></a></li>
           <li><a href="javascript:void(0);"><%-$.i18n.t('app.wealth.deposits')%></a></li>
           <li><a href="javascript:void(0);"><%-$.i18n.t('app.wealth.opendeposits')%></a></li>
        </ul>
        <li><a href="javascript:void(0);"><span class="ico transfer"></span><%-$.i18n.t('app.wealth.transfers')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico beneficiary"></span><%-$.i18n.t('app.wealth.managebeneficiaries')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico billpay"></span><%-$.i18n.t('app.wealth.billpay')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico managebiller"></span><%-$.i18n.t('app.wealth.managebillers')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico service"></span><%-$.i18n.t('app.wealth.services')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico more"></span><%-$.i18n.t('app.wealth.moreoptions')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico settings"></span><%-$.i18n.t('app.wealth.usersettings')%></a></li>
        <li><a href="javascript:void(0);" class="btn-logout"><span class="ico logout"></span><%-$.i18n.t('app.wealth.logout')%></a></li>
        </ul>
    </nav>
</aside><body>
		<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="javascript:void(0);" id="accountsback" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.billpay.billertype')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						       <section class="content" id="biller_type">                      
          <form method="post" action="#" id="idForm">
            <div class="radiobox">
                <div class="radio">
                  <label>
                    <input type="radio" name="choice" value="tutionFee" checked>
                    <div class="box">
                        <span class="menu_icon tutionfee"></span>
                        <span class="small"><%-$.i18n.t('app.billpay.tutionfee')%></span>
                      </div>
                  </label>
              	</div><!-- / radio-->
                <div class="radio">
                  <label>
                    <input type="radio" name="choice" value="mobile" >
                    <div class="box">
                        <span class="menu_icon mobile"></span>
                        <span class="small"><%-$.i18n.t('app.billpay.mobile')%></span>
                      </div>
                  </label>
              	</div><!-- / radio-->	
                <div class="radio">
                  <label>
                    <input type="radio" name="choice" value="utilities" >
                    <div class="box">
                        <span class="menu_icon utilities"></span>
                        <span class="small"><%-$.i18n.t('app.billpay.utilities')%></span>
                      </div>
                  </label>
              	</div><!-- / radio-->	
                <div class="radio">
                  <label>
                    <input type="radio" name="choice" value="internet" >
                    <div class="box">
                        <span class="menu_icon internet"></span>
                        <span class="small"><%-$.i18n.t('app.billpay.internet')%></span>
                      </div>
                  </label>
              	</div><!-- / radio-->					
                <div class="radio">
                  <label>
                    <input type="radio" name="choice" value="insurance" >
                    <div class="box">
                        <span class="menu_icon insurance"></span>
                        <span class="small"><%-$.i18n.t('app.billpay.insurance')%></span>
                      </div>
                  </label>
              	</div><!-- / radio-->					
			  </div><!-- / radiobox-->			  

			 <div class="clearfix"></div><br>
          <input type="button" class="btn btn-primary btn-block" value="<%- $.i18n.t('button.billpay.next') %>">
        </form>                        
     </section>	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
<!-- / modal-->
<script src="js/library/bootstrap.min.js"></script>
<script src="js/library/slip.js"></script>
<script src="js/library/cardStack.js"></script>
<script src="js/common.js"></script>
	<script>
	
	$('.sett').click(function(event){
    //event.stopPropagation();
    
	});
		function ccard(i){
	var ccno=$('#ccno'+i).val();
	var cc_nick_name = $('#cc_nick_name'+i).val();
	var eppeligiblecardflagg = $('#eppeligiblecardflagg'+i).val();
	var creditmask = $('#creditmask'+i).val();
	var els=new EncryptedLocalStorage('secret');
	els.set("ccardno","");
	els.set("ccardno",ccno);
	els.set("cc_nick_name","");
	els.set("cc_nick_name",cc_nick_name);
	
	var ccaccno=$('#ccaccno'+i).val();
	els.set("ccardaccno","");
	els.set("ccardaccno",ccaccno);
	
	
	els.set("eppeligiblecardflagg","");
	els.set("eppeligiblecardflagg",eppeligiblecardflagg);
	els.set("creditmask","");
	els.set("acctnomaskk",creditmask);
	Backbone.history.navigate("#/ccstatement");
	}
</script>
