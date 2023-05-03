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
  <h4><%-$.i18n.t('app.services.servicerequests')%></h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						       <section class="content" id="service_request">                    
          <form method="post" action="#" id="idForm">
            <div class="radiobox">
              <div class="radio">
                <label>
                  <input type="radio" name="choice" value="moo" checked>
                  <div class="box">
                    <span class="menu_icon modeofop"></span>
                    <span class="small"><%-$.i18n.t('app.services.modeofoperation')%></span>
                  </div>
                </label>
              </div><!-- / radio-->
              <div class="radio">
                <label>
                  <input type="radio" name="choice" value="reqtoken" >
                  <div class="box">
                    <span class="menu_icon reqToken"></span>
                    <span class="small"><%-$.i18n.t('app.services.requesttoken')%></span>
                  </div>
                </label>
              </div><!-- / radio-->	
              <div class="radio">
                <label>
                  <input type="radio" name="choice" value="tokRep" >
                  <div class="box">
                    <span class="menu_icon tokenRep"></span>
                    <span class="small"><%-$.i18n.t('app.services.tokenreplacement')%></span>
                  </div>
                </label>
              </div><!-- / radio-->				
              <div class="radio">
                <label>
                  <input type="radio" name="choice" value="cardManagement" >
                  <div class="box">
                    <span class="menu_icon CardManage"></span>
                    <span class="small"><%-$.i18n.t('app.services.cardmanagement')%></span>
                  </div>
                </label>
              </div><!-- / radio-->				
			      </div><!-- / radiobox-->
			    <div class="clearfix"></div><br>
          <input type="button" class="btn btn-primary btn-block" value="<%- $.i18n.t('button.billpay.next') %>">
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
