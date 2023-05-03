<%
	var els = new EncryptedLocalStorage('secret');
	var fromaccno = els.get("DebitCardNo"); 
	var frmacno = els.get("frmacno"); 
	var mmyy = els.get("mmyy"); 
	var mmyyAra = els.get("mmyyArabic"); 
%>
 
 <!--Content Starts Here-->
                  <a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
                     <li class="active"><%-$.i18n.t('app.requests.actdebitcard.actdebitcard')%></li>
                  </ol>

                    <div class="clearfix"></div>
                    <br/>
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.actdebitcard.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.actdebitcard.verify')%></P></div></div>
                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.actdebitcard.confirm')%></p></div></div>
                  </div>
                    <!--One Time Billpay Starts Here-->
                     <!--Step Control Ends Here-->
                   <div class="dtl_view">
                     <!--Verify Starts Here-->
           			<form role="form">
                    <table class="table table-bordered table-striped">
                      <tbody>
                      <tr>
                          <td><%-$.i18n.t('app.requests.actdebitcard.debitcardno')%></td>
                          	<% if (typeof(fromaccno) != "undefined") { %>
			                    <td><%-fromaccno%></td>
			              	<%}%>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.requests.actdebitcard.mmyy')%></td>
                             <% if (typeof(mmyy) != "undefined") { %>
                         		 <td>
                         		 <% if($.i18n.lng() == 'en-US'){ %>
                         		 	<%-mmyy%>
                         		 <%	}else { %>
                         		 	<%-mmyyAra%>
                         		 <%	}  %>	
                         		 </td>
                             <%}%>
                      </tr>
                    </tbody></table>
                    							<input type="hidden" id="hidcardno" name="hidcardno" value="<%-frmacno%>">
									            <input type="hidden" id="hidmmyy" name="hidmmyy" value="<%-mmyy%>">
					<!--<div class="form-group" id="otp">
                        <input type="text" class="form-control" id="otp" placeholder="<%-$.i18n.t('app.requests.actdebitcard.enterotp')%>">
                    </div>-->
                    <input type="button" id="managedebitcardrequestconfirm" name="managedebitcardrequestconfirm" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.actdebitcard.confirm')%>"/>
                    <a href="#/activatedebitcardrequest" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.actdebitcard.cancel')%></a>
           		   </form>
                   </div>
                   <!--Transfers Ends Here-->
                   <!--One time Billpay Ends Here-->
                   <br/>
<!--Content Ends Here-->
<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>