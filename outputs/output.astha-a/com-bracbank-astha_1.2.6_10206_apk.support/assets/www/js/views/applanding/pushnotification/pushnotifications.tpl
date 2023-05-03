<%
	var els = new EncryptedLocalStorage('secret');
	var pushNotifyDetailsDTO = els.get("pushNotifyDetailsDTO");
	var push_ncount ="";
	_.each(pushNotifyDetailsDTO,function(data){
	push_ncount = data.push_ncount;
	});
	els.set("pushNotifyCountFlag",push_ncount);
%>	


                  <h3><%-$.i18n.t('app.more.pushNotification.pushNotifyTitle')%></h3>
                     

				<ul class="list-group subNav">
				<% 
					if ( pushNotifyDetailsDTO.length > 0 ) { 
            		var index=0;
            
            	%>
			 			<% _.each(pushNotifyDetailsDTO,function(data){ %>
               					<%if(data.target_url=='Y'){%>
			                	<li class="list-group-item">			                	
			                		<a href="#/pushnotificationsdetails/<%-index%>" >
			                		<span class="glyphicon glyphicon-chevron-right pull-right"></span>
			                			<div class="pull-left imgholder"><img src="images/common/allwal_icon.png" heigh="40" width="40" alt="" class="img-circle" /></div>
                          				<h4 class="list-group-item-heading"><%- data.notify_title%></h4>
                          				<p class="list-group-item-text"><%- data.notify_message%></p>
			                		</a>			                	
			                	</li>
			                	<%}else{%>
			                	<li class="list-group-item">			                	
			                		<a href="#/pushnotificationsdetails/<%-index%>" >
			                		<span class="glyphicon glyphicon-chevron-right pull-right"></span>
			                			<div class="pull-left imgholder"><img src="images/common/allwal_icon.png" heigh="40" width="40" alt="" class="img-circle" /></div>
                          				<h4 class="list-group-item-heading"><%- data.notify_title%></h4>
                          				<p class="list-group-item-text"><%- data.notify_message%></p>
			                		</a>			                	
			                	</li>
			                	<%}%>
               <%
               			index++;
                		});
                	}else { %>
                	<div id="errorResult"  class="alert alert-info text-center">
								<b><%-$.i18n.t('exception.common.nonotifyavbl')%></b> 
							</div>
				<%	}
               %>
		</ul>


                  
	</br>