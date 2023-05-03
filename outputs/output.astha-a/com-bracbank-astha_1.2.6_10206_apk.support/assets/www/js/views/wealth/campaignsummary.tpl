<%
var els = new EncryptedLocalStorage('secret');
%>
 <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/wealth" ><%-$.i18n.t('app.product.general.myoffers')%></a></li>
                     <li class="active"><%-$.i18n.t('app.product.general.offersummary')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
 <h3><%-$.i18n.t('app.product.general.offersummary')%></h3>                 
<div class="dateline">

	<ul>
<!-- Today's transaction Starts -->
	
		<!-- Campaign details starts -->
			<% if (crossSellingList != null && typeof(crossSellingList) != "undefined" && typeof(crossSellingList) != null && crossSellingList.length > 0) { %>		
					<%if( !(crossSellingList[0].campaignid=="" || crossSellingList[0].campaignid==null) ){%>		
								<% _.each(crossSellingList,function(data,index){ %>
								<%if(data.small_banner!=undefined && data.small_banner!=null && data.small_banner!=""){%>
										<li class="promo">
										<div class="ico"><span class="glyphicon glyphicon-chevron-right "></span></div> 
											<a href="#/showCampaigns/<%-index%>">
												<img src="data:image/jpg;base64,<%-data.small_banner%>" width="40" height="40" />
											</a>
											
										</li>
								<%}%>
								<% }); %>
				<%}%>
			<% }else {%>
				<!-- <%-$.i18n.t('app.dateline.errpromotions')%> -->
			<% } %>
		<!-- Campaign details Ends -->
	
<!-- Today's transaction Ends -->
	</ul>
</div>
<div class="clearfix"></div>
<br/>
	
