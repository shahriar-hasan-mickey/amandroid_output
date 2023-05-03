<%
	var els = new EncryptedLocalStorage('secret'); 
	var BillerLists = els.get("BillerLists");
	var basecurr = els.get("basecurr");
	var modeofPayment=els.get("modepay");
	var emailIdCheck = els.get("emailid");
	var devicePlatform = els.get("device.platform");
	var billersizechck = els.get("billersizechck");
	var idnum = 1;
	var billerserviceno = els.get("Billerservicesref");
	var referenceTag = els.get("referenceTag");
	console.log("referenceTag",referenceTag);
	var denominationCurrency = els.get("denominationCurrency");
	var sellingPrice = els.get("sellingPrice");
    var sellingCurrency = els.get("sellingCurrency");
    var amtValchck = els.get("amtValchck");
%>
<% if ( devicePlatform == "Android" ) { %>
 		 <a href="#/sadad" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<%}else{%>
 		 <!--<a href="#/billpayInquiry" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>-->
<%}%>
 		 <!-- Breadcrumb Starts Here -->
		 <ol class="breadcrumb cust_breadcrumb pull-left">
			 <li><a href="#/sadad"><%-$.i18n.t('app.menu.billpay')%></a></li>
			 <li class="active"><%-$.i18n.t('app.sadad.general.billpaymentinquiry')%></li>
		 </ol>
 		 <div class="clearfix"></div>
 		 <!-- Breadcrumb Ends Here -->
 
		 <div class="newWiz">
			 <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.billinquiry.input')%></p></div></div>
			 <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.sadad.billinquiry.verify')%></p></div></div>
			 <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.sadad.billinquiry.confirm')%></p></div></div>
		</div>
         <div class="alert alert-success text-center">
             <!-- <%-$.i18n.t('app.sadad.duebillpay.transactionComplete')%></br><b><u><%-$.i18n.t('app.sadad.duebillpay.transactionComplete1')%></u></b>-->
			  <p><%-$.i18n.t('app.creditcard.ccpayments.autopaymentsuccess')%>&nbsp;
                  	<%-$.i18n.t('app.requests.chequebookreq.transrefno')%> <p class="ref"><%-referenceTag%></p></p>
			  <!--<%-$.i18n.t('app.sadad.duebillpay.transactionCompletepart')%>
			  <%-$.i18n.t('app.sadad.duebillpay.transactionCompletebulk')%>-->   
        </div>        
	<div class="billpay billpay_confirm">
					 <!--Billpay Starts Here-->
					 <form>
		<ul>
		                 <% var i=0;
		              		var k=_.size(BillerLists);
		              		
								_.each( BillerLists, function(BillerList ) {
									if(BillerLists[i]!=null){
		                %>
						                    <li>
						                           <div class="dater" style="display:none">
						                                    <span class="label"></span>	
						                                 	<span class="dd" id="billduedate" name="billduedate"></span>
						                                 	<span class="mm" id="billduemonth" name="billduemonth"></span>
						                           </div>
						                              
						                            <div class="d_msg">
						                                 	<p class="type" id="billernickname" name="billernickname"><%-BillerList[3]%></p>
						                                 	<p id="serviceprovider" name="serviceprovider"><%-BillerList[4]%></p>
						                                 	<p id="refno" name="refno"><%-BillerList[8]%></p>
						                                  			
						                                	<!--<p><%-$.i18n.t('app.sadad.billinquiry.exactpayment')%>&nbsp;
									                            <b id="exactpaycheck" name="exactpaycheck">
																<%if(BillerList[6]=='YES'){%>
								                                			<%-$.i18n.t('app.sadad.duebillpay.exactpaymentyes')%>
						                                 		<%}else if(BillerList[6]=='NO'){%>
							                                 				<%-$.i18n.t('app.sadad.duebillpay.exactpaymentno')%>
				                                               <%}%>
			                                               		</b>
						                                 	</p>-->
						                                 	<!--
						                                 	<p><%-$.i18n.t('app.sadad.billinquiry.billcycle')%>&nbsp;
									                            <b id="billcycle" name="billcycle"><%-BillerList[12]%></b>
						                                 	</p>
						                                 	
						                                 	<p><%-$.i18n.t('app.sadad.billinquiry.sadadref')%>&nbsp;
									                            <b id="sadadreferencenumber" name="sadadreferencenumber"></b>
						                                 	</p>-->
						                           </div>
							                              		
								                      <%if(BillerList[13]<=0.00){%>	
								                   		<div class="amt">
													<%}else{%>
														 <div class="amt neg">
													<%}%>
										<span class="hdr"><%-$.i18n.t('app.sadad.duebillpay.billamount')%></span>
						                              	<span class="cur" id="currencycode" name="currencycode">
						                              	<%if(!(sellingCurrency=="" || sellingCurrency=="null" || sellingCurrency==null || sellingCurrency=="undefined" || sellingCurrency==undefined)){%>
						                              			<%-sellingCurrency%>
						                              	<%}else{%>
						                              			<%-basecurr%>
						                              	<%}%>
						                              	</span>
							                           <%if(!(sellingPrice=="" || sellingPrice=="null" || sellingPrice==null || sellingPrice=="undefined" || sellingPrice==undefined)){%>
											                      <%- checkAmount($.formatNumber(sellingPrice, {format:"#,###.000", locale:"us"}))%>
											          <%}else{%>
																  <%- checkAmount($.formatNumber(amtValchck, {format:"#,###.000", locale:"us"}))%>
													  <%}%> 
						                            </div>
						                            
							                        <div class="amt1">
				                         				<span class="hdr"><%-$.i18n.t('app.sadad.billinquiry.payamount')%></span>
				                         				<span class="cur" value="<%-BillerList[7]%>">
				                         				<%if(!(sellingCurrency=="" || sellingCurrency=="null" || sellingCurrency==null || sellingCurrency=="undefined" || sellingCurrency==undefined)){%>
						                              			<%-sellingCurrency%>
						                              	<%}else{%>
						                              			<%-basecurr%>
						                              	<%}%>
				                         				&nbsp;</span>
				                         				<%if(!(sellingPrice=="" || sellingPrice=="null" || sellingPrice==null || sellingPrice=="undefined" || sellingPrice==undefined)){%>
														         <%- checkAmount($.formatNumber(sellingPrice, {format:"#,###.000", locale:"us"}))%>
														  <%}else{%>
																  <%- checkAmount($.formatNumber(amtValchck, {format:"#,###.000", locale:"us"}))%>
														  <%}%>
							                        </div>
						                   </li>
		                           	<%i++; }else{
		                           	i++;
		                           	}
		                       }); %>
		           </ul>
		              
				      <div class="amt2">
			             <p> <span class="hdr"><%-$.i18n.t('app.sadad.billinquiry.totalpayment')%></span><span class="cur">
			             <%if(!(sellingCurrency=="" || sellingCurrency=="null" || sellingCurrency==null || sellingCurrency=="undefined" || sellingCurrency==undefined)){%>
						                              			<%-sellingCurrency%>
						 <%}else{%>
						                              			<%-basecurr%>
						 <%}%>
			             </span>
			              <%if(!(sellingPrice=="" || sellingPrice=="null" || sellingPrice==null || sellingPrice=="undefined" || sellingPrice==undefined)){%>
						         <%- checkAmount($.formatNumber(sellingPrice, {format:"#,###.000", locale:"us"}))%>
						  <%}else{%>
								  <%- checkAmount($.formatNumber(amtValchck, {format:"#,###.000", locale:"us"}))%>
						  <%}%> 
			             </p>
			             <p> <span class="hdr">
			             
			           		 <%-$.i18n.t('app.sadad.billinquiry.fromaccount')%>
			           		 
			           		 </span><span class="cur"><%-acno%></span></p>
			        </div>
											   		
											   		
									                <a href="#/sadad" class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.ccpayments.makeanotherpayment')%></a>
									                <%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
									                	<input type="button" id="emailadvice" name="emailadvice" class="btn btn-success btn-block" value="<%-$.i18n.t('app.sadad.billinquiry.sendtomail')%>">
									                <%}%> 		
									                <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.billinquiry.home')%></a>
              </form>
</div>
</br>
<script>
		$(document).ready(function()
		{
		
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
