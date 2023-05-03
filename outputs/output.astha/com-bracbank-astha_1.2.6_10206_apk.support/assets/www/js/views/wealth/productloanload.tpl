<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>

<%
	var els = new EncryptedLocalStorage('secret'); 
%>
<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="javascript:void(0);" id="prepaidback" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.prepaidcard.prepaidcard')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content" id="prepaid_dtls">
    <div class="dashTab">
        <div class="vc-card">
            <ul class="list-unstyled">
                <li>
                    <div class="card card-default card-CC card-CC-gold">
                        <p class="m0">Gold Card
                            <span class="logo-xs pull-right"></span>
                        </p>
                        <span class="menu_icon chip pull-left"></span>
                        <br/>
                        <strong>Shakib</strong>
                        <div class="clearfix"></div>
                        <h4 class="ac-num text-muted text-center">
                            <span class="cc-no">4125</span>
                            <span class="cc-no">XXXX</span>
                            <span class="cc-no">XXXX</span>
                            <span class="cc-no">1247</span>
                        </h4>
                        <div class="amt">
                            <p class="small m0 text-muted">Available Balance</p>
                            <span class="num">15,000.
                                <span class="deci">56</span>
                            </span>
                            <span class="small cur dCur text-muted">BDT</span>
                        </div>
                        <div class="corner-ribbon top-right small label-success">Active</div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="state-wrap">
        <ul class="list-unstyled list-nobrd">
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.prepaidcard.expirydate')%></p>
                <div class="dater">
                    <span class="dd d_cd">18</span>
                    <span class="mm d_cm">Nov</span>
                    <span class="yy d_cy">2018</span>
                </div>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.prepaidcard.creditlimit')%></p>
                <div class="amt">
                    <span class="num">8,000.
                        <span class="deci">00</span>
                    </span>
                    <span class="small cur dCur text-muted">BDT</span>
                </div>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.prepaidcard.availablecashlimit')%></p>
                <div class="amt">
                    <span class="num">1,000.
                        <span class="deci">00</span>
                    </span>
                    <span class="small cur dCur text-muted">BDT</span>
                </div>
            </li>
            <li class="list-group-item text-center">
               <a href="javascript:void(0);" class="btn btn-primary" id="hideDetails" style="display: none"><%- $.i18n.t('button.loan.lessdetails') %>
                    <span class="fa fa-chevron-up"></span>
                </a>
                <a href="javascript:void(0);" class="btn btn-primary" id="showDetails"><%- $.i18n.t('button.loan.moredetails') %>
                    <span class="fa fa-chevron-down"></span>
                </a>
            </li>
            <div id="a13" style="display: none">
            <li class="list-group-item mores">
                <p class="small text-muted"><%-$.i18n.t('app.prepaidcard.productname')%></p>
                <p>Lorem</p>
            </li>
            <li class="list-group-item mores">
                <p class="small text-muted"><%-$.i18n.t('app.prepaidcard.onlineusage')%></p>
                <p>Enabled</p>
            </li>
            <li class="list-group-item mores">
                <p class="small text-muted"><%-$.i18n.t('app.prepaidcard.cashwithdrawal')%></p>
                <p>Enabled</p>
            </li>
            </div>
        </ul>
    </div>
    <!-- /state-wrap -->
</section>	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
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
