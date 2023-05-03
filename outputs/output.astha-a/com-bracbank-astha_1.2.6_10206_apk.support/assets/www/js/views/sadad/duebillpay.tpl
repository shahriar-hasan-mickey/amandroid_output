<%
	var els = new EncryptedLocalStorage('secret'); 
	var basecurr = els.get("basecurr");
	var devicePlatform = els.get("device.platform");
	var isKeyPadNeed =els.get("isKeyPadNeed");
	var billerRangeDTO = els.get('billerRangeDTO');
%>
 	<a href="#/sadad" id="cancel"  class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
 	<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
	      <li><a href="#sadad"><%-$.i18n.t('app.sadad.general.title')%></a></li>
	      <li class="active"><%-$.i18n.t('app.sadad.general.duebillpayment')%></li>
	</ol>

     <div class="clearfix"></div>
     <!-- Breadcrumb Ends Here -->
     <div class="billpay">
     
        <!--Billpay Starts Here-->
        <form role="form">
        
        <input type="hidden" id="histnickname" name="histnickname" />
		<input type="hidden" id="histname" name="histname" />
		<input type="hidden" id="histscrbeno" name="histscrbeno" />
		<input type="hidden" id="histbillerid" name="histbillerid" />
		<input type="hidden" id="duebillhistflag" name="duebillhistflag" value="HISTFLAG"/>
        
                    <% if ( biller.length > 0 ) { var val=0; %>
                    	<ul>
			                <% _.each(biller,function(data){ %>
			                 	 <%if((data.exapayreq)!="NO"){%>
		                           		<li class="list-group">
				                          <% var dd=data.billduedate;
				                           		var cnt=0;
				                           		var ddd,ddd1,mmm,mm1;
				                           		for(i=0;i<dd.length;i++)
				                           		{
				                           			if(dd[4]=='-')
				                           			{
				                           				if(dd[i]=='-')
				                           				{
				                           						if(cnt==0)
				                           						{
				                           							ddd=dd[i+1];
				                           							ddd1=dd[i+2];
				                           							cnt++;
				                           						}
				                           						else
				                           						{
				                           							 mmm=dd[i+1];
				                           							 mmm1=dd[i+2];
				                          						}
				                      					}
				                           			}
					                				if(dd[2]=='-')
					                				{
					                           			if(dd[i]=='-')
					                           			{
					                           				if(cnt==0)
					                           				{
		                           								ddd=dd[i+1];
		                           								ddd1=dd[i+2];
		                           								cnt++;
					                           				}
					                           				else
					                           				{
				                           						 mmm=dd[i+1];
				                           						 mmm1=dd[i+2];
					                           				}
					                           			}
					                           		}
				                           		}
				                        		var date=mmm+""+mmm1;
				                      			var month=ddd+""+ddd1;
											%>
				                              		<div class="dater">
				                              					<%if(typeof(data.billduedate)!="undefined"){%>
																	<span class="label"><%-$.i18n.t('app.sadad.duebillpay.dueon')%></span> 
				                                 					<span class="dd" id="billduedate" name="billduedate"><%-date%></span>
				                                 					<span class="mm" id="billduemonth" name="billduemonth"><%-data.billerduemonth%></span>
				                                 				<%}%>
				                                 				<span>
							                                 		<label class="checkinput pull-left">
																	<input id="hidamtdue" name="hidamtdue" type="hidden" value="<%-data.amountdue%>"/>
														              		<input type="checkbox"  value="<%-val%>~<%-date%>~<%-data.billerduemonth%>~<%-data.shortName%>~<%-data.billername%>~<%-data.billerAccount.primaryAccountNumber%>~<%-data.exapayreq%>~<%-data.currency%>~<%-data.amountdue%>~<%-data.srvtype%>~<%-data.billerid%>~<%-data.billduedate%>~<%-data.amountdue%>" 
														              		class="check-hidden"  name="checkbillpay" id="checkbillpay" />
														           </label>
				                                 				</span>
				                              		</div>
				                              		<div class="l1swipe">
				                              		<div class="d_msg">
				                              				<%if(typeof(data.shortName)!="undefined"&&data.shortName!=""){%>
				                              					<p class="type" id="billernickname" name="billernickname"><%-data.shortName%></p>
				                              				<%}else{%>
				                              					<p class="type" id="billernickname" name="billernickname">-</p>
				                              				<%}%>
				                              				<%if(typeof(data.billername)!="undefined"){%>
				                                 				<p id="serviceprovider" name="serviceprovider"><%-data.billername%></p>
				                                 			<%}else{%>
				                                 				<p id="serviceprovider" name="serviceprovider"></p>
				                                 			<%}%>
				                                 			<input type="hidden" value="<%-data.srvtype%> id="subscriber" name="subscriber"/>
				                                 			
				                                 			<%if(typeof(data.billerAccount.primaryAccountNumber)!="undefined"){%>
				                                 				<p id="refno" name="refno"><%-data.billerAccount.primaryAccountNumber%></p>
				                                  			<%}%>
				                                			 
				                                			 <p><%-$.i18n.t('app.sadad.duebillpay.exactpayment')%>&nbsp;
							                                 <%if(typeof(data.exapayreq)!="undefined"){%>
							                                 		<b id="exactpaycheck" name="exactpaycheck">
							                                 			<%if(data.exapayreq=='YES'){%>
							                                 					<%-$.i18n.t('app.sadad.duebillpay.exactpaymentyes')%>
									                                 	<%}else if(data.exapayreq=='NO'){%>
									                                 				<%-$.i18n.t('app.sadad.duebillpay.exactpaymentno')%>
									                                 	<%}%>
									                               </b>
							                                 <%}%>
				                                 			</p>
				                                 			<!--
				                                 			<p><%-$.i18n.t('app.sadad.duebillpay.billcycle')%>&nbsp;
							                                  	<%if(typeof(data.billcycle)!="undefined"){%>
							                                 		<b id="billcycle" name="billcycle"><%-data.billcycle%></b>
							                                 	<%}%>
				                                 			</p>
				                                 			-->
				                              			
				                              		</div>
					                              		<%if((data.amountdue)!="990.00"){%>
										                        <div id="billamount" name="billamount" 
										                        <%if(data.amountdue<=0.00){%>
											                           class="amt"
											                           <%}else{%>
											                           class="amt neg"
											                           <%}%>
											                           ><span class="hdr"><%-$.i18n.t('app.sadad.duebillpay.dueamount')%></span>
										                        	  <span class="cur" id="currencycode" name="currencycode"><%-basecurr%></span>
										                              		<span class="cur"></span>
										                              		<%- checkAmount($.formatNumber(data.amountdue, {format:"#,###.000", locale:"us"}))%>
								                              	</div>
					                              		<%}else{%>
											                   <div class="amt">
											                               	  <a href="javascript:void(0)" class="btn btn-success btn-sm enquire"><%-$.i18n.t('app.sadad.duebillpay.inquire')%></a>
											                                  <p class="enq">
											                                        <span class="hdr"><%-$.i18n.t('app.sadad.duebillpay.dueamount')%></span>
											                                        <%-basecurr%>
											                                        <span class="cur" id="inqbillamount" name="inqbillamount">
											                              						<%- checkAmount($.formatNumber(data.amountdue, {format:"#,###.000", locale:"us"}))%>
											                                        </span>
											                                  </p>
											                   </div>
					                              		<%}%>
					                              		<input type="hidden" id="b_shortName" name="b_shortName" value="<%-data.shortName%>">
					                              		<input type="hidden" id="b_billername" name="b_billername" value="<%-data.billername%>">
					                              		<input type="hidden" id="b_scbrno" name="b_scbrno" value="<%-data.billerAccount.primaryAccountNumber%>">
					                              		<input type="hidden" id="b_billerid" name="b_billerid" value="<%-data.billerid%>">
					                              	</div>
		                          		 		</li>
		                          		 		<%}else{%>
		                          		 			<li class="list-group">
					                           				<% var dd=data.billduedate;
					                           				var cnt=0;
					                           				var ddd,ddd1,mmm,mm1;
					                           				for(i=0;i<dd.length;i++){
					                           				if(dd[4]=='-'){
					                           					if(dd[i]=='-'){
					                           						if(cnt==0){
					                           							 ddd=dd[i+1];
					                           							 ddd1=dd[i+2];
					                           							cnt++;
					                           						}
					                           						else
					                           						{
					                           							 mmm=dd[i+1];
					                           							 mmm1=dd[i+2];
					                           						}
					                           						}
					                           					}
					                           					if(dd[2]=='-'){
					                           						if(dd[i]=='-'){
					                           							if(cnt==0){
					                           								 ddd=dd[i+1];
					                           								 ddd1=dd[i+2];
					                           								cnt++;
					                           							}
					                           						else
					                           							{
							                           						 mmm=dd[i+1];
							                           						 mmm1=dd[i+2];
					                           							}
					                           							}
					                           					}
					                           				}
					                           					var date=mmm+""+mmm1;
					                           					var month=ddd+""+ddd1;%>
					                           					
					                              				<div class="dater">
						                              					<%if(typeof(data.billduedate)!="undefined"){%>
						                                 					 <span class="label"><%-$.i18n.t('app.sadad.duebillpay.dueon')%></span>
																			 <span class="dd" id="billduedate" name="billduedate"><%-date%></span>
						                                 					 <span class="mm" id="billduemonth" name="billduemonth"><%-data.billerduemonth%></span>
						                                 				<%}%>
						                                 				<span>
																	          <label class="checkinput pull-left" id="checkboxid">
																	              <input type="checkbox"  value="<%-val%>~<%-date%>~<%-data.billerduemonth%>~<%-data.shortName%>~<%-data.billername%>~<%-data.billerAccount.primaryAccountNumber%>~<%-data.exapayreq%>~<%-data.currency%>~<%-data.amountdue%>~<%-data.srvtype%>~<%-data.billerid%>~<%-data.billduedate%>~<%-data.amountdue%>" 
																	              class="check-hidden" name="checkbillpay" id="checkbillpay" />
																	          </label>
													                   </span>
					                              				</div>
					                              			<div class="l1swipe">
					                              			<div class="d_msg">
					                              					<%if(typeof(data.shortName)!="undefined"&&data.shortName!=""){%>
						                              					<p class="type" id="billernickname" name="billernickname"><%-data.shortName%></p>
						                              				<%}else{%>
						                              					<p class="type" id="billernickname" name="billernickname">-</p>
						                              				<%}%>
						                              				<%if(typeof(data.billername)!="undefined"){%>
						                                 				<p id="serviceprovider" name="serviceprovider"><%-data.billername%></p>
						                                 			<%}else{%>
						                                 				<p id="serviceprovider" name="serviceprovider"></p>
						                                 			<%}%>
						                                 			
						                                 			<%if(typeof(data.billerAccount.primaryAccountNumber)!="undefined"){%>
				                                 						<p id="refno" name="refno"><%-data.billerAccount.primaryAccountNumber%></p>
				                                  					<%}%>
						                                			 
						                                			 <p><%-$.i18n.t('app.sadad.duebillpay.exactpayment')%>&nbsp;
									                                 <%if(typeof(data.exapayreq)!="undefined"){%>
									                                 		<b id="exactpaycheck" name="exactpaycheck">
									                                 		<%if(data.exapayreq=='YES'){%>
							                                 					<%-$.i18n.t('app.sadad.duebillpay.exactpaymentyes')%>
									                                 		<%}else if(data.exapayreq=='NO'){%>
									                                 				<%-$.i18n.t('app.sadad.duebillpay.exactpaymentno')%>
									                                 		<%}%>
							                                 		</b>
									                                 <%}%>
						                                 			</p>
						                                 			<%if(typeof(data.exapayreq)!="undefined"){%>
						                                 			<%if(data.exapayreq=='NO' && billerRangeDTO[val].lower > 0 ){%>
						                                 			 <p><%-$.i18n.t('app.sadad.duebillpay.min_amt_lbl')%>&nbsp;
									                                 
									                                 		<b id="exactpaycheck" name="exactpaycheck">
							                                 					<%-basecurr%>&nbsp;<%-checkAmount($.formatNumber(billerRangeDTO[val].lower, {format:"#,###.000", locale:"us"}))%>
								                                 				</b>
										                                
							                                 			</p>
						                                 			<%}%>
						                                 			  <%if(data.exapayreq=='NO' && billerRangeDTO[val].upper > 0 ){%>
						                                 			<p><%-$.i18n.t('app.sadad.duebillpay.max_amt_lbl')%>&nbsp;
									                                 		<b id="exactpaycheck" name="exactpaycheck">
							                                 					<%-basecurr%>&nbsp;<%-checkAmount($.formatNumber(billerRangeDTO[val].upper, {format:"#,###.000", locale:"us"}))%>
							                                 				</b>
									                                
							                                 			   </p>
							                                 			 <%}%>
							                                 			<%}%>
						                                 			<!--
						                                 			<p><%-$.i18n.t('app.sadad.duebillpay.billcycle')%>&nbsp;
									                                  	<%if(typeof(data.billcycle)!="undefined"){%>
									                                 		<b id="billcycle" name="billcycle"><%-data.billcycle%></b>
									                                 	<%}%>
						                                 			</p>
						                                 			-->
					                              			</div>
						                              		
								                           <div id="billamount" name="billamount" class="amt neg"><span class="hdr"><%-$.i18n.t('app.sadad.duebillpay.dueamount')%></span>
								                           		  <span class="cur" id="currencycode" name="currencycode"><%-basecurr%></span>
										                              		<span class="cur"></span>
										                              		<%- checkAmount($.formatNumber(data.amountdue, {format:"#,###.000", locale:"us"}))%>
						                              		</div>
						                              		<div class="form-group" id="numkeyPad">
						                              		<% if ( devicePlatform == "Android" ) { %>	                                								    
	                                								    <input type="text" autocomplete='off'  onfocus="(this.type='tel')"   class="form-control" pattern="\d+(\.\d*)?" onkeydown="f(this)" onkeyup="f(this)" onclick="f(this)"  onBlur="amountFormat()"  onkeypress="return validateFloatKeyPress(this,event);"   class="form-control input-sm text-right" id="billamountent<%-val%>" name="billamountent<%-val%>" 
	                                								    
	                                								    <%if(data.amountdue<=0.00){%>
	                                							 		value="0.00"
	                                							 		<%}else{%>
	                                							 		value="<%-data.amountdue%>"
	                                							 		<%}%>
	                                							    	maxLength="17"/>
	                                						<%}else{%>	   
	<% if(isKeyPadNeed) { %>
					<input type="number" autocomplete='off'   pattern="[0-9]*" inputmode="numeric" onBlur="amountFormat()"  onkeypress="return validateFloatKeyPress(this,event);" id="billamountent<%-val%>" name="billamountent<%-val%>" class="form-control input-sm text-right" id="billamountent<%-val%>" name="billamountent<%-val%>" 
				<% } else { %>
					<input type="text" autocomplete='off'  onfocus="(this.type='number')"   pattern="\d+(\.\d*)?" onBlur="amountFormat()"  onkeypress="return validateFloatKeyPress(this,event);" id="billamountent<%-val%>" name="billamountent<%-val%>" class="form-control input-sm text-right" id="billamountent<%-val%>" name="billamountent<%-val%>" 
				<% } %>	                                						          
 														
	                                								   
	                                								    <%if(data.amountdue<=0.00){%>
	                                							 		value="0.00"
	                                							 		<%}else{%>
	                                							 		value="<%-data.amountdue%>"
	                                							 		<%}%>
	                                							    	maxLength="17"/>
	                                						<%}%>
	                                								    </div>
	                              			<div id="billamount" name="billamount" 
 class="amt neg">
	                              							<small><span id="validminmsg<%-val%>" name="validminmsg" class="help-block error-message label label-danger" style="display:none"> <%-$.i18n.t('app.sadad.duebillpay.errorpaygreaterthan')%>&nbsp;<%-basecurr%>&nbsp;<%-checkAmount($.formatNumber(billerRangeDTO[val].lower, {format:"#,###.000", locale:"us"}))%></span></small>
	                                							<small><span id="validmaxmsg<%-val%>" name="validmaxmsg" class="help-block error-message label label-danger" style="display:none"><%-$.i18n.t('app.sadad.duebillpay.errorpaylessthan')%>&nbsp;<%-basecurr%>&nbsp;<%-checkAmount($.formatNumber(billerRangeDTO[val].upper, {format:"#,###.000", locale:"us"}))%></span></small>
	                              							</div>
	                              							
	                              							<input type="hidden" id="b_shortName" name="b_shortName" value="<%-data.shortName%>">
					                              			<input type="hidden" id="b_billername" name="b_billername" value="<%-data.billername%>">
					                              			<input type="hidden" id="b_scbrno" name="b_scbrno" value="<%-data.billerAccount.primaryAccountNumber%>">
					                              			<input type="hidden" id="b_billerid" name="b_billerid" value="<%-data.billerid%>">
					                              			</div>
					                              			
			                          		 		</li>
		                          		 		<%}%>
		                           			<% val++;});%>
		                           		
                           </ul>
                           </br>
	                            <p class="help-block error-message label label-danger" id="chkboxid" style="display: none;"><%-$.i18n.t('app.sadad.duebillpay.billisnotselect')%></p>
								<p class="help-block error-message label label-danger" id="amountvalidation" style="display: none;"><%-$.i18n.t('validation.sadad.negamountvaldate')%></p>
							</br>
					                        <input id="hidpay" name="hidpay" type="hidden" value=""/> 
					                        <a href="javascript:void(0)" id="pay" name="pay" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.duebillpay.pay')%></a>
					                        <a href="#/sadad" id="cancel" name="cancel" class="btn btn-primary btn-block"><%-$.i18n.t('app.sadad.duebillpay.cancel')%></a>
					    <%}else{%>
											<div class="alert alert-info">
											<span class="msg"><%-$.i18n.t('app.sadad.duebillpay.noduebills')%></span>
											</div>
						<%}%>                     
                     </form>
                     
                     <!-- Swipe div -->
                     <div class="overlay text-center md swipeoverlay" style="display:none">                        	
		                    <p>
		                    	<a href="#/history" class="btn btn-info"><span class="glyphicon glyphicon-header"></span></a>
		                    </p>
					</div>
                     
                     
             </div><br/>
             <!--Billpay Ends Here-->
                  
 <script type="text/javascript">
        var specialKeys = new Array();
        specialKeys.push(8); //Backspace
        specialKeys.push(9); //TAB
        $(function () {
        /*
            $("input").bind("keypress", function (e) {
                var keyCode = e.which ? e.which : e.keyCode
                var ret = ((keyCode >= 48 && keyCode <= 57) || specialKeys.indexOf(keyCode) != -1);
                //$("#billamount").text(ret);
                return ret;
            });
          */  
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
           $(".enq").hide();
          $(".enquire").on("click",function()
          {
          $(this).hide().next("p").show();
          });
        });
