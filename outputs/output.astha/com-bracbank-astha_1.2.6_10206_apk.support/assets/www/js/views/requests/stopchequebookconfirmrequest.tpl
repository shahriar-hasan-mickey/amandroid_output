<%
	var els = new EncryptedLocalStorage('secret');
	var fromaccno = els.get("sraccno"); 
	var branch = els.get("srbranch");
	var branchname = els.get("srbranchname");
	var chequeleaves = els.get("srchequeleaves");
	var accname = els.get("sraccname"); 
	var srcheqserialno = els.get("srcheqserialno");
    var repreason = els.get("repreason");
%>
<!--Content Starts Here-->
                   <a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.landing.stopchequebook')%></li>
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
                      <tr>
                          <td><%-$.i18n.t('app.requests.chequebookreq.casaaccname')%></td>
                          <input type="hidden" id="casaaccname" value="<%-$.i18n.t('app.requests.chequebookreq.casaaccname1')%>">
                            <% if (typeof(accname) != "undefined") { %>
                          		<td><%-accname%></td>
                            <%}%>
                      </tr>
                      
                       <tr>
                          <td><%-$.i18n.t('app.requests.chequebookreq.cheqbookserialno')%></td>
                          <input type="hidden" id="cheqserno" value="<%-$.i18n.t('app.requests.chequebookreq.noofchequebook1')%>">
                            <% if (typeof(srcheqserialno) != "undefined") { %>
                          		<td><%-srcheqserialno%></td>
                            <%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.chequebookreq.repreason')%></td>
                          <input type="hidden" id="repreason" value="<%-$.i18n.t('app.requests.chequebookreq.noofchequebook1')%>">
                            <% if (typeof(repreason) != "undefined") { %>
                          		<td><%-repreason%></td>
                            <%}%>
                      </tr>
                    </tbody>
                    </table>
                    <!--<div class="alert alert-warning" role="alert">
                            <small><strong>Bank Note</strong>CUT-OFF times for payments.<a href="#">View PDF</a></small>
                        </div> -->

                    
                    <input type="button" id="stopchequebooksubmitotp" name="stopchequebooksubmitotp" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.chequebookreq.confirm')%>"/>
                    <a href="#/stopchequebookrequest" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.chequebookreq.cancel')%></a>
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
  $("#stopchequebooksubmitresentotp").attr('disabled','disabled');
  
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
