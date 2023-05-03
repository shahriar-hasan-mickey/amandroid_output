<%
			var els = new EncryptedLocalStorage('secret'); 
			 var devicePlatform = els.get("device.platform");
			 var isphone = /iPhone|iPad|Android/.test( navigator.userAgent );
			 var touchUser =els.get("touchAllowedForUser");
			 var touchReg=els.get("touchIdReg");
			 var bioFlag=els.get("BiometricType");
			%>     
    <div class="pagewrapper"><!--pagewrapper Starts here-->
    <div class="container">
        <div class="row">
          <div class="col-sm-6">
            <h1 class="lgn-logo">
              <span>
              </span>
            </h1>
           </div>
           </div>
      </div>
       <div class="quickLinks exit"><!--Quick Links Starts here-->
            
            <!-- For Android with exit button -->
       <% if ( devicePlatform == "Android" ) { %>     
            <div class="col-xs-4">
            
	      		<a href="#"id="closeapp" class="btn btn-danger" ><span class="glyphicon glyphicon-log-out"></span><%-$.i18n.t('app.logout.exitapp')%> </a>
	      		
            </div>
            <div class="col-xs-4">
            		<%if(isphone){%>
							<% if(touchUser !="D") { %>
										<% if(touchReg == "A"){ %>
										         <% if(bioFlag=="TID"){ %>
										         	<a href="#/backtohome" class="btn btn-success"><span class="glyphicon glyphicon-lock"></span><%-$.i18n.t('app.logout.relogin')%> </a>
							            			
							            		<% } else if(bioFlag=="FID") { %>
							            			<a href="#/backtohome" class="btn btn-success"><span class="glyphicon glyphicon-lock"></span><%-$.i18n.t('app.logout.relogin')%> </a>
							            		<% } %>
										<% }else{ %>
								        
										        <a href="#/login" class="btn btn-success"><span class="glyphicon glyphicon-lock"></span><%-$.i18n.t('app.logout.relogin')%> </a>
										<% } %>
							<% }else{ %>
						        
						        <a href="#/login" class="btn btn-success"><span class="glyphicon glyphicon-lock"></span><%-$.i18n.t('app.logout.relogin')%> </a>
							<% } %>
						<% }else{ %>
						        
						        <a href="#/login" class="btn btn-success"><span class="glyphicon glyphicon-lock"></span><%-$.i18n.t('app.logout.relogin')%> </a>
						      
						<% } %>
            </div>
            <div class="col-xs-4">
            		<a href="#/backtohome" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span><%-$.i18n.t('app.logout.home')%></a>
            </div>
        <%}else{%>
        	<p></p><!-- For IOS without exit button -->
            <div class="col-xs-4 col-xs-offset-2">
            	<%if(isphone){%>
							<% if(touchUser !="D") { %>
										<% if(touchReg == "A"){ %>
										         <% if(bioFlag=="TID"){ %>
										         	<a href="#/backtohome" class="btn btn-success"><span class="glyphicon glyphicon-lock"></span><%-$.i18n.t('app.logout.relogin')%> </a>
							            			
							            		<% } else if(bioFlag=="FID") { %>
							            			<a href="#/backtohome" class="btn btn-success"><span class="glyphicon glyphicon-lock"></span><%-$.i18n.t('app.logout.relogin')%> </a>
							            		<% } %>
										<% }else{ %>
								        
										        <a href="#/login" class="btn btn-success"><span class="glyphicon glyphicon-lock"></span><%-$.i18n.t('app.logout.relogin')%> </a>
										<% } %>
							<% }else{ %>
						        
						        <a href="#/login" class="btn btn-success"><span class="glyphicon glyphicon-lock"></span><%-$.i18n.t('app.logout.relogin')%> </a>
							<% } %>
						<% }else{ %>
						        
						        <a href="#/login" class="btn btn-success"><span class="glyphicon glyphicon-lock"></span><%-$.i18n.t('app.logout.relogin')%> </a>
						      
						<% } %>
            </div>
            <div class="col-xs-4">
            		<a href="#/backtohome" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span><%-$.i18n.t('app.logout.home')%></a>
            </div>
       <%}%>    
        <div class="clearfix"></div>
        <p></p>
      </div><!--Quick Links Ends here-->
  </div><!--pagewrapper Ends here-->
  
  <script>
  $(document).ready(function()
		{
		$('html').addClass('logoutbg');
		});
</script>