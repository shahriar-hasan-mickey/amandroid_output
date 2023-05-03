<%
var els = new EncryptedLocalStorage('secret');
var acctno = els.get("accountNumber");
var backtostatement = els.get("getstatmentback");
var emailIdCheck = els.get("emailid");
var stmtkid = els.get("aid");
console.log("stmtkid===",stmtkid);
var transdetailspages = els.get("transdetailspages");
console.log("++++++++++++",transdetailspages);
var ministatement = els.get("ministatement");
var accidd = els.get("depositid");
%>
    <!--Mobile Content starts here -->
	<a href="#/statement/<%-acctno%>" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
    <!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
             <li><a href="#/wealth"><%-$.i18n.t('app.product.general.title')%></a></li>
             <li><a href="#/invstmentstatement/<%-accidd%>"><%-$.i18n.t('app.product.general.statement')%></a></li>
             <!--<li><a href="javascript:void(0);" id="backbut" name="backbut"><%-$.i18n.t('app.product.general.detailedstatement')%></a></li>-->
             <li class="active"><%-$.i18n.t('app.product.transactiondetails.title')%></li>
	</ol>
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
							               		       <td><%-$.i18n.t('app.creditcard.cclimit.refno')%></td>
							                    	   		<td><%-transdetailspages[stmtkid].bankReferenceNumber%></td>
							                    	    		
							                       	</tr>
							                  <!--<tr>
						                      		<td><%-$.i18n.t('app.product.transactiondetails.fromaccount')%></td>
						                      			<td><%-transdetailspages.accountShortName%></td>
						                      </tr>-->
				                    	
				                    			<tr>
						                      		<td><%-$.i18n.t('app.creditcard.convertinstall.description')%></td>
						                      			<td><%-transdetailspages[stmtkid].transactionDescription%></td>
						                      </tr>
						                       
						                     
							                      <tr>
							                      		<td><%-$.i18n.t('app.product.transactiondetails.amount')%></td>
							                      			<td class="amt"><span>
							                      			<%-transdetailspages[stmtkid].transactionAmount%>
							                      			</span></td>
							                      </tr>
						                      
						                      
						                       <tr>
						                      		<td><%-$.i18n.t('app.creditcard.unbilled.transactiondate')%></td>
						                      			<td class="date_ltr"><%-transdetailspages[stmtkid].transactionDate%></td>
						                      </tr>
						                      
						                     
						                      
						                     
						                      
						                     <!-- <tr>
						                      		<td><%-$.i18n.t('app.transfer.transferhistory.valuedate')%></td>
						                      			<td><%-transdetailspages[stmtkid].valueDate%></td>
						                      </tr>-->
						                     
						                      
						                      <tr>
						                		     <td><%-$.i18n.t('app.product.accounts.availablebalance')%></td>
						                      			<td class="amt"><span>
						                      			<%-transdetailspages[stmtkid].availableBalance%>
						                      			</span></td>
						                      </tr>
						                       <input type="hidden" id="ftno" name="ftno">
				                  		</tbody>
				             </table>
				             				<!-- <%if(!(emailIdCheck=="" || emailIdCheck=="null" || emailIdCheck==null || emailIdCheck=="undefined" || emailIdCheck==undefined)){%>
												<input type="button" id="emailadvice" name="emailadvice" class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.accounts.emailadvice')%>">
											 <%}%>-->
						 					 <a href="#/invstmentstatement/<%-accidd%>" class="btn btn-success btn-block"><%-$.i18n.t('app.product.transactiondetails.back')%></a>
						 					 <!--<input type="button" id="backbut" name="backbut" class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.transactiondetails.back')%>">-->
			  			</form>
				</div>
       	 <br/>
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
  
