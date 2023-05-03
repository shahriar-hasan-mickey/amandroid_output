<%
var els=new EncryptedLocalStorage('secret');
var arr=els.get("formarray");
	 
	//var basecurr = els.get("basecurr");
	var billdailylmt = els.get("dailylmt");
	var billavaillmt = els.get("availlmt");
	var billtransfees= els.get("transfees");
	var moiserviceTypeText = els.get("moiserviceType");
	var moiAppTypeText= els.get("moiappType");
	var moiIdText= els.get("moiId");
	var dispmoiIdText = els.get("dispmoiIdpayment");
	var selectedsubBillerId = els.get("selectedsubBillerId");
	var selectedBillerid = els.get("selectedBillerid");
	var moiBillerFeeDTO = els.get("moiBillerFeeDTO_Trafic");
	
	var moiBillerFeeDTO_Normal = els.get("moiBillerFeeDTO_Normal");
	
   
           var moiDTO;
           if(moiBillerFeeDTO != null && moiBillerFeeDTO != "" ) {
           moiDTO=moiBillerFeeDTO;
           }else if(moiBillerFeeDTO_Normal != null && moiBillerFeeDTO_Normal != "" ) {
           moiDTO=moiBillerFeeDTO_Normal;
           } 

%>

<a href="javascript:void(0)" id="back" name="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
     <li><a href="#/moiList"><%-$.i18n.t('app.moi.general.title')%></a></li>
     <li class="active"><%-$.i18n.t('app.moi.general.moipayments')%></li>
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
   
