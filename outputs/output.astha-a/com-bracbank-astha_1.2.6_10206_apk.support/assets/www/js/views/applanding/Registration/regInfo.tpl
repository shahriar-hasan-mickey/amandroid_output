<div class="pagewrapper">
	<div class="dTable-wrap">
		<div class="dTable-middle">
			<div class="container">
				<!--<h1 class="text-center"><span class="icoInfo">?</span></h1>-->
				<h3 class="text-center"><%- $.i18n.t('app.registration.newuserregheader') %></h3>
				<br/>
				<p><%- $.i18n.t('app.registration.reghelptext') %>:</p>
				<br/>
				<p>1. <%- $.i18n.t('app.registration.regmobnumlabel') %></p>
				<p>2. <%- $.i18n.t('app.registration.carddetails') %></p>	
				<br/>
				<div class="form-group login_check">
				  <label class="check-label">
					<input type="checkbox" name="transfer" id="regTandC"> I agree to the <a id="TandCPDF" href="javascript:void(0);">Terms and Conditions</a>
					<span class="checkmark1"></span>
				  </label>
				</div>
				<div class="form-group has-error">
					<p class="help-block error-message" style="color:#a94442;" id="tandcErr"></p>
		 		</div>
				<br/>
                <button type="button" id="gotoRegistration" class="btn btn-default btn-block">Next</button>	
                <button type="button" id="cancel" class="btn btn-default btn-block">Cancel</button>			
			</div>
		</div>
	</div>
</div>
