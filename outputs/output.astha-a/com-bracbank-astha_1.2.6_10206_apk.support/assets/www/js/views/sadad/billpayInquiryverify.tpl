<%
	var els = new EncryptedLocalStorage('secret'); 
	var basecurr = els.get("basecurr");
	console.log("basecurr......",basecurr);
	var billdailylmt = els.get("dailylmt");
	var billavaillmt = els.get("availlmt");
	var billtransfees= els.get("transfees");
	
	//For Personalization Phase II STARTS
	
	var menuVisibilityList ="Y"//els.get("menuVisibilityList");
	var notifyFlag = 'Y';//menuVisibilityList["MTC3001"].menu_status;
	var acctFlag = 'Y';//menuVisibilityList["MTC3002"].menu_status;
	var financeFlag = 'Y';//menuVisibilityList["MTC3005"].menu_status;
	
	var ccardFlag = 'Y';//menuVisibilityList["MTC3004"].menu_status;
	var investFlag = 'Y';//menuVisibilityList["MTC3003"].menu_status;
	var timedepstFlag = 'Y';//menuVisibilityList["MTC3006"].menu_status;
	var rplFlag = 'Y';//menuVisibilityList["MTC3007"].menu_status;
	var preMenuSettings ='Y';//menuVisibilityList["MTC3046"].menu_status;
	var totamt = els.get("totalamount");
%>

<script src="js/libs/common/appcommon.js"></script>
<%
	var els = new EncryptedLocalStorage('secret'); 
	var BillerLists = els.get("BillerLists");
	var denominationCurrency = els.get("denominationCurrency");
	var sellingPrice = els.get("sellingPrice");
    var sellingCurrency = els.get("sellingCurrency");
    var amtValchck = els.get("amtValchck");
%>
 <a href="#/billpayInquiry" id="back" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 <ol class="breadcrumb cust_breadcrumb pull-left">
	  <li><a href="#/sadad"><%-$.i18n.t('app.menu.billpay')%></a></li>
	   <li class="active"><%-$.i18n.t('app.sadad.general.billpaymentinquiry')%></li>
 </ol>

	<div class="clearfix"></div>
	<div class="newWiz">
          <div class="steps done"><div>1<p><%-$.i18n.t('app.sadad.billinquiry.input')%></p></div></div>
          <div class="steps"><span></span><div>2<p><%-$.i18n.t('app.sadad.billinquiry.verify')%></p></div></div>
          <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.billinquiry.confirm')%></p></div></div>
	</div>
	
	<div class="clearfix"></div>
                  
                  <!--<h3 class="header"><%-$.i18n.t('app.sadad.general.billpaymentinquiry')%>
                        <a href="#" class="btn btn-default btn-default btn-sm"><span class="glyphicon glyphicon-plus"></span> Add New Bill</a>
                  </h3>-->

	<div class="billpay billpay_confirm">
         <form >
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
                             				-->
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
					<input type="hidden" value="<%-totamt%>" id="index" name="index"/>
					<div class="amt2"><span class="hdr"><%-$.i18n.t('app.sadad.billinquiry.totalpayment')%></span>
			       		<span id="totamt" name="totamt" class="cur">
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

<!--Authentication Page starts here-->
                      <div class="form-group paymentMode">
            			 <label ><%-$.i18n.t('app.sadad.billinquiry.paymode')%></label>
            			  <div  style="display:none">
				            <div class="btn-group btn-group-justified" data-toggle="buttons" id="paymode" name="paymode">
					              <label class="btn btn-success payAccount active" id="labelAccount">
					                      <input id="acnt" type="radio" name="options" value="ACCOUNT" checked="checked"> <%-$.i18n.t('app.sadad.billinquiry.account')%>
					               </label>
					               <label class="btn btn-default payCard" id="labelCard">
					                       <input id="ccd" type="radio" value="CREDITCARD" name="options" > <%-$.i18n.t('app.sadad.billinquiry.card')%>
					                </label>
				            </div>
				            </div>
      				 </div>

<!-- Start From account  -->
       <div class="fromAcc" >
		     <div class="dropselect" data-title="<%-$.i18n.t('app.sadad.billinquiry.fromaccount')%>" data-setid="accountdiv">
				<%
		               _.each(fromacc,function(data){ console.log("fromacc",JSON.stringify(fromacc));
		        %>
				<%if( data.currencyCode != "" && data.currencyCode != null) { %>
		        <% if( data.currencyCode == "KWD" ) { %>
		           <label class="list-group-item">
		                   <input type="radio" value="<%-data.accountNumber%>~<%-data.availableBalance%>~<%-data.id%>" name="frmacno" id="frmacno"/>
	            			<p><span id="uname" name="uname" class="nme">
	            			<% if(data.productName != null && data.productName != "" ) { %>
							          <%- data.productName %>
							<% } else { %>
							     	&nbsp;
							<% } %>
	            			</span><small id="ccode" name="ccode" class="cur pull-right"><%-data.currencyCode%></small></p>
	            			<p><small id="accountno" name="accountno" class="text-muted"><%-data.accountNumber%></small><span id="amount" name="amount" class="amt pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
		            </label>
		        <% } %>
				<% }else{ %>
					<h4><%-$.i18n.t('app.creditcard.billed.nodata')%></h4>
				<% } %>
		        <%});%>
		    </div>
       </div>
	   <p class="help-block error-message label label-danger" id="errorFromAct" style="display: none;"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></p>

