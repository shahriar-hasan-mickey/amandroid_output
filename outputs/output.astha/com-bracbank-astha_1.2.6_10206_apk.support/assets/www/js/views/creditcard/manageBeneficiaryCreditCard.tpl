<%
var els = new EncryptedLocalStorage('secret'); 
var errorDescription=els.get("errordesc");
%>
<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<ol class="breadcrumb cust_breadcrumb pull-left">
 <li><a href="#/creditcard" ><%-$.i18n.t('app.creditcard.managebene.creditcards')%></a></li>
 <li class="active"><%-$.i18n.t('app.creditcard.managebene.managebene')%></li>
</ol>
<div class="clearfix"></div>

<form role="form">
						<input type="hidden" id="accountNumber" name="accountNumber" 	/>
						<input type="hidden" id="clearacctNumber" name="clearacctNumber" />	
						<input type="hidden" id="clearCCNumber" name="clearCCNumber" 	/>     
						<input type="hidden" id="creditcardmasked" name="creditcardmasked" />  
						<input type="hidden" id="shortName" name="shortName" />
						<input type="hidden" id="benecode" name="benecode" 	/>
						<input type="hidden" id="firstName" name="firstName" />
     <h3 class="header"><%-$.i18n.t('app.creditcard.managebene.benecc')%>
       <a href="#/manageBeneAddCC" class="btn btn-success addBene btn-sm pull-right" >
       	<%-$.i18n.t('app.creditcard.managebene.add')%>
       </a>
    </h3></br>

   <div class="cust_panel no-arr">
        <div class="list-group withinShb">
          	<% if ( creditSumList.length > 0 ) { %>
			<%var k=0;%>
	         	<% _.each(creditSumList,function(data){ %>
		           <%if((data.beneInstruction.benStatus)=="ACTIVE"){%>
	                     <label class="list-group-item lblswipe">
	                     <input type="hidden" id="b_accountNumber" name="b_accountNumber" 	value="<%-data.beneInstruction.accountNumber%>">
	                       <input type="hidden" id="b_benecode" name="b_benecode" value="<%-data.beneInstruction.beneCode%>">
	                       <input type="hidden" id="b_shortName" name="b_shortName" value="<%-data.shortName%>">
	                       <input type="hidden" id="b_creditcardmasked" name="b_creditcardmasked" value="<%-data.beneInstruction.creditCardNoMasked%>">
	                       <input type="hidden" id="currcodeval" name="currcodeval" value="<%-data.beneInstruction.currency.code%>">
	                       <input type="hidden" id="b_firstName" name="b_firstName" value="<%-data.firstName%>">
	                       <input type="hidden" id="b_clearacctNumber" name="b_clearacctNumber" 	value="<%-data.beneInstruction.clearAcctNumber%>">
	                       <input type="hidden" id="b_clearCCNumber" name="b_clearCCNumber" 		value="<%-data.beneInstruction.clearCCNumber%>">
	                       			 <p>
	                       			 	<span class="nme">
	                       			 		<%-data.shortName%>&nbsp;
	                       			 	</span>
	                       			 	<small class="pull-right cur">
	                       			 		<%-data.beneInstruction.currency.code%>&nbsp;
	                       			 	</small>
	                       			 </p>
	                        		 <p>
	                        		 	<small class="text-muted">
	                        		 		<%-data.beneInstruction.creditCardNoMasked%>&nbsp;
	                        		 	</small>
	                        		 	<span class="pull-right status text-success">
	                        		 		<%if($.i18n.lng() == 'en-US'){%>
																<%-$.i18n.t('app.transfer.general.active')%>&nbsp;
																<%}else{%>
																<%-$.i18n.t('app.transfer.general.active')%>&nbsp;
											<%}%>
	                        		 	</span>
	                        		 </p>
	                        		 
	                        		 <div class="overlay swipeoverlay" style="display:none">
				                       <p>
				                           <a href="#/creditcardmanagebeneedit" id="ccedit" name="ccedit" class="btn btn-primary btn-sm">
				                            <span class="glyphicon glyphicon-pencil"></span> <%-$.i18n.t('app.creditcard.managebene.edit')%></a>
				                            <a href="javascript:void(0)" class="btn btn-danger btn-sm" id="dele">
				                        	 <span class="glyphicon glyphicon-trash"></span> <%-$.i18n.t('app.creditcard.managebene.delete')%></a>
				                          
				                          
				                           <!-- <a href="javascript:void(0)" onclick="ccardedit(<%-k%>)" class="btn btn-primary btn-sm">
				                            <span class="glyphicon glyphicon-pencil"></span> <%-$.i18n.t('app.creditcard.managebene.edit')%></a>
				                            <input type="hidden" id="cceditno<%-k%>" name="cceditno<%-k%>" value="<%-data.beneInstruction.accountNumber%>">
				                            <input type="hidden" id="ccmaskno<%-k%>" name="ccmaskno<%-k%>" value="<%-data.beneInstruction.creditCardNoMasked%>">
				                            <input type="hidden" id="ccbenecode<%-k%>" name="ccbenecode<%-k%>" value="<%-data.beneInstruction.beneCode%>">
				                            <input type="hidden" id="ccshortname<%-k%>" name="ccshortname<%-k%>" value="<%-data.shortName%>">
				                            
				                            
				                            <a href="javascript:void(0)" onclick="ccard(<%-k%>)" class="btn btn-danger btn-sm" id="indele">
				                            <span class="glyphicon glyphicon-trash"></span> <%-$.i18n.t('app.creditcard.managebene.delete')%></a>
				                            <input type="hidden" id="ccno<%-k%>" name="ccno<%-k%>" value="<%-data.beneInstruction.accountNumber%>">
				                            <input type="hidden" id="ccname<%-k%>" name="ccname<%-k%>" value="<%-data.shortName%>">
				                            <input type="hidden" id="cccode<%-k%>" name="cccode<%-k%>" value="<%-data.beneInstruction.beneCode%>">-->
				                       </p>
			                    </div>
	            	   </label>       
	            <%}else{%>
			           <label class="list-group-item activeswipelable">
			            <input type="hidden" id="b_accountNumber" name="b_accountNumber" 	value="<%-data.beneInstruction.accountNumber%>">
	                       <input type="hidden" id="b_benecode" name="b_benecode" value="<%-data.beneInstruction.beneCode%>">
	                       <input type="hidden" id="b_shortName" name="b_shortName" value="<%-data.shortName%>">
	                       <input type="hidden" id="b_firstName" name="b_firstName" value="<%-data.firstName%>">
	                       <input type="hidden" id="b_creditcardmasked" name="b_creditcardmasked" 	value="<%-data.beneInstruction.creditCardNoMasked%>">
	                       <input type="hidden" id="b_clearacctNumber" name="b_clearacctNumber" 	value="<%-data.beneInstruction.clearAcctNumber%>">
	                        <input type="hidden" id="b_clearCCNumber" name="b_clearCCNumber" 		value="<%-data.beneInstruction.clearCCNumber%>">
			           				
			           				<p>
			           					<span class="nme">
			           						<%-data.shortName%>&nbsp;
			           					</span>
			           					<small class="pull-right cur">
			           						<%-data.beneInstruction.currency.code%>&nbsp;
			           					</small>
			           				</p>
	                        		 <p>
	                        		 	<small class="text-muted">
	                        		 		<%-data.beneInstruction.creditCardNoMasked%>&nbsp;
	                        		 	</small>
	                        		 	<span class="pull-right status text-danger">
	                        		 		<%if($.i18n.lng() == 'en-US'){%>
															<%-$.i18n.t('app.transfer.general.inactive')%>&nbsp;
															<%}else{%>
															<%-$.i18n.t('app.transfer.general.inactive')%>&nbsp;
											<%}%>
	                        		 	</span>
	                        		 </p>
	                        		 
			                    <!--    <div class="overlay text-center md activeswipe" style="display:none">
			                     <p>
					                    <button type="button" class="btn btn-success btn-sm" onClick="calldial();"><span class="glyphicon glyphicon-earphone"></span><%-$.i18n.t('app.creditcard.managebene.activatenow1')%></button>
							   
					                    <a href="#/creditcardmanagebeneedit" id="ccedit" name="ccedit" class="btn btn-primary btn-sm">
				                            <span class="glyphicon glyphicon-pencil"></span> <%-$.i18n.t('app.creditcard.managebene.edit')%></a>
				                        	<a href="javascript:void(0)" class="btn btn-danger btn-sm" id="dele">
				                        	 <span class="glyphicon glyphicon-trash"></span> <%-$.i18n.t('app.creditcard.managebene.delete')%></a>
				                            
				                         <a href="javascript:void(0)" onclick="ccardedit(<%-k%>)" class="btn btn-primary btn-sm">
				                            <span class="glyphicon glyphicon-pencil"></span> <%-$.i18n.t('app.creditcard.managebene.edit')%></a>
				                            <input type="hidden" id="cceditno<%-k%>" name="cceditno<%-k%>" value="<%-data.beneInstruction.accountNumber%>">
				                            <input type="hidden" id="ccmaskno<%-k%>" name="ccmaskno<%-k%>" value="<%-data.beneInstruction.creditCardNoMasked%>">
				                            <input type="hidden" id="ccbenecode<%-k%>" name="ccbenecode<%-k%>" value="<%-data.beneInstruction.beneCode%>">
				                            <input type="hidden" id="ccshortname<%-k%>" name="ccshortname<%-k%>" value="<%-data.shortName%>">
				                            
				                            
				                            <a href="javascript:void(0)" onclick="ccard(<%-k%>)" class="btn btn-danger btn-sm">
				                            <span class="glyphicon glyphicon-trash"></span> <%-$.i18n.t('app.creditcard.managebene.delete')%></a>
				                            <input type="hidden" id="ccno<%-k%>" name="ccno<%-k%>" value="<%-data.beneInstruction.accountNumber%>">
				                            <input type="hidden" id="ccname<%-k%>" name="ccname<%-k%>" value="<%-data.shortName%>">
				                            <input type="hidden" id="cccode<%-k%>" name="cccode<%-k%>" value="<%-data.beneInstruction.beneCode%>">
				                             </p>
			                      </div>-->
			           </label>
	          <%}%>
	           <%k=k+1;%>
		<% }); %>
	  
	  <%}else if ( creditSumList.length == 0 ){%>
				<div class="alert alert-info alert-sm">
					<span class="msg"><%-$.i18n.t('app.creditcard.managebene.nobeneficiary')%></span>
			    </div>
 			<%}else{%>
				<div class="alert alert-info alert-sm">
            		 <span class="msg"><%-errorDescription%></span>
       			</div>
 			<%}%>			
