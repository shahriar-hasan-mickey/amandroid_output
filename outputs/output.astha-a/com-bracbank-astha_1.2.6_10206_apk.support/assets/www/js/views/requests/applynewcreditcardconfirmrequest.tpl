<%
	var els = new EncryptedLocalStorage('secret');
	var currcode=els.get("base_currency");
	var applycreditcard=els.get("applynewcc");
	cardtype= applycreditcard[0];
	firstname= applycreditcard[1]  ;
	dob= applycreditcard[2]  ;
	mobno= applycreditcard[3] ;
	frmacno= applycreditcard[4] ;
	selectcity= applycreditcard[5] ;
	empname= applycreditcard[6] ;
	los= applycreditcard[7] ;
	sal= applycreditcard[8] ;
	var cardname=applycreditcard[9] ;
%>
<!--Content Starts Here-->
                
                
                  <a href="#/servicerequest" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequest"><%-$.i18n.t('app.requests.newcc.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.newcc.newcc')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.newcc.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.newcc.verify')%></P></div></div>
                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.newcc.confirm')%></p></div></div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                  <form role="form">
                    <table class="table table-bordered table-striped">
                      <tbody>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.cardtype')%></td>
                          <input type="hidden" id="cardtype" value="<%-$.i18n.t('app.requests.newcc.cardtype')%>">
                         	<% if (typeof(cardtype) != "undefined") { %>
                         		<td><%-cardtype%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.cardname')%></td>
                          <input type="hidden" id="selectcard" value="<%-$.i18n.t('app.requests.newcc.cardname')%>">
                            <% if (typeof(cardname) != "undefined") { %>
                          		<td><%-cardname%></td>
                           <%}%>
                      </tr>
                      <!--<tr>
                          <td><%-$.i18n.t('app.requests.newcc.product')%></td>
                          <input type="hidden" id="product" value="<%-$.i18n.t('app.requests.newcc.product')%>">
                            <% if (typeof(product) != "undefined") { %>
                          		<td><%-product%></td>
                           <%}%>
                      </tr>-->
                      <tr>
                      
                          <td><%-$.i18n.t('app.requests.newcc.firstname')%></td>
                          <input type="hidden" id="firstname" value="<%-$.i18n.t('app.requests.newcc.firstname')%>">
                            <% if (typeof(firstname) != "undefined") { %>
                          		<td><%-firstname%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.accno')%></td>
                          <input type="hidden" id="accno" value="<%-$.i18n.t('app.requests.newcc.accno')%>">
                            <% if (typeof(frmacno) != "undefined") { %>
                          		<td><%-frmacno%></td>
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
                          <td><%-$.i18n.t('app.requests.newcc.dob')%></td>
                          <input type="hidden" id="dob" value="<%-$.i18n.t('app.requests.newcc.dob')%>">
                            <% if (typeof(dob) != "undefined") { %>
                          		<td><%-dob%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.selectcity')%></td>
                          <input type="hidden" id="selectcity" value="<%-$.i18n.t('app.requests.newcc.selectcity')%>">
                            <% if (typeof(selectcity) != "undefined") { %>
                          		<td><%-selectcity%></td>
                           <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.newcc.empname')%></td>
                          <input type="hidden" id="empname" value="<%-$.i18n.t('app.requests.newcc.empname')%>">
                            <% if (typeof(empname) != "undefined") { %>
                          		<td><%-empname%></td>
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
                          		<td class="amt"><span><%-currcode%></span>&nbsp;<%-sal%></td>
                           <%}%>
                      </tr>
                    </tbody></table>
                    <!--<div class="alert alert-warning" role="alert">
                            <small><strong>Bank Note</strong>CUT-OFF times for payments.<a href="#">View PDF</a></small>
                        </div> -->
     
                    <input type="button" id="applynewcreditcardrequestposting" name="applynewcreditcardrequestposting" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.chequebookreq.confirm')%>"/>
                    <a href="#/applynewcreditcardrequest" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.newcc.cancel')%></a>
                 </form>
                  </div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>