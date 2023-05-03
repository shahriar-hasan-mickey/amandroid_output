<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>

<%
	var els = new EncryptedLocalStorage('secret'); 
%>
	<body>
		<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="javascript:void(0);" id="backbutton" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.accounts.chequehistory')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content">

    <div class="row">
        <div class="veriIconWrap"><span class="menu_icon2 ico1x chequeHis"></span></div>
        <ul class="list-unstyled list-nobrd txnSum">
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.accounts.chequeno')%></p>
                <p>87XXX89</p>
            </li>
            <li class="list-group-item">
                <p class="small text-muted"><%-$.i18n.t('app.accounts.chequeissuedate')%></p>
                <p>
                    </p><div class="dater">
                        <span class="dd d_cd">18</span>
                        <span class="mm d_cm">Nov</span>
                        <span class="yy d_cy">2018</span>
                    </div>
                <p></p>
            </li>
            <li class="list-group-item">
                <p class="small text-muted"><%-$.i18n.t('app.accounts.processeddate')%></p>
                <p>
                    </p><div class="dater">
                        <span class="dd d_cd">18</span>
                        <span class="mm d_cm">Nov</span>
                        <span class="yy d_cy">2018</span>
                    </div>
                <p></p>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.accounts.chequestatus')%></p>
                <p>Success</p>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.accounts.remarks')%></p>
                <p>Test</p>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.accounts.channel')%></p>
                <p>Cash</p>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.accounts.amount')%></p>
                <div class="amt">
                    <span class="num">10,000.
                        <span class="deci">00</span>
                    </span>
                    <span class="cur">BDT</span>
                </div>
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
		<!--Appwrapper Ends Here-->
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
