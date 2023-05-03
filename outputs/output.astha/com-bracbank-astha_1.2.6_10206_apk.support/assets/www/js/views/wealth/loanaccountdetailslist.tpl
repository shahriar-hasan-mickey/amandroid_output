<%
	var els = new EncryptedLocalStorage('secret'); 
%>
		<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="javascript:void(0);" id="loanbackbutton" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.loan.loans')%></h4>
  

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
                        <a href="javascript:void(0);" id="termloan" >
                            <div class="c-cards-stack-item card card-default loan">
                                <p class="text-right m0">
                                    <span class="logo-xs"></span>
                                </p>
                                <p class="name">Term Loan</p>
                                <p class="numb small text-muted">182XXXXXXXXXX64</p>
                                <div class="amt">
                                    <p class="small m0 text-muted">Total Outstanding Amount</p>
                                    <span class="num">16,342.
                                        <span class="deci">00</span>
                                    </span>
                                    <span class="small cur dCur text-muted">BDT</span>
                                </div>
                                <div class="has_link"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
                            </div>
                        </a>
                    </li>
                    <li class="animation-in">
                        <a href="javascript:void(0);" id="depandloan" >
                            <div class="c-cards-stack-item card card-default loan">
                                <p class="text-right m0">
                                    <span class="logo-xs"></span>
                                </p>
                                <p class="name">Demand Loan</p>
                                <p class="numb small text-muted">182XXXXXXXXXX64</p>
                                <div class="amt">
                                    <p class="small m0 text-muted">Total Outstanding Amount</p>
                                    <span class="num">22,000.
                                        <span class="deci">56</span>
                                    </span>
                                    <span class="small cur dCur text-muted">BDT</span>
                                </div>
                                <div class="has_link"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
                            </div>
                        </a>
                    </li>
                    <li class="animation-in">
                        <a href="javascript:void(0);" id="revokeloan" >
                            <div class="c-cards-stack-item card card-default loan">
                                <p class="text-right m0">
                                    <span class="logo-xs"></span>
                                </p>
                                <p class="name">Revolve Loan</p>
                                <p class="numb small text-muted">182XXXXXXXXXX64</p>
                                <div class="amt">
                                    <p class="small m0 text-muted">Total Outstanding Amount</p>
                                    <span class="num">18,000.
                                        <span class="deci">00</span>
                                    </span>
                                    <span class="small cur dCur text-muted">BDT</span>
                                </div>
                                <div class="has_link"><i class="fa fa-angle-right" aria-hidden="true"></i></div>
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
