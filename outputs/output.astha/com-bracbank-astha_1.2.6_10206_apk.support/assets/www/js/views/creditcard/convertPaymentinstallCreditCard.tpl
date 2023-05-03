		<!--Content Starts Here-->
		<%
		var els = new EncryptedLocalStorage('secret'); 
		var cccardacctno=els.get("cccardacctno");
		var errorDescription=els.get("errordesc");
		var selectedAcct= els.get("selectedAcct");
		var eppccminlimit = els.get("eppccminlmt");
		var avlreditLimit =  els.get('availableCreditCardLimit');
		if(avlreditLimit!=''&&avlreditLimit!=undefined&&avlreditLimit!=null){
		var availableCreditLimit = avlreditLimit.split('.')[0];
		}else{
		var availableCreditLimit = els.get('availableCreditCardLimit');
		}
		//var availableCreditLimit = avlreditLimit.split('.')[0];
		var ccmintranslmt =  els.get('ccmintranslmt');
		var eligibleCardsIndex = els.get('eligibleCardsIndex');
		console.log(eligibleCardsIndex);
		%>


		<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn">
		<span class="glyphicon glyphicon-chevron-left"></span> </a>

		<!-- Breadcrumb Starts Here -->
		<ol class="breadcrumb cust_breadcrumb pull-left">
		<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.unbilled.creditcards')%></a></li>
		<li class="active"><%-$.i18n.t('app.creditcard.convertinstall.cardepp')%></li>
		</ol>

		<div class="clearfix"></div><br/>

		<!--Breadcrumb Ends Here-->


		<!--Credit Card Summary Starts-->
		<% if ( mycreditcards.length > 0 && eligibleCardsIndex.indexOf('Yes') >= 0) { %>
		<div class="alert alert-info">
							<span class="msg"><%-$.i18n.t('app.creditcard.convertinstall.inputpagetop')%></span>
						  </div>
						  <br/><br/>
						<div class="dropselect"  data-title="<%-$.i18n.t('app.creditcard.ccdetails.select')%>" data-setid="acid" >
						<% _.each(mycreditcards,function(data){ %>
						 <%if(data.eppeligiblecardflag =='Yes'){%>
						<input type="hidden"  name="acccardno" id="acccardno" value="<%-data.accountNumber%>"/>
						 <%}%>
						<% }); %>
								                  <% _.each(mycreditcards,function(data){ %>
								                  <%if(data.eppeligiblecardflag =='Yes' && data.cardType =='PRIMARY'){%>
										             <label class="list-group-item">
											              <%
											              if(data.accountNumber== selectedAcct) {%>
					                           					<input type="radio" checked="checked" name="fromactno" id="fromactno" value="<%-data.accountNumber%>~<%-data.creditCardActNo%>~<%-data.eppeligiblecardflag%>~<%-data.creditCardNoMasked%>"/>
					                           				<%}else{%>
					                           					<input type="radio" name="fromactno"  id="fromactno" value="<%-data.accountNumber%>~<%-data.creditCardActNo%>~<%-data.eppeligiblecardflag%>~<%-data.creditCardNoMasked%>"/>
					                           					 
					                           				<%}%>
					                           				<%if(data.eppeligiblecardflag =='Yes'){%>
					  							 			<p>
					  							 				<span class="nme"><%-data.shortName%></span>
					  							 				<small class="cur pull-right"><%-data.currencyCode%></small>
					  							 			</p>
															<p>
																<small class="text-muted"><%- data.creditCardNoMasked %></small>
																<span class="amt pull-right">										
																	<%- checkAmount($.formatNumber(data.availableCreditLimit, {format:"#,###.000", locale:"us"}))%>
																</span>
															</p>
															  <%}%>
					                       			</label>
										                 <%}%>     
								                   <% }); %>
					    </div> 	       
		<!--Credit Card Summary Ends-->




		<!-- UnBilled Transaction Starts- -->

		<div class="accStmt ccStmt" id="minstmtshow">
		<br/>
		<ul>
		<%
			var eppreccount = 0; 
		%>
		<%if ( ministatement.length > 0 ) { %>
		<div class="infoCont">
			<h4><%-$.i18n.t('app.creditcard.convertinstall.plsselecttrans')%></h4>
		</div>
		<% _.each(ministatement,function(data,index){ %>
		<% if ( (data.transactionAmount).substring(0,1)=='-' ) { %>

		
		<%
			}else{
				if(data.eppflag  != 'Y' && parseInt(availableCreditLimit) >= parseInt(eppccminlimit) && parseInt(data.transactionAmount) >= parseInt(ccmintranslmt))
				{
				eppreccount++;
		%>
		<li class="dr" id="convertemi" data-index="<%-index%>">
				<%if(data.eppflag  != 'Y' && parseInt(availableCreditLimit) >= parseInt(eppccminlimit) && parseInt(data.transactionAmount) >= parseInt(ccmintranslmt)){%>
			    <span class="pull-right glyphicon glyphicon-chevron-right"></span>
			      <%}%>
		<div class="d_msg">
		<p class=""><%-$.i18n.t('app.creditcard.unbilled.postingdate')%></p>
		<p class=""><%-$.i18n.t('app.creditcard.unbilled.transactiondate')%></p>
		<p>&nbsp;</p>
		<p><%-data.transactionDescription%></p>
		<!--
		<a href="#/convertPaymentinstallCreditCardEMI"><span class="ref"><%-$.i18n.t('app.creditcard.convertinstall.convertemi')%></span></a>
		<a href="#/convertPaymentinstallCreditCardEMI/<%-data.transactionDescription%>/<%-data.currencyCode%>/<%-data.transactionAmount%>"  class="btn btn-xs btn-default"><span><%-$.i18n.t('app.creditcard.convertinstall.convertemi')%></span></a>-->
		
		<%if(data.eppflag  != 'Y' && parseInt(availableCreditLimit) >= parseInt(eppccminlimit) && parseInt(data.transactionAmount) >= parseInt(ccmintranslmt)){%>
    <!-- <a href="#/convertPaymentinstallCreditCardEMI/<%-data.transactionDescription%>/<%-data.currencyCode%>/<%-data.transactionAmount%>"  class="btn btn-xs btn-default"><span><%-$.i18n.t('app.creditcard.convertinstall.convertemi')%></span></a> -->
    <a class="convertemi" data-index="<%-index%>"><span class="convert_btn ref"><%-$.i18n.t('app.creditcard.convertinstall.convertemi')%></span></a>
    <%}%>
	
		</div>
		<div class="arrow-margin amt">
		<span class="cur">&nbsp;<%-data.valueDate%></span>
		<span class="cur">&nbsp;<%-data.transactionDate%></span>
		<span class="cur"><%-data.currencyCode%></span>
		<span class="type">Dr</span>
		<%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.000", locale:"us"}))%>
		</div>
		</li>	    								   
		   <%}%>
		<%}%> 
		<% }); %>
		</ul>
		</div>
		<div id="othermsg">
		<% if(eppreccount<=0){ %>
			 <div class="alert alert-info">
				<h4 style="text-align:center"><%-$.i18n.t('exception.common.norecordsfound')%></h4>
			 </div>
		<% } %>
		<%}else if ( ministatement.length == 0 ){%>
		 <div class="alert alert-info">
			<h4 style="text-align:center"><%-$.i18n.t('exception.common.norecordsfound')%></h4>
		 </div>
		<%}else{%>
		<div class="alert alert-info">
			<h4 style="text-align:center"><%-errorDescription%></h4>
		</div>
		<%}%>
		</div>
		
		
		

		<!-- UnBilled Transaction Ends- -->

		<br/>

		<!--
		<div class="form-group pull-right">
		<label><%-$.i18n.t('app.product.creditcard.downloads')%>&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
		<div class="btn-group"> 
		<button type="button" id="pdfdownload" name="pdfdownload"  class="btn btn-default"><%-$.i18n.t('app.product.creditcard.pdf')%></button>
		<button type="button" id="xlsdownload" name="xlsdownload" class="btn btn-default"><%-$.i18n.t('app.product.creditcard.xls')%></button>
		</div>
		</div>
		<br/><br/><br/>
		-->   
		<a href="#/creditcard"  class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.unbilled.back')%></a>
		<br/>
		<%}else if ( mycreditcards==null||mycreditcards==''||mycreditcards==undefined){%>
		<div class="alert alert-info">
		<span class="msg"><%-$.i18n.t('app.product.creditcard.nodata')%></span>
		</div>
		<a  href="#/applynewcreditcardrequest" class="btn btn-success btn-sm  btn-block" type="button"><%-$.i18n.t('app.product.creditcard.newcardlink')%></a>
		<%}else if (mycreditcards.length > 0 && eligibleCardsIndex.indexOf('Yes') == -1){%>
		 <div class="alert alert-info">
		    <span class="msg"><%-$.i18n.t('app.creditcard.convertinstall.nocardsmsg')%></span>
		  </div>
		<!-- <a  href="#/applynewcreditcardrequest" class="btn btn-success btn-sm  btn-block" type="button"><%-$.i18n.t('app.product.creditcard.newcardlink')%></a> -->

		<%}else{%>
		<div class="alert alert-info">
		<span class="msg"><%-errorDescription%></span>
		</div>
		<%}%>

		<!--Content Ends Here-->
		<script>
		$(document).ready(function()
		{
		$(".dropselect").dropselect();
		$(".update").hide();

		$(".editNick").on("click",function()
		{
		$(".edit").hide();
		$(".update").show();
		});

		});
		$(".content").animate({ scrollTop: 0 }, "fast");
		</script>
		<script type="text/javascript">
		function openUrl(url) {
		// alert("open url: " + url);
		window.open(url, '_blank', 'location=yes');
		}

		function onDeviceReady() {
		// alert('device ready!');
		}
		$(function() {
		document.addEventListener("deviceready", onDeviceReady, true);
		// $.mobile.silentScroll(0);
		});
		</script>