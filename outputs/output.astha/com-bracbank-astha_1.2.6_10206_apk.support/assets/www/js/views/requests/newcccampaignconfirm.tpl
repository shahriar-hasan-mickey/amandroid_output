<%
	var els = new EncryptedLocalStorage('secret');
	var applycreditcard=els.get("applynewcc");
	firstname= applycreditcard[0]  ;
	lastname= applycreditcard[1]  ;
	embossname= applycreditcard[2]  ;
	noofdep= applycreditcard[3]  ;
	mobno= applycreditcard[4] ;
	addr1= applycreditcard[5] ;
	addr2= applycreditcard[6] ;
	buildno= applycreditcard[7] ;
	mailaddr= applycreditcard[8] ;
	addrcity= applycreditcard[9] ;
	zipcode= applycreditcard[10] ;
	state= applycreditcard[11]  ;
	payoption= applycreditcard[12] ;
	employername= applycreditcard[13]  ;
	relmobno= applycreditcard[14] ;
	los= applycreditcard[15] ;
	sal= applycreditcard[16] ;
	var salaryreceivingdate=els.get("salaryreceivingdate");

	%>	    
			    
<!--Content Starts Here-->
                
                
                  <a href="#/servicerequest" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/wealth"><%-$.i18n.t('app.product.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.newcc.newcc')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                 
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                  <form role="form">
                    <table class="table table-bordered table-striped">
                      <tbody>
                      
                      <tr>
                      
                          <td><%-$.i18n.t('app.requests.newcc.firstname')%></td>
                          <input type="hidden" id="firstname" value="<%-$.i18n.t('app.requests.newcc.firstname')%>">
                            <% if (typeof(firstname) != "undefined") { %>
                          		<td><%-firstname%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.lastname')%></td>
                          <input type="hidden" id="lastname" value="<%-$.i18n.t('app.requests.newcc.lastname')%>">
                            <% if (typeof(lastname) != "undefined") { %>
                          		<td><%-lastname%></td>
                           <%}%>
                      </tr>
                      
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.embossname')%></td>
                          <input type="hidden" id="embossname" value="<%-$.i18n.t('app.requests.newcc.embossname')%>">
                            <% if (typeof(embossname) != "undefined") { %>
                          		<td><%-embossname%></td>
                          		<%}%>
                      </tr>
                      <tr>
                     
                     
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.noofdep')%></td>
                          <input type="hidden" id="noofdep" value="<%-$.i18n.t('app.requests.newcc.noofdep')%>">
                            <% if (typeof(noofdep) != "undefined") { %>
                          		<td><%-noofdep%></td>
                           <%}%>
                      </tr>
                    
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.mobno')%></td>
                          <input type="hidden" id="mobno" value="<%-$.i18n.t('app.requests.newcc.mobno')%>">
                            <% if (typeof(mobno) != "undefined") { %>
                          		<td><%-mobno%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.addr1')%></td>
                          <input type="hidden" id="addr1" value="<%-$.i18n.t('app.requests.newcc.addr1')%>">
                            <% if (typeof(addr1) != "undefined") { %>
                          		<td><%-addr1%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.addr2')%></td>
                          <input type="hidden" id="addr2" value="<%-$.i18n.t('app.requests.newcc.addr2')%>">
                            <% if (typeof(addr2) != "undefined") { %>
                          		<td><%-addr2%></td>
                           <%}%>
                      </tr>
                     
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.buildno')%></td>
                          <input type="hidden" id="buildno" value="<%-$.i18n.t('app.requests.newcc.buildno')%>">
                            <% if (typeof(buildno) != "undefined") { %>
                          		<td><%-buildno%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.mailaddr')%></td>
                          <input type="hidden" id="mailaddr" value="<%-$.i18n.t('app.requests.newcc.mailaddr')%>">
                            <% if (typeof(mailaddr) != "undefined") { %>
                          		<td><%-mailaddr%></td>
                          	<%}%>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.requests.newcc.selectcity')%></td>
                          <input type="hidden" id="selectcity" value="<%-$.i18n.t('app.requests.newcc.selectcity')%>">
                            <% if (typeof(addrcity) != "undefined") { %>
                          		<td><%-addrcity%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.zipcode')%></td>
                          <input type="hidden" id="zipcode" value="<%-$.i18n.t('app.requests.newcc.zipcode')%>">
                            <% if (typeof(zipcode) != "undefined") { %>
                          		<td><%-zipcode%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.state')%></td>
                          <input type="hidden" id="state" value="<%-$.i18n.t('app.requests.newcc.state')%>">
                            <% if (typeof(state) != "undefined") { %>
                          		<td><%-state%></td>
                           <%}%>
                      </tr>
                     
                    
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.dos')%></td>
                          <input type="hidden" id="dos" value="<%-$.i18n.t('app.requests.newcc.dos')%>">
                            <% if (typeof(salaryreceivingdate) != "undefined") { %>
                          		<td><%-salaryreceivingdate%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.payopt')%></td>
                          <input type="hidden" id="payopt" value="<%-$.i18n.t('app.requests.newcc.payopt')%>">
                            <% if (typeof(payoption) != "undefined") { %>
                          		<td><%-payoption%></td>
                           <%}%>
                      </tr>
                    <tr>
                          <td><%-$.i18n.t('app.requests.newcc.empname')%></td>
                          <input type="hidden" id="empname" value="<%-$.i18n.t('app.requests.newcc.empname')%>">
                            <% if (typeof(employername) != "undefined") { %>
                          		<td><%-employername%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.relmobno')%></td>
                          <input type="hidden" id="relmobno" value="<%-$.i18n.t('app.requests.newcc.relmobno')%>">
                            <% if (typeof(relmobno) != "undefined") { %>
                          		<td><%-relmobno%></td>
                           <%}%>
                      </tr>
                     
                      
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.los')%></td>
                          <input type="hidden" id="los" value="<%-$.i18n.t('app.requests.newcc.los')%>">
                            <% if (typeof(los) != "undefined") { %>
                          		<td><%-los%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.sal')%></td>
                          <input type="hidden" id="sal" value="<%-$.i18n.t('app.requests.newcc.sal')%>">
                            <% if (typeof(sal) != "undefined") { %>
                          		<td class="amt"><span>KWD</span><%-sal%></td>
                           <%}%>
                      </tr>
                    </tbody></table>
                    <!--<div class="alert alert-warning" role="alert">
                            <small><strong>Bank Note</strong>CUT-OFF times for payments.<a href="#">View PDF</a></small>
                        </div> -->
     
                    <input type="button" id="applynewcreditcardrequestposting" name="applynewcreditcardrequestposting" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.chequebookreq.confirm')%>"/>
                    <a href="#/applynewcc" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.newcc.cancel')%></a>
                 </form>
                  </div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
<!--Content Ends Here-->