<!-- End From account  -->
<!-- Start Credit card -->
       <div class="creditCard">
		    <div class="dropselect" data-title="<%-$.i18n.t('app.sadad.billinquiry.fromcard')%>" >
		           <%
						 _.each(mycreditcards,function(data){ console.log("mycreditcards",JSON.stringify(mycreditcards));
		           %>
                       <!--  <label class="list-group-item">
                                 <input type="radio" value="<%-data.maskedCCNumber%>~<%-data.accountNumber%>~<%-data.availableBalance%>~<%-data.creditCardActNo%>" name="frmcard" id="frmcard"/>
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
											<%if(typeof(data.availableCreditLimit)!="undefined"){%>
												<span id="amount" name="amount" class="amt pull-right"><%- checkAmount($.formatNumber(data.availableCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
											<%}%>
										</p>
						
						</label>-->
						<%if( data.currencyCode != "" && data.currencyCode != null) { %>
		           <label class="list-group-item">
		                    <input type="radio" value="<%-data.maskedCCNumber%>~<%-data.accountNumber%>~<%-data.availableBalance%>~<%-data.creditCardActNo%>" name="frmcard" id="frmcard"/>
	            			<p><span id="uname" name="uname" class="nme"><%-data.shortName%></span><small id="ccode" name="ccode" class="cur pull-right"><%-data.currencyCode%></small></p>
	            			<p><small id="accountno" name="accountno" class="text-muted"><%-data.accountNumber%></small>	<span id="amount" name="amount" class="amt pull-right"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.000", locale:"us"}))%></span></p>
		            </label>
				<% }else{ %>
					<h4><%-$.i18n.t('app.creditcard.billed.nodata')%></h4>
				<% } %>
					<%});%>
		    </div>
    </div>
	<p class="help-block error-message label label-danger" id="errorFromCard" style="display: none;"><%-$.i18n.t('app.creditcard.general.fromaccmsg')%></p>
</div>
<!-- Ends Credit card -->



<!--Related information-->
                          <!-- 	<div class="infoCont">
                           		<h4><%-$.i18n.t('app.transfer.general.relatedinfo')%></h4> 
                            	<ul>
	                               	<li class="dl">
	                                    <p class="lbl"><%-$.i18n.t('app.sadad.billinquiry.dailylimit')%></p>
										<p class="text-right"><span><%-basecurr%>&nbsp;</span><%- checkAmount($.formatNumber(billdailylmt, {format:"#,###.000", locale:"us"}))%></p>
	                               	</li>
	                               	<li class="al">
	                                    <p class="lbl"><%-$.i18n.t('app.sadad.billinquiry.availlimit')%></p>
										<p class="text-right"><span><%-basecurr%>&nbsp;</span><%- checkAmount($.formatNumber(billavaillmt, {format:"#,###.000", locale:"us"}))%></p>
	                               	</li>-->
                             		<!--<li class="tf">
                                  		<p class="lbl"><%-$.i18n.t('app.sadad.duebillpay.transactionfees')%></p>
										<p class="text-right"><span><%-basecurr%>&nbsp;</span><%-billtransfees%></p>
	                                </li>-->
                       			<!--</ul>
                           	</div>-->
                           	
                           	<div id="errterms" style="display:none">
					       <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.localtransfer.errterms')%></font></p>
					    </div>
					    
					  
		                    <input type="hidden" id="hiddavaillimit" name="hiddavaillimit"/>
                			<input type="hidden" id="hidddailylimit" name="hidddailylimit"/>
                            <input type="hidden" id="hiddtransfee"   name="hiddtransfee"/>
                            <input type="hidden" id="hidPaymentMode" name="hidPaymentMode" value="" />
                            
                       

						<p class="help-block error-message label label-danger" id="errorAvailBal" style="display: none;"><%-$.i18n.t('validation.sadad.amountcheck')%></p>
						<p class="help-block error-message label label-danger" id="errorAvailLimit" style="display: none;"><%-$.i18n.t('validation.sadad.availablelimit')%></p>
						<p class="help-block error-message label label-danger" id="errorDailyLimit" style="display: none;"><%-$.i18n.t('validation.sadad.dailylimit')%></p>
           				
           				 <br/>
						
						<input type="hidden" value="<%-totamt%>" id="totamount" name="totamount"/><br/>
						<input type="button" id="paybills" name="paybills" class="btn btn-success btn-block" value="<%-$.i18n.t('app.sadad.duebillpay.pay')%>" >
                        	 
						<!-- <a  id="pay" name="pay" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.billinquiry.pay')%></a> -->
						<a href="#/billpayInquiry" id="back" name="back" class="btn btn-primary btn-block"><%-$.i18n.t('app.sadad.billinquiry.cancel')%></a>
		</form>
	</div>
                  <!--Billpay Ends Here-->
   </div>
                  <br/>
                  
<script>
	$(document).ready(function()
	{
         $('.fromAcc').show();
        
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
        
        	$('input').keypress(function(e) {
		        var code = (e.keyCode ? e.keyCode : e.which);
		        if ( (code==13) || (code==10))
		            {
		            $(this).blur();
		            return false;
		            }
		    });
	});
    $("#hidPaymentMode").val("A");
   var els = new EncryptedLocalStorage('secret'); 
					      var defaultSelectionListDetailsDTO = els.get("defaultSelectionListDetails");
				      if(defaultSelectionListDetailsDTO=="" || defaultSelectionListDetailsDTO==null || defaultSelectionListDetailsDTO==undefined ){
				      $(".dropselect").dropselect();
				      }

</script>
<script>
  $(document).ready(function(){
         $("#accountdiv").show();
           $(".content").animate({ scrollTop: 0 }, "fast");
    });
</script>
       
