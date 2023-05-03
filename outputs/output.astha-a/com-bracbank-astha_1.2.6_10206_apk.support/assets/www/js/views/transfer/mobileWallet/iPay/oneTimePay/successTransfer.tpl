3<div class="pagewrapper">	
	<aside class="mainnav">
    	<div class="text-center userInfo">
        	<div>
            	<img src="images/brand/user4.png" class="profPic img-circle"/>
            </div>
            <div>
            	<p>Shakib Umar</p>
              	<p class="small">CIF ID 876767369223</p>
              	<p class="small info">Savings A/C, Gulshan branch</p>
              	<p class="small info">Last login:  <%-els.get("lastSuccessfulLogin")%></p>
				  <%if(isNull(<%-els.get("lastFailureLogin")%>)){%>
				  <p class="small info">Last failure login: <%-els.get("lastFailureLogin")%></p>
				  <%}%>
            </div>            
        </div>
		<nav>
        	<ul>
        		<li class="active"><a href="javascript:void(0);"><span class="ico dashboard"></span><%-$.i18n.t('app.wealth.menu')%></a></li>
        		<li><a href="javascript:void(0);"><span class="ico upcoming"></span><%-$.i18n.t('app.wealth.upcomingpayments')%></a></li>
        		<li class="" data-toggle="collapse" href="javascript:void(0);" id="subNav" aria-expanded="false" aria-controls="accounts"><a href="javascript:void(0);"><span class="ico account"></span><%-$.i18n.t('app.wealth.accounts')%></a></li>        
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
	</aside>
        <div class="bodywrapper">
        	<div class="contentwrap">
            	<section class="content">        
                	<div class="dTable-wrap">
                    	<div class="dTable-middle">
                        	<div class="container">
                            	<div class="text-center ani-success animation-in">
                                	<span class="ico-badge center-block">
                                    	<span class="menu_icon ico-3x thumb-up"></span>
                                	</span>
                            	</div>
                            	<div class="ani-slideup animation-in">
                                	<p class="text-center"><%-$.i18n.t('app.transferss.paysuccess')%></p>
                                	<p class="text-center"><%-$.i18n.t('app.transferss.paymentrefnum')%></p>
                                	<p class="text-center">
                                        <strong>TBX014213</strong>
	                                </p>
                                	<div class="col-xs-12 text-center">
                                    	<a href="javascript:void(0);">
                                        	<span class="fa fa-share-alt"></span> <%-$.i18n.t('app.transferss.sharepaymentlabel')%> 
                                        </a>
                            		</div>
                                	<div class="clearfix"></div>
                                	<br/>
                                	<div class="row">
                                         <!--<div class="col-xs-12 text-center">
                                        	<a href="#/ipayviewbeneficiarys"><%-$.i18n.t('app.transferss.addasbeneficiary')%></a>
                                    	</div>-->
                                    	<br/>
                                    	<br/>
                                	</div>
                                	<div class="clearfix"></div>
                                	<br/>
                                	<div class="row">
                                        <div class="col-xs-6 pr5">
                                        	<button type="button" class="btn btn-default btn-block"><%-$.i18n.t('button.transfer.emailadvice')%></button>
                                    </div>
                                    <div class="col-xs-6 pl5">
                                    	<button type="button" class="btn btn-default btn-block" id="ok"><%-$.i18n.t('button.registration.ok')%></button>
                                    </div>
                            	</div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </div>
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
    </div>
    <div class="footMenu">
    	<!--<a href="javascript:void(0);"  class="mnutoggle" id="mnutoggle"><span class="menu_icon ico-xs menu"></span><%-$.i18n.t('app.wealth.menulabel')%></a> -->
        <a href="#/wealth" class="active"><span class="menu_icon ico-xs product"></span><%-$.i18n.t('app.wealth.dashboard')%></a>
      	<a href="#/transfer"><span class="menu_icon ico-xs transfer"></span><%-$.i18n.t('app.wealth.fntransfer')%></a>
      	<a href="javascript:void(0);"><span class="menu_icon ico-xs bpay"></span><%-$.i18n.t('app.wealth.billpay')%></a>
      	<a href="javascript:void(0);"><span class="menu_icon ico-xs request"></span><%-$.i18n.t('app.wealth.services')%></a>
    </div>
</div>