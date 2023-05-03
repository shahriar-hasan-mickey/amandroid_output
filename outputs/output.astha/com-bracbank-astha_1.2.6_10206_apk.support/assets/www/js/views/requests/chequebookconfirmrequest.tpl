<%
	var els = new EncryptedLocalStorage('secret');
	var fromaccno = els.get("sraccno"); 
	var branch = els.get("srbranch");
	var branchname = els.get("srbranchname");
	var chequeleaves = els.get("srchequeleaves");
	var accname = els.get("sraccname"); 
	var leavesnos = els.get("srleavesnos");
	var charges = els.get("charges");
%>
<!--Content Starts Here-->
                   <a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.servicereq')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.chequebookreq.chequebookreq')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.chequebookreq.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.chequebookreq.verify')%></P></div></div>
                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.chequebookreq.confirm')%></p></div></div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                  <form role="form">
                    <table class="table table-bordered table-striped">
                      <tbody>
                      <tr>
                          <td ><%-$.i18n.t('app.requests.chequebookreq.casaaccno')%></td>
                          <input type="hidden" id="casaaccno" value="<%-$.i18n.t('app.requests.chequebookreq.casaaccno1')%>">
                        	<% if (typeof(fromaccno) != "undefined") { %>
			                     <td><%-fromaccno%></td>
			                <%}%>
                      </tr>
                      <% if (typeof(accname) != "undefined" && accname!="" && accname!=undefined && accname!=null) { %>
                      <tr>
                          <td><%-$.i18n.t('app.requests.chequebookreq.casaaccname')%></td>
                          <input type="hidden" id="casaaccname" value="<%-$.i18n.t('app.requests.chequebookreq.casaaccname1')%>">
                            
                          		<td><%-accname%></td>
                            
                      </tr>
                      <%}%>
                      <tr>
                          <td><%-$.i18n.t('app.requests.chequebookreq.branch')%></td>
                          <input type="hidden" id="branch" value="<%-$.i18n.t('app.requests.chequebookreq.branch1')%>">
                           <input type="hidden" id="branchname" value="<%-$.i18n.t('app.requests.chequebookreq.branchname1')%>">
                          
                            <% if (typeof(branchname) != "undefined") { %>
                           		<td><%-branchname%></td>
                            <%}%>
                      </tr>
                       <tr>
                          <td><%-$.i18n.t('app.requests.chequebookreq.nosofleaves')%></td>
                          <input type="hidden" id="noofleaves" value="<%-$.i18n.t('app.requests.chequebookreq.noofchequebook1')%>">
                            <% if (typeof(leavesnos) != "undefined") { %>
                          		<td><%-leavesnos%></td>
                            <%}%>
                      </tr>
                      <% if (typeof(charges) != "undefined" && charges!="" && charges!=undefined && charges!=null) { %>
                      <tr>
                          <td><%-$.i18n.t('app.requests.chequebookreq.charges')%></td>
                            
                          		<td><%-charges%></td>
                            
                      </tr>
                      <%}%>
                      <tr>
                          <td><%-$.i18n.t('app.requests.chequebookreq.noofchequebook')%></td>
                          <input type="hidden" id="noofchequebook" value="<%-$.i18n.t('app.requests.chequebookreq.noofchequebook1')%>">
                            <% if (typeof(chequeleaves) != "undefined") { %>
                          		<td><%-chequeleaves%></td>
                            <%}%>
                      </tr>
                    </tbody>
                    </table>
                    <!--<div class="alert alert-warning" role="alert">
                            <small><strong>Bank Note</strong>CUT-OFF times for payments.<a href="#">View PDF</a></small>
                        </div> -->

                    
                    <input type="button" id="chequebooksubmitotp" name="chequebooksubmitotp" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.chequebookreq.confirm')%>"/>
                    <a href="#/chequebookrequest" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.chequebookreq.cancel')%></a>
                  </form>
                  </div>
                  <!--Transfers Ends Here-->
                  <!--One time Billpay Ends Here-->
                  <br/>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>
 <script>
  $(document).ready(function(){
  $("#chequebooksubmitresentotp").attr('disabled','disabled');
  
   $('input').keypress(function(e) {
		        var code = (e.keyCode ? e.keyCode : e.which);
		        if ( (code==13) || (code==10))
		            {
		            $(this).blur();
		            return false;
		            }
		    });
  });
  </script>
