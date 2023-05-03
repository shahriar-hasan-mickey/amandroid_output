<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>

<%
	var els = new EncryptedLocalStorage('secret'); 
%>
			<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="javascript:void(0);" id="rewardsnav" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.reward.rewardpointssummary')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content">

    <div class="row">
        <div class="veriIconWrap"><p>
        <span class="menu_icon2 ico1x reward"></span>
    </p></div>
    <ul class="list-unstyled list-nobrd txnSum">
        <li class="list-group-item">
            <p class="text-muted small"><%-$.i18n.t('app.reward.openingbalance')%></p>
            <div class="amt">
            <span class="num">12,000.
              <span class="deci">00</span>
            </span>
            <span class="cur">BDT</span>
          </div>
        </li>
        <li class="list-group-item">
            <p class="text-muted small"><%-$.i18n.t('app.reward.rewardpointsearned')%></p>
            <p>
                6000
            </p>
        </li>
        <li class="list-group-item">
            <p class="text-muted small"><%-$.i18n.t('app.reward.rewardpointsredeemed')%></p>
            <p>
                3000
            </p>
        </li>
        <li class="list-group-item">
            <p class="text-muted small"><%-$.i18n.t('app.reward.expiringthismonth')%></p>
            <p>
                150
            </p>
        </li>
        <li class="list-group-item">
            <p class="text-muted small"><%-$.i18n.t('app.reward.closingbalance')%></p>
            <p>
                1500
            </p>
        </li>
    </ul>
 </div>
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
