<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>

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
  <h4><%-$.i18n.t('app.prepaidcard.prepaidcard')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content">
    <form method="post" action="#" id="idForm">
        <div class="dashTab accDet cardListAni">
            <!-- Tab panes -->
            <div class="vc-card">
                <ul class="list-unstyled">
                    <li class="animation-in">
                        <a href="javascript:void(0);" id="prepaidbacknav" >
                            <div class="card card-default acc card-CC card-CC-gold visa-CC">
                                <p class="m0">Gold Card
                                    <span class="logo-xs pull-right"></span>
                                </p>
                                <span class="menu_icon chip pull-left"></span>
                                <div class="clearfix"></div>
                                <h4 class="ac-num text-muted text-center">
                                    <span class="cc-no">1234</span>
                                    <span class="cc-no">XXXX</span>
                                    <span class="cc-no">XXXX</span>
                                    <span class="cc-no">4567</span>
                                </h4>
                                <div class="amt">
                                    <p class="small m0 text-muted">Credit Available</p>
                                    <span class="num">5,52,541.
                                        <span class="deci">56</span>
                                    </span>
                                    <span class="small cur dCur text-muted">BDT</span>
                                </div>
                                <div class="has_link"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
                            </div>
                        </a>
                    </li>
                    <li class="animation-in">
                        <a href="javascript:void(0);" id="prepaidbacknav" >
                            <div class="c-cards-stack-item card card-default acc card-CC card-CC-plat master-CC status-blocked">
                                <p class="m0">Platinum Card
                                    <span class="logo-xs pull-right"></span>
                                </p>
                                <span class="menu_icon chip pull-left"></span>
                                <div class="clearfix"></div>
                                <h4 class="ac-num text-muted text-center">
                                    <span class="cc-no">6521</span>
                                    <span class="cc-no">XXXX</span>
                                    <span class="cc-no">XXXX</span>
                                    <span class="cc-no">4512</span>
                                </h4>
                                <div class="amt">
                                    <p class="small m0 text-muted">Credit Available</p>
                                    <span class="num">65,452.
                                        <span class="deci">56</span>
                                    </span>
                                    <span class="small cur dCur text-muted">BDT</span>
                                </div>
                                <div class="has_link"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
                                <div class="corner-ribbon top-right small label-danger">Blocked</div>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- / portTab-->
    </form>
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
