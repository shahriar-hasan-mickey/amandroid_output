<%
	var els = new EncryptedLocalStorage('secret');
	var pushNotifyDetailsDTO = els.get("pushNotifyDetailsDTO");
	var indexcal = parseInt(index);
	var indexDetail = 0;
	var URLFlagrequired = els.get("URLFlagrequired");
	console.log("URLFlagrequired",URLFlagrequired);
	var pushNotifyDetailsDTOlargebanner = els.get("pushNotifyDetailsDTOlargebanner");
	var pushNotifyDetailsDTOtargeturl = els.get("pushNotifyDetailsDTOtargeturl");
	var pushNotifyDetailsDTOid = els.get("pushNotifyDetailsDTOid");
	console.log("pushNotifyDetailsDTOtargeturl",pushNotifyDetailsDTOtargeturl);
	console.log("pushNotifyDetailsDTOid",pushNotifyDetailsDTOid[index].target_url);	
%>

				  <a href="#/landinglayout/pushnotifications" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  	  	
                  	  	<!-- Breadcrumb Starts Here -->
	                  	<ol class="breadcrumb cust_breadcrumb pull-left">
	                    	<li><a href="#/landinglayout/pushnotifications"><%-$.i18n.t('app.more.pushNotification.pushNotifyTitle')%></a></li>
	                    	<li class="active"><%-$.i18n.t('app.more.pushNotification.pushNotifydetails')%></li>
	                  	</ol>
                  	  	
	
	<div class="clearfix"></div>
                  
						<!-- Promotion Deatails Starts  Here -->

	                 		<div class="banner">
								<!--Banner Starts Here-->
								<!--<img src="images/brand/promo_banner.jpg">
								<img src="data:image/jpg;base64,<%- pushNotifyDetailsDTO[indexDetail].large_banner %>" width="60" height="60">-->
								<!--<img src="data:image/jpg;base64,<%- pushNotifyDetailsDTOlargebanner %>" class="img-responsive img-thumbnail">-->
								<%if(pushNotifyDetailsDTOlargebanner!="" && pushNotifyDetailsDTOlargebanner!= null && pushNotifyDetailsDTOlargebanner!=undefined){%>
								<img src="data:image/jpg;base64,<%- pushNotifyDetailsDTOlargebanner %>" width="60" height="60">
								<%}%>
							</div>						
							
						<!--Banner Ends Here-->
						
						<br/>
						<fieldset>
						<a href="#/pushnotifications" id="dismiss" name="dismiss" class="btn btn-success btn-block"><%-$.i18n.t('app.dateline.dismiss')%></a>
						<%if(pushNotifyDetailsDTOid[index].target_url=='Y'){%>
						<a href="<%-pushNotifyDetailsDTOtargeturl%>" id="more" name="more" class="btn btn-success btn-block"><%-$.i18n.t('app.menu.more')%></a>
						<%}%>
						</fieldset>
					   
						<br/>
