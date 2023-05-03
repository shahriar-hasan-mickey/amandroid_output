 <%
	var els = new EncryptedLocalStorage('secret'); 
	var BillerLists = els.get("BillerLists");
	var k=_.size(BillerLists);
	console.log("billerlencheck",k);
	var basecurr = els.get("basecurr");
	var OTPFlag = "Y";
	var TokenFlag = "N";
	var modeofPayment=els.get("duemodepay");
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
	       <div class="steps done"><span></span><div>2<p><%-$.i18n.t('app.sadad.duebillpay.verify')%></p></div></div>
	       <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.duebillpay.confirm')%></p></div></div>
	</div>
<div class="billpay billpay_confirm">
<!--Billpay Starts Here-->
		<form role="form">
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
					                             <b id="exactpaycheck" name="exactpaycheck"><%-BillerList[6]%></b>
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
											  ><span class="hdr"><%-$.i18n.t('app.sadad.duebillpay.dueamount')%></span>
					                           	<span class="cur" id="currencycode" name="currencycode"><%-basecurr%>&nbsp;<%-BillerList[7]%></span>
					                           	<span>
					                           			<%- checkAmount($.formatNumber(BillerList[12], {format:"#,###.000", locale:"us"}))%>
					                           	</span>
			                         </div>
					                            <div class="amt neg"><span class="hdr"><%-$.i18n.t('app.sadad.billinquiry.payamount')%></span>
					                            <span class="cur" value="<%-BillerList[7]%>"><%-basecurr%></span>
					                            	   <%- checkAmount($.formatNumber(BillerList[8], {format:"#,###.000", locale:"us"}))%>
					                            </div>
					                            
					                            <input type="hidden" id="hiddbillername" name="hiddbillername" value="<%-BillerList[4]%>">
					                            <input type="hidden" id="hiddsevtype" name="hiddsevtype" value="<%-BillerList[10]%>">
					                            <input type="hidden" id="hiddbillerid" name="hiddbillerid" value="<%-BillerList[11]%>">
					                            <input type="hidden" id="hiddbillduedate" name="hiddbillduedate" value="<%-BillerList[12]%>">
		                    </li>
		                       <%i++;}else{
		                           	i++;
		               				}
		            	 }); %>
		 </ul>
			                        <!--Billpay Starts Here-->
			                        <input type="hidden" id="hiddtotamt" name="hiddtotamt" value="<%-totamt%>">
							        <input type="hidden" id="hiddacno" name="hiddacno" value="<%-fromacc%>">
									<div class="amt2">
									       <p><span class="hdr"><%-$.i18n.t('app.sadad.duebillpay.totalamount')%></span><span  class="cur"><%-basecurr%></span><span id="totamt" name="totamt">
									       		<%- checkAmount($.formatNumber(totamt, {format:"#,###.000", locale:"us"}))%>
									       </span></p>
									       <p><span class="hdr">
									       <%if(modeofPayment=='A'){%>
							           		 <%-$.i18n.t('app.sadad.duebillpay.fromaccount')%>
							           		 <%}else{%>
							           		 <%-$.i18n.t('app.sadad.duebillpay.fromcard')%>
							           		 <%}%>
									       </span><span id="acno" name="acno" class="cur"><%-fromacc%></span></p>
									</div>
							        	   <a  class="btn btn-success btn-block" id="confirm" name="confirm"><%-$.i18n.t('app.sadad.duebillpay.confirm')%></a>
							        	   <a href="#/sadad" id="back" name="back" class="btn btn-primary btn-block"><%-$.i18n.t('app.sadad.duebillpay.cancel')%></a>
							           
							        
							        <input type="hidden" id="hiddotpvalue" name="hiddotpvalue">
							        <input type="hidden" id="hiddpaymode" name="hiddpaymode" value="<%-paymode%>">
				</form>
		</div><br/>

<script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
         specialKeys.push(9); //TAB
        $(function () {
            $("input").bind("keypress", function (e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                return ret;
            });
            $("input").bind("paste", function (e) {
                return false;
            });
            $("input").bind("drop", function (e) {
                return false;
            });
        });
       
</script>