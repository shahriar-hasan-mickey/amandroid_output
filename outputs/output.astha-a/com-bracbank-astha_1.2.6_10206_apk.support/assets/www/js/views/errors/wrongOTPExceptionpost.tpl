

<form >
				       <fieldset>
							<div class="alert alert-danger text-center"> 
										<h4><%-$.i18n.t('app.login.wrongOTP')%></h4>
										</div> 
										<input type="button" id="cancelbtn" name="cancelbtn" class="btn btn-primary btn-block" value="<%-$.i18n.t('app.mpin.cancel')%>">	
								
						</fieldset>
			       </form>
<script>

$('#resendclick').hide();
$('#resendtimer').show();
 $(document).ready(function() { 
	startTimer("submit", true);
	startTimer("submitOTP", true);
});	
</script>