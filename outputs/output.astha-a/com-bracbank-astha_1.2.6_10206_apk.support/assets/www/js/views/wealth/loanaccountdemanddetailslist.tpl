<%
	var els = new EncryptedLocalStorage('secret'); 
%>
		<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="javascript:void(0);" id="depandloanbackbtn" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.loan.demandloandetails')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content" id="loan_dtls">                    
    <div class="dashTab accDet">
        <!-- Tab panes -->
        <div class="vc-card">
            <ul class="list-unstyled">
                <li>

                    <div class="card card-default loan">
                        <p class="text-right m0">
                            <span class="logo-xs"></span>
                        </p>
                        <p class="name">Shakib</p>
                        <p class="numb small text-muted">182XXXXXXXXXX64 | Demand loan</p>
                        <div class="amt">
                            <p class="small m0 text-muted">Total Limit</p>
                            <span class="num">22,000.
                                <span class="deci">56</span>
                            </span>
                            <span class="small cur dCur text-muted">BDT</span>
                        </div>
                        <div class="corner-ribbon top-right small label-danger">Overdue</div>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- / portTab-->                    
    <div class="state-wrap">                    
        <ul class="list-unstyled list-nobrd">
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.loan.totallimit')%></p>
                <div class="amt">
                    <span class="num">1,000.
                        <span class="deci">00</span>
                    </span>
                    <span class="small cur dCur text-muted">BDT</span>
                </div>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.loan.loangrantdate')%></p>
                <div class="dater">
                    <span class="dd d_cd">18</span>
                    <span class="mm d_cm">Nov</span>
                    <span class="yy d_cy">2018</span>
                </div>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.loan.nextrenewaldate')%></p>
                <div class="dater">
                    <span class="dd d_cd">18</span>
                    <span class="mm d_cm">Nov</span>
                    <span class="yy d_cy">2018</span>
                </div>
            </li>
            <li class="list-group-item">
                <p class="text-muted small"><%-$.i18n.t('app.loan.nextduedate')%></p>
                <div class="dater">
                    <span class="dd d_cd">18</span>
                    <span class="mm d_cm">Nov</span>
                    <span class="yy d_cy">2018</span>
                </div>
            </li>
            <li class="list-group-item text-center">
                <a href="javascript:void(0);" id="hideDetails" class="btn btn-primary"  style="display: none"><%- $.i18n.t('button.loan.lessdetails') %>
                    <span class="fa fa-chevron-up"></span>
                </a>
                <a href="javascript:void(0);" id="showDetails"  class="btn btn-primary" ><%- $.i18n.t('button.loan.moredetails') %>
                    <span class="fa fa-chevron-down"></span>
                </a>
            </li>
            <div id="a1" style="display: none">
            <li class="list-group-item mores" >
                <p class="text-muted small"><%-$.i18n.t('app.loan.productdescription')%></p>
                <p>Demand Loans</p>
            </li>
            <li class="list-group-item mores">
                <p class="text-muted small"><%-$.i18n.t('app.loan.Loaninterestrate')%></p>
                <p>5 %</p>
            </li>
            <li class="list-group-item mores">
                <p class="text-muted small"><%-$.i18n.t('app.loan.tenure')%></p>
                <p>3 years</p>
            </li>
            <li class="list-group-item mores">
                <p class="text-muted small"><%-$.i18n.t('app.loan.paymentfrequency')%></p>
                <p>Monthly</p>
            </li>
            </div>
        </ul>
    </div>
    <!-- /state-wrap-->
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
