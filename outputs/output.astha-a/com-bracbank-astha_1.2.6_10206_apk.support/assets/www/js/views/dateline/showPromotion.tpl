<%
	var els = new EncryptedLocalStorage('secret');
	var promotionsListDTO = els.get("promotionsList");
	var promotionsDetailListDTO = els.get("promotionsDetailListDTO");
	var indexcal = parseInt(index);
	var indexDetail = 0;
%>
	<form name="txndetails_dateline">
			<div class="banner">
				<img src="data:image/jpg;base64,<%- promotionsDetailListDTO[indexDetail].large_banner %>" width="100" height="80">				
			</div>
			<br>
			<h4 class="header">
				<%- promotionsDetailListDTO[indexDetail].text 				 %>				
			</h4>
			
			<p class="alert alert-info">
				<small>
					<%- promotionsDetailListDTO[indexDetail].detail_desc %>				
			</small>
			</p>
			
			<br>
			<button type="button" onclick="window.open('<%-promotionsDetailListDTO[indexDetail].external_link %>', '_system')" class="btn btn-success btn-sm  btn-block">
				<%-$.i18n.t('app.dateline.readmore')%>
				<span class="glyphicon glyphicon-new-window"></span>
			</button>
			<a href="#/dateline" class="btn btn-primary btn-block"><%-$.i18n.t('app.product.timedeposits.back')%></a>
			<br>		
		<br/>
		<div class="clearfix"></div>
	</form>
<br/>
	
