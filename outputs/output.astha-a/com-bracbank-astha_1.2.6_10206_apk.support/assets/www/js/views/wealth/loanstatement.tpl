<%
	var els = new EncryptedLocalStorage('secret'); 
%>
		<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="javascript:void(0);" id="loanstmtbackbutton" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.loan.revolveloanstatement')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content">
    <h3 class="tab-head"><%-$.i18n.t('app.loan.statement1')%></h3>
    <ul class="list-group state-list txnSum">
        <li class="list-group-item">
            <div class="dater small text-muted">
                <span class="dd d_cd">18</span>
                <span class="mm d_cm">Nov</span>
                <span class="yy d_cy">2018</span>
            </div>
            <p>BDT</p>
            <div class="amt pos text-right">
                <span class="num">+5,000.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <!--<small class="text-muted">Available Balance</small>-->
                <span class="num">5,000.
                    <span class="deci">00</span>
                </span>
                <span class="cur">BDT</span>
            </div>
        </li>
        <li class="list-group-item">
            <div class="dater small text-muted">
                <span class="dd d_cd">18</span>
                <span class="mm d_cm">Nov</span>
                <span class="yy d_cy">2018</span>
            </div>
            <p>BDT</p>
            <div class="amt neg text-right">
                <span class="num">-98.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <!--<small class="text-muted">Available Balance</small>-->
                <span class="num">23,242.
                    <span class="deci">00</span>
                </span>
                <span class="cur">BDT</span>
            </div>
        </li>
        <li class="list-group-item">
            <div class="dater small text-muted">
                <span class="dd d_cd">18</span>
                <span class="mm d_cm">Nov</span>
                <span class="yy d_cy">2018</span>
            </div>
            <p>BDT</p>
            <div class="amt neg text-right">
                <span class="num">-6,500.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <!--<small class="text-muted">Available Balance</small>-->
                <span class="num">23,340.
                    <span class="deci">00</span>
                </span>
                <span class="cur">BDT</span>
            </div>
        </li>
    </ul>
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
