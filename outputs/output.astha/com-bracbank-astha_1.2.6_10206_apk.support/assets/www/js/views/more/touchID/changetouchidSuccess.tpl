 <%
	var els = new EncryptedLocalStorage('secret');
	var bioFlag=els.get("BiometricType");
	%>
	<a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->

                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/preference"><%-$.i18n.t('app.more.preference.preference')%></a></li>
                      <% if(bioFlag=="TID"){ %>
                     	<li class="active"><%-$.i18n.t('app.touchid.changeTouchID')%></li>
                     <% }else if(bioFlag=="FID"){ %>
                     	<li class="active"><%-$.i18n.t('app.faceid.changeFaceID')%></li>
                     <% } %>
                     
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
					<div role="alert" class="alert alert-success text-center">
					<% if(bioFlag=="TID"){ %>
                            <h4><%-$.i18n.t('app.touchid.changeTouchIDSuccess')%></h4>
                    <% }else if(bioFlag=="FID"){ %>
                            <h4><%-$.i18n.t('app.faceid.changeFaceIDSuccess')%></h4>
                    <% } %>    
                    </div>
        		  <a class="btn btn-success btn-block" href="#/preference" ><%-$.i18n.t('app.more.menuSettings.backtoPreference')%></a>
                  <a class="btn btn-success btn-block" href="#/wealth"><%-$.i18n.t('app.more.preference.home')%></a>
            
