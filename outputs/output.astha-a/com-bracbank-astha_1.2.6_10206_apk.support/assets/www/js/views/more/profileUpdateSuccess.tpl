<%
			var els = new EncryptedLocalStorage('secret'); 			
			 var devicePlatform = els.get("device.platform");
			 var fromAddAcc=els.get("fromAddAccOpening");
			 
%> 
<!--Content Starts Here-->
<% if ( devicePlatform == "Android" ) { %>
                  <a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
<%}else{%>
                <!--  <a href="#/preference" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a> -->
<%}%>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/preference"><%-$.i18n.t('app.more.preference.preference')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.preference.profileupdation')%></li>
                  </ol>

                    <div class="clearfix"></div>                 

                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.more.preference.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.more.preference.verify')%></P></div></div>
                  <div class="steps done"><span></span><div>3<p><%-$.i18n.t('app.more.preference.confirm')%></p></div></div>
                  </div>
                  <br/>
<%if(ackStatus == "9999" && ackMessage == "NOAMENDMENT"){%>
 <div class="alert alert-info">
    <span class="msg"><%-$.i18n.t('app.more.preference.errorcheckLabel')%></span>
    </div>
    <br/>
    <a href="#/wealth" class="btn btn-success btn-block" ><%-$.i18n.t('app.more.preference.home')%></a>
<%}else{%>
<div role="alert" class="alert alert-success text-center">
                            <h4><%-$.i18n.t('app.more.preference.updatemsg')%></h4>
                    </div>     
                    <% if(fromAddAcc) { %>
                    	<a href="#/addaccopeningrequest" class="btn btn-success btn-block" ><%-$.i18n.t('app.requests.personalfin.done')%></a>
                    <% } else { %>
                    	<a href="#/wealth" class="btn btn-success btn-block" ><%-$.i18n.t('app.more.preference.home')%></a>
                    <% } %>              
                       
  <%}%>                              



