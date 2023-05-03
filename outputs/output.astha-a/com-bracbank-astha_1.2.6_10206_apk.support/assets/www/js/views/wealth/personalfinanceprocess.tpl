<script src="js/libs/common/appcommon.js"></script>

<%
var els = new EncryptedLocalStorage('secret');
var loanBookingProcessDTO = els.get("loanBookingProcessDTO");
%>

  	<!-- Actual content area -->
	<!--<a href="#/wealth" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	
	<ol class="breadcrumb cust_breadcrumb pull-left">
	    <li><a href="#/wealth" ><%-$.i18n.t('app.notification.myoffers')%></a></li>
	    <li class="active"><%-$.i18n.t('app.product.stploan.personalfinsumtitle')%></li>
	</ol>-->
	<div class="clearfix"></div><br/>
	<!--Breadcrumb Ends Here-->
            
						
				              <div class="alert alert-success text-center">
						
								<p><strong><%-$.i18n.t('app.product.stploan.reqrefnosuccess')%> </strong></p>
						
                                </div>
                               
					
                        
  	<a href="#/wealth" class="btn btn-primary btn-block"><%-$.i18n.t('app.product.stploan.done')%></a>
     
     