<input type="hidden" name="totalAmount" id="totalAmount" />   
<input type="hidden" name="hidddailylimit" id="hidddailylimit"  value="<%-billdailylmt%>" />   
<input type="hidden" name="hiddavaillimit" id="hiddavaillimit" value="<%-billavaillmt%>" />   
<input type="hidden" name="ModeOfPayment" id="ModeOfPayment" />   
<input type="hidden" name="loctest" id="loctest" />   
   
	    <table class="table table-bordered table-striped">
			<thead>
				<%if(dispmoiIdText[24]!=null && dispmoiIdText[24]!=""){%>
	    		        	 <tr>	
	    		        	  	<td><%-$.i18n.t('app.moi.moipayments.servicetype')%></td>
	    		        		<td><%-dispmoiIdText[24]%></td>
	    		        	</tr>	
    		        	<%}%>
    		        	<%if(dispmoiIdText[25]!=null && dispmoiIdText[25]!=""){%>
	    		        	<tr>
		    		        	 <td><%-$.i18n.t('app.moi.moipayments.apptype')%></td>
		    		        	 <td><%-dispmoiIdText[25]%></td>
		    		        </tr>	 
    		        	<%}%>
    		        	<%if(dispmoiIdText[0]!=null && dispmoiIdText[0]!=""){%>
	    		        	<tr>
			    				<td><%-$.i18n.t('app.moi.moipayments.violationid')%></td>
		    		        	<td><%-dispmoiIdText[0]%></td>
			    			</tr>
    		        	<%}%>
    		        	
    		        	<%if(dispmoiIdText[1]!=null && dispmoiIdText[1]!=""){%>
	    		        	<tr>
		    		        	<td><%-$.i18n.t('app.moi.moipayments.sponsorid')%></td>
		    		        	<td><%-dispmoiIdText[1]%></td>
		    		        </tr>
    		        	<%}%>
    		        	<%if(dispmoiIdText[2]!=null && dispmoiIdText[2]!=""){%>
		    		        <tr>
		    		        	<td><%-$.i18n.t('app.moi.moipayments.visano')%></td>
		    		        	<td><%-dispmoiIdText[2]%></<td>
		    		        </tr>
    		        	<%}%>
    		        	<%if(dispmoiIdText[3]!=null && dispmoiIdText[3]!=""){%>
		    		        <tr>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.dependentcount')%></td>
		    		        	<td><%-dispmoiIdText[3]%></td>
		    		        </tr>	
    		        	<%}%>
    		        	
    		        	
    		        	<%if(dispmoiIdText[4]!=null && dispmoiIdText[4]!=""){%>
	    		        	<tr>
		    		        	<td><%-$.i18n.t('app.moi.moipayments.household')%></td>
		    		        	<td><%-dispmoiIdText[4]%></td>
	    		        	</tr>
    		        	<%}%>
    		        	<%if(dispmoiIdText[5]!=null && dispmoiIdText[5]!=""){%>
    		        	<tr>
	    		        	<td><%-$.i18n.t('app.moi.moipayments.jobcategory')%></td>
	    		        	<td><%-dispmoiIdText[5]%></td>
	    		        </tr>
    		        	<%}%>
    		        	<%if(dispmoiIdText[6]!=null && dispmoiIdText[6]!=""){%>
	    		        	<tr>
		    		        	<td><%-$.i18n.t('app.moi.moipayments.iqamaduration')%></td>
		    		        	<td><%-dispmoiIdText[6]%></td>
	    		        	</tr>
    		        	<%}%>
    		        	
    		        	<%if(dispmoiIdText[7]!=null && dispmoiIdText[7]!="" && selectedsubBillerId !="058"){%>
		    		        <tr>
		    		        	<td><%-$.i18n.t('app.moi.moipayments.citizenid')%></td>
		    		        	<td><%-dispmoiIdText[7]%></td>
		    		        </tr>
    		        	<%}%>
    		        	
    		        	<%if(dispmoiIdText[8]!=null && dispmoiIdText[8]!=""){%>
	    		        	<tr>
		    		        	<td><%-$.i18n.t('app.moi.moipayments.borderno')%></td>
		    		        	<td><%-dispmoiIdText[8]%></td>
		    		        </tr>
    		        	<%}%>
    		        	<%if(dispmoiIdText[10]!=null && dispmoiIdText[10]!=""){%>
    		        	<tr>
	    		        	<td><%-$.i18n.t('app.moi.moipayments.newregtype')%></td>
	    		        	<td><%-dispmoiIdText[10]%></td>
	    		        </tr>	
    		        	<%}%>
    		        	<%if(dispmoiIdText[9]!=null && dispmoiIdText[9]!=""){%>
	    		        	<tr>
		    		        	<td><%-$.i18n.t('app.moi.moipayments.bodytype')%></td>
		    		        	<td><%-dispmoiIdText[9]%></td>
		    		        </tr>
    		        	<%}%>
    		        	
    		        	
    		        	<%if(dispmoiIdText[11]!=null && dispmoiIdText[11]!=""){%>
		    		        <tr>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.seqno')%></td>
		    		        	<td><%-dispmoiIdText[11]%></td>
		    		        </tr>
    		        	<%}%>
    		        	<%if(dispmoiIdText[12]!=null && dispmoiIdText[12]!=""){%>
	    		        <tr>
	    		        	<td><%-$.i18n.t('app.moi.moipayments.currentownerid')%></td>
	    		        	<td><%-dispmoiIdText[12]%></td>
	    		        </tr>	
    		        	<%}%>
    		        	<%if(dispmoiIdText[13]!=null && dispmoiIdText[13]!=""){%>
	    		        <tr>	
	    		        	<td><%-$.i18n.t('app.moi.moipayments.newownerid')%></td>
	    		        	<td><%-dispmoiIdText[13]%></td>
	    		        </tr>
    		        	<%}%>
    		        	<%if(dispmoiIdText[14]!=null && dispmoiIdText[14]!=""){%>
    		        	<tr> 
	    		        	<td><%-$.i18n.t('app.moi.moipayments.customcardno')%></td>
	    		        	<td><%-dispmoiIdText[14]%></td>
	    		        </tr>	
    		        	<%}%>
    		        	<%if(dispmoiIdText[15]!=null && dispmoiIdText[15]!=""){%>
	    		        <tr>	
	    		        	<td><%-$.i18n.t('app.moi.moipayments.disppassporttype')%></td>
	    		        	<td><%-dispmoiIdText[15]%></td>
	    		        </tr>	
    		        	<%}%>
    		        	<%if(dispmoiIdText[16]!=null && dispmoiIdText[16]!=""){%>
	    		        <tr>	
	    		        	<td><%-$.i18n.t('app.moi.moipayments.numberofvisas')%></td>
	    		        	<td><%-dispmoiIdText[16]%></td>
	    		        </tr>	
    		        	<%}%>
    		        	<%if(dispmoiIdText[17]!=null && dispmoiIdText[17]!=""){%>
	    		        <tr>	
	    		        	<td><%-$.i18n.t('app.moi.moipayments.visatype')%></td>
	    		        	<td><%-dispmoiIdText[17]%></td>
	    		        </tr>	
    		        	<%}%>
    		        	<%if(dispmoiIdText[18]!=null && dispmoiIdText[18]!=""){%>
	    		        	<tr> 
	    		        	 <td><%-$.i18n.t('app.moi.moipayments.licensetype')%></td>
	    		        	 <td><%-dispmoiIdText[18]%></td>
	    		        	</tr> 
    		        	<%}%>
    		        	
    		        	<%if(dispmoiIdText[19]!=null && dispmoiIdText[19]!=""){%>
		    		        <tr>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.licenseduration')%></td>
		    		        	<td><%-dispmoiIdText[19]%></td>
		    		        </tr>	
    		        	<%}%>
    		        	
    		        	
    		        	
    		        	<%if(dispmoiIdText[20]!=null && dispmoiIdText[20]!=""){%>
		    		        <tr>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.id')%></td>
		    		        	<td><%-dispmoiIdText[20]%></td>
		    		        </tr>	
    		        	<%}%>
    		        	<%if(dispmoiIdText[21]!=null && dispmoiIdText[21]!=""){%>
		    		        <tr>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.iqamano')%></td>
		    		        	<td><%-dispmoiIdText[21]%></td>
		    		        </tr>	
    		        	<%}%>
    		        	<%if(dispmoiIdText[22]!=null && dispmoiIdText[22]!=""){%>
		    		        <tr>
		    		        	<%if(selectedBillerid == "090" && selectedsubBillerId =="014"){%>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.newIqamaID')%></td>
		    		        	<%} else if(selectedBillerid == "090" && selectedsubBillerId =="058"){%>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.alienId')%></td>
		    		        	<%} else if(selectedBillerid == "090" && selectedsubBillerId =="059"){%>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.alienId')%></td>
		    		        	<% }else{%>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.iqamaid')%></td>
		    		        	<%}%>
		    		        	<td><%-dispmoiIdText[22]%></td>
		    		        </tr>	
    		        	<%}%>
    		        	<%if(dispmoiIdText[7]!=null && dispmoiIdText[7]!="" && selectedsubBillerId =="058"){%>
		    		        <tr>
		    		        <%if(selectedBillerid == '090' && selectedsubBillerId =="058"){%>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.associateId')%></td>
		    		        	<%}%>
		    		        	<td><%-dispmoiIdText[7]%></td>
		    		        </tr>
    		        	<%}%>
    		        	
    		        	
    		        	<%if(dispmoiIdText[26]!=null && dispmoiIdText[26]!="" && dispmoiIdText[26]!='undefined' &&  dispmoiIdText[26]!='--' ){%>
	    		        	<tr>
		    		        	<%if(selectedBillerid == '090' && selectedsubBillerId =="014"){%>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.birthbirthdte')%></td>
		    		        	
		    		        	<%} else if(selectedBillerid == '090' && selectedsubBillerId =="058"){%>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.feeenddte')%></td>
		    		        	
		    		        	<%} else if(selectedBillerid == '090' && selectedsubBillerId =="059"){%>	
		    		        	<td><%-$.i18n.t('app.moi.moipayments.feeenddte')%></td>
		    		        	
		    		        	<%} else{%>	
		    		        		<td><%-$.i18n.t('app.moi.moipayments.hidhirjiformat')%></td>
		    		        	<%}%>
		    		        	 	<td> <%-dispmoiIdText[26]%></td>
		    		        </tr>	
    		        	<%}%>
    		        	
    		        	<%if(dispmoiIdText[27]!=null && dispmoiIdText[27]!="" && dispmoiIdText[27]!='undefined' &&  dispmoiIdText[27]!='--'){%>
	    		        	<tr>
		    		        	<td><%-$.i18n.t('app.moi.moipayments.passportduration')%></td>
		    		        	<td> <%-dispmoiIdText[27]%></td>
	    		        	</tr>
    		        	<%}%>
    		        	
    		        	<%if(dispmoiIdText[28]!=null && dispmoiIdText[28]!="" && dispmoiIdText[28]!='undefined' &&  dispmoiIdText[28]!='--'){%>
	    		        	<tr>
		    		        	<td><%-$.i18n.t('app.moi.moipayments.visaduration')%></td>
		    		        	<td> <%-dispmoiIdText[28]%></td>
	    		        	</tr>
    		        	<%}%>
    		        	
    		        	<%if(dispmoiIdText[29]!=null && dispmoiIdText[29]!="" && dispmoiIdText[29]!='undefined' &&  dispmoiIdText[29]!='--'){%>
	    		        	<tr>
		    		        	<td><%-$.i18n.t('app.moi.moipayments.issreason')%></td>
		    		        	<td> <%-dispmoiIdText[29]%></td>
	    		        	</tr>
    		        	<%}%>
    		        	
    		        	<%if(dispmoiIdText[30]!=null && dispmoiIdText[30]!="" && dispmoiIdText[30]!='undefined' &&  dispmoiIdText[30]!='--'){%>
	    		        	<tr>
		    		        	<td><%-$.i18n.t('app.moi.moipayments.cardvernum')%></td>
		    		        	<td> <%-dispmoiIdText[30]%></td>
	    		        	</tr>
    		        	<%}%>
		    </tbody>
       </table>
        
       <% if(moiDTO != null && moiDTO != "" ) { %>
       <%  if((moiDTO[0].beneficiaryname != null && moiDTO[0].beneficiaryname != '') || (moiDTO[0].previousfeeamount != null && moiDTO[0].previousfeeamount != "")) { %>
            <table class="table table-bordered table-striped table_fixed">
			<thead>
				 <%  if(moiDTO[0].beneficiaryname != null && moiDTO[0].beneficiaryname != '') { %>
	    		        	<tr>	
	    		        	  	<td><%-$.i18n.t('app.moi.moipayments.beneficiaryName')%></td>
	    		        		<td><b><%-moiDTO[0].beneficiaryname%></b></td>
	    		        	</tr>
	    		  <% } if(moiDTO[0].previousfeeamount != null && moiDTO[0].previousfeeamount != "" ) { %>
	    		        	 <tr>	
	    		        	  	<td><%-$.i18n.t('app.moi.moipayments.moiUnusedAmount')%></td>
	    		        		<td><%- checkAmount($.formatNumber(moiDTO[0].previousfeeamount, {format:"#,###.000", locale:"us"}))%></td>
	    		        	</tr>	
	    		 <% }  %>
    		</thead>
   			</table>
   			<%}else{%>
   			<%}%>
        <%}%>
          
        <div class="billpay cust_panel">

		<% if(selectedsubBillerId != "040"){ %>
		        <%
		        		var i=0;
						_.each(moiBillerFeeDTO_Normal,function(data){
				%>
							<ul>
		                    	<li>
		                        	<div class="dater">
		                            	<span>
											<label class="checkinput">
		                                 		<input type="checkbox" class="check-hidden" id="check<%-i%>" name="moibillcheck" value="<%-data.currentamount%>" onchange="mychkbox(<%-i%>,<%-data.currentamount%>)" />
		                                 	</label>
		                                 </span>
									</div>
		                            <div class="d_msg">
		                                <p><%-data.customerid%></p>
		                            	<p><%-data.customertype%></p>
		                            </div>
		                            <div class="amt neg">
		                              	<span class="hdr"><%-$.i18n.t('app.moi.moipayments.fees')%></span>
		                              	<span class="cur"><%-data.code%></span>
		                              	<span id="penalty" value="<%-data.currentamount%>">
		                              	<%- checkAmount($.formatNumber(data.currentamount, {format:"#,###.000", locale:"us"}))%>
		                              	</span>
		                            </div>
								</li>
							</ul>
				<%
							i++;
						});
				%>
		<% }else{  %>
		        <%
		        		var i=0;
						_.each(moiBillerFeeDTO,function(data){
				%>
							<ul>
		                    	<li>
		                        	<div class="dater">
		                            	<span>
											<label class="checkinput">
		                                 		<input type="checkbox" class="check-hidden" id="check<%-i%>" name="moibillcheck" value="<%-data.violationsservicecode%>~<%-data.violationsviolationid%>~<%-data.violationsgrouppmtid%>~<%-data.violationsfeeamount%>~<%-data.violationspmtid%>~<%-data.violationspmtidtype%>~<%-data.violationsfeetype%>" onchange="mychkbox(<%-i%>,<%-data.violationsfeeamount%>)" />
		                                 	</label>
		                                 </span>
									</div>
		                            <div class="d_msg">
		                                <p><%-data.violationsviolationid%></p>
		                            	<p><%-data.violationsfeetype%></p>
		                            </div>
		                            <div class="amt neg">
		                              	<span class="hdr"><%-$.i18n.t('app.moi.moipayments.fees')%></span>
		                              	<span class="cur">KWD</span>
		                              	<span id="penalty" value="<%-data.violationsfeeamount%>">
		                              	<%- checkAmount($.formatNumber(data.violationsfeeamount, {format:"#,###.000", locale:"us"}))%>
		                              	</span>
		                            </div>
								</li>
							</ul>
				<%
							i++;
						});
				%>
		<% } %>
		<p class="help-block error-message label label-danger" id="Common_chkboxid" style="display: none;"><%-$.i18n.t('app.sadad.duebillpay.billisnotselect')%></p>

          <%if( (moiBillerFeeDTO!=null && moiBillerFeeDTO!="" ) || (moiBillerFeeDTO_Normal!=null && moiBillerFeeDTO_Normal!="" ) ){%>
            <div class="amt2"><span class="hdr"><%-$.i18n.t('app.moi.moipayments.payamount')%></span><span class="cur">KWD</span><span id="totamt"></span></div>
          <%}%>
   </div>
