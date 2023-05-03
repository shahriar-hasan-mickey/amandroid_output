<%
	var els = new EncryptedLocalStorage('secret');
	var promotionsListDTO = els.get("promotionsListDTO");
%>	

<h3><%-$.i18n.t('app.offers.offers')%></h3>

<!-- tabs starts here -->
<!--<ul class="nav nav-tabs ">
	<li role="presentation" class="active"><a href="#/offers" role="tab" data-toggle="tab"><%-$.i18n.t('app.offers.offers')%></a></li>
    <li role="presentation" ><a href="#promotions" role="tab" data-toggle="tab"><%-$.i18n.t('app.offers.promotion')%></a></li>
</ul>-->

<div class="form-group">
		<div class="btn-group btn-group-justified custTab" role="group">
				<div class="btn-group" role="group">
						<button type="button"  class="btn btn-default active"> <%-$.i18n.t('app.offers.promotion')%> </button>
				</div>
				<div class="btn-group" role="group">
						<button type="button" id="offersshow" class="btn btn-default"> <%-$.i18n.t('app.offers.offer')%> </button>
				</div>				
		</div>
</div>

	<!-- Promotion tab starts here -->
	<div role="tabpanel" class="tab-pane" id="promotions">
			<ul class="list-group subNav">
				<% 
					if ( promotionsListDTO.length > 0 ) { 
            		var index=0;
            
            	%>
			 			<% _.each(promotionsListDTO,function(data){ %>
               
			                	<li class="list-group-item">
			                		<a href="#/promotiondetails/<%-index%>" >
			                			<!--<div class="pull-left imgholder">
			                				<img src="data:image/jpg;base64,<%- data.small_banner %>" width="40" height="40">
										</div>-->
			                  			<span class="pull-right glyphicon glyphicon-chevron-right"></span>
			                  			<h4 class="list-group-item-heading"><%- data.text%></h4>
			                  			<p class="list-group-item-text"> <%- data.brief_desc%></p>
			                		</a>
			                	</li>
               <%
               			index++;
                		});
                	}else { %>
                	<div id="errorResult"  class="alert alert-info text-center">
								<b><%-$.i18n.t('exception.common.norecordsfound')%></b> 
							</div>
				<%	}
               %>
		</ul>
	</div>
	</br>