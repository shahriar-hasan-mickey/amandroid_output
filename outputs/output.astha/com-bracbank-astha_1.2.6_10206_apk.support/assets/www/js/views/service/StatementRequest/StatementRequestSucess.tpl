<div class="pagewrapper">
    <aside class="mainnav">
  <div class="text-center userInfo">
    <div>
      <img src="images/brand/user4.png" class="profPic img-circle">
    </div>
    <div>
      <p>Shakib Umar</p>
      <p class="small info">Last login:  <%-els.get("lastSuccessfulLogin")%></p>
				  <%if(isNull(<%-els.get("lastFailureLogin")%>)){%>
				  <p class="small info">Last failure login: <%-els.get("lastFailureLogin")%></p>
				  <%}%>
    </div>            
  </div>
    
  <nav>
    <ul>
      <li class="active"><a href="../../../app/dashboard.html"><span class="ico dashboard"></span>Home</a></li>
      <li class="" data-toggle="collapse" href="#accounts" id="subNav" aria-expanded="false" aria-controls="accounts"><a href="#"><span class="ico account"></span>Products</a></li>        
      <ul class="collapse" id="accounts">
        <li><a href="../../../app/accounts/accounts/accountType.html">Accounts</a></li>
        <li><a href="../../../app/accounts/creditCard/cc_type.html">Credit Card</a></li>
        <li><a href="../../../app/accounts/loan/loantype.html">Loans</a></li>
        <li><a href="../../../app/accounts/deposit/depositType.html">Term Deposits</a></li>
        <li><a href="../../../app/accounts/prepaidCard/prepaid_list.html">Prepaid Card</a></li>
        <!--<li><a href="../../../app/accounts/deposit/apply_term_deposit.html">Open Tern Deposits</a></li>-->
      </ul>
      <li><a href="../../../app/transfers/paymentType.html"><span class="ico transfer"></span>Transfers</a></li>
      <li><a href="../../../app/managebeneficiary/paymentType.html"><span class="ico beneficiary"></span>Manage Beneficiaries</a></li>
      <li><a href="../../../app/billpay/billerType.html"><span class="ico billpay"></span>Bills &amp; Fees</a></li>
      <li><a href="../../../app/managebiller/billerType.html"><span class="ico managebiller"></span>Manage Billers</a></li>
      <li><a href="../../../app/services/serviceRequest.html"><span class="ico service"></span>Service Request</a></li>
      <li><a href="#"><span class="ico upcoming"></span>Payment Reminders</a></li>
      <li><a href="../../../app/more/more.html"><span class="ico more"></span>More options</a></li>
      <li><a href="../../../app/settings/settings.html"><span class="ico settings"></span>User Settings</a></li>
      <li><a href="../../../index.html" class="btn-logout"><span class="ico logout"></span>Logout</a></li>
    </ul>
  </nav>
</aside>
      <div class="bodywrapper">
    <div class="contentwrap">
    <section class="content">
		
    <div class="dTable-wrap">
      <div class="dTable-middle">
        <div class="container">
            <div class="text-center ani-success animation-in">
        <span class="ico-badge center-block">
          <span class="menu_icon ico-3x statReqSucc"></span>
        </span>
            </div>
            <div class="ani-slideup animation-in">
              <p class="text-center"><%-$.i18n.t('app.service.statmentsucess')%></p>
            </div>
          </div>
        </div>
      </div>
    </section>
    </div><!-- / contentwrap-->
  </div><!-- / bodywrapper-->
    <div class="area">
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
    </div><!-- / area-->
    
    <div class="footMenu footer_confirm">
      <a href="#" class="mnutoggle" id="mnutoggle"><span class="menu_icon ico-xs menu"></span><%-$.i18n.t('app.wealth.menulabel')%></a>      
      <a href="../../../app/transfers/paymentType.html" class=""><span class="menu_icon ico-xs transfer"></span><%-$.i18n.t('app.service.transfers')%></a>
      <a href="#/wealth"><span class="menu_icon ico-xs product"></span><%-$.i18n.t('app.service.home')%></a>
      <a href="../../../app/billpay/billerType.html" class=""><span class="menu_icon ico-xs bpay"></span><%-$.i18n.t('app.service.billpay')%></a>
      <a href="#/servicerequest" class=" active "><span class="menu_icon ico-xs request"></span><%-$.i18n.t('app.service.services')%></a>
    </div>
  </div><!-- / pagewrapper-->