<!-- Payment Mode Starts -->
<div class="form-group paymentMode">
        <label><%-$.i18n.t('app.moi.moipayments.paymentmode')%></label>
       <div class="btn-group btn-group-justified" data-toggle="buttons">
             <label class="btn btn-success payAccount active" id="labelAccount">
                     <input type="radio" name="options" id="frmacnt" value="<%-$.i18n.t('app.moi.moipayments.account')%>"> <%-$.i18n.t('app.moi.moipayments.account')%>
             </label>
             <label class="btn btn-default payCard" id="labelCard">
                     <input type="radio" name="options" id="frmcardcnt" value="<%-$.i18n.t('app.moi.moipayments.card')%>"> <%-$.i18n.t('app.moi.moipayments.card')%>
             </label>
	  </div>
 </div>
<!-- 
<div id="errorPaymode" style="display:none">
<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.moi.moipayments.paymode')%></font></p>
</div>
-->
<!-- Payment Mode Ends -->


<!-- start From account  -->
	<div class="fromAcc" >
			<div class="dropselect" data-title="<%-$.i18n.t('app.moi.moipayments.fromaccount')%>" >
			          <%
			               _.each(fromacc,function(data){
			               		if(data.ackStatus == "0000" && data.currency != null) {
			               		if(data.currency.code == "KWD" ){
			          %>
					           		<label class="list-group-item">
					                   <input type="radio" value="<%-data.accountNumber%>~<%-data.accountShortName%>~<%-data.availableBalance%>" name="frmacno" id="frmacno"/>
					            			<p><span id="uname" name="uname" class="nme"><%-data.accountShortName%></span><small id="ccode" name="ccode" class="cur pull-right"><%-data.currency.code%></small></p>
					            			<p><small id="accountno" name="accountno" class="text-muted"><%-data.accountNumber%></small><span id="amount" name="amount" class="amt pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
					            	</label>
			          <%
			          			}
			          			}
			          		});
			          %>
		</div>
	</div>
	<p class="help-block error-message label label-danger" id="Error_FrmAcctNo" style="display: none;"></p>
