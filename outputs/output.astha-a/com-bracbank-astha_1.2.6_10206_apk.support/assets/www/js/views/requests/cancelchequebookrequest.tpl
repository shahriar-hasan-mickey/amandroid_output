<a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.servicereq')%></a></li>
	<li class="active"><%-$.i18n.t('app.requests.chequebookreq.cheqbookcancelreq')%></li>
</ol>
<div class="clearfix"></div>
<br/>
<% if (chequeBookDetailsDTO.length > 0 ) { %>
	<div class="newWiz">
		<div class="steps done"><div>1<p><%-$.i18n.t('app.requests.chequebookreq.input')%></p></div></div>
		<div class="steps"><span></span><div>2<p><%-$.i18n.t('app.requests.chequebookreq.verify')%></p></div></div>
		<div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.chequebookreq.confirm')%></p></div></div>
	</div>
	<!--Step Control Ends Here-->
	<form >
	<div class="cust_list_request">
		<ul class="list-group">
			<% _.each(chequeBookDetailsDTO,function(tagData){ %>
				<li class="list-group-item">
		            <label class="cust_radio">
		                <span class="refno"><%-$.i18n.t('app.transfer.standinginstruction.refno')%> - <%-tagData.referenceNumber%></span>
		            <div class="row">
		              <div class="col-xs-6">
		                <p class="lbl"><%-$.i18n.t('app.product.accounts.accountnumber')%></p>
		                <p class="value"><%-tagData.accountId%></p>
		                <p class="lbl"><%-$.i18n.t('app.requests.chequebookreq.collectbranch')%></p>
		                <p class="value"><%-tagData.collectionBranchName%></p>
		              </div>
		              <div class="col-xs-6">
		                  <p class="lbl"><%-$.i18n.t('app.requests.chequebookreq.nosofleaves')%></p>
		                  <p class="value"><%-tagData.numberOfLeaves%></p>
		              </div>
		              <div class="col-xs-6">
		                  <p class="lbl"><%-$.i18n.t('app.requests.chequebookreq.noofchequebook')%></p>
		                  <p class="value"><%-tagData.numberOfChequeBooks%></p>
		              </div>
		            </div>
		            <% if(tagData.chequeStatus == "Y") {%>
		           		<input type="radio" referenceNo="<%-tagData.referenceNumber%>" accountNo="<%-tagData.accountId%>" branchName="<%-tagData.collectionBranchName%>" noOfLeaves="<%-tagData.numberOfLeaves%>"  noOfChequeBook="<%-tagData.numberOfChequeBooks%>" name="chqref" class="radio-hidden" ><div class="control__indicator"></div>
		           <% } else { %>
		           		<input type="radio" disabled referenceNo="<%-tagData.referenceNumber%>" accountNo="<%-tagData.accountId%>" branchName="<%-tagData.collectionBranchName%>" noOfLeaves="<%-tagData.numberOfLeaves%>"  noOfChequeBook="<%-tagData.numberOfChequeBooks%>" name="chqref" class="radio-hidden" ><div class="control__indicator"></div>
		           	<% } %>
		          </label>
		        </li>
	       <%});%>
		 </ul>
	</div> 
	<div id="chequeBookSelection" style="display:none">
		<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.chequebookreq.selectchequebook')%></font></p>
	</div>                     
	<input type="button" class="btn btn-success btn-block" id="cancheqbookrequest" name="cancheqbookrequest" value="<%-$.i18n.t('app.requests.chequebookreq.canreq')%>" />
	<a href="#/servicerequestmenu" class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.chequebookreq.cancel')%></a>
	</form>
<%} else {%>
	<div class="alert alert-info">
		<span class="msg"><%-$.i18n.t('app.requests.chequebookreq.nochequebookcancellation')%></span>
	</div>
<% } %>  
<br/>
<script>
var checkStatus=false;
if (chequeBookDetailsDTO.length > 0 ) {
	_.each(chequeBookDetailsDTO,function(tagData){
		if(tagData.chequeStatus == "Y") {
			checkStatus=true;
		}
	});
}
if(checkStatus){
	$("#cancheqbookrequest").removeAttr("disabled");
} else {
	$("#cancheqbookrequest").attr("disabled", "disabled");
}
$(function(){
    $(".dropselect").dropselect();
});

$("#sliderNear").slider();
$("#sliderNear").on("slideStop", function(slideEvt) {
	$(".showslideval").text(slideEvt.value);
	$("#chequeleaves").val(slideEvt.value);
});
$("#chequeleaves").val("1");
</script>
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>
 
 <script>
$(document).ready(function(){
			$('input').keypress(function(e) {
		        var code = (e.keyCode ? e.keyCode : e.which);
		        if ( (code==13) || (code==10))
		            {
		            $(this).blur();
		            return false;
		            }
		    });
		     
});
</script>
 
