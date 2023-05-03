<script src="js/library/bootstrap.min.js"></script>
<script src="js/libs/common/appcommon.js"></script>

<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccountslist;
	try{
		var myaccountslist = els.get("creditCardAccountList");
	}catch(e){
		myaccountslist = "";
	}
	console.log("myaccountslist",myaccountslist);
%>
		<!--Appwrapper Starts Here-->
		<div class="pagewrapper" id="appwrapper" >
			<!-- Header area -->
			<header class="appheader">
  <div class="headerLeft">
    <a href="../../dashboard.html" class="bacArr">
      <i class="fa fa-angle-left" aria-hidden="true"></i>
    </a>
  </div>
  <h4><%-$.i18n.t('app.wealth.creditcard')%></h4>
  

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
                        <a href="creditCard.html">
                            <div class="card card-default acc card-CC card-CC-gold visa-CC">
                                <p class="m0"><%- data.productName%>
                                    <span class="logo-xs pull-right"></span>
                                </p>
                                <span class="menu_icon chip pull-left"></span>
                                <div class="clearfix"></div>
                                <h4 class="ac-num text-muted text-center">
                                   <%- data.accountNumber%>
                                </h4>
                                <div class="amt">
                                    <p class="small m0 text-muted">Outstanding Balance</p>
                                    <span class="num"><%- checkAmount($.formatNumber(data.availableCreditLimit, {format:"#,###.00", locale:"us"})) %>
                                       
                                    </span>
                                    <span class="small cur dCur text-muted"><%- data.currencyCode %></span>
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
			
	function applyrpl(){
	Backbone.history.navigate("#/applyreadycashrequest");
	}
	</script>
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