<!-- End From account  -->


<!-- Start Credit card -->
	<div class="creditCard">
		    <div class="dropselect" data-title="<%-$.i18n.t('app.moi.moipayments.fromcard')%>" >
		           <%
						 _.each(creditcards,function(data){ 
		           %>
                         <label class="list-group-item">
                                 <input type="radio" value="<%-data.accountNumber%>~<%-data.shortName%>~<%-data.availableCreditLimit%>~<%-data.creditCardNoMasked%>~<%-data.creditCardActNo%>" name="frmcard" id="frmcard"/>
										<p>
											<%if(typeof(data.shortName)!="undefined"){%>
												<span id="uname" name="uname" class="nme"><%-data.shortName%></span>
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
													<span id="amount" name="amount" class="amt pull-right">	<%- checkAmount($.formatNumber(data.availableCreditLimit, {format:"#,###.000", locale:"us"}))%>
													</span>
											<%}%>
										</p>

							</label>
				<% });%>
		    </div>
    </div>
	<p class="help-block error-message label label-danger" id="Error_CreditCardNo" style="display: none;"></p>
<!-- Ends Credit card -->

<!--Related information-->

<div class="infoCont">
<h4><%-$.i18n.t('app.moi.moipayments.relatedinfo')%></h4>
     <ul>
          <li class="dl">
                <p class="lbl"><%-$.i18n.t('app.moi.moipayments.dailylimit')%></p>
                <p class="text-right"><span>KWD &nbsp;
                <%- checkAmount($.formatNumber(billdailylmt, {format:"#,###.000", locale:"us"}))%>
                </p>
          </li>
          <li class="al">
                 <p class="lbl"><%-$.i18n.t('app.moi.moipayments.availlimit')%></p>
                 <p class="text-right"><span>KWD &nbsp;
                 <%- checkAmount($.formatNumber(billavaillmt, {format:"#,###.000", locale:"us"}))%>
                 </span></p>
         </li>
        
        	
    </ul>