</div>
</div>
<div class="overlay text-center md activeswipe" style="display:none">
			                     <p>
					                    <!--<button type="button" class="btn btn-success btn-sm" onClick="calldial();"><span class="glyphicon glyphicon-earphone"></span><%-$.i18n.t('app.creditcard.managebene.activatenow1')%></button>
					                    <button type="button" class="btn btn-success btn-sm" id="activation" name="activation"><span class="glyphicon glyphicon-earphone"></span><%-$.i18n.t('app.creditcard.managebene.activatenow1')%></button>&nbsp;&nbsp;&nbsp;-->
					                    <a href="#/creditcardmanagebeneedit" id="ccedit" name="ccedit" class="btn btn-primary btn-sm">
				                            <span class="glyphicon glyphicon-pencil"></span> <%-$.i18n.t('app.creditcard.managebene.edit')%></a>
				                        	<a href="javascript:void(0)" class="btn btn-danger btn-sm" id="dele">
				                        	 <span class="glyphicon glyphicon-trash"></span> <%-$.i18n.t('app.creditcard.managebene.delete')%></a>
				                            <a href="#/manageBeneActivation" id="activation" name="activation" class="btn btn-success btn-sm">&nbsp;&nbsp;&nbsp;
							   			<span class="glyphicon glyphicon-earphone"></span> <%-$.i18n.t('app.creditcard.managebene.activatenow1')%></a>
				                         
				                             </p>
			                      </div>
