<%
 var els=new EncryptedLocalStorage('secret');

 
 			var fintype = els.get("rcfintype");
    		var applyfor = els.get("rcapplyfor");
    		var ename = els.get("rcename");
    		var mobno =	els.get("rcmobno");
    		var dob = els.get("rcdob");
    		var city = els.get("rccity");
    		var employername = els.get("rcemployername");
    		var length	= els.get("rclength");
    		var sal	= els.get("rcsal");
    		var amt	= els.get("rcamt");
    		var currcode=els.get("base_currency");
 %>


<!--Content Starts Here-->
                  <a href="#/servicerequest" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequest"><%-$.i18n.t('app.requests.readycash.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.readycash.readycash')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done">
                  		<div>1
                  		<p>
                  			<%-$.i18n.t('app.requests.readycash.input')%>
                  		</p>
                  		</div>
                  	</div>
                  <div class="steps done">
                  <span></span>
                  <div>2
                 	 <p>
                 	 	<%-$.i18n.t('app.requests.readycash.verify')%>
                 	 </p>
                 	 </div>
                 	</div>
                  <div class="steps"><span></span>
                  	<div>3
                  		<p>
                  			<%-$.i18n.t('app.requests.readycash.confirm')%>
                  		</p>
                  		</div>
                  	</div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                 	 <form role="form">
                    	<table class="table table-bordered table-striped">
                      		<tbody>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.readycash.fintype')%></td>
			                            <input type="hidden" id="fintype" value="<%-$.i18n.t('app.requests.readycash.fintype')%>">
			                           	<% if (typeof(fintype) != "undefined") { %>
			                          		<td id="fintype"><%-fintype%></td>
			                            <%}%>
			                      </tr>
			                      <!--<tr>
			                          <td><%-$.i18n.t('app.requests.readycash.applyfor')%></td>
			                             <input type="hidden" id="applyfor" value="<%-$.i18n.t('app.requests.readycash.applyfor')%>">
			                            <% if (typeof(applyfor) != "undefined") { %>
			                         		<td id="applyfor"><%-applyfor%></td>
			                           <%}%>
			                      </tr>-->
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.readycash.name')%></td>
			                             <input type="hidden" id="name" value="<%-$.i18n.t('app.requests.readycash.name')%>">
			                            	<% if (typeof(ename) != "undefined") { %>
			                          		<td><%-ename%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.readycash.mobno')%></td>
			                             <input type="hidden" id="mobno" value="<%-$.i18n.t('app.requests.readycash.mobno')%>">
			                            	<% if (typeof(mobno) != "undefined") { %>
			                          			<td><%-mobno%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.readycash.dob')%></td>
			                             <input type="hidden" id="dob" value="<%-$.i18n.t('app.requests.readycash.dob')%>">
			                            	<% if (typeof(dob) != "undefined") { %>
			                          			<td><%-dob%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.readycash.city')%></td>
			                             <input type="hidden" id="city" value="<%-$.i18n.t('app.requests.readycash.city')%>">
			                            	<% if (typeof(city) != "undefined") { %>
			                          			<td><%-city%></td>
			                          <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.readycash.employername')%></td>
			                             <input type="hidden" id="employername" value="<%-$.i18n.t('app.requests.readycash.employername')%>">
			                            <% if (typeof(employername) != "undefined") { %>
			                         		<td><%-employername%></td>
			                            <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.readycash.los')%></td>
			                             <input type="hidden" id="lengthofservice" value="<%-$.i18n.t('app.requests.readycash.los')%>">
			                            	<% if (typeof(length) != "undefined") { %>
			                          			<td><%-length%></td>
			                          <%}%>
			                      </tr>
			                      
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.readycash.grosssalary')%></td>
			                             <input type="hidden" id="grosssalary" value="<%-$.i18n.t('app.requests.readycash.grosssalary')%>">
			                            	<% if (typeof(sal) != "undefined") { %>
			                          			<td class="amt"><span><%-currcode%></span>&nbsp;<%-sal%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.readycash.reqamt')%></td>
			                             <input type="hidden" id="reqamt" value="<%-$.i18n.t('app.requests.readycash.reqamt')%>">
			                            <% if (typeof(amt) != "undefined") { %>
			                          		<td><%-amt%></td>
			                           <%}%>
			                      </tr>
                   			 </tbody>
                   		</table>
<!--                    <div class="form-group" id="otp">
                        <input type="text" class="form-control" id="otp" placeholder="<%-$.i18n.t('app.requests.readycash.enterotp')%>">
                    </div>-->
                    <input type="button" id="applyreadycashrequestposting" name="applyreadycashrequestposting" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.readycash.confirm')%>"/>
                    <a href="#/applyreadycashrequest" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.readycash.cancel')%></a>
                 </form>
                  </div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>