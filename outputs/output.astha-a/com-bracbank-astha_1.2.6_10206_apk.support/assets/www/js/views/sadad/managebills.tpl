<%
	var els = new EncryptedLocalStorage('secret'); 
   // var billerBeneficiary = els.get("billerInstruction");
    //console.log("billerBeneficiary  " +JSON.stringify(billerBeneficiary));
%>
<a href="#/sadad" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
	 <li><a href="#/sadad"><%-$.i18n.t('app.menu.billpay')%></a></li>
	 <li class="active"><%-$.i18n.t('app.sadad.general.managebills2')%></li>
</ol>
<div class="clearfix"></div><br/>
                  
<!-- Breadcrumb Ends Here -->
<!--One Time Billpay Starts Here-->
<form>

	 	<input type="hidden" id="shortName" name="shortName" 	/>
		<input type="hidden" id="description" name="description"/>
		<input type="hidden" id="Scrbeno" name="Scrbeno" />
		<input type="hidden" id="benstatus" name="benstatus" 	/>
		<input type="hidden" id="bencode" name="bencode" 	/>
		<input type="hidden" id="histbillerid" name="histbillerid" />
		<input type="hidden" id="connectiontype" name="connectiontype" />
		<input type="hidden" id="categoryName" name="categoryName" />
		<input type="hidden" id="categoryId" name="categoryId" />
		<input type="hidden" id="serviceName" name="serviceName" />
		<input type="hidden" id="serviceId" name="serviceId" />
		<input type="hidden" id="statuscode" name="statuscode" />
		
		
      <h3 class="header"><%-$.i18n.t('app.sadad.general.managebills2')%>
          <a href="#/addnewbill" class="btn btn-success addBene pull-right btn-sm" ><%-$.i18n.t('app.sadad.managebills.addbills1')%></a>
      </h3><br/>
      
      <% if ( billerBeneficiary.length > 0 ) { %>
     	 <div class="alert alert-warning" style="padding:7px;"><%-$.i18n.t('app.sadad.general.swipeeditdelpayee')%></div><br/>
      <% } %>
     
      <div class="cust_panel no-arr">
            <div class="list-group">
                  <% if ( billerBeneficiary.length > 0 ) { var i=0; %>
	                 	<% _.each(billerBeneficiary,function(data){ %>
	                 	
						                   <label class="list-group-item lblswipe">
										  		   <p>
								                            <span class="text-muted">
									                            <%-$.i18n.t('app.sadad.managebills.billername')%>&nbsp;
								                            </span>
							                            	<span class="pull-right">
							                            		<%-data.shortName%>&nbsp;
							                            	</span>
						                           </p>
						                           <p>
						                           			<span class="text-muted">
						                           			<%if(data.beneCode=='TELECOM'){%>
									                            <%-$.i18n.t('app.sadad.managebills.mobilenumber')%>&nbsp;
									                        <%}else{%>
									                        	<%-$.i18n.t('app.sadad.managebills.custno')%>
									                        <%}%>
								                            </span>
							                            	<span class="pull-right">
							                            		<%-data.refNumber%>&nbsp;
							                            	</span>
							                                
							                                <!--
						                                 	<span class="pull-right status text-success">
						                                 		<%if($.i18n.lng() == 'en-US'){%>
																<%-$.i18n.t('app.transfer.general.active')%>&nbsp;
																<%}else{%>
																<%-$.i18n.t('app.transfer.general.active')%>&nbsp;
																<%}%>
						                                 	</span>
						                                 	-->
						                           </p>
						                            <p>
								                            <span class="text-muted">
									                            <%-$.i18n.t('app.transfer.standinginstruction.sistatus')%>&nbsp;
								                            </span>
							                            	<span class="pull-right status text-success">
							                            		<%-data.statuscode%>&nbsp;
							                            	</span>
						                           </p>
						                            <input type="hidden" id="b_shortName" name="b_shortName" value="<%-data.shortName%>">
				                                   <!-- <input type="hidden" id="b_description" name="b_description" value="<%-data.firstName%>">-->
				                                    <input type="hidden" id="b_Scrbeno" name="b_Scrbeno" value="<%-data.refNumber%>">
				                                    <input type="hidden" id="b_benstatus" name="b_benstatus" value="<%-data.billerUniqueId%>">
				                                    <input type="hidden" id="b_bencode" name="b_bencode" value="<%-data.beneCode%>">
				                                      <input type="hidden" id="b_billerCode" name="b_billerCode" value="<%-data.billerCode%>">
				                                        <input type="hidden" id="b_billerUniqueId" name="b_billerUniqueId" value="<%-data.billerUniqueId%>">
				                                         <input type="hidden" id="b_connectiontype" name="b_connectiontype" value="<%-data.serviceType%>">
				                                          <input type="hidden" id="b_categoryName" name="b_categoryName" value="<%-data.categoryName%>">
				                                           <input type="hidden" id="b_categoryId" name="b_categoryId" value="<%-data.categoryId%>">
				                                            <input type="hidden" id="b_serviceName" name="b_serviceName" value="<%-data.serviceName%>">
				                                            <input type="hidden" id="b_serviceId" name="b_serviceId" value="<%-data.serviceId%>">
				                                             <input type="hidden" id="b_statuscode" name="b_statuscode" value="<%-data.statuscode%>">
						                   </label>
						        
						    <% }); %>
					    <%}else{%>
					    	<div class="alert alert-info alert-sm">
							<h4><%-$.i18n.t('app.sadad.general.nobillersavailable')%>" <a href="#/addnewbill" style="color:orange"><%-$.i18n.t('app.sadad.managebills.addbills1')%></a>"</h4>

							</div>
						<%}%>
                   </div>
             </div>
             
             <div class="overlay text-center md swipeoverlay" style="display:none">
						    <p>
	                           <a href="#/editBill" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-pencil"></span><%-$.i18n.t('app.transfer.managebeneficiary.edit')%></a>&nbsp;&nbsp;
						        <a href="#/deleteBill" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span><%-$.i18n.t('app.transfer.managebeneficiary.delete')%></a>&nbsp;&nbsp;
	                           <!-- <a href="#/managebillhistory" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-header"></span><%-$.i18n.t('app.transfer.managebeneficiary.history')%> </a>&nbsp;&nbsp;&nbsp-->
	                           <!--<a href="#/reminder" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-time"></span> </a>-->
						    </p>
						</div>
						
						<div class="overlay text-center  activeswipe" style="display:none">
							<p>
	                           <!--<a href="#/reminder" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-time"></span> </a>-->
	                        <button type="button" class="btn btn-success btn-sm" onClick="calldial();"><span class="glyphicon glyphicon-earphone"></span><%-$.i18n.t('app.transfer.localtransfer.activatenow')%></button>&nbsp;&nbsp;&nbsp;
	                        <a href="#/managebillhistory" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-header"></span><%-$.i18n.t('app.transfer.managebeneficiary.history')%> </a>
							<a href="#/editBill" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-pencil"></span><%-$.i18n.t('app.transfer.managebeneficiary.edit')%></a>&nbsp;&nbsp;&nbsp;
						    <a href="#/deleteBill" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span><%-$.i18n.t('app.transfer.managebeneficiary.delete')%></a>
							
							</p>
						    
						</div>
             
