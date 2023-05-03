
<body class="loginbg">
	<div  class="pagewrapper">
		<div class="container">
            <div class="row ">
				<div class="col-sm-6">
					<h1 class="lgn-logo"><span></span></h1>
						
			        			 <form>
                            		<fieldset>
										<div class="alert alert-danger text-center"> 
										<h4><%-$.i18n.t('app.login.wrongOTP')%></h4>
										</div> 
										<input type="button" id="cancelbtn" name="cancelbtn" class="btn btn-primary btn-block" value="<%-$.i18n.t('app.mpin.cancel')%>">
									</fieldset>
	        			      	</form>
		        			   
        			</div>
             	</div><!-- row ends here-->
        	</div>
    	</div>
</body>
<script>

$('#resendclick').hide();
$('#resendtimer').show();
 $(document).ready(function() { 
	startTimer("submit", true);
	startTimer("submitOTP", true);
});	
</script>