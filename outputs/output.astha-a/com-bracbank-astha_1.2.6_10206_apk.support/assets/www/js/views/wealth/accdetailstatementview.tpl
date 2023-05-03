<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>

<%
	var els = new EncryptedLocalStorage('secret'); 
	
%>
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="javascript:void(0);" id="acccbackbutton" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.accounts.detailedstatement')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content">
    <h3 class="tab-head"><%-$.i18n.t('app.accounts.detailedstatements')%></h3>
    <ul class="list-group state-list txnSum">
        <li class="list-group-item">
            <div class="dater small text-muted">
                <span class="dd d_cd">18</span>
                <span class="mm d_cm">Nov</span>
                <span class="yy d_cy">2018</span>
            </div>
            <p>Fund Transfer</p>
            <p class="text-muted small">A23FG0008</p>
            <div class="amt neg text-right">
                <span class="num">-5,000.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <small class="text-muted"><%-$.i18n.t('app.accounts.availablebalance')%></small>
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
            <p>Airtel Billpayment</p>
            <p class="text-muted small">ATBP8810</p>
            <div class="amt neg text-right">
                <span class="num">-5,000.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <small class="text-muted"><%-$.i18n.t('app.accounts.availablebalance')%></small>
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
            <p>Check Deposit</p>
            <p class="text-muted small">CHKDEP996</p>
            <div class="amt pos text-right">
                <span class="num">+9,000.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <small class="text-muted"><%-$.i18n.t('app.accounts.availablebalance')%></small>
                <span class="num">18,342.
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
            <p>ATM Withdrawal </p>
            <p class="text-muted small">&nbsp;</p>
            <div class="amt neg text-right">
                <span class="num">-4,000.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <small class="text-muted"><%-$.i18n.t('app.accounts.availablebalance')%></small>
                <span class="num">19,242.
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
            <p>Fund Transfer</p>
            <p class="text-muted small">FT634098</p>
            <div class="amt neg text-right">
                <span class="num">-98.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <small class="text-muted"><%-$.i18n.t('app.accounts.availablebalance')%></small>
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
            <p>Fund Transfer</p>
            <p class="text-muted small">FT634098</p>
            <div class="amt neg text-right">
                <span class="num">-6,500.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <small class="text-muted"><%-$.i18n.t('app.accounts.availablebalance')%></small>
                <span class="num">23,340.
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
            <p>Airtel Billpayment</p>
            <p class="text-muted small">ATBP8810</p>
            <div class="amt neg text-right">
                <span class="num">-5,000.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <small class="text-muted"><%-$.i18n.t('app.accounts.availablebalance')%></small>
                <span class="num">29,840.
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
            <p>Check Deposit</p>
            <p class="text-muted small">CHKDEP996</p>
            <div class="amt pos text-right">
                <span class="num">+200.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <small class="text-muted"><%-$.i18n.t('app.accounts.availablebalance')%></small>
                <span class="num">34,840.
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
            <p>ATM Withdrawal </p>
            <p class="text-muted small">&nbsp;</p>
            <div class="amt neg text-right">
                <span class="num">-11,150.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <small class="text-muted"><%-$.i18n.t('app.accounts.availablebalance')%></small>
                <span class="num">34,040.
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
            <p>Fund Transfer</p>
            <p class="text-muted small">FT634098</p>
            <div class="amt neg text-right">
                <span class="num">-35,890.
                    <span class="deci">00</span>
                </span>
            </div>
            <div class="amt text-right small">
                <small class="text-muted"><%-$.i18n.t('app.accounts.availablebalance')%></small>
                <span class="num">46,190.
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
