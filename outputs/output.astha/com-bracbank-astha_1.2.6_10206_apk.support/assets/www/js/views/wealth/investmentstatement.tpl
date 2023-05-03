  		 <%
				var els = new EncryptedLocalStorage('secret');        		
           		var els = new EncryptedLocalStorage('secret');
				var key = els.get('graphKey');
				var devicePlatform = els.get("device.platform");
				var key = els.get('graphKey');
				var devicePlatform = els.get("device.platform");
				var emailidd = els.get("emailid");
				var emailIdCheck = els.get("emailid");
				var isKeyPadNeed =els.get("isKeyPadNeed");
				var acccid = els.get("acccid");
			 	var acccid = els.get("paramList");
 	        	var mydeposit = els.get("prepaidCardAccountList");
 	        	var acctid = mydeposit[acccid].id;
 	        	var acctno = mydeposit[acccid].accountNumber;
		    	
           		%>
           		  	<!-- Actual content area -->
	<a href="#/wealth" class="pull-left btn btn-default btn-sm back-btn"><span class="glyphicon glyphicon-chevron-left"></span> </a>
	<!-- Breadcrumb Starts Here -->
	<ol class="breadcrumb cust_breadcrumb pull-left">
	    <li><a href="#/wealth" ><%-$.i18n.t('app.product.general.title')%></a></li>
	    <li class="active"><%-$.i18n.t('app.product.general.statement')%></li>
	</ol>
	<div class="clearfix"></div><br/>
	<!--Breadcrumb Ends Here-->
            <div class="panel panel-default cust_panel hilit_panel">
		               <div class="panel-heading collapsed" id="account" data-toggle="collapse" data-target="#beneficiary">
		                   <p class="panel-title small"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp;  
						    	<%-$.i18n.t('app.product.general.prepaiddet')%>
		                   </p>
		               </div>
						<div id="beneficiary" class="collapsePanel panel-collapse collapse">
						
				            <div class="panel-body detailsStmt">
				                <ul class="list-group">
					         		<li class="list-group-item">
					         		
                                        <div class="edit">
                                        	<form role="form" id="editnickname">
                                        	<div class="row">
                                        	<div class="col-xs-6">
                                            <small><%-$.i18n.t('app.creditcard.ccdetails.cardtype')%></small>
											<input id="checknicknametype" name="checknicknametype" type="hidden" value="<%- accdetail.cardHolderName%>" />
											</div>
											
                                            
											 <%if(typeof(accdetail.productName)!="undefined"|| typeof(accdetail.productName)!="" ){%>
                                            
	                                            <div class="col-xs-6 text-right">
	                                            		<span class="userName"><span id="updname"><%-accdetail.productName%></span></span>
			                                            <a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                            <input type="hidden" value="NickNameUpdate" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </div>
	                                            
											 <%}else{%>
											 	<div class="col-xs-6 text-right">
											 			<span class="userName"><span id="updname"><%-acctype%></span></span>
			                                            <a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                             <input type="hidden" value="NickNameAdd" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </div>	
											 
											 <%}%>
											 </div>
											 </form>
                                        </div>
                                        
                                        <!--<div class="update row">
                                            <div class="col-xs-7">
                                            	<span class="nickName"><input type="text" maxlength="15" id="nicknameid" name="nicknameid" onkeydown="call(event)" class="form-control input-sm" placeholder="<%-$.i18n.t('app.creditcard.general.nickname')%>"></span>
                                            </div>
                                            <div class="col-xs-5">
	                                            <div class="btn-group btn-group-sm">
		                                           	<a  class="btn btn-success updateNick" id="editname"><span class="glyphicon glyphicon-ok"></span></a>
	                                            	<a  class="btn btn-primary cancelNick" id="clearname"><span class="glyphicon glyphicon-remove"></span></a>
	                                            </div>
                                            </div>
                                        </div>-->
                                        
                                        <div id="nickerror" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.activatecc.nicknamenotnull')%></font></span></div>
                                        
                                     </li>
                                     
                                     
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.creditcard.ccdetails.cardnumber')%>
						               			</small>
						               			<span class="pull-right">
						               			<%-accdetail.currencyCode%>
						               			<input type="hidden" id="accountno" name="accountno" value="<%-acctno%>">
							               			<%if(typeof(acctno)!="undefined"){%>
							               				<%-acctno%>							               			
							               			<%}%>	
						               			</span>
					               		</li>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.creditcard.blockcc.cardholdername')%>
						               			</small>
						               			<span class="pull-right">
						               			<%if(typeof(accdetail.cardHolderName)!="undefined"){%>
							               				<%-accdetail.cardHolderName%>							               			
							               			<%}%>
						               			</span>
					               		</li>
					               		<li class="list-group-item">
						               			<small>
						               				<%-$.i18n.t('app.product.rplaccounts.totcrdlimit')%>
						               			</small>
						               			<span class="pull-right">
							               			
							               			<small>	 
							               			<%-accdetail.currencyCode%>
							               			<% if(accdetail.totalCreditLimit > 0){ %>
							                       		<span class="cr"><%- checkAmount($.formatNumber(accdetail.totalCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
							                		<% } else { %>
							                        	<span class="dr"><%- checkAmount($.formatNumber(accdetail.totalCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
							               			 <% } %>
							               			</small>	 
							               			
						               			</span>
					               		</li>
									
					                <li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.rplaccounts.availlim')%>
						                	</small>
						                	<span class="pull-right amt ">
						                	<%-accdetail.currencyCode%>
						                	<% if(accdetail.availableCreditLimit > 0){ %>
							                       		<span class="cr"><%- checkAmount($.formatNumber(accdetail.availableCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
							                		<% } else { %>
							                        	<span class="dr"><%- checkAmount($.formatNumber(accdetail.availableCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
							               			 <% } %>
						                	
						                	</span>
					                	</li>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.rplaccounts.totavlcrdlimit')%>
						                	</small>
						                	<span class="pull-right amt ">
						                	<%-accdetail.currencyCode%>
						                	<% if(accdetail.totalCreditLimit > 0){ %>
							                      	<span class="cr"><%- checkAmount($.formatNumber(accdetail.totalCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
							                <% } else { %>
							                     	<span class="dr"><%- checkAmount($.formatNumber(accdetail.totalCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
							               	<% } %>
						                	
						                	</span>
					                	</li>
					                	<li class="list-group-item hilit">
						                	<small>
						                			<%-$.i18n.t('app.product.rplaccounts.expirydate')%>
						                	</small>
						                	<span class="pull-right amt ">
						                      	<%-accdetail.paymentDueDate	%>
						                	</span>
					                	</li>
					                	
				             </ul>
				            </div>
			       </div>
           </div>
						
						    
     <div class="panel panel-default cust_panel hilit_panel removeBdr">
				<div class="panel-heading" data-toggle="collapse" data-target="#filter-cont">
					<p class="panel-title small"><span class="glyphicon glyphicon-chevron-down"></span>&nbsp;<%-$.i18n.t('app.product.accounts.searchby')%>:<%-$.i18n.t('app.product.accounts.searchh')%></p>
				</div>
				
				<div id="filter-cont" class="collapsePanel panel-collapse collapse in">
			    	<br/>
			    	<form role="form" id="searchby">
			    		<input type="hidden" value="<%-acctno%>" class="form-control"  name="accno" id="accno"/>
						<div class="row">
							<div class="col-xs-6">
								<div class="form-group  has-feedback">
								<% if ( devicePlatform == "Android" ) { %>
									<input type="text" autocomplete='off'  class="form-control nativedatepicker" id="startDate" placeholder="<%-$.i18n.t('app.product.general.startdate')%>" tabindex="1" readonly>
								<%}else{%>
									<input type="text"  autocomplete='off' class="form-control nativedatepicker" id="startDate" placeholder="<%-$.i18n.t('app.product.general.startdate')%>" tabindex="1" readonly>
								<%}%>
									<span class="glyphicon glyphicon-calendar form-control-feedback "></span>
								</div>
								<div id="startDateNull" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.startDateNull')%></font></span></div>
								<div id="startDateValid" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.moi.datevalid1')%></font></span></div>
								
								<div class="form-group">
								<% if ( devicePlatform == "Android" ) { %>
									<input type="number" autocomplete='off'  maxlength="10" class="form-control input-sm" pattern="\d+(\.\d*)?" id="amtabove" name="amtabove" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>" tabindex="3" />
								<%}else{%>
									<% if(isKeyPadNeed) { %>
										<input type="number" autocomplete='off'   pattern="\d+(\.\d*)?" inputmode="numeric"  maxlength="10" class="form-control input-sm lenthcontrol" id="amtabove" name="amtabove" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>" tabindex="3" />
									<% } else { %>
										<input type="number" autocomplete='off'  maxlength="10" pattern="\d+(\.\d*)?" class="form-control input-sm lenthcontrol" id="amtabove" name="amtabove" placeholder="<%-$.i18n.t('app.product.accounts.fromamount')%>" tabindex="3" />
									<% } %>
								<%}%>
								</div>
								<div id="amtaboveNull" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.amtaboveisnotnull')%></font></span></div>
							</div>
							<div class="col-xs-6">
								<div class="form-group  has-feedback">
								<% if ( devicePlatform == "Android" ) { %>
									<input type="text" autocomplete='off'  class="form-control nativedatepicker"  id="endtDate" placeholder="<%-$.i18n.t('app.product.general.enddate')%>" tabindex="2" readonly>
								<%}else{%>
									<input type="text" autocomplete='off'  class="form-control nativedatepicker"  id="endtDate" placeholder="<%-$.i18n.t('app.product.general.enddate')%>" tabindex="2" readonly>
								<%}%>
									<span class="glyphicon glyphicon-calendar form-control-feedback "></span>
								</div>
								<div id="endDateNull" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.endDateNull')%></font></span></div>
								<div id="toDateShouldNotBeGreaterThanCurrDate" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.toDateShouldNotBeGreaterThanCurrDate')%></font></span></div>
								<div id="toDateShouldBeGreaterThanFromDate" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.toDateShouldBeGreaterThanFromDate')%></font></span></div>
								
								
								<div class="form-group">
								<% if ( devicePlatform == "Android" ) { %>
						            <input type="number" autocomplete='off'  maxlength="10" class="form-control input-sm" pattern="\d+(\.\d*)?" id="amtbelow" name="amtbelow" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>" tabindex="4" />
						         <%}else{%>
									<% if(isKeyPadNeed) { %>
										<input type="number"  autocomplete='off'  pattern="\d+(\.\d*)?" inputmode="numeric"  maxlength="10" class="form-control input-sm lenthcontrol" id="amtbelow" name="amtbelow" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>" tabindex="4" />
									<% } else { %>
										<input type="number"  autocomplete='off'  pattern="\d+(\.\d*)?" maxlength="10" class="form-control input-sm lenthcontrol" id="amtbelow" name="amtbelow" placeholder="<%-$.i18n.t('app.product.accounts.toamount')%>" tabindex="4" />
									<% } %>
						            
						         <%}%>						         
								</div>
								<div id="amtbelowNull" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.amtbelowisnotnull')%></font></span></div>
							</div>
						</div>
						<div class="form-group">
								<% if ( devicePlatform == "Android" ) { %>
						            <input type="number" autocomplete='off'  maxlength="2" class="form-control input-sm" id="lasttrns" name="lasttrns" placeholder="<%-$.i18n.t('app.product.accounts.lasttrans')%>" tabindex="4" />
						         <%}else{%>
									<% if(isKeyPadNeed) { %>
										<input type="number" autocomplete='off'  pattern="[0-9]*" inputmode="numeric"  maxlength="2" class="form-control input-sm lenthcontrol" id="lasttrns" name="lasttrns" placeholder="<%-$.i18n.t('app.product.accounts.lasttrans')%>" tabindex="4" />
									<% } else { %>
										<input type="number" autocomplete='off'  maxlength="2" class="form-control input-sm lenthcontrol" id="lasttrns" name="lasttrns" placeholder="<%-$.i18n.t('app.product.accounts.lasttrans')%>" tabindex="4" />
									<% } %>
						         <%}%>						         
						</div>
						<div id="lasttransval" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.wealth.lasttransvalue')%></font></span></div>
							</div>
						<div class="form-group paymentMode">
									<div data-toggle="buttons" class="btn-group btn-group-justified" id="selectbutton">
										<label class="btn btn-default payNow">
										<input type="radio" id="option1" name="options" value="C"><%-$.i18n.t('app.creditcard.ccdetails.crdit')%>
										</label>
										<label class="btn btn-default payLater">
										<input type="radio" id="option2" name="options" value="D"><%-$.i18n.t('app.creditcard.ccdetails.debit')%>
										</label>
										<label class="btn btn-default rePeat active">
										<input type="radio" id="option3" name="options" value="B"><%-$.i18n.t('app.creditcard.ccdetails.both')%>
										</label>									
									</div>
						</div>		
						<div id="toDateShouldNotBeGreaterThanCurrDate" style="display:none" align="center">
							<span>
								<font color="red"><%-$.i18n.t('validation.wealth.toDateShouldNotBeGreaterThanCurrDate')%></font>
							</span>
						</div>
						<div id="toDateShouldBeGreaterThanFromDate" style="display:none" align="center">
							<span>
								<font color="red"><%-$.i18n.t('validation.wealth.toDateShouldBeGreaterThanFromDate')%></font>
							</span>
						</div></br>
				    	<input type="button" id="getstatement" class="btn btn-block btn-success" value="<%-$.i18n.t('app.product.accounts.getstatement')%>" >
					</form>
				</div>
			</div>

        <div class="clearfix"></div>
        
     
     
     
                <div class="btn-group btn-group-justified paymentMode">
                        <a class="btn btn-default font-xs active" id="currentbtn" ><%-$.i18n.t('app.creditcard.ccdetails.curstmt')%></a>
                        <a class="btn btn-default font-xs"  id="pendingbtn" ><%-$.i18n.t('app.creditcard.ccdetails.pendtransac')%></a>
                        <!--<a class="btn btn-default" href="creditcard_stmt_billed.html">Billed</a>-->
                      </div>
                       <div id="currentstatement"></div>
                      <div id="pendingstatement"></div>
     
     
     
       <div class="form-group pull-right">
	      			  <label><%-$.i18n.t('app.product.accounts.downloads')%>&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
				      <div class="btn-group"> 
					        <button type="button" id="pdfdownload" name="pdfdownload" class="btn btn-default"><%-$.i18n.t('app.product.accounts.pdf')%></button>
					        <button type="button" id="xlsdownload" name="xlsdownload" class="btn btn-default"><%-$.i18n.t('app.product.accounts.xls')%></button>
				      </div>
     			 </div>	
   
		          <input type="button" id="emailadvice" name="emailadvice" class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.accounts.emailadvice')%>"> 
		        
     <br/>
     
     
     
     
     
     
     
     
     
     
		          <!--<input type="button" id="backbut" name="backbut" class="btn btn-success btn-block" value="<%-$.i18n.t('app.product.timedeposits.back')%>"> 
		          <a href="#/wealth" class="btn btn-block btn-success"><%-$.i18n.t('app.product.timedeposits.back')%></a>-->
     <br/>
   <!--Content Ends Here-->
   <script>

var fromdateDatee = new Date();
var diff = (90*1000*60*60*24);
var fromdateDate = new Date(fromdateDatee.getTime() - diff);

var d = fromdateDate.getDate();
var m = fromdateDate.getMonth()+1;
var y = fromdateDate.getFullYear();
//var myDate = '' +  (m <= 9 ? '0' + m : m) + '/'+ (d <= 9 ? '0' + d : d) + '/' + y;
var myDate = '' +  (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;
//$("#startDate").val(myDate);					
</script>
<script>
var trandateDate = new Date();
var d = trandateDate.getDate();
var m = trandateDate.getMonth()+1;
var y = trandateDate.getFullYear();
//var myDate = '' +  (m <= 9 ? '0' + m : m) + '/'+ (d <= 9 ? '0' + d : d) + '/' + y;
var myDate = '' +  (d <= 9 ? '0' + d : d) + '/'+ (m <= 9 ? '0' + m : m) + '/' + y;
//$("#endtDate").val(myDate);					
</script>
<script>
(function ($){
     $.fn.inputlength=function(){
       // options=$.extend({},$.fn.inputlenght.add,options); // Setting default height for the component
        return this.each(function(){
          var makelength=$(this).attr("maxlength");
          $(this).on('keypress',function(e){
           // alert(makelength);
             if($(this).val().length>=makelength &&  e.keyCode != '8' && e.keyCode != '46'){
               //alert("length shoutnot exceed to"+ +makelength );
                e.preventDefault();
               return false;
             }
            // return true;
          });

        });
     };
}(jQuery));
$('.lenthcontrol').inputlength();
</script>

<script>
$('#amtabove').on('input', function () {
        this.value = this.value.match(/^\d+\.?\d{0,3}/);
    });
   $('#amtbelow').on('input', function () {
        this.value = this.value.match(/^\d+\.?\d{0,3}/);
    });
</script>
          
          
 <script>
     	 $(document).ready(function()
     		 {
                     
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
