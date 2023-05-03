<%
	var els = new EncryptedLocalStorage('secret');
	var mpincheck = els.get("mpintype"); 
	var activate_usermpin = els.get("activate_usermpin");
	
%>
<body class="loginbg">
			<!--pagewrapper Starts here-->
			<div  class="pagewrapper">
					<!--Container Starts here-->
		      		<div class="container">
      						<!-- Row Starts here-->
        					<div class="row">
							        <!-- Coloumn Starts here-->
							          <div class="col-sm-6">
								            <h1 class="lgn-logo">
										              <span>
										              </span>
								            </h1>
								            <!-- Panel Starts here-->
								            <div class="panel panel-default"> 
										            <!-- Panel head Starts here-->
													<div class="panel-heading">
														<% if(mpincheck=="NEWMPIN"){ %>
															<h3 class="panel-title"><%-$.i18n.t('app.mpin.creatempin')%></h3>
													    <%}else if(mpincheck=="forceMPIN"){%>
				              	                            <h3 class="panel-title"><%-$.i18n.t('app.mpin.changempin')%></h3>
														<%}else{%>
															<h3 class="panel-title"><%-$.i18n.t('app.mpin.forgotmpin')%></h3>
														<%}%>
													</div>
										              <!-- Panel head ends here-->
                     								 <div class="panel-body">
									                      <!-- form Starts here-->
									                        <form method="post" action="loginASK.html"> 
									                          		<!-- fieldset Starts here-->
                             										<fieldset> 
                               												 <div class="alert alert-success text-center">
                                      											<%-$.i18n.t('app.mpin.mpinreset')%>
                                											</div>
                                											<div class="clearfix"></div>
                               												<!--<p class="text-center">
                               														<%-$.i18n.t('app.forgotpassword.logmessage')%>
		                               												<b><%-$.i18n.t('app.forgotpassword.username')%></b>  
		                               												<%-$.i18n.t('app.forgotpassword.and')%>
		                               												<b><%-$.i18n.t('app.forgotpassword.password')%></b>.
		                               										</p>-->
                               												<a href="#/login" class="btn btn-success btn-block"><span class="glyphicon glyphicon-lock"></span>&nbsp;<%-$.i18n.t('app.forgotpassword.gotologin')%></a>
                               												<!--<input type="button" class="btn btn-success btn-block" name="gotologin" id="gotologin" value="<%-$.i18n.t('app.forgotpassword.gotologin')%>">-->
                              										</fieldset>
                              										<!-- Fieldset Ends here-->
                          										</form>
                        										<!-- form ends here-->  
                      								 </div>
                 					  </div>
                 						<!-- Panel Ends here-->
              						</div>
              						<!-- Coloumn Ends here-->
           					</div>
           					<!-- row ends here-->
      				</div>
      				<!--Container Ends here-->
  			</div>
  			<!--pagewrapper Ends here-->

  <script>
   /* $(document).ready(function()
      {
      $(".loginopt").on("change",function(){
            if($(".loginopt").attr("checked"))
            {
              url=$(this).attr("data-url");
              location.href=url;

            }
          });
      $('input[placeholder], textarea[placeholder]').placeholder();
      });*/

  </script>
</body>