</form><br/>


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
                      $(this).find(".overlay p").css({"position":"absolute", "margin":"0px", "padding":"0px", "top": overlayheight/2 - btnheight/2, "right":0});
                       /*****************************************************************/
						
						$("#shortName").val($(this).find("#b_shortName").val());
						$("#description").val($(this).find("#b_description").val());
						$("#Scrbeno").val($(this).find("#b_Scrbeno").val());
						$("#benstatus").val($(this).find("#b_benstatus").val());
						$("#bencode").val($(this).find("#b_bencode").val());
						$("#billerCode").val($(this).find("#b_billerCode").val());
						$("#billerUniqueId").val($(this).find("#b_billerUniqueId").val());
						$("#connectiontype").val($(this).find("#b_connectiontype").val());
						$("#categoryName").val($(this).find("#b_categoryName").val());
						$("#categoryId").val($(this).find("#b_categoryId").val());
						$("#serviceName").val($(this).find("#b_serviceName").val());
						$("#serviceId").val($(this).find("#b_serviceId").val());
						$("#statuscode").val($(this).find("#b_statuscode").val());
						$(".activeswipe").hide();
					}else{
					$(".activeswipe").hide();
						event.stopPropagation();
					}
					
				}else{
					$("#shortName").val("");
					$("#description").val("");
					$("#Scrbeno").val("");
					$("#benstatus").val("");
					$("#bencode").val("");
					$("#billerCode").val("");
					$("#billerUniqueId").val("");
					$("#connectiontype").val("");
					$("#categoryName").val("");
					$("#categoryId").val("");
					$("#serviceName").val("");
					$("#serviceId").val("");
					$("#statuscode").val("");
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
			
				if ($('.activeswipe').css('display') == 'none' || $('.activeswipe').css('display') == 'undefind') {
					if(direction=="left" || direction=="right"){
						$(this).append($(".activeswipe").css("position", "absolute"));
						//$(".activeswipe").show();
						$(this).find(".activeswipe").show();
                       /********* align the buttons vertically middle programatically ************/
                        var overlayheight=$(this).find(".overlay").height();
                        var btnheight=	$(this).find(".overlay p").height();
                       $(this).find(".overlay p").css({"position":"absolute", "margin":"0px", "padding":"0px", top: overlayheight/2 - btnheight/2});
                       /*****************************************************************/
						
						
						$("#shortName").val($(this).find("#b_shortName").val());
						$("#description").val($(this).find("#b_description").val());
						$("#Scrbeno").val($(this).find("#b_Scrbeno").val());
						$("#benstatus").val($(this).find("#b_benstatus").val());
						$("#bencode").val($(this).find("#b_bencode").val());
						$("#billerUniqueId").val($(this).find("#b_billerUniqueId").val());
						$("#categoryName").val($(this).find("#b_categoryName").val());
						$("#categoryId").val($(this).find("#b_categoryId").val());
						$("#serviceName").val($(this).find("#b_serviceName").val());
						$("#serviceId").val($(this).find("#b_serviceId").val());
						$("#statuscode").val($(this).find("#b_statuscode").val());
						$(".swipeoverlay").hide();
					}else{
						event.stopPropagation();
						$(".swipeoverlay").hide();
					}
					
				}else{
				
					$("#shortName").val("");
					$("#description").val("");
					$("#Scrbeno").val("");
					$("#benstatus").val("");
					$("#bencode").val("");
					$("#billerCode").val("");
					$("#billerUniqueId").val("");
					$("#connectiontype").val("");
					$("#categoryName").val("");
					$("#categoryId").val("");
					$("#serviceName").val("");
					$("#serviceId").val("");
					$("#statuscode").val("");
					$(".activeswipe").hide();
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
	
		navigator.notification.confirm(
            			$.i18n.t("app.transfer.managebeneficiary.activatemsg"),
            	        onConfirm,
            	        '',
            	       [$.i18n.t("app.mpin.yes"),$.i18n.t("app.mpin.no")]
            	    );
            	    
            	    
            	    
 }
 
 function onConfirm(button){
            	    if(button == 1){
            	    	document.location.href = 'tel:920013323';
            	    }else if(button == 2){
            	        
            	    }
            	}
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
