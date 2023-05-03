<a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.servicereq')%></a></li>
	<li class="active"><%-$.i18n.t('app.requests.chequebookreq.chequebookreq')%></li>
</ol>
<div class="clearfix"></div>
<br/>
<!-- Breadcrumb Ends Here -->
<!--Step Control Starts Here-->
<div class="newWiz">
	<div class="steps done"><div>1<p><%-$.i18n.t('app.requests.chequebookreq.input')%></p></div></div>
	<div class="steps"><span></span><div>2<P><%-$.i18n.t('app.requests.chequebookreq.verify')%></P></div></div>
	<div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.chequebookreq.confirm')%></p></div></div>
</div>
<!--Step Control Ends Here-->
<form>
	<div class="dropselect" data-title="<%-$.i18n.t('app.requests.chequebookreq.account')%>" >
	<% if(myaccounts.length > 0) {
          var idxf = 0;%>
   			<% _.each(myaccounts,function(data){ %>
		          <label class="list-group-item">
        		        <input type="radio" value="<%-data.accountNumber%>~<%-data.productName%>~<%-idxf%>~<%-data.availableBalance%>~<%-data.currencyCode%>~<%-data.id%>" name="frmacno" id="frmacno"/>
        		        <p><span class="nme"><%-data.productName%></span><small class="cur pull-right"><%-data.currencyCode%></small></p>
		 	 			<p><small class="text-muted"><%-data.accountNumber%></small><span class="amt  pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
	     		</label>
	     	<% idxf++ }); %>
	     	<% } else { %>
					<h4><%-$.i18n.t('app.product.investment.nodata')%></h4>
             <% } %>
    </div>
	<div id="errorFromAct" style="display:none">
    	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.newcc.fromaccmsg1')%></font></p>
	</div>
    <div class="form-group required">
    	<select name="leafnos" id="leafnos" class="form-control">
    		<option value=""  selected><%-$.i18n.t('app.requests.chequebookreq.nosofleaves')%></option>
    		<% _.each(chequeLeavesDTO,function(data) { %>
	        	<option value="<%-data.description%>"><%-data.description%></option>
        	<% }); %>
		</select>
	</div>
	<div id="errornoofleaves" style="display:none">
    	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.chequebookreq.nosofleavesnotnull')%></font></p>
	</div>
	<div class="form-group required">
    	<select name="branch" id="branch" class="form-control">
    		<option value=""  selected><%-$.i18n.t('app.requests.chequebookreq.pickbranch')%></option>
    		<% _.each(detailsDTO,function(data) { %>
				<option value="<%-data.id%>"><%-data.description%></option>
			<% }); %>
		</select>
	</div>
    <div id="errorBranch" style="display:none">
    	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.newcc.validbranch1')%></font></p>
	</div>
	<div class="form-group" >
		<label><%-$.i18n.t('app.requests.chequebookreq.noofchequebook')%></label></br>
		<input type="text" autocomplete='off'  class="form-control" id="chqbookknos" value="1" readonly>
	</div>
	<input type="hidden" name="chequeleaves" id="chequeleaves" />
	<!--<div class="alert alert-info">
        <p><b><%-$.i18n.t('app.requests.chequebookreq.note')%></b><%-$.i18n.t('app.requests.chequebookreq.newmsg')%></p>
    </div>
	 <div class="alert alert-info">
        <p><b><%-$.i18n.t('app.requests.chequebookreq.note')%></b><%-$.i18n.t('app.requests.chequebookreq.msg')%></p>
    </div> -->
    <input type="button" class="btn btn-success btn-block" id="chequebookrequest" name="chequebookrequest" value="<%-$.i18n.t('app.requests.chequebookreq.submit')%>" />
    <a href="#/servicerequestmenu" class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.chequebookreq.cancel')%></a>
</form>
<br/>
<script>
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
