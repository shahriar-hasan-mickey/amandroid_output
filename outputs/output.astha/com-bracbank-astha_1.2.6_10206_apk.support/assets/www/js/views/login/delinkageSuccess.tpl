<script src="js/libs/security/crypto-js/md5.js"></script>

<body class="loginbg">
	<div  class="pagewrapper">
		<div class="container">
            <div class="row ">
				<div class="col-sm-6">
					<h1 class="lgn-logo"><span></span></h1>
						<div class="panel panel-default">
		        			  		<!--<div class="panel-heading">
		        			    		<h3 class="panel-title"><%-$.i18n.t('app.login.welcomebank')%></h3>
		        			 		</div>-->

					<div class="panel panel-default"> <!-- Panel Starts here-->

                    <div class="panel-body">
                        <form method="post" action="forgotUsernameSuccess.html"> <!-- form Starts here-->
                          <fieldset> <!-- fieldset Starts here-->
                             <div class="alert alert-success alert-sm text-center">
                             <h4>Your Device has been sucessfully de-linked.</h4>
                                <p>You can now create MPIN for this Device. </p>
                             </div>




                              <input type="button" id="delinkcreatempin" class="btn btn-success btn-block" value="Create MPIN">
                              <a href="#/backtohome" class="btn btn-success btn-block">Go to Home</a>
                            </fieldset><!-- Fieldset Ends here-->
                          </form><!-- form ends here-->
                      </div>
                 </div>
                 </div>
             	</div><!-- row ends here-->
        	</div>
    	</div>
  <script src="js/pollyfills/jquery.placeholder.min.js"></script>
	<script>
		$(document).ready(function()
		{
			$(".check-hidden:checked").parents(".checkinput").addClass("active");
			$(".loginopt").on("change",function()
			{
				if($(".loginopt").attr("checked"))
				{
					url=$(this).attr("data-url");
					location.href=url;
				}
			});
			$('input[placeholder], textarea[placeholder]').placeholder();
		});
	</script>
	

</body>