<%
 var els=new EncryptedLocalStorage('secret');

 
 			var fintype = els.get("hffintype");
    		var applyfor = els.get("hfapplyfor");
    		var ename = els.get("hfename");
    		var mobno =	els.get("hfmobno");
    		var dob = els.get("hfdob");
    		var city = els.get("hfcity");
    		var employername = els.get("hfemployername");
    		var length	= els.get("hflength");
    		var sal	= els.get("hfsal");
    		var amt	= els.get("hfamt");
    		var currcode=els.get("base_currency");
    		 var campaigntype=els.get("campaigntype");
    		
 %>


<!--Content Starts Here-->
                   <%if(campaigntype!='NEWHF'){%>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequest"><%-$.i18n.t('app.requests.personalfin.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.homefinance.homefinance')%></li>
                  </ol>
                   <%}else{%>
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/wealth"><%-$.i18n.t('app.product.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.homefinance.homefinance')%></li>
                  </ol>
                   <%}%> 

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done">
                  		<div>1
                  		<p>
                  			<%-$.i18n.t('app.requests.homefinance.input')%>
                  		</p>
                  		</div>
                  	</div>
                  <div class="steps done">
                  <span></span>
                  <div>2
                 	 <p>
                 	 	<%-$.i18n.t('app.requests.homefinance.verify')%>
                 	 </p>
                 	 </div>
                 	</div>
                  <div class="steps"><span></span>
                  	<div>3
                  		<p>
                  			<%-$.i18n.t('app.requests.homefinance.confirm')%>
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
			                          <td><%-$.i18n.t('app.requests.homefinance.fintype')%></td>
			                            <input type="hidden" id="fintype" value="<%-$.i18n.t('app.requests.homefinance.fintype')%>">
			                           	<% if (typeof(fintype) != "undefined") { %>
			                          		<td id="fintype"><%-fintype%></td>
			                            <%}%>
			                      </tr>
			                      <!--<tr>
			                          <td><%-$.i18n.t('app.requests.homefinance.applyfor')%></td>
			                             <input type="hidden" id="applyfor" value="<%-$.i18n.t('app.requests.homefinance.applyfor')%>">
			                            <% if (typeof(applyfor) != "undefined") { %>
			                         		<td id="applyfor"><%-applyfor%></td>
			                           <%}%>
			                      </tr>-->
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.homefinance.name')%></td>
			                             <input type="hidden" id="name" value="<%-$.i18n.t('app.requests.homefinance.name')%>">
			                            	<% if (typeof(ename) != "undefined") { %>
			                          		<td><%-ename%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.homefinance.mobno')%></td>
			                             <input type="hidden" id="mobno" value="<%-$.i18n.t('app.requests.homefinance.mobno')%>">
			                            	<% if (typeof(mobno) != "undefined") { %>
			                          			<td><%-mobno%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.homefinance.dob')%></td>
			                             <input type="hidden" id="dob" value="<%-$.i18n.t('app.requests.homefinance.dob')%>">
			                            	<% if (typeof(dob) != "undefined") { %>
			                          			<td><%-dob%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.homefinance.city')%></td>
			                             <input type="hidden" id="city" value="<%-$.i18n.t('app.requests.homefinance.city')%>">
			                            	<% if (typeof(city) != "undefined") { %>
			                          			<td><%-city%></td>
			                          <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.homefinance.employername')%></td>
			                             <input type="hidden" id="employername" value="<%-$.i18n.t('app.requests.homefinance.employername')%>">
			                            <% if (typeof(employername) != "undefined") { %>
			                         		<td><%-employername%></td>
			                            <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.homefinance.los')%></td>
			                             <input type="hidden" id="lengthofservice" value="<%-$.i18n.t('app.requests.homefinance.los')%>">
			                            	<% if (typeof(length) != "undefined") { %>
			                          			<td><%-length%></td>
			                          <%}%>
			                      </tr>
			                      
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.homefinance.grosssalary')%></td>
			                             <input type="hidden" id="grosssalary" value="<%-$.i18n.t('app.requests.homefinance.grosssalary')%>">
			                            	<% if (typeof(sal) != "undefined") { %>
			                          			<td class="amt"><span><%-currcode%></span>&nbsp;<%-sal%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.homefinance.reqamt')%></td>
			                             <input type="hidden" id="reqamt" value="<%-$.i18n.t('app.requests.homefinance.reqamt')%>">
			                            <% if (typeof(amt) != "undefined") { %>
			                          		<td><%-amt%></td>
			                           <%}%>
			                      </tr>
                   			 </tbody>
                   		</table>
<!--                    <div class="form-group" id="otp">
                        <input type="text" class="form-control" id="otp" placeholder="<%-$.i18n.t('app.requests.homefinance.enterotp')%>">
                    </div>-->
                    <input type="button" id="applyhomefinancerequestposting" name="applyhomefinancerequestposting" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.homefinance.confirm')%>"/>
                      <% if ( campaigntype == "NEWHF" ) { %>
                         	  <a href="#/applyhf" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.personalfin.cancel')%></a>
					   <%}else {%>
                       		  <a href="#/applyhomefinancerequest" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.homefinance.cancel')%></a>
                       <%}%>
                    
                 </form>
                  </div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>