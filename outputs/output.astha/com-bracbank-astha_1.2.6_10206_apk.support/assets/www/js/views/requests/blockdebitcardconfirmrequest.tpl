	<a href="#/servicerequestmenu" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
    <!-- Breadcrumb Starts Here -->
	  <ol class="breadcrumb cust_breadcrumb pull-left">
	     <li><a href="#/servicerequestmenu"><%-$.i18n.t('app.menu.accounts')%></a></li>
	     <li class="active"><%-$.i18n.t('app.requests.blkdebitcard.blkdebitcard')%></li>
	  </ol>

      <div class="clearfix"></div>
      <br/>
      
                  <!-- Breadcrumb Ends Here -->
                  <!--Step Control Starts Here-->
                  <div class="newWiz">
	                  <div class="steps done"><div>1<p><%-$.i18n.t('app.requests.blkdebitcard.input')%></p></div></div>
	                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.requests.blkdebitcard.verify')%></P></div></div>
	                  <div class="steps"><span></span><div>3<p><%-$.i18n.t('app.requests.blkdebitcard.confirm')%></p></div></div>
	              </div>
                  <!--Step Control Ends Here-->

		<div class="dtl_view">
        <form role="form">
                  		<table class="table table-bordered table-striped">
                      		<tbody>
                      			<tr>
                          			<td><%-$.i18n.t('app.requests.blkdebitcard.debitcardno')%></td>
                            		<% if (typeof(frmacno) != "undefined") { %>
			                    		<td><%-frmacno%></td>
			              			<%}%>
                      			</tr>
                      			<tr>
                          			<td><%-$.i18n.t('app.requests.blkdebitcard.mmyy')%></td>
                            			<% if (typeof(mmyy) != "undefined") { %>
                         					<td><%-mmyy%></td>
                           				<%}%>
                      			</tr>
                    		</tbody>
                    	</table>
				  <input  type="hidden" name="expdate" id="expdate" value="<%-mmyy%>"/>
                  <input type="button" id="managedebitcardrequestconfirm" name="managedebitcardrequestconfirm" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.blkdebitcard.confirm')%>"/>
                  <a href="#/blockdebitcardrequest" class="btn btn-primary btn-block"><%-$.i18n.t('app.requests.blkdebitcard.cancel')%></a>
		</form>
		</div>
        <br/>

<script>
 $(".content").animate({ scrollTop: 0 }, "fast");
 </script>