</div>
       
       <!-- <a href="javascript:void(0)" id="submitotp"  class="btn btn-success btn-block" id="submit"><%-$.i18n.t('app.moi.moipayments.confirm')%></a> -->
       <input type="button" name="submitotp"  id="submitotp" class="btn btn-success btn-block" value="<%-$.i18n.t('app.moi.moipayments.confirm')%>"  />
       <a href="#/moiList"  class="btn btn-primary btn-block"><%-$.i18n.t('app.moi.moipayments.cancel')%></a>
       </br>    
                 
   </form>
</div>

<script>
       $(document).ready(function()
       {
           $('.creditCard').hide();
           $('.fromAcc').show();
           
           var els = new EncryptedLocalStorage('secret'); 
					      var defaultSelectionListDetailsDTO = els.get("defaultSelectionListDetails");
				      if(defaultSelectionListDetailsDTO=="" || defaultSelectionListDetailsDTO==null || defaultSelectionListDetailsDTO==undefined ){
				      $(".dropselect").dropselect();
				      }
           $('.payAccount').change(function(){
          	 	$('.fromAcc').show();
          	 	$('.creditCard').hide();
          	 	$("#ModeOfPayment").val("Account");
			$("#Error_CreditCardNo").hide();
		   });
           $('.payCard').change(function(){
                $('.fromAcc').hide();
                $('.creditCard').show();
          	 	$("#ModeOfPayment").val("Card");
          	 	$("#Error_FrmAcctNo").hide();
           });
  		});
  		$("#ModeOfPayment").val("Account");
