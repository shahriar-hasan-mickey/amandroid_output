<%
	var els = new EncryptedLocalStorage('secret'); 
	var BillerLists = els.get("BillerLists");
	var basecurr = els.get("basecurr");
	var billdailylmt = els.get("dailylmt");
	var billavaillmt = els.get("availlmt");
	var billtransfees= els.get("transfees");
%>
	 <a href="#/duebillpay" id="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
	 <!-- Breadcrumb Starts Here -->
                  
	 <ol class="breadcrumb cust_breadcrumb pull-left">
		     <li><a href="#/sadad"><%-$.i18n.t('app.sadad.general.title')%></a></li>
		     <li class="active"><%-$.i18n.t('app.sadad.general.duebillpayment')%></li>
	 </ol>
	 <div class="clearfix"></div>
	 
	 <!-- Breadcrumb Ends Here -->
	  <div class="newWiz">
	          <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.duebillpay.input')%></p></div></div>
	          <div class="steps"><span></span><div>2<p><%-$.i18n.t('app.sadad.duebillpay.verify')%></p></div></div>
	          <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.duebillpay.confirm')%></p></div></div>
	 </div>
	 
         <div class="billpay billpay_confirm">
<!--Billpay Starts Here-->
               <form role="form">
               <p class="help-block error-message label label-danger" style="display: none;" id="limitError" ><%-$.i18n.t('validation.sadad.totamtexceed')%></p>
		              <ul>
		                 <% var i=0;
			              		var k=_.size(BillerLists);
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
					                                 	</p>-->
					                            </div>
						                              		
						                        <div <%if(BillerList[12]<=0.00){%>
													  class="amt"
													  <%}else{%>
													  class="amt neg"
													  <%}%>
													  >
													  <span class="hdr"><%-$.i18n.t('app.sadad.duebillpay.dueamount')%></span>
						                           	<span class="cur" id="currencycode" name="currencycode"><%-basecurr%><%-BillerList[7]%></span>
						                           	<span>
							                           		<%- checkAmount($.formatNumber(BillerList[12], {format:"#,###.000", locale:"us"}))%>
						                           	</span>
				                               </div>
						                              			
								               <div class="amt neg"><span class="hdr"><%-$.i18n.t('app.sadad.billinquiry.payamount')%></span>
													<span class="cur" value="<%-BillerList[7]%>"><%-basecurr%>&nbsp;</span>
														<%- checkAmount($.formatNumber(BillerList[8], {format:"#,###.000", locale:"us"}))%>
											   </div>
				                     </li>
		              		 <%i++; }else{
		                           		i++;
		                           	}
		                        }); %>
		            </ul>
		                   					<div class="amt2"><span class="hdr"><%-$.i18n.t('app.sadad.billinquiry.totalamount')%></span>
		                   					<span id="totamt" name="totamt" class="cur"><%-basecurr%></span>
		                   						<%- checkAmount($.formatNumber(totamt, {format:"#,###.000", locale:"us"}))%>
		                   					</div>
<!--Billpay Ends Here-->

<!-- Option Acct. / Card Select - Starts -->
					                      <div class="form-group paymentMode">
					            			    <label ><%-$.i18n.t('app.sadad.duebillpay.paymode')%></label>
									            <div class="btn-group btn-group-justified" data-toggle="buttons">
										               <label class="btn btn-success payAccount active" id="labelAccount">
										                      <input id="acnt" type="radio" name="options" value="ACCOUNT" checked="checked" id="frmacnt"> <%-$.i18n.t('app.sadad.duebillpay.account')%>
										               </label>
										               <label class="btn btn-default payCard" id="labelCard">
										                       <input id="ccd" type="radio" value="CREDITCARD" name="options" id="frmcard"> <%-$.i18n.t('app.sadad.duebillpay.card')%>
										               </label>
									            </div>
					      				 </div>
<!-- Option Acct. / Card Select - Ends -->

<!-- Start From account Starts -->
								       <div class="fromAcc" >
										     <div class="dropselect" data-title="<%-$.i18n.t('app.sadad.duebillpay.fromaccount')%>" >
										          <%
										               _.each(fromacc,function(data){
										          %>
										          <% if( data.currency.code == "KWD" ) { %>
										              <label class="list-group-item">
										                        <input type="radio" value="<%-data.accountNumberMasked%>~<%-data.accountNumber%>~<%-data.availableBalance%>" name="frmacno" id="frmacno"/>
										            			<p><span id="uname" name="uname" class="nme"><%-data.accountShortName%></span><small id="ccode" name="ccode" class="pull-right cur"><%-data.currency.code%></small></p>
										            			<p><small id="accountno" name="accountno" class="text-muted"><%-data.accountNumberMasked%></small><span id="amount" name="amount" class="pull-right amt"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
										              </label>
										          <% } %>
										          <%});%>
										     </div>
								       </div>
							<p class="help-block error-message label label-danger" id="errorFromAct" style="display: none;"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></p>

<!-- End From account  -->

