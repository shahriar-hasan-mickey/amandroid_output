<%
	var els = new EncryptedLocalStorage('secret');
	var key = els.get('graphKey_spendAnalysis');

%>

<a href="#/more" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><%-$.i18n.t('app.more.charts.chart')%></li>
	<li class="active"><%-$.i18n.t('app.more.charts.analyzer')%></li>
</ol>
<div class="clearfix"></div>
<br/>
 

<form role="form">
<!--
		<div class="form-group paymentMode">
				<label ><%-$.i18n.t('app.more.charts.spendfor')%></label>
				<div class="btn-group btn-group-justified" data-toggle="buttons" id="paymode" name="paymode">
						<label class="btn btn-default payAccount active">
								<input type="radio" name="options" value="ACCOUNT" checked="checked"> <%-$.i18n.t('app.sadad.billinquiry.account')%>
						</label>
						<label class="btn btn-default payCard">
								<input type="radio" value="CREDITCARD" name="options" > <%-$.i18n.t('app.sadad.billinquiry.card')%>
						</label>
				</div>
		</div>
-->

<!-- Start From account  -->
       <div class="fromAcc" >
		     <div class="dropselect" data-title="<%-$.i18n.t('app.sadad.billinquiry.fromaccount')%>" data-setid="accountdiv">
				<%
		               _.each(fromacc,function(data){
		        %>
		        <% if( data.currency.code == "KWD" ) { %>
		           <label class="list-group-item">
		                   	<input type="radio" value="<%-data.accountNumber%>~<%-data.accountNumberMasked%>~<%-data.availableBalance%>" name="frmacno" id="frmacno"/>
	            			<p><span id="uname" name="uname" class="nme"><%-data.accountShortName%></span><small id="ccode" name="ccode" class="cur pull-right"><%-data.currency.code%></small></p>
	            			<p><small id="accountno" name="accountno" class="text-muted"><%-data.accountNumberMasked%></small><span id="amount" name="amount" class="amt pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
		            </label>
		        <% } %>
		        <%});%>
		    </div>
       </div>
	   <p class="help-block error-message label label-danger" id="errorFromAct" style="display: none;"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></p>


		<div class="form-group accduration">
			<select name="AccDuration" id="AccDuration" class="form-control" placeholder="<%-$.i18n.t('app.more.charts.option')%>">
				<option value="" selected="selected"><%-$.i18n.t('app.more.charts.option')%></option>
				<% _.each(commonParamAcc,function(data){ %>
						<option value="<%-data.paramCode%>"><%-data.paramDescription%></option>
				<% }); %>
			</select>
	   </div>

<!-- End From account  -->



<!-- Start Credit card -->
		<div class="creditCard">
			<div class="dropselect" data-title="<%-$.i18n.t('app.sadad.billinquiry.fromcard')%>" >
		           <%
						 _.each(creditcards,function(data){ 
		           %>
                         <label class="list-group-item">
                                 <input type="radio" value="<%-data.accountNumber%>~<%-data.creditCardNoMasked%>~<%-data.availableBalance%>~<%-data.creditCardActNo%>" name="frmcard" id="frmcard"/>
										<p>
											<%if(typeof(data.cardType)!="undefined"){%>
												<span id="uname" name="uname" class="nme"><%-data.cardType%></span>
												<span id="uname" name="uname" class="nme"><%-data.accountShortName%></span>
											<%}%>
											<%if(typeof(data.currencyCode)!="undefined"){%>
												<small id="ccode" name="ccode" class="cur pull-right"><%-data.currencyCode%></small>
											<%}%>
										</p>
										<p>
											<%if(typeof(data.accountNumber)!="undefined"){%>
												<small id="accountno" name="accountno"  class="text-muted"><%-data.creditCardNoMasked%></small>
											<%}%>
											<%if(typeof(data.accountNumber)!="undefined"){%>
												<span id="amount" name="amount" class="amt pull-right"><%- checkAmount($.formatNumber(data.availableCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
											<%}%>
										</p>

						</label>
				<% });%>
			</div>
		</div>
		<p class="help-block error-message label label-danger" id="errorFromCard" style="display: none;"><%-$.i18n.t('app.creditcard.general.fromaccmsg')%></p>

		<div class="form-group cardduration">
			<select name="CardDuration" id="CardDuration" class="form-control" placeholder="<%-$.i18n.t('app.more.charts.option')%>">
				<option value="" selected="selected"><%-$.i18n.t('app.more.charts.option')%></option>
				<% _.each(commonParamCard,function(data){ %>
						<option value="<%-data.monthcode%>" ><%-data.cmbmonyear%></option>
				<% }); %>
			</select>
	   </div>
<!-- Ends Credit card -->
		</br>
		<div align="center" id="spendinAnalysisDiv">
       	</div>
       	
  	 <div class="alert alert-info text-center" id="spendinAnalysisErrorDiv" style="display:none">
  	  	<h4><%-$.i18n.t('exception.common.nocardsfound')%>  </h4>
            	 
  	  </div>
       	
       	</br></br>
		<input type="hidden" id="hidPaymentMode" name="hidPaymentMode" value="" />
 </form>
 
 
<link rel="stylesheet" type="text/css" href="js/libs/jqplot-master/jquery.jqplot.css" />
<script src="js/libs/jqplot-master/jquery.jqplot.min.js"></script>
<script src="js/libs/jqplot-master/plugins/jqplot.pieRenderer.min.js"></script>
 
<script>
	$(document).ready(function()
	{


		$(".msg,#errorpay").hide();
        $('.fromAcc').show();
        $('.accduration').show();
        
        $('.creditCard').hide();
        $('.cardduration').hide();
        
        $('.payAccount').change(function(){
        	$("#errorFromAct").hide();
        	$("#errorFromCard").hide();
            $('.fromAcc').show();
            $('.accduration').show();
            
            $('.creditCard').hide();
            $('.cardduration').hide();
            $("#hidPaymentMode").val("A");
        });
        $('.payCard').change(function(){
        	$("#errorFromAct").hide();
        	$("#errorFromCard").hide();
        	
        	$('.creditCard').show();
        	$('.cardduration').show();
        	
            $('.fromAcc').hide();
            $('.accduration').hide();
            
            $("#hidPaymentMode").val("C");
        });
	});
    $("#hidPaymentMode").val("A");
    $("#accountdiv").show();
    $("#AccDuration").show();
    $(".dropselect").dropselect();
</script>

