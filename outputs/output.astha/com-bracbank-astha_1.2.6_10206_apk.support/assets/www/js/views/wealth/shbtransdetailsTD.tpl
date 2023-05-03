<%
var els = new EncryptedLocalStorage('secret');
var acctno = els.get("accountNumber");
var emailidd = els.get("emailid");
var emailIdCheck = els.get("emailid");
var accoutDetailType=els.get("accoutDetailType");
var ministatement = els.get("depositAccountDetailList");
var accidd = els.get("depositid");

%>
    <!--Mobile Content starts here -->
	<a href="#/invstmentstatement/<%-acctno%>" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
    <!-- Breadcrumb Starts Here -->
    <ol class="breadcrumb cust_breadcrumb pull-left">
             <li><a href="#/wealth"><%-$.i18n.t('app.product.general.title')%></a></li>
             <li>
             		
             			<a href="#/invstmentstatement/<%-accidd%>"><%-$.i18n.t('app.product.general.depositstmt')%></a>
					
             </li>
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
							                    	   		<td><%-ministatement[id].id%></td>
							                    	    		
							                       	</tr>
							                  <!--<tr>
						                      		<td><%-$.i18n.t('app.product.transactiondetails.fromaccount')%></td>
						                      			<td><%-ministatement.accountShortName%></td>
						                      </tr>-->
				                    	
				                    			<tr>
						                      		<td><%-$.i18n.t('app.creditcard.convertinstall.description')%></td>
						                      			<td><%-ministatement[id].transactionDescription%></td>
						                      </tr>
						                       
						                     
							                      <tr>
							                      		<td><%-$.i18n.t('app.product.transactiondetails.amount')%></td>
							                      			<td class="amt"><span>
							                      			<%-ministatement[id].transactionAmount%>
							                      			</span></td>
							                      </tr>
						                      
						                      
						                       <tr>
						                      		<td><%-$.i18n.t('app.creditcard.unbilled.transactiondate')%></td>
						                      			<td class="date_ltr"><%-ministatement[id].transactionDate%></td>
						                      </tr>
						                      
						                     
						                      
						                     
						                      
						                     <!-- <tr>
						                      		<td><%-$.i18n.t('app.transfer.transferhistory.valuedate')%></td>
						                      			<td><%-ministatement[id].valueDate%></td>
						                      </tr>-->
						                     
						                      
						                      <tr>
						                		     <td><%-$.i18n.t('app.product.accounts.availablebalance')%></td>
						                      			<td class="amt"><span>
						                      			<%-ministatement[id].availableBalance%>
						                      			</span></td>
						                      </tr>
						                  
						                      
						                      
						                      
				                  		</tbody>
				             </table>
				            	 
											 
											 
						 					 	<a href="#/invstmentstatement/<%-accidd%>" class="btn btn-success btn-block"><%-$.i18n.t('app.product.transactiondetails.back')%></a>
						 					 
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
  
