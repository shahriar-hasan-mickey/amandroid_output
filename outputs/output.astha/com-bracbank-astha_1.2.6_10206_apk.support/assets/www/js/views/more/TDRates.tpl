<%
var els = new EncryptedLocalStorage('secret');
var intRateExtentions = els.get("intRateExtentions");
%>

<a href="#/more" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span> </a>
						<!-- Breadcrumb Starts Here -->
						<ol class="breadcrumb cust_breadcrumb pull-left">
							<li><a href="#/more"><%-$.i18n.t('app.more.general.title')%></a></li>
							<li class="active"><%-$.i18n.t('app.more.tdrates.tdratesrd')%></li>
						</ol>

						<div class="clearfix"></div><br/>
						<!--Breadcrumb Ends Here-->
						
						 <%if(depositTypesdes.length>0){%>
						<div class="dropselect" data-title="<%-$.i18n.t('app.more.tool.deposittype')%>">
					    	<%  var idx = 0;
					    	_.each(depositTypesdes,function(data, index){  %>
								<label class="list-group-item">
					           		<input type="radio" value="<%-data.productCode%>~<%-index%>" name="deptype" id="deptype" class="dropd"/>
					           		<p><span class="exicon" ></span><span class="nme"><%- data.productDescription%></span></p>
					        	</label>
					         <% idx++; }); %>	
						</div>
						<% } else { %>
							<div class="alert alert-info alert-sm" style="text-align:center">  <%-$.i18n.t('app.product.investment.nodata')%></div>
							
						<% } %>	
						<div id="errdepotype" style="display:none">
					       <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.tdrates.errdepotype')%></font></p>
					    </div>
						
						
	<!--					<div class="dropselect" id="curselect" data-title="<%-$.i18n.t('app.creditcard.ccdetails.currency')%>" style="display:none">
					    	<% var currdetails2 = els.get("currdetails2");
					    	_.each(currdetails2,function(data){ %>
								<label class="list-group-item">
					           		<input type="radio" value="<%-data.currencyCode%>" name="curr" id="curr" class="dropd"/>
					           		<p ><span class="exicon" ></span><span class="nme"><%- data.currencyDescription%></span></p>
					        	</label>
					        <% }); %>
						</div>						-->
						
						
						<span class="currdrop" id="currdrop"></span>
						<div id="errcurr" style="display:none">
					       <p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.more.tdrates.seloption')%></font></p>
					    </div>				
						
							<div id="tddata"></div>
						
                  
	</br>
	
	<script>
    $(document).ready(function(){
           $(".dropselect").dropselect();
	});
</script>
