  <%
	var els = new EncryptedLocalStorage('secret');
	var touchIdError=els.get("touchIdError");
	var bioFlag=els.get("BiometricType");
%>


<body>
    <div  class="pagewrapper"><!--pagewrapper Starts here-->
      <div class="container"><!--Container Starts here-->
        <div class="row"><!-- Row Starts here-->
          <div class="col-sm-6"><!-- Coloumn Starts here-->
            <h1 class="lgn-logo">
              <span>
              </span>
            </h1>
            <div class="panel panel-default"> <!-- Panel Starts here-->
              <div class="panel-heading"><!-- Panel head Starts here-->
              	<h3 class="panel-title"><%-$.i18n.t('app.login.welcomebank')%></h3>
              </div><!-- Panel head ends here-->
              <div class="panel-body">
                <form method="post" >
                	<!-- form Starts here-->
                  <fieldset> <!-- fieldset Starts here-->
                    <div class="alert alert-success text-center">
                    
	                  	<p><%-$.i18n.t('app.registration.congrats')%></p>
	                  	<% if(touchIdError) { %>
		                  	<% if(bioFlag=="TID"){ %>
	                  	<h4><%-$.i18n.t('app.touchid.touchIdInvalid')%></h4>
	                  	<p><%-$.i18n.t('app.touchid.touchIdNotMatch')%></p>
				 			<% }else if(bioFlag=="FID"){%>
				 				<h4><%-$.i18n.t('app.faceid.faceIdInvalid')%></h4>
		                  		<p><%-$.i18n.t('app.faceid.faceIdNotMatch')%></p>
				 			<% } %>
	                  	<% } else { %>
	                  		<% if(bioFlag=="TID"){ %>
	                  	<h4><%-$.i18n.t('app.touchid.touchnotdevice')%></h4>
	                  	<p><%-$.i18n.t('app.touchid.touchregdevice')%></p>	                  	
				 			<% }else if(bioFlag=="FID"){	 %>
				 				<h4><%-$.i18n.t('app.faceid.facenotdevice')%></h4>
	                  			<p><%-$.i18n.t('app.faceid.faceregdevice')%></p>	 
				 			<% } %>
	                  	
	                  	<% } %>
                  	</div>
                <!--  	<div class="alert alert-success">
                  	<% if(!touchIdError) { %>
                  			<% if(bioFlag=="TID"){ %>	
                  		<p><b><%-$.i18n.t('app.touchid.touchSetupHeader')%></b></p>
                        <small>
                        <ul>
                         	<li class="al">
                         		<%-$.i18n.t('app.touchid.touchSetupStep1')%>
                         	</li>
                         	<li class="al">
                         		<%-$.i18n.t('app.touchid.touchSetupStep2')%>
                         	</li>
                         	<li class="al">
                         		<%-$.i18n.t('app.touchid.touchSetupStep3')%>
                         	</li>
                         	<li class="al">
                         		<%-$.i18n.t('app.touchid.touchSetupStep4')%>
                         	</li>
                         </ul>
                        </small>
				 			<% }else if(bioFlag=="FID"){ %>
				 				<p><b><%-$.i18n.t('app.faceid.faceSetupHeader')%></b></p>
                        <small>
                        <ul>
                         	<li class="al">
                         		<%-$.i18n.t('app.faceid.faceSetupStep1')%>
                         	</li>
                         	<li class="al">
                         		<%-$.i18n.t('app.faceid.faceSetupStep2')%>
                         	</li>
                         	<li class="al">
                         		<%-$.i18n.t('app.faceid.faceSetupStep3')%>
                         	</li>
                         	<li class="al">
                         		<%-$.i18n.t('app.faceid.faceSetupStep4')%>
                         	</li>
                         	<li class="al">
                         		<%-$.i18n.t('app.faceid.faceSetupStep5')%>
                         	</li>
                         </ul>
                        </small>
				 			<% } %>
                      <% } %>
                       </div> -->
                        <% if(touchIdError) { %>
                        <a href="#/backtohome" class="btn btn-primary btn-block"><%-$.i18n.t('app.mpin.backhome')%></a>
                        <% } else { %>
                         <a href="#/login" class="btn btn-success btn-block"><%-$.i18n.t('app.touchid.touchTryAgain')%></a>
                        <% } %>
                    </fieldset><!-- Fieldset Ends here-->
                    
                    
                          </form><!-- form ends here-->
                      </div>
                 </div><!-- Coloumn Ends here-->
              </div><!-- Coloumn Ends here-->
           </div><!-- row ends here-->
      </div><!--Container Ends here-->
  </div><!--pagewrapper Ends here-->


  
  </body>