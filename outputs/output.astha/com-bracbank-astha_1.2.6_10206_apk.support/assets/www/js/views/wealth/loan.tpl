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
        <li class="active"><a href="javascript:void(0);" id="accountsback"><span class="ico dashboard"></span><%-$.i18n.t('app.wealth.dashboard')%></a></li>
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
        <li><a href="javascript:void(0);" id="transfers"><span class="ico transfer"></span><%-$.i18n.t('app.wealth.transfers')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico beneficiary"></span><%-$.i18n.t('app.wealth.managebeneficiaries')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico billpay"></span><%-$.i18n.t('app.wealth.billpay')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico managebiller"></span><%-$.i18n.t('app.wealth.managebillers')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico service"></span><%-$.i18n.t('app.wealth.services')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico more"></span><%-$.i18n.t('app.wealth.moreoptions')%></a></li>
        <li><a href="javascript:void(0);"><span class="ico settings"></span><%-$.i18n.t('app.wealth.usersettings')%></a></li>
        <li><a href="javascript:void(0);" class="btn-logout"><span class="ico logout"></span><%-$.i18n.t('app.wealth.logout')%></a></li>
        </ul>
    </nav>
</aside>
<header	class="appheader">
    <div class="headerLeft">
        <button type="button" id="mnutoggle" class="btn btn-default mnutoggle">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <h4><%-$.i18n.t('app.wealth.dashboard')%></h4>
    <div class="headerRight">
        <button class="btn-right"><i class="fa fa-bell" aria-hidden="true"></i></button>
        <!--<button class="btn-right"><i class="fa fa-search" aria-hidden="true"></i></button>-->
    </div>
</header>	
		<div class="bodywrapper">
			<div class="contentwrap">
        <section class="content">
            <div class="userInfo">
              <div class="media">
                  <div class="media-left">
                      <img src="images/common/1234.png" class="profPic img-circle"/>
                  </div>
                  <div class="media-body">
                      <p class="m0"><small>Good Morning</small></p>
                      <strong>Shakib</strong>
                  </div>
              </div><!-- / media-->
          </div><!-- / userInfo-->
          				<div class="dashTab">
				  <!-- Nav tabs -->
				   <ul class="nav nav-tabs" role="tablist">
                        <li role="presentation" ><a href="javascript:void(0);" id="accounts"><%-$.i18n.t('app.wealth.accounts')%></a></li>
                        <li role="presentation"><a href="javascript:void(0);" id="creditcard"><%-$.i18n.t('app.wealth.creditcard')%></a></li>
                        <li role="presentation"><a href="javascript:void(0);" id="prepaidcreditcard"><%-$.i18n.t('app.wealth.prepaidcard')%></a></li>
                        <li role="presentation"class="active"><a href="javascript:void(0);" id="loan"><%-$.i18n.t('app.wealth.loans')%></a></li>                      </ul>

				  <!-- Tab panes -->
				  <div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="Accounts">
                        <div class="c-cards-stack">       
							<ul class="stack-container">
								<li class="c-cards-stack-item card card-default loan" data-url="#/loanaccountdetails">	
								  <p class="text-right m0"><span class="logo-xs"></span></p>
									<p class="name">Revolve Loan</p>
									<p class="numb small text-muted">182XXXXXXXXXX64</p>
									<div class="amt">
									  <p class="small m0 text-muted">Current Balance</p>
									  <span class="num">18,000.<span class="deci">00</span></span>
									  <span class="small cur dCur text-muted">BDT</span>
									</div>
								</li>
					
								<li class="c-cards-stack-item card card-default loan" data-url="#/loanaccountdetails">
								  <p class="text-right m0"><span class="logo-xs"></span></p>
									<p class="name">Demand Loan</p>
									<p class="numb small text-muted">182XXXXXXXXXX64</p>
									<div class="amt">
									  <p class="small m0 text-muted">Current Balance</p>
									  <span class="num">22,000.<span class="deci">56</span></span>
									  <span class="small cur dCur text-muted">BDT</span>
									</div>
								</li>
					
								<li class="c-cards-stack-item card card-default loan" data-url="#/loanaccountdetails">
								  <p class="text-right m0"><span class="logo-xs"></span></p>
									<p class="name">Term Loan</p>
									<p class="numb small text-muted">182XXXXXXXXXX64</p>
									<div class="amt">
									  <p class="small m0 text-muted">Current Balance</p>
									  <span class="num">23,000.<span class="deci">56</span></span>
									  <span class="small cur dCur text-muted">BDT</span>
									</div>
								</li>
							</ul>							
						</div>

					</div><!-- / Accounts-->
				  </div>
				</div><!-- / portTab-->	
          <div class="upPay">
    <ul class="list-unstyled">
        <li class="list-group-item"><h4 class="text-primary"><%-$.i18n.t('app.wealth.upcomingpayments')%></h4></li>
        <li class="list-group-item">
            <div class="media">
                <div class="media-left">
                    <img src="images/common/user_default1.png" />
                </div>
                <div class="media-body">
                    <p>Credit Card Due</p>
                    <small class="text-muted fhdr d_fdate">17 Nov 2018</small>
                </div>
                <div class="media-right">
                    <a href="#" class="btn btn-primary">
                        <div class="amt">
                            <span class="num">2350.<span class="deci">00</span></span>
                            <span class="small cur dCur">BDT</span>
                            <i class="fa fa-angle-right" aria-hidden="true"></i>
                        </div>	
                    </a>
                </div>
            </div>
        </li>
        <li class="list-group-item">
            <div class="media">
                <div class="media-left">
                    <img src="images/common/user_default1.png" />
                </div>
                <div class="media-body">
                    <p><%-$.i18n.t('app.wealth.standinginstruction')%></p>
                    <small class="text-muted fhdr d_fdate">18 Nov 2018</small>
                </div>
                <div class="media-right">
                    <a href="#" class="btn btn-primary">
                        <div class="amt">
                            <span class="num">150.<span class="deci">00</span></span>
                            <span class="small cur dCur">BDT</span>
                            <i class="fa fa-angle-right" aria-hidden="true"></i>
                        </div>	
                    </a>
                </div>							
            </div>
        </li>
        <li class="list-group-item">
            <div class="media">
                <div class="media-left">
                    <img src="images/common/user_default1.png" />
                </div>
                <div class="media-body">
                    <p><%-$.i18n.t('app.wealth.loaninstalment')%></p>
                    <small class="text-muted fhdr d_fdate">27 Nov 2018</small>
                </div>
                <div class="media-right">
                    <a href="#" class="btn btn-primary">
                        <div class="amt">
                            <span class="num">4750.<span class="deci">00</span></span>
                            <span class="small cur dCur">BDT</span>
                            <i class="fa fa-angle-right" aria-hidden="true"></i>
                        </div>										
                    </a>	
                </div>
            </div>
        </li>					
    </ul>
