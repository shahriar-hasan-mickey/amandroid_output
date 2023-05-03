<%
var els=new EncryptedLocalStorage('secret');
var arr=els.get("formarray");
var paymode = els.get("paymentmethod");
var paymode = els.get("paymentmode");
var accNO= els.get("dispaccno");
var totamt = els.get("moitotamt");
var nickName = els.get("nickName");
var txnfee = els.get("currentamount");
var langId = els.get("language_id");

var moiserviceTypeText = els.get("moiserviceType");
var moiAppTypeText= els.get("moiappType");
var moiIdText= els.get("dispmoiIdpayment");

var billerId 		= els.get("selectedsubBillerId");
var dispmoiIdText	= els.get("dispmoiIdpayment");
var moiBillerFeeDTO = 	 els.get("moiFeeRespDTO_Trafic");
var emailIdCheck = els.get("emailid");


var hidservicecode_Arr = els.get("TV_hidservicecode");
var violationsviolationid_Arr = els.get("TV_violationsviolationid");
var violationsgrouppmtid_Arr = els.get("TV_violationsgrouppmtid");
var violationsfeeamount_Arr = els.get("TV_violationsfeeamount");
var violationspmtid_Arr = els.get("TV_violationspmtid");
var violationspmtidtype_Arr = els.get("TV_violationspmtidtype");
var violationsfeetype_Arr = els.get("TV_violationsfeetype");
var selectedsubBillerId = els.get("selectedsubBillerId");
var selectedBillerid = els.get("selectedBillerid");
var devicePlatform = els.get("device.platform");
%>
<% if ( devicePlatform == "Android" ) { %>
<a href="javascript:void(0)" id="back" name="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<%}else{%>
<!--<a href="javascript:void(0)" id="back" name="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>-->
<%}%>
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
    <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.moi.moipayments.confirm')%></p></div></div>
</div>
                  <!--Step Control Ends Here-->
<div class="dtl_view">
     <form role="form">
     		  <div class="alert alert-success text-center">                    <%-$.i18n.t('app.moi.moipayments.successmessage')%></br><b><u><%-$.i18n.t('app.moi.moipayments.successmessage1')%></u></b><%-$.i18n.t('app.moi.moipayments.successmessagepart')%>
               </div>
           <table class="table table-bordered table-striped">
                <tbody>
                	   	<%if(billerId != "040"){%>
	    		        	 <tr>	
	    		        	  	<td><%-$.i18n.t('app.moi.moipayments.refno')%></td>
	    		        		<td><%-sadadrefundtransactionnumber%></td>
	    		        	</tr>	
    		        	<%}%>
                
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
    		        	
    		        	
    		        	<%if(dispmoiIdText[26]!=null && dispmoiIdText[26]!="" && dispmoiIdText[26]!='undefined' &&  dispmoiIdText[26]!='--'){%>
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
    		        	
                      	<tr>
                          		<td><%-$.i18n.t('app.moi.moipayments.paymentmode')%></td>
	                          		<td id="paymode">
		                          		<%if(langId=="en-US"){%>
			                          		<%-paymode%>
			                          	<%}else if(paymode == 'ACCOUNT'){%>
			                          		<%-$.i18n.t('app.moi.moipayments.account')%>
			                          	<%}else if(paymode == 'CREDITCARD'){%>
			                          		<%-$.i18n.t('app.moi.moipayments.card')%>
			                          	<%}%>
		                          	</td>
                     	</tr>
                   <!-- <tr>
                          		<td><%-$.i18n.t('app.moi.moipayments.accno')%></td>
                          		<td id="no"><%-accNO%></td>
                        </tr> -->
                        <tr>
                          		<td><%-$.i18n.t('app.moi.moipayments.nickname')%></td>
                          		<td id="name"><%-nickName%> </td>
                        </tr>
                        
                        <!-- <tr>
                          		<td><%-$.i18n.t('app.moi.moipayments.payamount')%></td>
                       			<td id="totamt" class="amt"><span class="cur">KWD</span><%-totamt%></td>
                        </tr> -->
                        			
                        
                        <!--Commented For Traffic violation should be same as a confitm screen -->
                        <!--
                        	<%if(billerId == "040"){%>
								<div class="billpay cust_panel">
									<%
										_.each(moiBillerFeeDTO,function(data){
									%>
												<ul>
									            	<li>
									                    <div class="d_msg">
									                        <p><%-data.ftnumber%></p>
									                        <p><%-data.violationsviolationid%></p>
									                    	<p><%-data.violationsfeetype%></p>
									                    </div>
									                    <div class="amt neg">
									                      	<span class="hdr"><%-$.i18n.t('app.moi.moipayments.fees')%></span>
									                      	<span class="cur">KWD</span>
									                      	<span id="penalty">
									                      		<%- checkAmount($.formatNumber(data.violationsfeeamount, {format:"#,###.000", locale:"us"}))%>
									                      	</span>
									                    </div>
													</li>
												</ul>
									<%
										});
									%>
								</div>
                        <%}%>
                        -->
                        
                        
                        <% if(selectedsubBillerId=="040"){%>
							<div class="billpay cust_panel">
								<%
										for(var i=0;i<hidservicecode_Arr.length;i++){
								%>
											<ul>
								            	<li>
								                    <div class="d_msg">
								                        <p><%-violationsviolationid_Arr[i]%></p>
								                    	<p><%-violationsfeetype_Arr[i]%></p>
								                    </div>
								                    <div class="amt neg">
								                      	<span class="hdr"><%-$.i18n.t('app.moi.moipayments.fees')%></span>
								                      	<span class="cur">KWD</span>
								                      	<span id="penalty">
								                      	<%- checkAmount($.formatNumber(violationsfeeamount_Arr[i], {format:"#,###.000", locale:"us"}))%>
								                      	</span>
								                    </div>
												</li>
											</ul>
								<%
										}
								%>
							</div>
						<%}%>
                        
                        
                        
                        
              </tbody>
        </table>
        <div class="amt2">
            <p> <span class="hdr"><%-$.i18n.t('app.moi.moipayments.paymenttotalamount')%></span><span class="cur">KWD</span><%-totamt%></p>
        	<p> <span class="hdr"><%-$.i18n.t('app.moi.moipayments.fromaccount')%></span><span class="cur"><%-accNO%></span></p>
        </div>
           
        <a href="#/moiList" class="btn btn-success btn-block" id="submit"><%-$.i18n.t('app.moi.moipayments.makeanotherpayment')%></a>
        <%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
       		 <input type="button" id="sendemail" name="sendemail" class="btn btn-success btn-block" value="<%-$.i18n.t('app.moi.moipayments.emailadvice')%>" />
       	<%}%>   	 
        <a href="#/wealth" class="btn btn-success btn-block" id="submit"><%-$.i18n.t('app.moi.moipayments.home')%></a>
        <!-- <a href="#/moiList" class="btn btn-primary btn-block"><%-$.i18n.t('app.moi.moipayments.home')%></a> -->
        
        </br>
 </form>
</div>
              