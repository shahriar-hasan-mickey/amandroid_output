<%
	var els = new EncryptedLocalStorage('secret'); 
%>
		<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="javascript:void(0);" id="accountsback" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.transferss.payment')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						        <section class="content" id="payment_type">
          <form method="post" action="#" id="idForm">
            <div class="radiobox">
              <div class="radio">
                <label>
                  <input type="radio" name="choice" value="withinbank" checked>
                  <div class="box">
                    <span class="menu_icon withinbank"></span>
                    <span class="small"><%-$.i18n.t('app.transferss.bracbank')%></span>
                  </div>
                </label>
              </div>
              <!-- / radio-->
              <div class="radio">
                <label>
                  <input type="radio" name="choice" value="otherbank">
                  <div class="box">
                    <span class="menu_icon otherbank"></span>
                    <span class="small"><%-$.i18n.t('app.transferss.otherbank')%></span>
                  </div>
                </label>
              </div>
              <!-- / radio-->
              <div class="radio">
                <label>
                  <input type="radio" name="choice" value="OwnAccount">
                  <div class="box">
                    <span class="menu_icon account"></span>
                    <span class="small"><%-$.i18n.t('app.transferss.myac')%></span>
                  </div>
                </label>
              </div>
              <!-- / radio-->
              <div class="radio">
                <label>
                  <input type="radio" name="choice" value="MyCreditCard">
                  <div class="box">
                    <span class="menu_icon ccard"></span>
                    <span class="small"><%-$.i18n.t('app.transferss.mybb')%></span>
                  </div>
                </label>
              </div>
              <!-- / radio-->
              <div class="radio">
                <label>
                  <input type="radio" name="choice" value="Wallets">
                  <div class="box">
                    <span class="menu_icon wallets"></span>
                    <span class="small"><%-$.i18n.t('app.transferss.mobilewallets')%></span>
                  </div>
                </label>
              </div>
              <!-- / radio-->
            </div>
            <!-- / radiobox-->

            <div class="clearfix"></div>
            <br>
            <input type="button" class="btn btn-primary btn-block" id="transferflow" value="<%- $.i18n.t('button.billpay.next') %>"/>
          
          </form>
        </section>	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