</script>

<script>
function amountFormat(obj){
	var amtval = $("#obj").val();
	var vall=0;
	if(amtval != vall){
	$("#obj").val(Number(amtval).toFixed(2));
	}
}
  $(document).ready(function(){
        	var els = new EncryptedLocalStorage('secret'); 
          var billerArray = els.get('billerListDTO');
          console.log(billerArray);

        /* $(':checkbox').each(function(index,item){
                  
                //  if(billerArray[index].amountdue.indexOf('-')== -1){
                  	
                //  	if(Math.round(billerArray[index].amountdue)> 0){
                    $(this).prop('checked', true);
                  	var thisLbl = $(this).closest('label');
                  	$(thisLbl).addClass('active');
              //	  }
             // 	}
               
                   });*/
        });
</script>


<script>
function validateFloatKeyPress(el, evt) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    var number = el.value.split('.');
    if (charCode != 46 && charCode > 31 && (charCode < 48 || charCode > 57)) {
        return false;
    }
    //get the carat position
    var caratPos = getSelectionStart(el);
    var dotPos = el.value.indexOf(".");
    if( caratPos > dotPos && dotPos>-1 && (number[1].length > 1)){
        return false;
    }    
    return true;
}


function getSelectionStart(o) {
	if (o.createTextRange) {
		var r = document.selection.createRange().duplicate()
		r.moveEnd('character', o.value.length)
		if (r.text == '') return o.value.length
		return o.value.lastIndexOf(r.text)
	} else return o.selectionStart
}
</script>
<script>
function validate(s) {
    var rgx = /^[0-9]*\.?[0-9]*$/;
    return s.matches(rgx);
}
</script>
<script type="text/javascript">
function f(o){
  //o.value=o.value.toUpperCase().replace(/([^0-9A-Z])/g,"");
  o.value=o.value.replace(/([^0-9.])/g,"");
}

