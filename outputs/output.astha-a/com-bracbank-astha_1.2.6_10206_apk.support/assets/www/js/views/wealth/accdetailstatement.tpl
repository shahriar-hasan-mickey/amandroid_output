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
  <h4>Detailed Statement</h4>
  

</header>
			<!-- Header Ends -->
			<!--Bodywrapper Starts Here-->
			<div class="bodywrapper">
				<!-- Actual content area -->
				<div class="contentwrap">
						<section class="content">						
    <form>
        <div class="form-group">
            <label><%-$.i18n.t('app.accdetailstatement.fromamount')%></label>
            <input type="number" autocomplete='off'  name="frAmt" class="form-control" />
        </div>
        <div class="form-group">
            <label><%-$.i18n.t('app.accdetailstatement.toamount')%></label>
            <input type="number" autocomplete='off'  name="toAmt" class="form-control" />
        </div>
        <div class="form-group">
            <label><%-$.i18n.t('app.accdetailstatement.filterbytype')%></label>
            <select class="form-control">
                <option><%-$.i18n.t('app.accdetailstatement.select')%></option>
            </select>
        </div>
        <div class="form-group">
            <label><%-$.i18n.t('app.accdetailstatement.filterbyperiod')%></label>
            <select class="form-control">
                <option><%-$.i18n.t('app.accdetailstatement.select')%></option>
            </select>
        </div>
        <div class="form-group">
            <label><%-$.i18n.t('app.accdetailstatement.fromdate')%></label>
            <input type="date" name="ftdate" class="form-control" />
        </div>
        <div class="form-group">
            <label><%-$.i18n.t('app.accdetailstatement.todate')%></label>
            <input type="date" name="todate" class="form-control" />
        </div>
        <a href="javascript:void(0);" id="getaccstmt" class="btn btn-primary btn-block"><%-$.i18n.t('app.accdetailstatement.getstatement')%></a>
    </form>
</section>	
					<!--Content Ends Here-->
				</div>
				<!--contentwrap Ends here -->
			</div>
			<!--bodywrap Ends here -->
		</div>
		<!--Appwrapper Ends Here-->
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
