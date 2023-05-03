<%
var els = new EncryptedLocalStorage('secret');
var back = els.get("billpayhistype");
%>  
  
  
  
  <a href="#/duebillpay" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span></a>
                  <!-- Breadcrumb Starts Here -->
                  <ol class="breadcrumb cust_breadcrumb pull-left">
                     <li><a href="#/sadad"><%-$.i18n.t('app.sadad.general.title')%></a></li>
                     <li class="active"><%-$.i18n.t('app.sadad.general.billhistory')%></li>
                  </ol>
    <div class="clearfix"></div>
    <br/>
        <!-- Breadcrumb Ends Here -->
<div id="verify"><!--confirm Starts Here-->
<form role="form">
<div class="billpay ">
                     <!--Billpay Starts Here-->
<form role="form">
      <div class="dtl_view">
             <table class="table table-bordered table-striped ">
	                <thead>
	                		<tr>
	            				<th colspan="2"><b><%-$.i18n.t('app.sadad.duebillpay.billinfo')%></b></th>
	                		 </tr>
	                </thead>
	                <tbody> 
	                		<tr><td><%-$.i18n.t('app.sadad.duebillpay.nickname')%></td><td><%-billerHistnickname%></td></tr>
		          	        <tr><td><%-$.i18n.t('app.sadad.duebillpay.biller')%></td><td><%-billerHistname%></td></tr> 
		                    <tr><td><%-$.i18n.t('app.sadad.duebillpay.billno')%></td><td><%-histscrbeno%></td></tr>
	                </tbody>
              </table>
       </div>
            
             <% if ( billerstmt.length > 0 ) { %>
              <table class="table table-bordered table-striped ">
		            <thead>
		                   <tr>
		                       <th class="text-center"><b><%-$.i18n.t('app.sadad.duebillpay.paiddate')%></b></th>
		                        <th class="text-center"><b><%-$.i18n.t('app.sadad.duebillpay.amountpaid')%></b></th>
		                    </tr>
		             </thead>
		             <tbody>
		             		
			                     <% _.each(billerstmt,function(data){ %>
			                      <tr>
			                            <td><%-data.effdt%> </td>
			                            <td><span class="pull-center"><%-data.curamt%></span></td> 
			                       </tr>
			                      <%});%>
		              </tbody>
		        </table>      
		      <%}else{%>
						<h4><%-$.i18n.t('app.product.investment.nodata')%></h4>
			  <%}%>           
              <%if(back=="duebills") { %>
              		<a href="#/duebillpay" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.duebillpay.back')%></a>
       		  <%}else if(back=="managebills") { %>
                	<a href="#/managebills" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.duebillpay.back')%></a>
			  <%}else {%>
			  		<a href="#/sadad" class="btn btn-success btn-block"><%-$.i18n.t('app.sadad.duebillpay.back')%></a>
			  <%}%>
       </form>
 </div>
                  <!--Billpay Ends Here-->
 </form>
</div><!--confirm Ends Here-->

             <br/>
       