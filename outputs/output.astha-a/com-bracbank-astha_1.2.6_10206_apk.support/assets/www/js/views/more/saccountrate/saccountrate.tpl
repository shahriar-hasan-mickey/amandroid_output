<%
	var els = new EncryptedLocalStorage('secret'); 
	
	var device_id = getDeviceId(); //els.get("device_id");
	var myaccounts=els.get("myaccounts");
	var setccdetailsaccno=els.get("setccdetailsaccno");
%>


<a href="#/more"  class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<!-- Breadcrumb Starts Here -->
<ol class="breadcrumb cust_breadcrumb pull-left">
	<li><a href="#/more"><%-$.i18n.t('app.more.general.title')%></a></li>
	<li class="active"><%-$.i18n.t('app.more.general.savaccrates')%></li>
</ol>

<div class="clearfix"></div><br/>
						<!--Breadcrumb Ends Here-->
						<div class="panel panel-default cust_panel">

 <form role="form">
 <%if(intlaccountDetails.length>0){%>
 <div class="dropselect" data-title="<%-$.i18n.t('app.tools.currencyconverter.typeacc')%>">
 <%var idx=0;%>
			    	<% _.each(intlaccountDetails,function(data,indx){ %>
						<label class="list-group-item">
			           		<input type="radio" value="<%-data.productCode%>~<%-data.productDescription%>~<%-idx%>" name="fromacc" id="fromacc" />
			           		<p><span class="nme"><%- data.productDescription%></span></p>
			        	</label>
			        <% idx++;}); %>
				</div>
				 <%}else { %>
							<div class="alert alert-info alert-sm" style="text-align:center">  <%-$.i18n.t('app.product.investment.nodata')%></div>
							
						<% } %>	
				 
				<div id="errorFromAct" style="display:none">
					<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></font></p>
				</div>
 
		<!-- From Currency Selection -->
		<!--    
			    <div class="dropselect" data-title="<%-$.i18n.t('app.tools.currencyconverter.typeacc')%>">
			    	<% _.each(intlCurrencyList,function(data){ %>
						<label class="list-group-item">
			           		<input type="radio" value="<%-data.code%>~<%-data.currencyIsoCode%>" name="fromcurr" id="fromcurr" />
			           		<p><span class="exicon" style="background: url(images/common/currency/<%- data.code%>.png)"></span><span class="nme"><%- data.code%></span></p>
			        	</label>
			        <% }); %>
				</div>
		-->
		<span id="dynamiccurrencycompany" class="dynamiccurrencycompany" > </span>
		<div id="errorFromAct" style="display:none">
					<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.fromaccmsg')%></font></p>
				</div>
		
					<div class="dtl_view" type="hidden" id="Details_View"></div>
                        		
                        
                       		
     <script>
     var els = new EncryptedLocalStorage('secret');
  	$(document).ready(function(){
         $(".dropselect").dropselect();
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
