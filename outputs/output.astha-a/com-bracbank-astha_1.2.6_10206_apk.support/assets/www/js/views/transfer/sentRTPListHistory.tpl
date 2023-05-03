<%
	var els = new EncryptedLocalStorage('secret'); 
	var RTPSentList = els.get("RTPSentList");
%>
<div class="transferHis BINIMOY">
	<% if(!isNull(RTPSentList) && RTPSentList.length > 0) { %>
		<ul class="list-unstyled">
			<% _.each(RTPSentList,function(data,index){ %>
				<li class="list-group-item">
		            <a href="javascript:void(0);">
		                <div class="row">
		                    <div class="col-xs-2 first-col">
		                        <span class="menu_icon rtp"></span>
		                    </div>
		                    <div class="col-xs-5 left-col small">
		                        <p>Sent RTP</p>
		                        <p class="trans_data"><span class="text-muted">From:</span> <b><%- els.get("profileName")%></b> <span class="small"><%- els.get("registerdDevice")%></span></p>
		                        <p class="trans_data"><span class="text-muted">To:</span> <b><%- data.receiverName%></b> <span class="small"><%- data.receiverVID%></span></p>
		                    </div>
		                    <div class="col-xs-5 right-col text-right">
		                    	<% if(data.status == "Accepted") { %>
		                    		<p class="status-accepted">Accepted</p>
		                    	<% } else if(data.status == "Rejected") { %>
		                    		<p class="status-rejected">Rejected</p>
		                    	<% } else if(data.status == "Pending") { %>
		                    		<p class="status-pending">Pending</p>
		                    	<% } else if(data.status == "Expired") { %>
		                    		<p class="status-expired">Expired</p>
		                    	<% } %>
		                        <p class="text-muted small">Request ID : <%- data.reqID%></p>
		                        <p class="small timestamp"><%- data.date %> </p>
		                        <p class="amt ">
		                            <span class="num"><%- data.amount%></span>
		                            <span class="small cur dCur">BDT</span>
		                        </p>
		                        <p class="small"><span class="text-muted">Ref No.:</span> <%- data.referenceNo%></p>
		                    </div>
		                </div>
		            </a>
		        </li>
	        <% }); %>
		</ul>
	<% } else { %>
		<p class="text-center"> You don't have any Sent RTP History</p>
	<% } %>
	
</div>