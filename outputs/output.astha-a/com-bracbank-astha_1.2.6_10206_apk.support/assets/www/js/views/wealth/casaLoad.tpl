<%
	var els = new EncryptedLocalStorage('secret'); 
	var myaccounts = getAccountDTO();
	var productName= "";
	var accountListArray = "";
	if(!isNull(myaccounts)) {
		accountListArray = myaccounts.filter(function(array) {
			return array.casaflag == "Y";
		});
	} 
%>
<!-- Tab panes -->
  <div class="tab-content">
	<div role="tabpanel" class="tab-pane active" id="Accounts">
		<%if(isNull(accountListArray)) { %>
			<p class="help-block error-message" style="color:#fff; text-align:center;"><%-$.i18n.t('app.product.general.noloanacc')%></p>
		<%} else if(accountListArray.length > 0){%>
			<div class="c-cards-stack">       
			<ul class="stack-container">
				<% _.each(accountListArray,function(data, index){%>
					<% if(data.accountShortName != null && data.accountShortName != "") {
							productName = data.accountShortName;
					   } else {
							productName = data.productName;
					   } %>
					<li class="c-cards-stack-item card card-default acc" cardHolderName="<%- productName%>" data-url="#/accountssummary/<%- index %>" availBalance="<%- data.availableBalance%>" currency="<%- data.currencyCode%>">										
						<p class="name"><%- productName%></p>
						<p class="numb small text-muted"><%- data.accountNumber%></p>
						<% if(els.get("dashbaordShowHideFlag") == "Show") { %>
							<% if(data.availableBalance >= 0) { %>
								<div class="amt pos text-center">
									<p class="small m0 text-muted"><%-$.i18n.t('app.wealth.availbalance')%></p>	
									<% if(data.imAccountStatus != "D") { %>											  	
										<span class="num"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- data.currencyCode %></span>
									<% } else { %>
										<span class="num zer"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- data.currencyCode %></span>
									<% } %>
								</div>	
							<% } else if( data.availableBalance < 0) { %>
								<div class="amt neg text-center">
									<p class="small m0 text-muted"><%-$.i18n.t('app.wealth.availbalance')%></p>												  	
									<% if(data.imAccountStatus != "D") { %>
										<span class="num neg"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- data.currencyCode %></span>
									<% } else { %>
										<span class="num zer"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- data.currencyCode %></span>	
									<% } %>
								</div>	
							<% } %>
						<% } else if(els.get("dashbaordShowHideFlag") == "Hide") { %>
							<% if(data.availableBalance >= 0) { %>
								<div class="amt pos text-center">
									<p class="small m0 text-muted"><%-$.i18n.t('app.wealth.availbalance')%></p>	
									<% if(data.imAccountStatus != "D") { %>											  	
										<span class="num"><%- data.maksedAvailableBalance%></span> <span class="small cur dCur text-muted"><%- data.currencyCode %></span>
									<% } else { %>
										<span class="num zer"><%- data.maksedAvailableBalance%></span> <span class="small cur dCur text-muted"><%- data.currencyCode %></span>
									<% } %>
								</div>	
							<% } else if( data.availableBalance < 0) { %>
								<div class="amt neg text-center">
									<p class="small m0 text-muted"><%-$.i18n.t('app.wealth.availbalance')%></p>												  	
									<% if(data.imAccountStatus != "D") { %>
										<span class="num neg"><%- data.maksedAvailableBalance%></span> <span class="small cur dCur text-muted"><%- data.currencyCode %></span>
									<% } else { %>
										<span class="num zer"><%- data.maksedAvailableBalance%></span> <span class="small cur dCur text-muted"><%- data.currencyCode %></span>	
									<% } %>
								</div>	
							<% } %>
						<% } %>  
						
						<p class="text-right m0"><span class="logo-xs dash_logo"></span></p>
						<!--<div class="amt">
							<p class="small m0 text-muted"><%-$.i18n.t('app.wealth.availbalance')%></p>
							<%if(data.availableBalance > 0){%>									  	
							<span class="num"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- data.currencyCode %></span>
							<%}else if( data.availableBalance < 0){%>
							<span class="num rd"><%- checkAmount($.formatNumber(data.availableBalance, {format:"#,###.00", locale:"us"}))%></span> <span class="small cur dCur text-muted"><%- data.currencyCode %></span>
							<%}%>
						</div>-->
						<% if(data.imAccountStatus == "I") { %>
							<div class="corner-ribbon top-right small label-danger">Inactive</div>
						<% } else if(data.imAccountStatus == "A") { %>
							<div class="corner-ribbon top-right small label-success">Active</div>
						<% } else if(data.imAccountStatus == "D") { %>
							<div class="corner-ribbon top-right small label-default">DORMANT</div>
						<% } %> 
					</li>
				<%});%>
			</ul>							
		</div>
		<%}%>							
	</div><!-- / Accounts-->
  </div>
  <!--<div class="upPay">
	<ul class="list-unstyled">
		<li class="list-group-item"><h4 class="text-primary"><%-$.i18n.t('app.wealth.upcomingpayments')%></h4></li>
		<li class="list-group-item">
			<div class="media">
				<div class="media-left">
					<img src="images/common/user_default1.png" />
				</div>
				<div class="media-body">
					<p>Credit Card Due</p>
					<small class="text-muted fhdr d_fdate">17 Nov 2018</small>
				</div>
				<div class="media-right">
					<a href="javascript:void(0);" class="btn btn-primary">
						<div class="amt">
							<span class="num">2350.<span class="deci">00</span></span>
							<span class="small cur dCur">BDT</span>
							<i class="fa fa-angle-right" aria-hidden="true"></i>
						</div>	
					</a>
				</div>
			</div>
		</li>
		<li class="list-group-item">
			<div class="media">
				<div class="media-left">
					<img src="images/common/user_default1.png" />
				</div>
				<div class="media-body">
					<p><%-$.i18n.t('app.wealth.standinginstruction')%></p>
					<small class="text-muted fhdr d_fdate">18 Nov 2018</small>
				</div>
				<div class="media-right">
					<a href="javascript:void(0);" class="btn btn-primary">
						<div class="amt">
							<span class="num">150.<span class="deci">00</span></span>
							<span class="small cur dCur">BDT</span>
							<i class="fa fa-angle-right" aria-hidden="true"></i>
						</div>	
					</a>
				</div>							
			</div>
		</li>
		<li class="list-group-item">
			<div class="media">
				<div class="media-left">
					<img src="images/common/user_default1.png" />
				</div>
				<div class="media-body">
					<p><%-$.i18n.t('app.wealth.loaninstalment')%></p>
					<small class="text-muted fhdr d_fdate">27 Nov 2018</small>
				</div>
				<div class="media-right">
					<a href="javascript:void(0);" class="btn btn-primary">
						<div class="amt">
							<span class="num">4750.<span class="deci">00</span></span>
							<span class="small cur dCur">BDT</span>
							<i class="fa fa-angle-right" aria-hidden="true"></i>
						</div>										
					</a>	
				</div>
			</div>
		</li>					
	</ul>
</div>
<div class="promo">
	<ul class="list-unstyled">
		<li class="list-group-item row">
			<div class="clearfix">
				<div class="col-xs-5">
				<img src="images/common/homeLoan.jpg" alt="image1" class="img-responsive">                    </div>
				<div class="col-xs-7 text-center">
					<p  class="small"><%-$.i18n.t('app.wealth.homeloan')%></p>
					<button class="btn btn-primary"><%-$.i18n.t('app.wealth.applynow')%></button>
				</div>
			</div>
		</li>
		<li class="list-group-item">
			<div class="clearfix">
				<div class="col-xs-5">
					<img src="images/common/personalLoan.jpg" class="img-responsive" />
				</div>
				<div class="col-xs-7 text-center">
					 <p class="small"><%-$.i18n.t('app.wealth.personalloan')%></p>
					<button class="btn btn-primary"><%-$.i18n.t('app.wealth.applynow')%></button>
				</div>
			</div>
		</li>
	</ul>
</div>-->
<script src="js/library/slip.js"></script>
<script src="js/library/cardStack.js"></script>
