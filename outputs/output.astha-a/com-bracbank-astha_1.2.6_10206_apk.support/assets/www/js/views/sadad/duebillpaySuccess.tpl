<%
	var els = new EncryptedLocalStorage('secret'); 
	var BillerLists = els.get("BillerLists");
	var basecurr = els.get("basecurr");
	var modeofPayment=els.get("duemodepay");
	var emailIdCheck = els.get("emailid");
	var billersizechck = els.get("billersizechck");
	var idnum = 1;
%>
 		 <a href="#/sadad" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 		 <!-- Breadcrumb Starts Here -->
		 <ol class="breadcrumb cust_breadcrumb pull-left">
			 <li><a href="#/sadad"><%-$.i18n.t('app.sadad.general.title')%></a></li>
			 <li class="active"><%-$.i18n.t('app.sadad.general.duebillpayment')%></li>
		 </ol>
 		 <div class="clearfix"></div>
 		 <!-- Breadcrumb Ends Here -->
 
		 <div class="newWiz">
			 <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.duebillpay.input')%></p></div></div>
			 <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.sadad.duebillpay.verify')%></p></div></div>
			 <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.sadad.duebillpay.confirm')%></p></div></div>
		</div>
         <div class="alert alert-success text-center">
                                    <%-$.i18n.t('app.sadad.duebillpay.transactionComplete')%></br><b><u><%-$.i18n.t('app.sadad.duebillpay.transactionComplete1')%></u></b>
			  <%if(billersizechck == idnum){%>
			  <%-$.i18n.t('app.sadad.duebillpay.transactionCompletepart')%>
			  <%}else{%>
			  <%-$.i18n.t('app.sadad.duebillpay.transactionCompletebulk')%>
			  <%}%> 
        </div>        
	<div class="billpay billpay_confirm">
					 <!--Billpay Starts Here-->
					 <form role="form">
		<ul>
		                 <% var i=0;
		              		var k=_.size(BillerLists);
		              		   _.each(biller,function(data){ 
								_.each( BillerLists, function(BillerList ) {
									if(BillerLists[i]!=null){
		                %>
						                    <li>
						                           <div class="dater">
						                                    <span class="label"><%-$.i18n.t('app.sadad.duebillpay.dueon')%></span>	
						                                 	<span class="dd" id="billduedate" name="billduedate"><%-BillerList[1]%></span>
						                                 	<span class="mm" id="billduemonth" name="billduemonth"><%-BillerList[2]%></span>
						                           </div>
						                              
						                            <div class="d_msg">
						                                 	<p class="type" id="billernickname" name="billernickname"><%-BillerList[3]%></p>
						                                 	<p id="serviceprovider" name="serviceprovider"><%-BillerList[4]%></p>
						                                 	<p id="refno" name="refno"><%-BillerList[5]%></p>
						                                  			
						                                	 <p><%-$.i18n.t('app.sadad.duebillpay.exactpayment')%>&nbsp;
									                            <b id="exactpaycheck" name="exactpaycheck">
										                            <%if(BillerList[6]=='YES'){%>
								                                		<%-$.i18n.t('app.sadad.duebillpay.exactpaymentyes')%>
			                                 						<%}else if(BillerList[6]=='NO'){%>
				                                 						<%-$.i18n.t('app.sadad.duebillpay.exactpaymentno')%>
	                                               				    <%}%>
                                               				</b>
						                                 	</p>
						                                 	<!--<p><%-$.i18n.t('app.sadad.duebillpay.billcycle')%>&nbsp;
									                            <b id="billcycle" name="billcycle"><%-BillerList[5]%></b>
						                                 	</p> -->
											
						                                 	<p><%-$.i18n.t('app.sadad.duebillpay.sadadref')%>&nbsp;
									                            <b id="sadadreferencenumber" name="sadadreferencenumber"><%-data.sadadreferencenumber%></b>
						                                 	</p>
															<input type="hidden" name="ftrefno" id="ftrefno" value="<%-data.ftnumber%>" />

						                           </div>
							                              		
								                    <div <%if(BillerList[12]<=0.00){%>
														  class="amt"
														  <%}else{%>
														  class="amt neg"
														  <%}%>
														  ><span class="hdr"><%-$.i18n.t('app.sadad.duebillpay.dueamount')%></span>
								                           	<span class="cur" id="currencycode" name="currencycode"><%-basecurr%></span><%-BillerList[7]%>
															<!-- <p class="ref" id="ftrefno"></p> -->
								                           	<span>
								                           			<%- checkAmount($.formatNumber(BillerList[12], {format:"#,###.000", locale:"us"}))%>
								                           	</span>
								                           	 <%if(data.ftnumber!=""){%>
								                           			<p class="ref"><%-data.ftnumber%></p>
								                           	<%}else{%>
								                           	<%}%>	
						                            </div>
						                            
								                    <div class="amt neg"><span class="hdr"><%-$.i18n.t('app.sadad.billinquiry.payamount')%></span>
								                    <span class="cur" value="<%-BillerList[7]%>"><%-basecurr%></span>
								                    	<%- checkAmount($.formatNumber(BillerList[8], {format:"#,###.000", locale:"us"}))%>
								                    </div>
						                   </li>
		                           	<%i++; }else{
		                           	i++;
		                           	}
		                       }); %>
		                      <%});%>  
		           </ul>
											        <div class="amt2"> 
											             	<p> <span class="hdr"><%-$.i18n.t('app.sadad.duebillpay.totalpayment')%></span>
											                   	 <span class="cur"><%-basecurr%></span>
											                   	 <%- checkAmount($.formatNumber(amt, {format:"#,###.000", locale:"us"}))%>
											             	</p>
											                <p> 
											                     <span class="hdr"> 
											                     <%if(modeofPayment=='A'){%>
												           		 <%-$.i18n.t('app.sadad.duebillpay.fromaccount')%>
												           		 <%}else{%>
												           		 <%-$.i18n.t('app.sadad.duebillpay.fromcard')%>
												           		 <%}%></span>
											                     <span class="cur"><%-acno%></span>
											                 </p>
											   		</div>
											   		
									                <a href="#/sadad" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.duebillpay.anotherpayment')%></a>
									                 <%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
									               		 <input type="button" id="emailadvice" name="emailadvice" class="btn btn-success btn-block" value="<%-$.i18n.t('app.sadad.duebillpay.emailadvice')%>">
									               	  <%}%> 		 
									                <a href="#/wealth" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.duebillpay.home')%></a>
              </form>
</div>
</br>
   