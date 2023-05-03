<%
var els = new EncryptedLocalStorage('secret');
var activate_user = els.get("activate_user");
var questionSet=els.get("quesansgett");
			 var devicePlatform = els.get("device.platform");
			 var imgval = els.get("imgval");
			 var atmcardmaskval = els.get("atmcardmaskval");
			 var secidval = els.get("secidval");
			 var pertext = els.get("pertext");
			 var useridval = els.get("loginuser_id");
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
										                	 <%-$.i18n.t('app.forgotpassword.secuconfirm')%>
										                	
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
														                 <!-- <div class="alert alert-success text-center">
														                      
														                        <%-$.i18n.t('app.forgotpassword.secusucess')%>
														                  </div>-->
																  <!--<ul class="list-group">
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
													               		<table class="table table-bordered">
										   <tr>
											   <td width="40%" class="text-muted small"><%-$.i18n.t('app.login.logid')%></td><td><%-useridval%></td>
										   </tr>
										   <tr>
											   <td class="text-muted small"><%-$.i18n.t('app.requests.actdebitcard.debitcardno')%></td>
											   <td><%-atmcardmaskval%></td>
										   </tr>	
										   	
										   <!--<tr>
											   <td class="text-muted small"> <%-$.i18n.t('app.forgotpassword.personalizedtext')%></td> 
											   <td><%-pertext%></td> <%-$.i18n.t('app.forgotpassword.custreg')%>
										   </tr>-->
									   </table>
									   <!--<h3><%-$.i18n.t('app.forgotpassword.personalizedtext6')%></h3>--> 
									   <table class="table table-bordered">
									   
										   	<% _.each(questionSet,function(data){%>
										   		<tr>
									                <td class="text-muted small"><%-data.qes%></td>
													<td><%-data.ans%></td> 
												</tr>	
											<%});%>	   
										   
									   									   
									 </table>
														                  <!--<label class="small"><%-$.i18n.t('app.forgotpassword.secusmall')%> <b><%-$.i18n.t('app.forgotpassword.username')%> </b> and <b><%-$.i18n.t('app.forgotpassword.password')%> </b></label>-->
														                   <input type="button" class="btn btn-success btn-block" name="resetsecureaccessSuccess" id="resetsecureaccessSuccess"  value="<%-$.i18n.t('app.creditcard.ccpayments.submit')%>" />
																 
																		<br/>
                               												<!--<a href="#/login" class="btn btn-success btn-block"><span class="glyphicon glyphicon-lock"></span>&nbsp;<%-$.i18n.t('app.forgotpassword.gotologin')%></a>-->
                               												<a href="#/backtohome" class="btn btn-primary btn-block"> <%-$.i18n.t('app.login.backtohome')%></a>
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