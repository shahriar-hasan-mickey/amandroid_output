 <%
	var els = new EncryptedLocalStorage('secret'); 	
		var sweepConfirm = els.get("sweepConfirm");
		acnum = sweepConfirm[0];
		paymenttype = sweepConfirm[1];
		sweeptype = sweepConfirm[2];
		creditac = sweepConfirm[3];
		paymentdate = sweepConfirm[4];
		payamt = sweepConfirm[5];
		upperlmt = sweepConfirm[6];
		acremarks = sweepConfirm[7];
		craccremarks = sweepConfirm[8];
		lowerlmt = sweepConfirm[9];
		lastpaymentdate = sweepConfirm[10];
		
		 var nmeidx =els.get("nmeidx");
         var payidx =els.get("payidx");
		
		
    	
    	var devicePlatform = els.get("device.platform");
    	        	
	var soft_token = els.get("soft_token");
%>
                  <a href="#/more" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                 <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/more"><%-$.i18n.t('app.more.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.more.sweep.crsweep')%></li>
                  </ol>


                  <div class="clearfix"></div>

                  <!-- Breadcrumb Ends Here -->

                  <!--Step Control Starts Here-->
                   <div class="newWiz">
                  <div class="steps done"><div>1 <p><%-$.i18n.t('app.transfer.ownaccount.input')%></p></div></div>
                  <div class="steps done"><span></span><div>2<P><%-$.i18n.t('app.transfer.ownaccount.verify')%></P></div></div>
                  <div class="steps"><span ></span><div>3<p><%-$.i18n.t('app.transfer.ownaccount.confirm')%></p> </div></div>
                  </div>


                  <!--Step Control Ends Here-->
                  <div class="dtl_view">
                     <!--Verify Starts Here-->
                     <form role="form">
               <table class="table table-bordered table-striped">
                      <tbody>
                       <tr>
                          <td><%-$.i18n.t('app.more.sweep.accnumbr')%></td>
                          <td><%-acnum%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.more.sweep.sweeptype')%></td>
                          <td><%-sweeptype%></td>
                      </tr>
                      <tr>
                          <td><%-$.i18n.t('app.more.sweep.paymenttype')%></td>
                          <td><%-paymenttype%></td>
                      </tr>
                    <% if (nmeidx == "4" ) { %>
                      <tr>
                          <td><%-$.i18n.t('app.more.sweep.debitacc')%></td>
                          <td><%-creditac%></td>
                      </tr>
                    <%}%> 
                    <% if (nmeidx == "3" ) { %>
                       <tr>
                          <td><%-$.i18n.t('app.more.sweep.creditacc')%></td>
                          <td><%-creditac%></td>
                      </tr>
                    <%}%>  
                      <tr>
                         <td><%-$.i18n.t('app.more.sweep.paymentdate')%></td>
                          <td><%-paymentdate%></td>
                      </tr>
                      <tr>
                         <td><%-$.i18n.t('app.more.sweep.payamt')%></td>
                          <td class="amt"><span></span><%-payamt%></td>
                      </tr>
                     <% if (payidx ==  "4") { %>
                      <tr>
                         <td><%-$.i18n.t('app.more.sweep.lastpaymentdate')%></td>
                          <td><%-lastpaymentdate%></td>
                      </tr>
                    <%}%>
                   <% if (nmeidx == "3" ) { %>  
                      <tr>
                           <td><%-$.i18n.t('app.more.sweep.upperlmt')%></td>
                          <td><%-upperlmt%></td>
                      </tr>
                   <%}%>
                  <% if (nmeidx == "4" ) { %>   
                      <tr>
                          <td><%-$.i18n.t('app.more.sweep.lowerlimit')%></td>
                          <td><%-lowerlmt%></td>
                      </tr>
                   <%}%>   
                      <tr>
                         <td><%-$.i18n.t('app.more.sweep.acremarks')%></td>
                        <td><%-acremarks%></td>
                      </tr>
                      <tr>
                           <td><%-$.i18n.t('app.more.sweep.craccremarks')%></td>
                          <td><%-craccremarks%></td>
                      </tr>        
                    

                    </tbody></table>
                        <a href="javascript:void(0)" id="submitsuccessadd"class="btn btn-success btn-block"><%-$.i18n.t('app.creditcard.ccpayments.submit')%></a>
                        <a href="#/more" class="btn btn-primary btn-block"><%-$.i18n.t('app.transfer.ownaccount.cancel')%></a>
                        
                  			<input type="hidden" id="acnum"    value="<%-acnum%>">
                  			<input type="hidden" id="paymenttype"   		value="<%-paymenttype%>">
                  			<input type="hidden" id="sweeptype"    value="<%-sweeptype%>">
                  			<input type="hidden" id="paymentdate"   		value="<%-paymentdate%>">
                  			<input type="hidden" id="payamt"    value="<%-payamt%>">
                  			<input type="hidden" id="upperlmt"   		value="<%-upperlmt%>">
                  			<input type="hidden" id="acremarks"   		value="<%-acremarks%>">
                  			<input type="hidden" id="craccremarks"   		value="<%-craccremarks%>">
                     </form>
                  </div>
                  <!--Transfers Ends Here-->
                  
                  <br/>
             
