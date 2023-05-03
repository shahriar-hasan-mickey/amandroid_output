<div class="pagewrapper">
	<nav class="clearfix">
		<ol class="cd-breadcrumb triangle custom-icons">
			<li class="current"><a href="javascript:void(0);"><span class="clr">1</span><%- $.i18n.t('app.registration.selectcardheader') %></a></li>
			<li><a href="javascript:void(0);"><span class="clr">2</span></a></li>
			<li><span class="clr">3</span></li>
		</ol>
	</nav>
	<div class="container">
    	<h1 class="lgn-logo animation-in">
        	<span>
        	</span>
      	</h1>
		<h3 class="text-center page-title"><%- $.i18n.t('app.registration.regwith') %></h3>
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="alert alert-info" role="alert">
						<strong>Note :</strong> <small>We will use your Debit/ Credit card/ BBL Account Number to validate your relationship with BRAC Bank.</small>
				</div>
				<form>
	                <div class="radiobox clearfix">
    					<div class="radio ">
                    		<label>
                      			<input type="radio" name="choice" id="debitCard" value="debitCard"  checked=""/>
                      			<div class="box">
                        			<span class="menu_icon ccard"></span>
                        			<span class="small"><%- $.i18n.t('app.registration.debitcard') %></span>
                      			</div>
                    		</label>
                  		</div>
                  		<div class="radio">
                    		<label>
                      			<input type="radio" name="choice" id="creditCard" value="creditCard" />
                      			<div class="box">
                        			<span class="menu_icon dcard"></span>
                        			<span class="small"><%- $.i18n.t('app.registration.creditcard') %></span>
                      			</div>
                    		</label>
                  		</div>
						<div class="radio">
							<label>
								<input type="radio" name="choice" id="account" value="account">
								<div class="box">
									<span class="menu_icon account"></span>
									<span class="small">Account</span>
								</div>
							</label>
						</div>
					</div>
					<br/>
					<br/>
					<div class="row">
						<div class="col-xs-8 col-xs-offset-2">
							
							<button type="button" class="btn btn-primary btn-block" id="continue" ><%- $.i18n.t('button.registration.continue') %></button>
							<button type="button" id="cancelbtn" class="btn btn-default btn-block"><%- $.i18n.t('button.login.cancel') %></button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script>
	$(document).ready(function(){
		
	});
</script>
