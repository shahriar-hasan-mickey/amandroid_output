<script src="js/libs/common/appcommon.js"></script>

<%
var els = new EncryptedLocalStorage('secret');
var key = els.get('graphKey');
var devicePlatform = els.get("device.platform");
var emailidd = els.get("emailid");
var emailIdCheck = els.get("emailid");
var SelectedMonthCode= els.get("SelectedMonthCode");
%>

  	<!-- Actual content area -->
	<a href="#/wealth" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
	    <li><a href="#/wealth" ><%-$.i18n.t('app.product.general.title')%></a></li>
	    <li class="active"><%-$.i18n.t('app.product.general.prepaid')%></li>
	</ol>
	<div class="clearfix"></div><br/>
	<!--Breadcrumb Ends Here-->
            <div class="panel panel-default cust_panel">
		               <div class="panel-heading" id="account" data-toggle="collapse" data-target="#beneficiary">
		                   <p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;  
						    	<%-$.i18n.t('app.product.general.details')%>
		                   </p>
		               </div>
						<div id="beneficiary" class="collapsePanel panel-collapse collapse">
						
				            <div class="panel-body detailsStmt">
				                <ul class="list-group">
					         		
                                 <!--   <li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.readycashaccno')%>
						               			</small>
						               			<span class="pull-right">
						               			<input type="hidden" id="accountno" name="accountno" value="<%-loannumber%>">
							               			<%if(typeof(loannumber)!="undefined"){%>
							               				<%-loannumber%>							               			
							               			<%}%>	
						               			</span>
					               	</li> -->
					               		
					             <!-- <li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.readycashacctype')%>
						               			</small>
						               			<span class="pull-right">
							               			 <%if(typeof(categorytitle)!="undefined"){%>
							               					<%-categorytitle%>
							               			 <%}%>	
						               			</span>
						               			<div class="clearfix"></div>
					               		</li>-->
					        		
                                      <li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.cardtype')%>
						               			</small>
						               			<span class="pull-right">
						               			<a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                             <input type="hidden" value="NickNameAdd" class="form-control"  name="NickNameService" id="NickNameService"/>	
						               			</span>
					               	</li>
					               		
					               		  <li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.cardnum')%>
						               			</small>
						               			<span class="pull-right">
						               				
						               			</span>
					               	</li>
					               	  <li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.cardhold')%>
						               			</small>
						               			<span class="pull-right">
						               				
						               			</span>
					               	</li>
					               
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.totcrdlimit')%>
						               			</small>
						               			<span class="pull-right">
							               			<%if(typeof(limitamt)!="undefined"){%>
							               				 <%-limitamt%>
							               			<%}%>	
						               			</span>
					               		</li>
					              
						               	 <li class="list-group-item">
								               	 <small>
								               	 		<%-$.i18n.t('app.product.rplaccounts.availlim')%>
								               	 </small>
								               	 <span class="pull-right">
									               	   <% if (typeof(avlbllimit) != "undefined") { %>
									               	 		<%-avlbllimit%>
									               	   <%}%>
								               	 </span>
						               	 </li>
					                
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.rplaccounts.totavlcrdlimit')%>
						                	</small>
						                	<span class="pull-right">
						                	<%-outbal%>
						                	</span>
					                	</li>
					                	
					                	<!-- <li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.rplaccounts.profitrate')%>
						                	</small>
						                	<span class="pull-right">
						                	<%-profitrate%>
						                	</span>
					                	</li> -->
					                	
					                	<!-- <li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.rplaccounts.minpymntdue')%>
						                	</small>
						                	<span class="pull-right">
						                	<%-minpymntdue%>
						                	</span>
					                	</li> -->
					                	
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.rplaccounts.expirydate')%>
						                	</small>
						                	<span class="pull-right">
						                	<%-duedate%>
						                	</span>
					                	</li>
					                	
					                	
					                <!--	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.rplaccounts.latepymtfee')%>
						                	</small>
						                	<span class="pull-right">
						                	<%-lastPymntfee%>
						                	</span>
					                	</li> -->
				             </ul>
				            </div>
			       </div>
           </div>
           

       </ul>
       </div>
     
   
     <!--<div class="form-group">
              <label  for="filter"><%-$.i18n.t('app.creditcard.billed.selectmonth')%></label>
                      <select name="monthlist" id="monthlist"  class="form-control">
                       <%if ( defaultMonthsDTOList.length > 0 ) { %>
							<% _.each(defaultMonthsDTOList,function(data){ %>
								<%if(data.monthcode== SelectedMonthCode) {%>
									<option value="<%-data.monthcode%>~<%-data.monthfirstday%>~<%-data.monthlastday%>" selected><%-data.cmbmonyear%></option>
								<% }else{ %>
									<option value="<%-data.monthcode%>~<%-data.monthfirstday%>~<%-data.monthlastday%>" ><%-data.cmbmonyear%></option>
								<% }%>
							<% }); %>
						<%}%> 
	                </select>-->
			         
        </div>
      	<input type="hidden"  name="hidmonidx" id="hidmonidx"/>  
      	
      
<!--<input type="button" id="detailstatement" name="detailstatement" class="btn btn-success btn-block"  value="<%-$.i18n.t('app.requests.homefinance.submit')%>"/>     -->     