function g(o){
  if(/[^0-9A-Z]/.test(o.value)){
    o.value=o.value.toUpperCase().replace(/([^0-9A-Z\s])/g,"");
  }
}
</script>
<script>
function swipeReady(){
	$(".l1swipe").swipe( {
		allowPageScroll: 'vertical',
		swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
			
				if ($('.swipeoverlay').css('display') == 'none' || $('.swipeoverlay').css('display') == 'undefind') {
					if(direction=="left" || direction=="right"){
						$(this).append($(".swipeoverlay").css("position", "absolute"));
						$(this).find(".swipeoverlay").show();
                       /********* align the buttons vertically middle programatically ************/
                        var overlayheight=$(this).find(".overlay").height();
                        var btnheight=	$(this).find(".overlay p").height();
                       $(this).find(".overlay p").css({"position":"absolute", "margin":"0px", "padding":"0px", top: overlayheight/2 - btnheight/2});
                       /*****************************************************************/
						
						$("#histnickname").val($(this).find("#b_shortName").val());
						$("#histname").val($(this).find("#b_billername").val());
						$("#histscrbeno").val($(this).find("#b_scbrno").val());
						$("#histbillerid").val($(this).find("#b_billerid").val());
						
					}
				}else{
					$("#histnickname").val("");
					$("#histname").val("");
					$("#histscrbeno").val("");
					$("#histbillerid").val("");
					
					event.stopPropagation();
					$(".swipeoverlay").hide();
				}
		},
		//Default is 75px, set to 0 for demo so any distance triggers swipe
	   threshold:0
	});
}
swipeReady();
</script>
<script>
$("input:text").focus(function(){$(this).val("")});
</script>