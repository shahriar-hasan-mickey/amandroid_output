<%
var els = new EncryptedLocalStorage('secret');
var activate_user = els.get("activate_user");
var questionSet=els.get("questionSet");
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
										                	<h3 class="panel-title">
										                	 <%-$.i18n.t('app.forgotpassword.secusucess')%>
										                	
										                	</h3>
										              </div>
										              <!-- Panel head ends here-->
                     								 <div class="panel-body">
                     								 
									                      <!-- form Starts here-->
									                        <form method="post" > 
									                          		<!-- fieldset Starts here-->
                             										<fieldset> 
                               												 
                                											<div class="clearfix"></div>
                               												<!--<h3 >Forgot Secure Access</h3>-->
														                  <div class="alert alert-success text-center">
														                      
														                        <%-$.i18n.t('app.forgotpassword.secusucess')%>
														                  </div>
																 <!-- <ul class="list-group">
								                      								  <% _.each(questionSet,function(data){%>
								                      								  <li class="list-group-item">
														               			<small>
														               				<%-data.qes%>
														               			</small>
														               			<span class="pull-right">						               			
															               				<%-data.ans%>	     		
														               			</span>
													               		</li>
													               		<%});%>
													               		</ul>-->
														                  <!--<label class="small"><%-$.i18n.t('app.forgotpassword.secusmall')%> <b><%-$.i18n.t('app.forgotpassword.username')%> </b> and <b><%-$.i18n.t('app.forgotpassword.password')%> </b></label>-->
														                   
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