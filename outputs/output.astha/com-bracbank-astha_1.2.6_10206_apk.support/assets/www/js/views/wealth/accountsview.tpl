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
    <a href="javascript:void(0);" id="accstat" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.accounts.accountdetails')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content" id="accStament">

    <div class="dashTab accDet">
        <!-- Tab panes -->
        <div class="vc-card">
            <ul class="list-unstyled">
                <li>
                    <div class="card card-default acc">
                        <p class="text-right m0">
                            <span class="logo-xs"></span>
                        </p>
                        <p class="name">Shakib</p>
                        <p class="numb small text-muted">182XXXXXXXXXX64 | Salary Account</p>
                        <div class="amt">
                            <p class="small m0 text-muted">Available Balance</p>
                            <span class="num">23,000.
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
    <!-- / portTab-->

    <div class="state-wrap">
        <ul class="list-unstyled list-nobrd">
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.accounts.currentbalance')%></p>
                <div class="amt">
                    <span class="num">23,000.
                        <span class="deci">56</span>
                    </span>
                </div>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.accounts.unclearedamount')%></p>
                <div class="amt">
                    <span class="num">12,000.
                        <span class="deci">00</span>
                    </span>
                </div>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.accounts.overdraftlimit')%></p>
                <div class="amt">
                    <span class="num">100,00.
                        <span class="deci">00</span>
                    </span>
                </div>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.accounts.holdamt')%></p>
                <div class="amt">
                    <span class="num">100,00.
                        <span class="deci">00</span>
                    </span>
                </div>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.accounts.debitinterestrate')%></p>
                <p>5.60%</p>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.accounts.creditinterestrate')%></p>
                <p>5.60%</p>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.accounts.availablerewardpoint')%> </p>
                <p>6000</p>
            </li>
            <li class="list-group-item text-center">
                <a href="javascript:void(0);" id="hideDetails" class="btn btn-primary"  style="display: none">Less Details
                    <span class="fa fa-chevron-up"></span>
                </a>
                <a href="javascript:void(0);" id="showDetails" class="btn btn-primary" >More Details
                    <span class="fa fa-chevron-down"></span>
                </a>
            </li>
            <div id="a1" style="display: none">
            <li class="list-group-item mores" id="hideDetails1" >
                <p class="small text-muted"><%-$.i18n.t('app.accounts.nickname')%></p>
                <p>Shakib</p>
            </li>
            <li class="list-group-item mores" id="hideDetails2" >
                <p class="small text-muted"><%-$.i18n.t('app.accounts.branchname')%></p>
                <p>Brac Bank</p>
            </li>
            <li class="list-group-item mores" id="hideDetails3">
                <p class="small text-muted"><%-$.i18n.t('app.accounts.accountopeningdat')%></p>
                <p>
                    <div class="dater">
                        <span class="dd d_cd">18</span>
                        <span class="mm d_cm">Nov</span>
                        <span class="yy d_cy">2018</span>
                    </div>
                </p>
            </li>
            <li class="list-group-item mores" id="hideDetails4" >
                <p class="small text-muted"><%-$.i18n.t('app.accounts.nomineename')%></p>
                <p>Hasan</p>
            </li>
           </div>
        </ul>
         
    </div>
    <!-- / state-wrap-->
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