</script>
<script>
		var totamt1="0.00";
		var tot='';
		function mychkbox(s,amtvalue){
		
		if($("#check"+s).is(':checked')){
		
		var test=$("#loctest").val();
		
		if(test!=null||test!=''||test!=undefined){
		 tot=test+'~'+s;
		}else{
		 tot=s;
		}
		console.log("tot=="+tot);
		$("#loctest").val(tot);
		}else{
		var id=tot.length-2;
    	 tot = tot.substring(0, parseInt(id));
    	console.log("res=="+tot);
		$("#loctest").val(tot);
		}
	    	if($("#check"+s).is(':checked')){
	    		totamt1=parseFloat(totamt1)+parseFloat(amtvalue);
	    		var amtValue=checkAmount($.formatNumber(totamt1, {format:"#,###.000", locale:"us"}));
	    		$("#totamt").text(amtValue);
	    		$("#totalAmount").val(Number(totamt1).toFixed(2));
	    	}
	    	else if($("#check"+s).is(":not(:checked)")){
	    		totamt1=parseFloat(totamt1)-parseFloat(amtvalue);
	    		var amtValue=checkAmount($.formatNumber(totamt1, {format:"#,###.000", locale:"us"}));
	    		$("#totamt").text(amtValue);
	    		$("#totalAmount").val(Number(totamt1).toFixed(2));
	    	}
		}
		
 $(document).ready(function()
       {
		
		 var els = new EncryptedLocalStorage('secret'); 
           var moiBillerFeeDTO = els.get("moiBillerFeeDTO_Trafic");
		   var moiBillerFeeDTO_Normal = els.get("moiBillerFeeDTO_Normal");
           var moiDTO;
           if(moiBillerFeeDTO != null && moiBillerFeeDTO != "" ) {
           moiDTO=moiBillerFeeDTO;
           }else if(moiBillerFeeDTO_Normal != null && moiBillerFeeDTO_Normal != "" ) {
           moiDTO=moiBillerFeeDTO_Normal;
           }

         $(':checkbox').each(function(index,item){
                  
          //  if(moiDTO[index].currentamount.indexOf('-')== -1){
	          	//if(Math.round(moiDTO[index].currentamount)> 0){
	          	$(this).prop('checked', true);	          	
	          	var thisLbl = $(this).closest('label');
	          	$(thisLbl).addClass('active');
	          	if(moiDTO[index].currentamount){
	          		mychkbox(index,moiDTO[index].currentamount);
	          	}
	          	else if(moiDTO[index].violationsfeeamount){
	          		mychkbox(index,moiDTO[index].violationsfeeamount);
	          	}
	      	 // }
	      //	}
       		});
           });
</script>