</form><br/>
              
<script>
  $(document).ready(function(){
         $(".dropselect").dropselect();
         $('input[placeholder], textarea[placeholder]').placeholder();
    });

</script>

<script>
//$(document).ready(function(){
function swipeReady(){
	$(".lblswipe").swipe( {
		allowPageScroll: 'vertical',
		swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
			
				if ($('.swipeoverlay').css('display') == 'none' || $('.swipeoverlay').css('display') == 'undefind') {
					if(direction=="left" || direction=="right"){
						$(this).append($(".swipeoverlay").css("position", "absolute"));
						//$(".swipeoverlay").show();
						$(this).find(".swipeoverlay").show();
                       /********* align the buttons vertically middle programatically ************/
                        var overlayheight=$(this).find(".overlay").height();
                        var btnheight=	$(this).find(".overlay p").height();
                       $(this).find(".overlay p").css({"position":"absolute", "margin":"0px", "padding":"0px", top: overlayheight/2 - btnheight/2});
                       /*****************************************************************/
						
						$("#accountNumber").val($(this).find("#b_accountNumber").val());
						$("#clearacctNumber").val($(this).find("#b_clearacctNumber").val());
						$("#clearCCNumber").val($(this).find("#b_clearCCNumber").val());
						$("#benecode").val($(this).find("#b_benecode").val());
						$("#shortName").val($(this).find("#b_shortName").val());
						$("#creditcardmasked").val($(this).find("#b_creditcardmasked").val());
						$("#firstName").val($(this).find("#b_firstName").val());
	
	
						$("#middleName").val($(this).find("#b_middleName").val());
						$("#benStatus").val($(this).find("#b_benStatus").val());
						$("#bankAddr1").val($(this).find("#b_bankAddr1").val());
						$("#bankAddr2").val($(this).find("#b_bankAddr2").val());
	
						$("#bankAddr3").val($(this).find("#b_bankAddr3").val());
						$("#bankName").val($(this).find("#b_bankName").val());
						$("#currcode").val($(this).find("#b_currcode").val());
						$("#beneType").val($(this).find("#b_beneType").val());
	
						$("#ninikama").val($(this).find("#b_ninikama").val());
						$("#beneCode").val($(this).find("#b_beneCode").val());
						$("#bentranstype").val($(this).find("#b_bentranstype").val());
						$(".activeswipe").hide();
					}else{
						event.stopPropagation();
						$(".activeswipe").hide();
					}
					
				}else{
					$("#accountNumber").val("");
					$("#clearacctNumber").val("");
					$("#clearCCNumber").val("");
					$("#creditcardmasked").val("");
					$("#shortName").val("");
					$("#benecode").val("");
					$("#firstName").val("");
			
					$("#middleName").val("");
					$("#benStatus").val("");
					$("#bankAddr1").val("");
					$("#bankAddr2").val("");

					$("#bankAddr3").val("");
					$("#bankName").val("");
					$("#currcode").val("");
					$("#beneType").val("");

					$("#ninikama").val("");
					$(".swipeoverlay").hide();
					$(".activeswipe").hide();
					//$(this).find('.swipeoverlay').remove();
				}
		},
		//Default is 75px, set to 0 for demo so any distance triggers swipe
	   threshold:0
	});
