<body class="loginbg">
	<div  class="pagewrapper">
		<div class="container">
            <div class="row ">
				<div class="col-sm-6">
					<h1 class="lgn-logo"><span></span></h1>
						<div class="panel panel-default">
		        			  		<div class="panel-heading">
		        			    		<h3 class="panel-title"><%-$.i18n.t('app.login.welcomebank')%></h3>
		        			 		</div>
		        			  		<div class="panel-body">
			        			    		<form method="post" id="loginform" name="loginform" action="#">
				                            			<fieldset>
																<div class="alert alert-danger text-center"> 
																<h4><%-errordesc%></h4>
																</div> 
															
																<input type="button" id="logoutapp" name="logoutapp" class="btn btn-primary btn-block" value="<%-$.i18n.t('app.login.backtohome')%>">
																<!-- <a href="#/login" id="logoutapp" class="btn btn-primary btn-block"> <%-$.i18n.t('app.login.backtohome')%></a> -->
													</fieldset>
			        			      		</form>
		        			    	</div>
        				  </div>
        			</div>
             	</div><!-- row ends here-->
        	</div>
    	</div>
</body>