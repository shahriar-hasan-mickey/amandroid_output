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
 <a href="#/sadad" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
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
           <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.sadad.billinquiry.confirm')%></p></div></div>
   </div>
<div class="billpay billpay_confirm">
         <form>
		        <ul>
		              <% var i=0;
		              var k=_.size(BillerLists);
							_.each( BillerLists, function(BillerList ) {
							if(BillerLists[i]!=null){
							
		                %>
		                     <li>
		                            <div class="dater" style="display:none;">
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
			                              	<%console.log("-----------",sellingCurrency);
			                              	if(!(sellingCurrency=="" || sellingCurrency=="null" || sellingCurrency ==null || sellingCurrency=="undefined" || sellingCurrency==undefined)){%>
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
		                     <input type="hidden" id="hiddotpvalue" name="hiddotpvalue">
							 <input type="hidden" id="hiddpaymode" name="hiddpaymode" value="<%-paymode%>">
							 <input type="hidden" id="hiddtotamt" name="hiddtotamt" value="<%-totamt%>">
							 <input type="hidden" id="hiddacno" name="hiddacno" value="<%-fromacc%>">
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
                <a  class="btn btn-success btn-block" id="confirm" name="confirm"><%-$.i18n.t('app.sadad.duebillpay.confirm')%></a>
				<a href="#/billpayInquiry" id="back" name="back" class="btn btn-primary btn-block"><%-$.i18n.t('app.sadad.duebillpay.cancel')%></a>
							           
  </form>
            </div><!--confirm Ends Here-->
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
   
