<%
var els = new EncryptedLocalStorage('secret');
var key = els.get('graphKey');
var emailIdCheck = els.get("emailid");
var errorDescription=els.get("errordesc");
%>
	<!-- Billed Transaction Starts -->
			    <%
					var els = new EncryptedLocalStorage('secret'); 
					var minibilledstatement = els.get("minibilledstatement");
			    %>
			    <% if( minibilledstatement != null ) { %>
			  <%if ( minibilledstatement.length > 0 ) { %>
	        						<ul>
		    							<% _.each(minibilledstatement,function(data){ %>
		    							 <% if ( (data.transactionAmount).substring(0,1)=='-' ) { %>
		    							       
<li class="cr">
  <div class="d_msg">
      <p class=""><%-$.i18n.t('app.creditcard.billed.postingdate')%></p>
      <p class=""><%-$.i18n.t('app.creditcard.billed.transactiondate')%></p>
      <p>&nbsp;</p>
      <p><%-data.transactionDescription%></p>
  </div>
  <div class="amt">
      <span class="cur">&nbsp;<%-data.valueDate%></span>
      <span class="cur">&nbsp;<%-data.transactionDate%></span>
      <span class="cur"><%-data.currencyCode%></span>
      <span class="type">Cr</span>
      <%- checkAmount($.formatNumber((data.transactionAmount).substring(1), {format:"#,###.000", locale:"us"}))%>
  </div>
</li>
		    								   <%}else{%>   
			    								  
<li class="dr">
  <div class="d_msg">
      <p class=""><%-$.i18n.t('app.creditcard.billed.postingdate')%></p>
      <p class=""><%-$.i18n.t('app.creditcard.billed.transactiondate')%></p>
      <p>&nbsp;</p>
      <p><%-data.transactionDescription%></p>
  </div>
  <div class="amt">
      <span class="cur">&nbsp;<%-data.valueDate%></span>
      <span class="cur">&nbsp;<%-data.transactionDate%></span>
      <span class="cur"><%-data.currencyCode%></span>
      <span class="type">Dr</span>
      <%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.000", locale:"us"}))%>
  </div>
</li>
			    								<%}%> 
		    							<% }); %>
	                                </ul>
	                                <%}else if ( minibilledstatement.length == 0 ){%>
						<div class="alert alert-info alert-sm"><h4><%-$.i18n.t('exception.common.nostatement')%></h4></div>
									    <%}else{%>
					    <div class="alert alert-info alert-sm"><h4><%-errorDescription%></h4></div>
									    <%}%>
	
	
			   <!--<% if(_.size(minibilledstatement) == 0){%> 
					
					<div class="alert alert-info alert-sm">
						<h4><%-$.i18n.t('exception.common.nostatement')%></h4>
					</div>
			   <% } %>-->	
                <!-- Billed Transaction Ends -->
                         
               <!--Tab 3 Ends -->	
               <% if(_.size(minibilledstatement) > 0){%>
                       	<div class="form-group pull-right">
	      					  <label><%-$.i18n.t('app.product.creditcard.downloads')%>&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
						      <div class="btn-group"> 
							        <button type="button" id="pdfdownload" name="pdfdownload"  class="btn btn-default"><%-$.i18n.t('app.product.creditcard.pdf')%></button>
							        <button type="button" id="xlsdownload" name="xlsdownload" class="btn btn-default"><%-$.i18n.t('app.product.creditcard.xls')%></button>
						      </div>
     				   	</div>
     				   	<%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
								<input type="button" id="emailadvice" name="emailadvice" class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.creditcard.sendtoemail')%>">
						<%}%>	
	           <% } %>    
	             <%}else{%>
					    <div class="alert alert-info alert-sm"><h4><%-errorDescription%></h4></div>
									    <%}%>      
