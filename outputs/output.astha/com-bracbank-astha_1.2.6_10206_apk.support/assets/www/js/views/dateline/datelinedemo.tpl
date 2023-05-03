<nav class="dateline-wrap">
    <form action="#" method="post" name="datelinetransaction" id="datelinetransaction">
	   <!--Application Request Header Data-->
		<input  type="hidden" name="userLoginProfileId" id="userLoginProfileId" value="<%-user_login_profile_id%>"/>
		<input  type="hidden" name="loginId" id="loginId" value="<%-login_id%>"/>
		<input  type="hidden" name="access_token" id="access_token" value="<%-access_token%>"/>
	
	<ul data-role="listview"   data-theme="a" data-divider-theme="d" data-inset="false">
    
	<% if (typeof(futureTaskList) != "undefined") { %>
	<p> future</p>
    <% _.each(futureTaskList,function(data){%>
    <%if(data.dtype == "REM_FT" || data.dtype == "REM_BP"){%>
     	<li data-role="list-divider" class="today-hdr"><%-data.eventDate%></li>
		    <li data-icon="false">
		        <a href="#/futuredatelinetransaction/<%-data.id%>/<%-data.dtype%>/<%-data.processInstanceId%>/<%-requesttimestamp%>" id="<%-data.id%>">
			        <h3><%-data.taskHeader%></h3>
			        <p><%-data.taskDescription%></p>
			        <p class="ui-li-aside"><strong><%-data.amount%></strong><br/><%-data.currency.code%></p>
		        </a>
		    </li>
    <%}else if(data.dtype == "SI"){%>
       <li data-role="list-divider" class="today-hdr"><%-data.eventDate%></li>
		    <li data-icon="false">
		        <h3><%-data.taskHeader%></h3>
		        <p><%-data.taskDescription%></p>
		        <p class="ui-li-aside"><strong><%-data.amount%></strong><br/><%-data.currency.code%></p>
		    </li>
    <% }else if(data.dtype == "REM_BIRTHDAY"){%>
 	   <li data-role="list-divider" class="today-hdr"><%-data.eventDate%></li>
		    <li data-icon="false">
		        <h3><%-data.taskHeader%></h3>
		        <p><%-data.taskDescription%></p>
		    </li>
    <% }else{%>
      <li data-role="list-divider" class="today-hdr"><%-data.eventDate%></li>
		    <li data-icon="false">
		        <h3><%-data.taskHeader%></h3>
		        <p><%-data.taskDescription%></p>
		        <p class="ui-li-aside"><strong><%-data.amount%></strong><br/><%-data.currency.code%></p>
		    </li>
    <% }%>
    <% }); %>
   <%}%>
  
   <p> today </p>
	<li data-role="list-divider" class="today-hdr">Today, <%-todayDate%></li>
		<li data-icon="false">
			<a href="#/wealth" id="wealthMnu">
				<h3>Available Balances</h3>
				<p>Account Balances</p>
				<p class="ui-li-aside"><strong><%-cumulativeBalance%></strong><br/><%-cumulativeBalanceCurrency%></p>
			</a>
	</li>
	
    <% if (typeof(todayTaskList) != "undefined") { %>
     <!--<% if(_.size(todayTaskList) == 1){%> <li data-role="list-divider" class="today-hdr">Today, <%-todayTaskList[0].eventDate%></li>
     <% }else if(_.size(todayTaskList) > 1){%>
     <li data-role="list-divider" class="today-hdr">Today, <%-todayTaskList[0].eventDate%></li>
     <% } %>-->	
        <% _.each(todayTaskList,function(data){ %>
       		 <%if(data.dtype == "FT"){%>
        		<li data-icon="false">
		            <a href="#/todaydatelinetransaction/<%-data.id%>/<%-data.dtype%>/<%-data.processInstanceId%>/<%-requesttimestamp%>" id="<%-data.id%>">
			            <h3><%-data.taskHeader%></h3>
			            <p><%-data.taskDescription%></p>
			            <p class="ui-li-aside"><strong><%-data.amount%></strong><br/><%-data.currency.code%></p>
		            </a>
        		</li>
     		<% }else if(data.dtype == "REM_FT" || data.dtype == "REM_BP"){%>
     			<li data-icon="false">
		            <a href="#/todaydatelinetransaction/<%-data.id%>/<%-data.dtype%>/<%-data.processInstanceId%>/<%-requesttimestamp%>" id="<%-data.id%>">
			            <h3><%-data.taskHeader%></h3>
			            <p><%-data.taskDescription%></p>
			            <p class="ui-li-aside"><strong><%-data.amount%></strong><br/><%-data.currency.code%></p>
		            </a>
       			 </li>
     	<% }else if(data.dtype == "SI"){%>
     			<li data-icon="false">
		            <h3><%-data.taskHeader%></h3>
		            <p><%-data.taskDescription%></p>
		            <p class="ui-li-aside"><strong><%-data.amount%></strong><br/><%-data.currency.code%></p>
        		</li>
     	<% }else if(data.dtype == "REM_BIRTHDAY"){%>
     			<li data-icon="false">
		            <h3><%-data.taskHeader%></h3>
		            <p><%-data.taskDescription%></p>
        		</li>
     	<% }%>
     	<% }); %>
     	<% }%>
     	
     	<p> past</p>
     <% if (typeof(pastTaskList) != "undefined") { %>
        <li data-role="list-divider" class="old-hdr"><%-pastTaskList[0].eventDate%></li>
           <% _.each(pastTaskList,function(data){ %>
              <%if(data.dtype == "FT"){%>
                  <li data-icon="false">
                        <a href="#/pastdatelinetransaction/<%-data.id%>/<%-data.dtype%>/<%-data.processInstanceId%>/<%-requesttimestamp%>" id="<%-data.id%>">
                            <h3><%-data.taskHeader%></h3>
                                <p><%-data.taskDescription%></p>
                                     <p class="ui-li-aside"><strong><%-data.amount%></strong><br/><%-data.currency.code%></p>
                         </a>
                  </li>
              <% } %>
     	  <% }); %>
     <%}%>
     <pastlist>
     <% if ((typeof(todayTaskList) == "undefined") && (typeof(futureTaskList) == "undefined") && (typeof(pastTaskList) == "undefined")) { %>
     		<li data-role="list-divider" class="hdr"><%- todayDate %></li><li data-icon="false">
     			<h3><%-$.i18n.t('app.dateline.nodata')%></h3>
     		</li> 	
     <%}%>
    </ul>
   </form>
</nav>


