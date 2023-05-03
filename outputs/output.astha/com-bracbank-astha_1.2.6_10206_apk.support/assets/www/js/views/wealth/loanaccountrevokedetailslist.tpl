<%
	var els = new EncryptedLocalStorage('secret'); 
%>
	<body>
		<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="javascript:void(0);" id="revokeloanbackbtn"  class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.loan.revolveloan')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content">
    <!--Content Starts Here-->
    <div class="dashTab accDet">
        <!-- Tab panes -->
        <div class="vc-card">
            <ul class="list-unstyled">
                <li>
                    <a href="javascript:void(0);" id="revokeloanbackbtn">
                        <div class="card card-default loan">
                            <p class="text-right m0">
                                <span class="logo-xs"></span>
                            </p>
                            <p class="name">Shakib</p>
                            <p class="numb small text-muted">182XXXXXXXXXX64 | Revolve Loan</p>
                            <div class="amt">
                                <p class="small m0 text-muted"><%-$.i18n.t('app.loan.totaloutstandingamount')%></p>
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
    <!-- Nav tabs -->
    <div class="links">
        <a href="javascript:void(0);" id="revokeloanbackbtn"><%-$.i18n.t('app.loan.statement')%></a>
    </div>
    <div class="state-wrap">

        <ul class="list-unstyled list-nobrd">
            <li class="list-group-item">
                <p class="text-muted small">Details Title 1</p>
                <p>Details 1</p>
            </li>
            <li class="list-group-item">
                <p class="text-muted small">Details Title 2</p>
                <p>Details 2</p>
            </li>
            <li class="list-group-item">
                <p class="text-muted small">Details Title 3</p>
                <p>Details 3</p>
            </li>
            <li class="list-group-item">
                <p class="text-muted small">Details Title 4</p>
                <p>Details 4</p>
            </li>
        </ul>

    </div>  
    <!-- / state-wrap -->
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
