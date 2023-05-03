<%
	var els = new EncryptedLocalStorage('secret');
%>
<div class="pagewrapper">
	 <aside class="mainnav" id="mnutogglediv">
        <div class="text-center userInfo">
            <div>
              <img src="images/common/user_default1.png" class="profPic img-circle"> 
            </div>
            <div>
              <p class="profilename"></p>
              <p class="small info" ><%-$.i18n.t('app.wealth.lastlogin1')%><span id="lastlogin"></span></p>
			<p class="small info fail" ><%-$.i18n.t('app.wealth.lastfailiurelogin1')%> <span id="lastfaillogin"></span></p>
            </div>            
        </div>
		<nav>
			<ul>
      			<li class="active"><a href="#/wealth" id="dashboard"><span class="ico dashboard"></span><%-$.i18n.t('app.wealth.menu')%></a></li>
      			<li class="" data-toggle="collapse" href="#accounts" id="subNav" aria-expanded="false" aria-controls="accounts"><a href="javascript:void(0);"><span class="ico account"></span><%-$.i18n.t('app.menu.products')%></a></li>        
      			<ul class="collapse" id="accounts">
        			<li><a href="javascript:void(0);" id="slide_out_savings"><%-$.i18n.t('app.wealth.accounts')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_deposits"><%-$.i18n.t('app.wealth.termdeposit')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_creditcard"><%-$.i18n.t('app.wealth.creditcard')%></a></li>
				<li><a href="javascript:void(0);" id="slide_out_prepaidcard"><%-$.i18n.t('app.wealth.prepaidcard')%></a></li>
        			<li><a href="javascript:void(0);" id="slide_out_loan"><%-$.i18n.t('app.wealth.loans')%></a></li>
      			</ul>
      			<li><a href="javascript:void(0);" id="slide_out_statementCertificate"><span class="ico statement_cert"></span><%-$.i18n.t('app.wealth.sts&cert')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_transfers"><span class="ico transfer"></span><%-$.i18n.t('app.wealth.transfers')%></a></li>
      			<li class="scan_pay" id="slide_out_qrcode" aria-controls="qrcode"><a href="javascript:void(0);"><span class="ico qrcode"></span><%-$.i18n.t('app.qrcode.scanandpay')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_positivePay"><span class="ico positive_pay"></span><%-$.i18n.t('app.wealth.positivepay')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_billpay"><span class="ico billpay"></span><%-$.i18n.t('app.wealth.billandfee')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_managebene"><span class="ico beneficiary"></span><%-$.i18n.t('app.wealth.benemanagement')%></a></li>
			<li><a href="javascript:void(0);" id="slide_out_transactions"><span class="ico transactions"></span><%-$.i18n.t('app.wealth.transactions')%></a></li>
			<li><a href="javascript:void(0);" id="slide_out_transferlimit"><span class="ico transferLimit"></span><%-$.i18n.t('app.more.general.transferlimit')%></a></li>
      			<!--<li><a href="javascript:void(0);" id="manage_biller"><span class="ico managebiller"></span><%-$.i18n.t('app.wealth.managebillers')%></a></li>-->
      			<li><a href="javascript:void(0);" id="slide_out_services"><span class="ico service"></span><%-$.i18n.t('app.wealth.servicereq')%></a></li>
      			<li><a href="javascript:void(0);" id="slide_out_user_settings"><span class="ico settings"></span><%-$.i18n.t('app.wealth.usersettings')%></a></li>
      			<!--<li><a href="javascript:void(0);"><span class="ico upcoming"></span><%-$.i18n.t('app.wealth.payreminder')%></a></li>-->
      			<li><a href="javascript:void(0);" id="slideout_more"><span class="ico more"></span><%-$.i18n.t('app.wealth.moreoptions')%></a></li>
			<li><a href="javascript:void(0);" id="slideout_contact" onclick="postLogRedir()"><span class="ico contacts"></span><%-$.i18n.t('app.wealth.contactus')%></a></li>  
      			<li><a href="javascript:void(0);" id="logout" class="btn-logout"><span class="ico logout"></span><%-$.i18n.t('app.wealth.logout')%></a></li>
			</ul>
    	</nav>
	</aside>
	<div id="ovrlay"></div>
	<header	class="appheader">
		<div class="headerLeft">
			<button type="button" id="mnutoggle" class="btn btn-default mnutoggle">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>	
			<a href="javascript:void(0)" class="bacArr" id="backToMore">
		      <i class="fa fa-angle-left" aria-hidden="true"></i>
			</a>
		</div>
		<div class="headerMiddle">			
			<h4 class="p10"><%-$.i18n.t('app.locator.locatorlabel')%></h4>
		</div>
	</header>		
	<div class="bodywrapper">
    	<div class="contentwrap">
        	<section class="content">
            	<br>                        
            	<form>
              		<div class="logWit small">
                		<div class="row">
                  			<div class="col-xs-6 col-sm-6 pr5">
                    			<a href="javascript:void(0);" class="username text-center active" id="nearme">
                      				<span class="menu_icon ico-xs userI"></span>
                      				<p class="small m0"><%-$.i18n.t('app.locator.nearmelabel')%></p>
                    			</a>
                  			</div>
                  			<div class="col-xs-6 col-sm-6 pl5">
                    			<a href="javascript:void(0);" class="mPIN text-center" id="searchByCity">
                      				<span class="menu_icon ico-xs mPIN"></span>
                      				<p class="small m0"><%-$.i18n.t('app.locator.searchbycitylabel')%></p>
                    			</a>
                  			</div>				
                		</div>
              		</div>
              		<div class="panel panel-default">
                		<div class="panel-body">
                  			<label for="slider"><%-$.i18n.t('app.locator.selectradius')%></label>
                  			<div>
		                    	<input type="text" autocomplete='off' id="sliderNear" value="" data-slider-min="5" data-slider-max="20" data-slider-step="5" data-slider-value="5"  data-slider-tooltip="hide"/>
		                    	<h4 class="pull-right showslideval">5 <%-$.i18n.t('app.locator.kmlabel')%></h4>
                  			</div> 
                		</div>
              		</div> 
              		<div class="panel panel-default trans_search">
                		<div class="panel-body">
                  			<label><%-$.i18n.t('app.locator.searchby')%></label>
                  			<div class="clearfix"></div> 
                  			<!--<div class="btn-group" data-toggle="buttons">
                    			<label class="btn btn-primary active">
                      				<input type="radio" name="choice" value="ATM" autocomplete="off" checked> <%-$.i18n.t('app.locator.atm')%>
                    			</label>
                    			<label class="btn btn-primary">
                      				<input type="radio" name="choice" value="Branch" autocomplete="off"> <%-$.i18n.t('app.locator.branch')%>
                    			</label>
                  			</div>-->

							<div class="custRadio_pass card_management_over">
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="filterType" id="ALL" value="all" checked>
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="small">All</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="filterType" id="ATM" value="atm">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="small">ATM</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="filterType" id="Branch" value="branch">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="small">Branch</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="filterType" id="SubBranch" value="sub_branch">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="small">Sub-Branch</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="filterType" id="AgentBanking" value="agent_banking">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="small">Agent Banking</span>
												</div>
											</div>
										</label>
									</div>
								</div>
								<div class="box">
									<div class="radio">
										<label>
											<input type="radio" name="filterType" id="SMEOutlet" value="sme_outlet">
											<div class="row bg">
												<div class="col-xs-12 p0">
													<span class="small">SME Outlets</span>
												</div>
											</div>
										</label>
									</div>
								</div>
							</div>

                  			<div class="clearfix"></div> 
                		</div>
              		</div>
					<div class="row">
						<div class="col-xs-8 col-xs-offset-2">
							<a href="javascript:void(0);" id="searchBtn_PostLogin" class="btn btn-primary btn-block"><%-$.i18n.t('button.locator.search')%></a>
						</div>
					</div>
            	</form>                            
          	</section>
        </div>
	</div>
</div>
<script>
$(document).ready(function() {
	$("#sliderNear").slider();
    $("#sliderNear").on("slide", function(slideEvt) {
    	$(".showslideval").text(slideEvt.value +" km");
    });
});
</script>
