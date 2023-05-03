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
    <form>
        <div class="form-group">
            <label><%-$.i18n.t('app.accounts.fromdate')%></label>
            <input type="date" name="ftdate" class="form-control" />
        </div>
        <div class="form-group">
            <label><%-$.i18n.t('app.accounts.todate')%></label>
            <input type="date" name="todate" class="form-control" />
        </div>
        <!--<div class="form-group">
            <label><%-$.i18n.t('app.accounts.filterby')%></label>
            <br>
            <label class="radio-label">
                <input type="radio" checked="checked" name="Filter"> <%-$.i18n.t('app.accounts.debit')%>
                <span class="checkmark"></span>
            </label>
            <label class="radio-label">
                <input type="radio" name="Filter"> <%-$.i18n.t('app.accounts.lost')%>
                <span class="checkmark"></span>
            </label>
            <label class="radio-label">
                <input type="radio" name="Filter"> <%-$.i18n.t('app.accounts.both')%>
                <span class="checkmark"></span>
            </label>
        </div>
        <div class="form-group">
            <label>Status</label>
            <br>
            <label class="radio-label">
                <input type="radio" checked="checked" name="Status"> <%-$.i18n.t('app.accounts.success')%>
                <span class="checkmark"></span>
            </label>
            <label class="radio-label">
                <input type="radio" name="Status"> <%-$.i18n.t('app.accounts.failure')%>
                <span class="checkmark"></span>
            </label>
            <label class="radio-label">
                <input type="radio" name="Status"> <%-$.i18n.t('app.accounts.both')%>
                <span class="checkmark"></span>
            </label>
        </div> -->
      
        <a href="javascript:void(0);" id="getdetailstmt" class="btn btn-primary btn-block"><%- $.i18n.t('button.accounts.filter') %></a>
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
