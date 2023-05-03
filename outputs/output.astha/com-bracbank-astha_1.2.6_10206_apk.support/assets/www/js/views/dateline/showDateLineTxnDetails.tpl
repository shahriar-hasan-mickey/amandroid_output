<%
var els = new EncryptedLocalStorage('secret');
var acctno = els.get("accountNumber");
var emailidd = els.get("emailid");
var emailIdCheck = els.get("emailid");
var accoutDetailType=els.get("accoutDetailType");
	var transfer=els.get("iaxth");
%>
    <!--Mobile Content starts here -->
   <% if(transfer!="transfer"){%>
	<a href="#/dateline" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
    <!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
		<li><a href="#/dateline"><%-$.i18n.t('app.menu.dateline')%></a></li>
		<li class="active"><%-$.i18n.t('app.dateline.transdetail')%></li>
	</ol>
	<%}else{%>
	<a href="#/transfer" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
    <!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
		<li><a href="#/transfer"><%-$.i18n.t('app.menu.transfer')%></a></li>
		<li class="active"><%-$.i18n.t('app.transfer.general.transferhistory')%></li>
	</ol>
	<%}%>
	<div class="clearfix"></div><br/>
         <br/>
		          <div id="verify" class="dtl_view">
		                <!--Verify Starts Here-->
			            <form role="form">
				                	<table class="table table-bordered table-striped ">
					                    <thead>
							                    <tr>
						    		                <th colspan="2"><center><%-$.i18n.t('app.product.transactiondetails.title')%></center></th>
						            	        </tr>
					                    </thead>
				                    	<tbody>
				                    	
				                    				<tr>
							               		       <td><%-$.i18n.t('app.product.general.ftrefno')%></td>
							                    	   		<td><%-id%></td>
							                    	    		
							                       	</tr>
				                    			<% if ( !(typeof(fromaccno) == "undefined" || fromaccno==""  )) { %>
							                    	<tr>
							               		       <td><%-$.i18n.t('app.product.transactiondetails.fromaccount')%></td>
							                    	   		<td><%-fromaccno%></td>
							                    	    		<input type="hidden" id="acctnovalue" name="acctnovalue" value="<%-fromaccno%>">
							                       	</tr>
						                       <%}%>
						                       
						                       <% if ( !(typeof(beneaccno) == "undefined" || beneaccno=="" || transactionType == 'ACSD')) { %>
						                       <tr>
						                      		<td><%-$.i18n.t('app.product.transactiondetails.beneficiaryaccno')%></td>
						                      			<td><%-beneaccno%></td>
						                      </tr>
						                      <%}%>
						                      
						                      <!--
						                     <% if (  transactionType != 'ACSD') { %>
							                      <tr>
							                      		<td><%-$.i18n.t('app.product.transactiondetails.beneficiaryname')%></td>
							                      		
							                      		<%if (beneaccname != "") { %>
							                      			<td><%-beneaccname%></td>
							                      		<%}else{%>
							                      			<td><%-bencustomername%></td>
							                      		<%}%>
							                      </tr>
						                      <%} else {%>
							                       <tr>
							                       		<% if (beneaccname!=="" || bencustomername!="" ) { %>
								                    	   		<%if (beneaccname != "") { %>
								                    	   			<td><%-$.i18n.t('app.product.transactiondetails.billname')%></td>
							                      					<td><%-beneaccname%></td>
									                      		<%}else{%>
									                      			<td><%-$.i18n.t('app.product.transactiondetails.billname')%></td>
									                      			<td><%-bencustomername%></td>
									                    		<%}%>
									                   <%}%>
								                    	    		
								                   </tr>
						                       <%}%>
						                       -->
						                       
						                       <% if (  transactionType != 'ACSD') { %>
							                       <tr>
							                       		<% if (beneaccname!=="" || bencustomername!="" ) { %>
								                    	   		<%if (beneaccname != "") { %>
								                    	   			<td><%-$.i18n.t('app.product.transactiondetails.beneficiaryname')%></td>
							                      					<td><%-beneaccname%></td>
									                      		<%}else{%>
									                      			<td><%-$.i18n.t('app.product.transactiondetails.beneficiaryname')%></td>
									                      			<td><%-bencustomername%></td>
									                    		<%}%>
									                   <%}%>
								                    	    		
								                   </tr>
						                       <%}else{%>
						                       <%if (beneaccname != ""&&beneaccname!=undefined&&beneaccname!=null) { %>
							                        <tr>
							                        			
									                    <td><%-$.i18n.t('app.product.transactiondetails.billname')%></td>
								                      	 <td><%-beneaccname%></td>
									                   </tr>
								                   <%}%>
								                    <%}%>
						                       
						                      <!--
						                      <% if ( !(typeof(amountCredited) == "undefined" ||amountCredited=="" || transactionType == 'ACSD')) { %>
							                      <tr>
							                      		<td><%-$.i18n.t('app.product.transactiondetails.amount')%></td>
							                      			<td class="amt"><span>
							                      			<%-amountCredited%>
							                      			</span></td>
							                      </tr>
						                      <%}%>
						                      -->
						                      <% if ( !(typeof(purposeoftransfer) == "undefined" || purposeoftransfer=="N/A" || purposeoftransfer=="") ) { %>
						                      <tr>
						                      		<td><%-$.i18n.t('app.product.transactiondetails.purposeoftransfer')%></td>
						                      			<td><%-purposeoftransfer%></td>
						                      </tr>
						                      <%}%>
						                      
						                      <% if ( !(typeof(payremarks) == "undefined" || payremarks=="" || transactionType == 'ACSD')) { %>
						                       <tr>
						                      		<td><%-$.i18n.t('app.product.transactiondetails.paymentremarks')%></td>
						                      			<td><%-payremarks%></td>
						                      </tr>
						                      <%} else {%>
						                       
						                       <%}%>
						                      <!--
						                      <% if ( !( typeof(payremarks) == "undefined" || payremarks=="" )|| transactionType != "ACSD") { %>
						                     
						                      <tr>
						                      		<td><%-$.i18n.t('app.product.transactiondetails.paymentremarks')%></td>
						                      			<td><%-payremarks%></td>
						                      </tr>
						                      
						                      <%}%>
						                      
						                      <%if ( !( typeof(payDetails1) == "undefined" || payDetails1=="" || transactionType == 'ACSD')){%>
						                      <tr>
						                      <td><%-$.i18n.t('app.product.transactiondetails.paymentremarks')%></td>
						                      <td><%-payDetails1%></td>
						                      </tr>
						                      <%}%>
						                      -->
						                      
						                      <% if ( !(typeof(paymentdate) == "undefined" || paymentdate=="" ) ) { %>
						                      <tr>
						                      		<td><%-$.i18n.t('app.product.transactiondetails.paymentdate')%></td>
						                      			<td><%-paymentdate%></td>
						                      </tr>
						                      <%}%>
						                      
						                      <%if ( payDetails1!=undefined && payDetails1!=''&&payDetails1!=null&&transactionType == 'ACSD'){%>
						                      <tr>
						                      <td><%-$.i18n.t('app.product.transactiondetails.paydetails1')%></td>
						                      <td><%-payDetails1%></td>
						                      </tr>
						                      <%}%>
						                      
						                      <%if ( payDetails2!=undefined && payDetails2!=''&&payDetails2!=null&&transactionType == 'ACSD'){%>
						                      <tr>
						                      <td><%-$.i18n.t('app.product.transactiondetails.paydetails2')%></td>
						                      <td><%-payDetails2%></td>
						                      </tr>
						                      <%}%>
						                      
						                      <% if (!(typeof(exchangerate) == "undefined" ||exchangerate=="")) { %>
						                      <tr>
						                      		<td><%-$.i18n.t('app.product.transactiondetails.exchangerate')%></td>
						                      			<td><%-exchangerate%></td>
						                      </tr>
						                      <%}%>
						                      
						                      <% if (!(typeof(amountDebited) == "undefined" || amountDebited=="" || transactionType == 'ACSD')) { %>
						                      <tr>
								                    <td><%-$.i18n.t('app.product.transactiondetails.convertedamount')%></td>
						        		              	<td class="amt"><span>
						        		              	<%- amountDebited%>
						        		              	</span></td>
						                      </tr>
						                      <%}%>
						                      
						                      <% if (!(typeof(totalchargeamount) == "undefined"|| totalchargeamount=="" )) { %>
						                      <tr>
						                		     <td><%-$.i18n.t('app.product.transactiondetails.transactionfee')%></td>
						                      			<td class="amt"><span>
						                      			<%-totalchargeamount%>
						                      			</span></td>
						                      </tr>
						                      <%}%>
						                      
						                     
						                      
						                      <% _.each(sadadtransactionsList,function(data){ %>
						                      
						                      
						                       		<tr>
									               		       		<td><%-$.i18n.t('app.product.transactiondetails.billaccno')%></td>
									                    	   		<td><%-data.billaccount%></td>
									                    	    		
							                       	</tr>
									                   	
						                      <% if ( !(typeof(data.sadadreferenceid) == "undefined" || data.sadadreferenceid=="" )) { %>
								                       <tr>
								                      		    <td><%-$.i18n.t('app.product.transactiondetails.sadarefno')%></td>
								                      			<td><%-data.sadadreferenceid%></td>
						                      			</tr>						                      
						                       <%}%>
						                    <!--  <tr>
							                      		<td><%-$.i18n.t('app.product.transactiondetails.amount')%></td>
							                      			<td class="amt"><span>
							                      			<%- checkAmount($.formatNumber(data.billamount, {format:"#,###.000", locale:"us"}))%>
							                      			</span></td>
							                      </tr>
						                      -->
						                      
						                       <% }); %>
						                       
						                        <% if (!(typeof(totalamount) == "undefined" || totalamount=="" )) { %>
						                      <tr class="warning">
						                      		 <td><%-$.i18n.t('app.product.transactiondetails.totalamount')%></td>
						                      			<td class="amt"><span>
						                      			<%- checkAmount($.formatNumber(totalamount, {format:"#,###.000", locale:"us"}))%>
						                      			</span></td>
						                      </tr>
						                      <%}%>
						                      
						                       <input type="hidden" id="ftno" name="ftno">
				                  		</tbody>
				             </table>
       	 					<br/>
       	 <div class="clearfix"></div>
		<%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
			<input type="button" id="datelineemail" name="datelineemail" class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.accounts.emailadvice')%>"></input>
		 <%}%>  
		 
		 	<% if(transfer!="transfer"){%>   
				<a href="#/dateline" class="btn btn-primary btn-block"><%-$.i18n.t('app.product.timedeposits.back')%></a>
		   <%}else{%>
				<a href="#/transfer" class="btn btn-primary btn-block"><%-$.i18n.t('app.product.timedeposits.back')%></a>
			<%}%>
                                       
      <script>
     	 $(document).ready(function()
     		 {
        		$(".resend").hide();
       			 $("#submit").on("click",function()
       				 {
         				 $("#submit").hide();
         				 $("#otp").addClass("errorDiv");
        				 $(".resend").show();
          				 $(".resend").attr("href","confirm.html");
                     });
              });
      </script>
  