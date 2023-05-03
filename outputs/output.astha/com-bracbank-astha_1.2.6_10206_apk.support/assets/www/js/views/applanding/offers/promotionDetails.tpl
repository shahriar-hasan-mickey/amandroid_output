<%
	var els = new EncryptedLocalStorage('secret');
	var promotionsListDTO = els.get("promotionsListDTO");
	var promotionsDetailListDTO = els.get("promotionsDetailListDTO");
	var indexcal = parseInt(index);
	var indexDetail = 0;
	console.log("---------",promotionsDetailListDTO[indexDetail].large_banner);
	
%>

				  <a href="#/offers" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  	  	
                  	  	<!-- Breadcrumb Starts Here -->
	                  	<ol class="breadcrumb cust_breadcrumb pull-left">
	                    	<li><a href="#/showpromotions"><%-$.i18n.t('app.offers.offers')%></a></li>
	                    	<li class="active"><%-$.i18n.t('app.offers.promdetail')%></li>
	                  	</ol>
                  	  	<div class="clearfix"></div>
                  
						<!-- Promotion Deatails Starts  Here -->

	                 		<div class="banner">
								<!--Banner Starts Here-->
								<!--<img src="images/brand/promo_banner.jpg">-->
								<img src="data:image/jpg;base64,<%- promotionsDetailListDTO[indexDetail].large_banner %>" width="60" height="60">
							</div>						
							
						<!--Banner Ends Here-->
						
						<br/>
						<!--<p><b>  <%-$.i18n.t('app.offers.deacust')%></b></p>-->
						
						<div class="offpro">
						<p>
						<small><%- promotionsDetailListDTO[indexDetail].detail_desc %></small>
						<br/><br/>
						</p>
						</div>
						<a onclick="window.open('<%-promotionsDetailListDTO[indexDetail].external_link %>', '_system')" target="_blank" class="btn btn-success btn-block" id="submit"><%-$.i18n.t('app.dateline.readmore')%> <span class="glyphicon glyphicon-new-window"></span></a>
					   
						<br/>