//});
}
swipeReady();
</script>


<script>
//$(document).ready(function(){
function swipeactiveReady(){
	$(".activeswipelable").swipe( {
		allowPageScroll: 'vertical',
		swipe:function(event, direction, distance, duration, fingerCount, fingerData) {
			
				if ($('.activeswipe').css('display') == 'none' || $('.activeswipe').css('display') == 'undefined') {
					if(direction=="left" || direction=="right"){
						$(this).append($(".activeswipe").css("position", "absolute"));
						
						$("#accountNumber").val($(this).find("#b_accountNumber").val());
						$("#clearacctNumber").val($(this).find("#b_clearacctNumber").val());
						$("#clearCCNumber").val($(this).find("#b_clearCCNumber").val());
						$("#benecode").val($(this).find("#b_benecode").val());
						$("#shortName").val($(this).find("#b_shortName").val());
						$("#creditcardmasked").val($(this).find("#b_creditcardmasked").val());
						$("#firstName").val($(this).find("#b_firstName").val());
						//$(".activeswipe").show();
						$(this).find(".activeswipe").show();
                       /********* align the buttons vertically middle programatically ************/
                        var overlayheight=$(this).find(".overlay").height();
                        var btnheight=	$(this).find(".overlay p").height();
                       $(this).find(".overlay p").css({"position":"absolute", "margin":"0px", "padding":"0px", top: overlayheight/2 - btnheight/2});
                       /*****************************************************************/
                       $(".swipeoverlay").hide();
					}else{
						event.stopPropagation();
						$(".swipeoverlay").hide();
					}
				}else{
					$(".activeswipe").hide();
					$(".swipeoverlay").hide();
					//$(this).find('.swipeoverlay').remove();
				}
		},
		//Default is 75px, set to 0 for demo so any distance triggers swipe
	   threshold:0
	});
//});
}
swipeactiveReady();
</script>
<script>
function calldial(){
			document.location.href = 'tel:+1-8001243000';
		}
		$(".content").animate({ scrollTop: 0 }, "fast");
</script>
<script>
/*function ccard(i){

	var creditdelno=$('#ccno'+i).val();
	var ccname=$('#ccname'+i).val();
	var cccode=$('#cccode'+i).val();
	var els=new EncryptedLocalStorage('secret');
	els.set("creditdelno","");
	els.set("creditdelno",creditdelno);
	Backbone.history.navigate("#/manageBeneDelete/"+ccname+"/"+cccode);
}*/
	
/*function ccardedit(i){

	var crediteditno=$('#cceditno'+i).val();
	var ccmaskno=$('#ccmaskno'+i).val();
	var ccbenecode=$('#ccbenecode'+i).val();
	var ccshortname=$('#ccname'+i).val();
	var els=new EncryptedLocalStorage('secret');
	els.set("crediteditno","");
	els.set("crediteditno",crediteditno);
	Backbone.history.navigate("#/creditcardmanagebeneedit/"+ccmaskno+"/"+ccbenecode+"/"+ccshortname);
}*/
</script>