</div><!-- / upPay-->		
    <div class="promo">
        <ul class="list-unstyled">
            <li class="list-group-item row">
                <div class="clearfix">
                    <div class="col-xs-5">
 <img src="images/common/homeLoan.jpg" class="img-responsive" />
                     </div>
                    <div class="col-xs-7 text-center">
                        <p  class="small"><%-$.i18n.t('app.wealth.homeloan')%></p>
                        <button class="btn btn-primary"><%-$.i18n.t('app.wealth.applynow')%></button>
                    </div>
                </div>
            </li>
            <li class="list-group-item">
                <div class="clearfix">
                    <div class="col-xs-5">
                        <img src="images/common/personalLoan.jpg" class="img-responsive" />
                    </div>
                    <div class="col-xs-7 text-center">
                        <p class="small"><%-$.i18n.t('app.wealth.personalloan')%></p>
                        <button class="btn btn-primary"><%-$.i18n.t('app.wealth.applynow')%></button>
                    </div>
                </div>
            </li>
        </ul>
    </div>
        </section>
			</div><!-- / contentwrap-->
    </div><!-- /bodywrapper -->
    
    <div class="footMenu">
	      <!--<a href="javascript:void(0);"  class="mnutoggle" id="mnutoggle"><span class="menu_icon ico-xs menu"></span><%-$.i18n.t('app.wealth.menulabel')%></a> --> 
	      <a href="#/transfer"><span class="menu_icon ico-xs transfer"></span><%-$.i18n.t('app.wealth.fntransfer')%></a>
		  <a href="#/billpay"><span class="menu_icon ico-xs bpay"></span><%-$.i18n.t('app.wealth.billpay')%></a>
		  <a href="javascript:void(0);" class="active"><span class="menu_icon ico-xs product"></span><%-$.i18n.t('app.wealth.dashboard')%></a>
	      <a href="#/servicerequest"><span class="menu_icon ico-xs request"></span><%-$.i18n.t('app.wealth.services')%></a>
		  <a href="javascript:void(0);" class="scan_pay"><span class="menu_icon ico-xs qrcode"></span><%-$.i18n.t('app.qrcode.scanandpay')%></a>
	</div>	
    
	<!--  
	<div class="footMenu">
          <a href="#"  class="mnutoggle" id="mnutoggle"><span class="menu_icon ico-xs menu"></span><%-$.i18n.t('app.wealth.menulabel')%></a>
          <a href="javascript:void(0);" id="success" class="active"><span class="menu_icon ico-xs product"></span><%-$.i18n.t('app.wealth.dashboard')%></a>
          <a href="javascript:void(0);"id="transfer"><span class="menu_icon ico-xs transfer"></span><%-$.i18n.t('app.wealth.transfers')%></a>
          <a href="javascript:void(0);"id="billpay"><span class="menu_icon ico-xs bpay"></span><%-$.i18n.t('app.wealth.billpay')%></a>
          <a href="javascript:void(0);"id="services"><span class="menu_icon ico-xs request"></span><%-$.i18n.t('app.wealth.services')%></a>
        </div>	
      -->  	
        <div class="area" >
          <ul class="circles">
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
            <li></li>
          </ul>
        </div>		
	</div><!-- / pagewrapper-->
  <!-- Modal -->
<!--<div class="modal fade modernPOP fingerprint" id="fingerprint" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<div class="modal-dialog" role="document">
<form method="post" action="#">
<div class="modal-content">
 <div class="modal-header">
   <h4 class="modal-title"><%-$.i18n.t('app.wealth.fingerprint')%>
       <button type="button" class="close" data-dismiss="modal" aria-label="Close">
     <span aria-hidden="true">&times;</span>
   </button>

   </h4>

 </div>
 <div class="modal-body">
 <p class="text-center">
   <span class="ico-circle center-block">
     <span class="menu_icon ico-2x check"></span>
   </span>
 </p>

 <p class="small text-center">Login using fingerprint</p><br />
     <div class="text-left"><%-$.i18n.t('app.wealth.enablefingerprint')%>
         <label class="switch pull-right">
           <input type="checkbox">
           <span class="slider round"></span>
         </label>
   </div>
 </div>
  </div>
</form>
</div>
</div>-->
<!-- / modal--> 	
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
