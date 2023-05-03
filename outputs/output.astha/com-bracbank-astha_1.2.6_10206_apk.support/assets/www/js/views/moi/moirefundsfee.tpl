<%
var els=new EncryptedLocalStorage('secret');
var arr=els.get("formarray");
	 
	//var basecurr = els.get("basecurr");
	//var billdailylmt = els.get("dailylmt");
	//var billavaillmt = els.get("availlmt");
	//var billtransfees= els.get("transfees");
	var moiserviceTypeText = els.get("moiserviceType");
	var moiAppTypeText= els.get("moiappType");
	var moiIdText= els.get("moiId");
	var selectedsubBillerId = els.get("selectedsubBillerId");
var selectedBillerid = els.get("selectedBillerid");
%>

<a href="javascript:void(0)" id="back" name="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/moiList"><%-$.i18n.t('app.moi.general.title')%></a></li>
     <li class="active"><%-$.i18n.t('app.moi.general.moirefunds')%></li>
</ol>
<div class="clearfix"></div>
                  <br/>
                  <!--Breadcrumb Ends Here-->
                  <!--Step Control Starts Here-->
<div class="newWiz">
       <div class="steps done"><div>1<p><%-$.i18n.t('app.moi.moipayments.input')%></p></div></div>
	   <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.moi.moipayments.verify')%></P></div></div>
       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.moi.moipayments.confirm')%></p></div></div>
</div>
<!--Step Control Ends Here-->
<div class="dtl_view">
<form role="form">

<!--   
<input type="hidden" name="totalAmount" id="totalAmount" />   
<input type="hidden" name="hidddailylimit" id="hidddailylimit"  value="" />   
<input type="hidden" name="hiddavaillimit" id="hiddavaillimit" value="" />
-->
   
<input type="hidden" name="ModeOfPayment" id="ModeOfPayment" />   
   
	    <table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th colspan="2"><b><%-$.i18n.t('app.moi.moipayments.details')%></b></th>
				</tr>
			</thead>
		    <tbody>
		    	<tr>
		    		<td><%-$.i18n.t('app.moi.moipayments.servicetype')%></td>
		    		<td><%-moiserviceTypeText%></td>
		    	</tr>
		    	<tr>
		    		<td><%-$.i18n.t('app.moi.moipayments.apptype')%></td>
		    		<td><%-moiAppTypeText%></td>
		    	</tr>
		    	<tr>
		    		<%if(selectedBillerid == "090" && selectedsubBillerId =="014"){%>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.refund_alienId')%></td>
		    		        	<%} else if(selectedBillerid == "090" && selectedsubBillerId =="058"){%>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.refund_alienId')%></td>
		    		        	<%} else if(selectedBillerid == "090" && selectedsubBillerId =="059"){%>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.refund_alienId')%></td>
		    		        	<% }else{%>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.id')%></td>
		    					<%}%>
		    		<td><%-moiIdText%></td>
		    	</tr>
		    </tbody>
       </table>
       
      
       <!-- <a href="javascript:void(0)" id="submitotp"  class="btn btn-success btn-block" id="submit"><%-$.i18n.t('app.moi.moipayments.confirm')%></a> -->
       <input type="button" name="submitotp"  id="submitotp" class="btn btn-success btn-block" value="<%-$.i18n.t('app.moi.moipayments.confirm')%>"  >
       <a href="#/moiList"  class="btn btn-primary btn-block"><%-$.i18n.t('app.moi.moipayments.cancel')%></a>                          
   </form>
</div>

<script>
       $(document).ready(function()
       {
           $('.creditCard').hide();
           $('.fromAcc').show();
           
           $(".dropselect").dropselect();
           $('.payAccount').change(function(){
          	 	$('.fromAcc').show();
          	 	$('.creditCard').hide();
          	 	$("#ModeOfPayment").val("Account");
		   });
           $('.payCard').change(function(){
                $('.fromAcc').hide();
                $('.creditCard').show();
          	 	$("#ModeOfPayment").val("Card");
           });
  		});
  		$("#ModeOfPayment").val("Account");
</script>
<script>
		var totamt1="0.00";
		function mychkbox(s,amtvalue){
	    	if($("#check"+s).is(':checked')){
	    		totamt1=parseFloat(totamt1)+parseFloat(amtvalue);
	    		$("#totamt").text(totamt1);
	    		$("#totalAmount").val(totamt1);
	    	}
	    	else if($("#check"+s).is(":not(:checked)")){
	    		totamt1=parseFloat(totamt1)-parseFloat(amtvalue);
	    		$("#totamt").text(totamt1);
	    		$("#totalAmount").val(totamt1);
	    	}
		}
</script>