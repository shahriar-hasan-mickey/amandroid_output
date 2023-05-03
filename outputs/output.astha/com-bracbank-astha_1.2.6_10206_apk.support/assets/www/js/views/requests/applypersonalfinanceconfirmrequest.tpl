 <%
 var els=new EncryptedLocalStorage('secret');
 
 
 			var fintype = els.get("pffintype");
    		var applyfor = els.get("pfapplyfor");
    		var ename = els.get("pfename");
    		var mobno =	els.get("pfmobno");
    		var dob =	els.get("pfdob");
    		var city = els.get("pfcity");
    		var employername = els.get("pfemployername");
    		var length	= els.get("pflength");
    		var sal	= els.get("pfsal");
    		var amt	= els.get("pfamt");
    		var currcode=els.get("base_currency");
    		 var campaigntype=els.get("campaigntype");
 %>



<!--Content Starts Here-->
                  <a href="#/servicerequest" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                <%if(campaigntype!='NEWPL'){%>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequest"><%-$.i18n.t('app.requests.personalfin.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.personalfin.personalfin')%></li>
                  </ol>
                   <%}else{%>
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/wealth"><%-$.i18n.t('app.product.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.personalfin.personalfin')%></li>
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
                  			<%-$.i18n.t('app.requests.personalfin.input')%>
                  		</p>
                  		</div>
                  	</div>
                  <div class="steps done">
                  <span></span>
                  <div>2
                 	 <p>
                 	 	<%-$.i18n.t('app.requests.personalfin.verify')%>
                 	 </p>
                 	 </div>
                 	</div>
                  <div class="steps"><span></span>
                  	<div>3
                  		<p>
                  			<%-$.i18n.t('app.requests.personalfin.confirm')%>
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
			                          <td><%-$.i18n.t('app.requests.personalfin.fintype')%></td>
			                            <input type="hidden" id="fintype" value="<%-$.i18n.t('app.requests.homefinance.fintype')%>">
			                           <% if (typeof(fintype) != "undefined") { %>
			                          		<td id="fintype"><%-fintype%></td>
			                            <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.personalfin.applyfor')%></td>
			                            <input type="hidden" id="applyfor" value="<%-$.i18n.t('app.requests.homefinance.applyfor')%>">
			                           <% if (typeof(applyfor) != "undefined") { %>
			                          		<td id="applyfor"><%-applyfor%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.personalfin.name')%></td>
			                           <input type="hidden" id="name" value="<%-$.i18n.t('app.requests.homefinance.name')%>">
			                           <% if (typeof(ename) != "undefined") { %>
			                          		<td><%-ename%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.personalfin.mobno')%></td>
			                           <input type="hidden" id="mobno" value="<%-$.i18n.t('app.requests.homefinance.mobno')%>">
			                           <% if (typeof(mobno) != "undefined") { %>
			                          		<td><%-mobno%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.personalfin.dob')%></td>
			                           <input type="hidden" id="dob" value="<%-$.i18n.t('app.requests.homefinance.dob')%>">
			                           <% if (typeof(dob) != "undefined") { %>
			                          		<td><%-dob%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.personalfin.city')%></td>
			                           <input type="hidden" id="city" value="<%-$.i18n.t('app.requests.homefinance.city')%>">
			                           <% if (typeof(city) != "undefined") { %>
			                          		<td><%-city%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.personalfin.employername')%></td>
			                           <input type="hidden" id="employername" value="<%-$.i18n.t('app.requests.homefinance.employername')%>">
			                           <% if (typeof(employername) != "undefined") { %>
			                          		<td><%-employername%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.personalfin.los')%></td>
			                           <input type="hidden" id="lengthofservice" value="<%-$.i18n.t('app.requests.homefinance.los')%>">
			                           <% if (typeof(length) != "undefined") { %>
			                          		<td><%-length%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.personalfin.grosssalary')%></td>
			                           <input type="hidden" id="grosssalary" value="<%-$.i18n.t('app.requests.homefinance.grosssalary')%>">
			                           <% if (typeof(amt) != "undefined") { %>
			                         		 <td class="amt"><span><%-currcode%></span>&nbsp;<%-sal%></td>
			                           <%}%>
			                      </tr>
			                      <tr>
			                          <td><%-$.i18n.t('app.requests.personalfin.reqamt')%></td>
			                           <input type="hidden" id="reqamt" value="<%-$.i18n.t('app.requests.homefinance.reqamt')%>">
			                            <% if (typeof(amt) != "undefined") { %>
			                          		<td><%-amt%></td>
			                            <%}%>
			                      </tr>
                   			 </tbody>
                   		</table>
<!--                    <div class="form-group" id="otp">
                        <input type="text" class="form-control" id="otp" placeholder="<%-$.i18n.t('app.requests.personalfin.enterotp')%>">
                    </div>-->
                    <input type="button" id="applypersonalfinancerequestposting" name="applypersonalfinancerequestposting" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.chequebookreq.confirm')%>"/>
                       <% if ( campaigntype == "NEWPL" ) { %>
                         	  <a href="#/applypf" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.personalfin.cancel')%></a>
					   <%}else {%>
                       		  <a href="#/applypersonalfinancerequest" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.personalfin.cancel')%></a>
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