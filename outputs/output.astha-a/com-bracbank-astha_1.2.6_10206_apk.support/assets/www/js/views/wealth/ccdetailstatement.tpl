    <!-- Breadcrumb section starts-->
	<a href="#/ccstatement/1/1" class="pull-left btn btn-default btn-sm">
		<span class="glyphicon glyphicon-chevron-left">
        </span>
	</a>
                   	
	<ol class="breadcrumb cust_breadcrumb pull-left">
		   <li>
		      <a href="#/wealth"><%-$.i18n.t('app.menu.products')%></a>
		   </li>
		   <li>
		      <a href="#/ccstatement/1/1"><%-$.i18n.t('app.product.general.creditcard')%></a>
		   </li>
		   <li class="active"><%-$.i18n.t('app.product.general.detailstatement')%>
		   </li>
	</ol></br>
	<!-- Breadcrumb section ends-->	
         			
  <!-- Detailed Statement Starts -->
  		<center><h3 data-i18n="app.product.general.detailstatement"></h3></center>
	        	<div class="accStmt">
			           <ul>
			             <%var i=1;%>
			             	<% _.each(ministatement,function(data){ %>
				               	<%if(i++<10){%> 
					                   <li class="cr">
					                        <div class="d_msg">
						                            <p class="date"><span class="date_ltr"><%-data.transactionDate%></span></p>
						                            <div class="ref">
						                      	   		<%-data.transactionDescription %>
						                            </div>
					                        </div>
					                        <div class="amt">
						                          	<span class="cur">
						                          		<span class="type">
						                          	 		<%-data.currencyCode %>
						                          		</span>
						                          	</span>
						                          	<%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.000", locale:"us"}))%>
					                        </div>
					                        <div class="amt1">
						                           	<span class="hdr">
						                         	 </span>
						                         	 <span class="cur">
						                          	</span> 
					                        </div>
					                 </li>
				                <%}%>
			              <% }); %>
			              <% if(_.size(ministatement) == 0){%> 
			  					<h1><%-$.i18n.t('exception.common.nostatement')%></h1>
			              <% } %>
			          </ul>
     </div>
    <!-- Detailed Statement Ends -->
    