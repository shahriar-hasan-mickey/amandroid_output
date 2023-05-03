
<a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
	<li class="active"><%-$.i18n.t('app.requests.landing.tdintcertificate')%></li>
</ol>
<div class="clearfix"></div>
<br/>
<!-- Breadcrumb Ends Here -->

<!--Step Control Starts Here-->
<div class="newWiz">
	<div class="steps done"><div>1<p><%-$.i18n.t('app.requests.chequebookreq.input')%></p></div></div>
	<div class="steps"><span></span><div>2<P><%-$.i18n.t('app.requests.chequebookreq.verify')%></P></div></div>
	<div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.chequebookreq.confirm')%></p></div></div>
</div>
<!--Step Control Ends Here-->

<form role="form">
					
					<!-- Start from account -->
                    <div class="dropselect" data-title="<%-$.i18n.t('app.requests.blkdebitcard.selectacc')%>" >
	                   	<% if ( myaccounts.length > 0 ) { %>
				        	<% _.each(myaccounts,function(tagData){ %>
					        		<% if ( tagData.currencyCode == "KWD" ) { %>
				                       		<label class="list-group-item">
				                       		<input type="radio" value="<%-tagData.accountNumber%>~<%-tagData.accountNumberMasked%>~<%-tagData.accountShortName%>~<%-tagData.availableBalance%>~<%-tagData.currencyCode%>~<%-tagData.id%>" name="frmacno" id="frmacno"/>
				                            		
				                            		<!--<input type="radio" value="<%-tagData.accountNumber%>~<%-tagData.accountShortName%>~<%-tagData.accountNumberMasked%>" name="frmacno" id="frmacno"/>-->
													<p>
															<%if(typeof(tagData.accountShortName)!="undefined"){%>
																<span class="nme" id="accno" name="accname"><%-tagData.productName%></span>
																<br><span><small class="text-muted"><%-tagData.accountNumber%></small></span>
															<%}else{%>
																<span class="nme"></span>
															<%}%>
															<%if(typeof(tagData.currencyCode)!="undefined"){%>
																<small class="cur pull-right"><%-tagData.currencyCode%></small>
															<%}else{%>
																<span class="nme"></span>
															<%}%>
													</p>
													<p>
															<%if(typeof(tagData.accountNumberMasked)!="undefined"){%>
																<small class="text-muted" id="accno" name="accno"><%-tagData.accountNumberMasked%></small>
															<%}else{%>
																<span class="nme"></span>
															<%}%>
															<%if(typeof(tagData.availableBalance)!="undefined"){%>
																<span class="amt pull-right"><%-tagData.availableBalance%></span>
															<%}else{%>
																<span class="nme"></span>
															<%}%>
													</p>
											</label>
									<%}%>
							<% }); %> 
						
						<%}%>
					</div>
					<div id="errorFromAct" style="display:none">
                    	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.requests.newcc.fromaccmsg')%></font></p>
					</div>
                    <!-- End from account -->
                    
                    <input type="button" class="btn btn-success btn-block" id="tdintrequest" name="tdintrequest" value="<%-$.i18n.t('app.requests.chequebookreq.submit')%>" />
                    <a href="#/servicerequestmenu" class="btn btn-primary btn-block" ><%-$.i18n.t('app.requests.chequebookreq.cancel')%></a>

</form>
<br/>

<script>
        $(function(){
            $(".dropselect").dropselect();
        });

		$("#sliderNear").slider();
		$("#sliderNear").on("slideStop", function(slideEvt) {
			$(".showslideval").text(slideEvt.value);
			$("#chequeleaves").val(slideEvt.value);
		});
		$("#chequeleaves").val("1");
</script>
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>