<!-- Start Credit card -->
								       <div class="creditCard">
										    <div class="dropselect" data-title="<%-$.i18n.t('app.sadad.duebillpay.fromcard')%>" >
										           <%
														 _.each(creditcards,function(data){ 
										           %>
								                             <label class="list-group-item">
								                                        <input type="radio" value="<%-data.creditCardNoMasked%>~<%-data.accountNumber%>~<%-data.availableBalance%>~<%-data.creditCardActNo%>" name="frmcard" id="frmcard"/>
																		<p>
																			<%if(typeof(data.shortName)!="undefined"){%>
																				<span id="uname" name="uname" class="nme"><%-data.shortName%></span>
																			<%}%>
																			<%if(typeof(data.currencyCode)!="undefined"){%>
																				<small id="ccode" name="ccode" class="cur pull-right"><%-data.currencyCode%></small>
																			<%}%>
																		</p>
																		<p>
																			<%if(typeof(data.creditCardNoMasked)!="undefined"){%> 
																					<small id="accountno" name="accountno"  class="text-muted"><%-data.creditCardNoMasked%></small>
																			<%}%>
																			<%if(typeof(data.availableCreditLimit)!="undefined"){%>
																					<span id="amount" name="amount" class="amt pull-right"><%- checkAmount($.formatNumber(data.availableCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
																			<%}%>
																		</p>
															</label>
												<% });%>
										    </div>
								      </div>

							<p class="help-block error-message label label-danger" id="errorFromCard" style="display: none;"><%-$.i18n.t('app.creditcard.general.fromaccmsg')%></p>

					</div>
					
<!-- Ends Credit card -->
                          <!--Related information-->
	                           	<div class="infoCont">
	                           		 <h4><%-$.i18n.t('app.transfer.general.relatedinfo')%></h4> 
		                             <ul>
		                               	<li class="dl">
		                                    <p class="lbl"><%-$.i18n.t('app.sadad.duebillpay.dailylimit')%></p>
		                                    <p class="text-right"><span><%-basecurr%>&nbsp;</span><%- checkAmount($.formatNumber(billdailylmt, {format:"#,###.000", locale:"us"}))%></p>
		                               	</li>
		                               	<li class="al">
		                                    <p class="lbl"><%-$.i18n.t('app.sadad.duebillpay.availlimit')%></p>
		                                    <p class="text-right"><span><%-basecurr%>&nbsp;</span><%- checkAmount($.formatNumber(billavaillmt, {format:"#,###.000", locale:"us"}))%></p>
		                               	</li>
										<!--<li class="tf">
	                                  		<p class="lbl"><%-$.i18n.t('app.sadad.duebillpay.transactionfees')%></p>
	                                  		<p class="text-right"><span><%-basecurr%> &nbsp;</span><%- checkAmount($.formatNumber(billtransfees, {format:"#,###.000", locale:"us"}))%></p>
	                                    </li>-->
		                             </ul>
	                          	</div>
	                          	
	                          	
								<p class="help-block error-message label label-danger" id="errorAvailBal" style="display: none;"><%-$.i18n.t('validation.sadad.amountcheck')%></p>
								<p class="help-block error-message label label-danger" id="errorAvailLimit" style="display: none;"><%-$.i18n.t('validation.sadad.availablelimit')%></p>
								<p class="help-block error-message label label-danger" id="errorDailyLimit" style="display: none;"><%-$.i18n.t('validation.sadad.dailylimit')%></p>
	                          	</br>
								<input type="hidden" id="hiddavaillimit" name="hiddavaillimit" value="<%-billdailylmt%>" />
								<input type="hidden" id="hidddailylimit" name="hidddailylimit" value="<%-billavaillmt%>" />
								<input type="hidden" id="hiddtransfee"   name="hiddtransfee" value="<%-billtransfees%>" />
								<input type="hidden" id="hidPaymentMode" name="hidPaymentMode" value="" />
	                            <input type="hidden" value="<%-totamt%>" id="totamount" name="totamount"/>
		                   		
		                   			   <input type="button" id="payduebills" name="payduebills" class="btn btn-success btn-block" value="<%-$.i18n.t('app.sadad.duebillpay.pay')%>" >
	                                   <!-- <a  href="javascript:void(0)" id="payduebills" name="payduebills" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.duebillpay.pay')%></a> -->
	                                   <a href="#/duebillpay" id="back" name="back" class="btn btn-primary btn-block"><%-$.i18n.t('app.sadad.duebillpay.cancel')%></a>
              </form>
                  </div> <br/>
                  <!--Billpay Ends Here-->
                 
                  
<script>
        $(document).ready(function()
        {
	        $(".msg,#errorpay").hide();
	        /*$("#pay").on("click",function()
	        {
	           $(this).attr("href","javascript:void(0)");
	          	$(this).hide();
	            $(".error").addClass("errorDiv");
	            $("#errorpay").show().attr("href","verifyInquiry.html");
	        });*/
	        $('.creditCard').hide();
	        $('.payAccount').change(function(){
	        	$("#errorFromAct").hide();
            	$("#errorFromCard").hide();
	            $('.fromAcc').show();
	            $('.creditCard').hide();
	            $("#hidPaymentMode").val("A");
	        });
	        $('.payCard').change(function(){
	        	$("#errorFromAct").hide();
            	$("#errorFromCard").hide();
	            $('.fromAcc').hide();
	            $('.creditCard').show();
	            $("#hidPaymentMode").val("C");
	        });
      });
      $("#hidPaymentMode").val("A");
      var els = new EncryptedLocalStorage('secret'); 
					      var defaultSelectionListDetailsDTO = els.get("defaultSelectionListDetails");
				      if(defaultSelectionListDetailsDTO=="" || defaultSelectionListDetailsDTO==null || defaultSelectionListDetailsDTO==undefined ){
				      $(".dropselect").dropselect();
				      }
       $(".content").animate({ scrollTop: 0 }, "fast");
</script>
        