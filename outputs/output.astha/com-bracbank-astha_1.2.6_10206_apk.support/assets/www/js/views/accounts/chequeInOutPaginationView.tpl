<% 
	var els = new EncryptedLocalStorage('secret'); 
	var chequeInOutDTO = els.get("chequeTransactionDetailDTO");
%>

<form name="paginationoptions">
	<div>
		<div id=" paginationContent">
			<ul class="list-group state-list txnSum cheque">
				<% if(!isNull(chequeInOutDTO) && chequeInOutDTO.length > 0 ) { %>
					<% _.each(chequeInOutDTO,function(data){ %> 
						<% var clearingDate = data.clearingDateclearingDate; var clearingDateArr = clearingDate.split("-"); console.log(clearingDateArr); %>
        				<li class="list-group-item">
				          	<div class="dater small text-muted">
            					<span class="dd d_cd"><%- clearingDateArr[0] %></span>
            					<span class="mm d_cm"><%- clearingDateArr[1] %></span>
            					<span class="yy d_cy"><%- clearingDateArr[2] %></span>
          					</div>
			         	 	<p><%- data.chequeNumber%></p>
			         	 	<% if(els.get("chqType") == "IN" ) {%>
			         	 		<p class="text-muted"><span class="small">Bank Name : </span><%- data.bankName %></p>
				          		<p class="text-muted"><span class="small">Branch Name : </span><%- data.collectionBranchName %></p>
			         	 	<% }  else if(els.get("chqType") == "OUT" ) {%>
			         	 		<p class="text-muted"><span class="small">Presentment Bank : </span><%- data.bankName %></p>
				          		<p class="text-muted"><span class="small">Presentment Branch : </span><%- data.collectionBranchName %></p>
			         	 	<% } %>
				          	<a href="javascript:void(0);" class="btn btn-primary pull-right" >
					            <div class="amt">
					              <span class="num"><%- data.amount %></span>
					              <span class="small cur dCur"><%- data.currency %></span>
					              <!--<i class="fa fa-angle-right" aria-hidden="true"></i>-->
					            </div>	
				            </a>
				          <div class="clearfix"></div>
				        </li>
					<% }); %>
				<% } else { $("#page_navigation").hide(); %>
					
					<p style="text-align:center;"><%-$.i18n.t('app.accounts.norecordfound')%></p>
				<% } %>
			</ul>
		</div>
	</div>
	<br/>
</form>
