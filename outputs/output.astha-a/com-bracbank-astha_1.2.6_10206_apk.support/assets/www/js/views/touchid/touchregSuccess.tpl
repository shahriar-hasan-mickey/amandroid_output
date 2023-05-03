<%
	var els = new EncryptedLocalStorage('secret');
	var bioFlag=els.get("BiometricType");
    console.log("bioFlag",bioFlag);
%>
<body>
    <div  class="pagewrapper"><!--pagewrapper Starts here-->
      <div class="container"><!--Container Starts here-->
            <h1 class="lgn-logo">
              <span>
              </span>
            </h1>
            <div class="panel panel-default"> <!-- Panel Starts here-->
              <div class="panel-heading" style="background:#0072bc; color:#fff;"><!-- Panel head Starts here-->
              <% if(bioFlag=="TID"){ %>
              	<h3 class="panel-title"><%-$.i18n.t('app.touchid.touchRegTitle')%></h3>
	 			<% }else if(bioFlag=="FID"){ %>
	 				<h3 class="panel-title"><%-$.i18n.t('app.faceid.faceRegTitle')%></h3>
	 			<% } %>
              </div><!-- Panel head ends here-->
              <div class="panel-body">
                <form method="post" >
                	<!-- form Starts here-->
                  <fieldset> <!-- fieldset Starts here-->
                    <div class="alert alert-success text-center">
                    
	                  	<p><%-$.i18n.t('app.registration.congrats')%></p>
	                  	<% if(bioFlag=="TID"){ %>
	                  	<h4><%-$.i18n.t('app.touchid.touchcremsg')%></h4>
	                  	<p><%-$.i18n.t('app.touchid.touchmsg')%></p>
	 			<% }else if(bioFlag=="FID"){ %>
	                  	<h4><%-$.i18n.t('app.faceid.facecremsg')%></h4>
	                  	<p><%-$.i18n.t('app.faceid.facemsg')%></p>
	 			<% } %>
                  	</div>
                        <input type="submit" id="createsuccessclick" class="btn btn-primary btn-block"  value="<%-$.i18n.t('app.registration.proceedLogin')%>" />
                    </fieldset><!-- Fieldset Ends here-->
                          </form><!-- form ends here-->
                      </div>
                 </div><!-- Coloumn Ends here-->
      </div><!--Container Ends here-->
  </div><!--pagewrapper Ends here-->


  
  </body>