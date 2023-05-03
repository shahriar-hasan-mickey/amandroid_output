<!--Content Starts Here-->
<%
var els = new EncryptedLocalStorage('secret'); 
var cccardacctno=els.get("cccardacctno");
var errorDescription=els.get("errordesc");
var selectedAcct= els.get("selectedAcct");
var billingCycleDate = els.get("billingCycleDate");
var acctno=els.get("acctno");
var ccmask=els.get("ccMask");
%>

<!--Content Starts Here-->
						<a href="#/creditcard" class="pull-left btn btn-default btn-sm back-btn">
						<span class="glyphicon glyphicon-chevron-left"></span> </a>
						<!-- Breadcrumb Starts Here -->
						<ol class="breadcrumb cust_breadcrumb pull-left">
							<li><a href="#/creditcard"><%-$.i18n.t('app.creditcard.billed.creditcards')%></a></li>
							<li class="active"><%-$.i18n.t('app.creditcard.billed.billed')%></li>
						</ol>

						<div class="clearfix"></div><br/>

						<!--Breadcrumb Ends Here-->

 <% if ( mycreditcards.length > 0 ) { %>
<!--Credit Card Summary Starts-->
						<div class="dropselect"  data-title="<%-$.i18n.t('app.creditcard.ccdetails.select')%>" data-setid="acid" >
								                  <% _.each(mycreditcards,function(data){ %>
										             <label class="list-group-item">
										                  <%if(data.accountNumber== selectedAcct) {%>
					                           					<input type="radio" checked="checked" name="fromactno" id="fromactno" value="<%-data.accountNumber%>~<%-billingCycleDate%>~<%-data.creditCardNoMasked%>"/>
					                           				<%}else{%>
					                           					<input type="radio" name="fromactno"  id="fromactno" value="<%-data.accountNumber%>~<%-billingCycleDate%>~<%-data.creditCardNoMasked%>"/>
					                           				<%}%>
					  							 			<p>
					  							 				<span class="nme"><%-data.shortName%></span>
					  							 				<!--<small class="cur pull-right"><%-data.currencyCode%></small>-->
					  							 			</p>
															<p>
																<small class="text-muted"><%- data.creditCardNoMasked %></small>
																<!--<span class="amt pull-right"><%- checkAmount($.formatNumber(data.availableCreditLimit, {format:"#,###.000", locale:"us"}))%></span>-->
															</p>
					                       			</label>
										                     
								                   <% }); %>
					 </div> 
 <!--Credit Card Summary Ends-->



                           
<!--Credit card Details Starts-->
	 				<div class="panel panel-default cust_panel hilit_panel">
							<div class="panel-heading collapsed" data-toggle="collapse" data-target="#beneficiary">
								<p class="panel-title small"><span class="glyphicon glyphicon-chevron-right">
								</span>&nbsp;<%-$.i18n.t('app.product.creditcard.ccdetails')%></p>
							</div>
							<div id="beneficiary" class="collapsePanel panel-collapse collapse ">
								<div class="panel-body detailsStmt">
									<ul class="list-group">
									<!--
									 <li class="list-group-item">
	                                 	<div class="edit"> 
	                                              <small><%-$.i18n.t('app.product.creditcard.cardnickname')%></small>
	                                       	       <%if(typeof(shortName)!="undefined" && shortName!="" && shortName!="null" ){%>
	                                        
	                                        	<span class="pull-right">
	                                            		<span class="userName"><span id="updname"><%-shortName%></span></span>
			                                            <a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                            <input type="hidden" value="NickNameUpdate" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </span>
											 <%}else{%>
											 	<span class="pull-right">
											 			<span class="userName"><span id="updname"><%-shortName%></span></span>
			                                            <a class="btn btn-sm btn-success editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                             <input type="hidden" value="NickNameAdd" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </span>
											 <%}%>
	                                 	</div>
	                                 	
	                                 	<div class="update row">
                                            <div class="col-xs-7">
                                            	<span class="nickName"><input type="text" autocomplete='off' id="nicknameid" name="nicknameid" onkeydown="call(event)" class="form-control input-sm lenthcontrol" value="" placeholder="<%-$.i18n.t('app.creditcard.general.nickname')%>"></span>
                                            </div>
                                            <div class="col-xs-5">
	                                            <div class="btn-group btn-group-sm">
		                                           	<a  class="btn btn-success updateNick" id="editname"><span class="glyphicon glyphicon-ok"></span></a>
	                                            	<a  class="btn btn-primary cancelNick"><span class="glyphicon glyphicon-remove"></span></a>
	                                            </div>
                                            </div>
                                        </div>
                             		</li>
                             		-->
                                       <li class="list-group-item">
					         		
                                        <div class="edit">
                                        	<div class="row">
                                        	<div class="col-xs-6">
                                            <small><%-$.i18n.t('app.product.creditcard.cardnickname')%></small>
											<input id="checknicknametype" name="checknicknametype" type="hidden" value="<%- shortName%>" />
											</div>
											
                                            <%if(typeof(shortName)!="undefined" && shortName!="" && shortName!="null" ){%>
                                            
	                                            <div class="col-xs-6 text-right">
	                                            		<span class="userName"><span id="updname"><%-shortName%></span></span>
			                                            <a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                            <input type="hidden" value="NickNameUpdate" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </div>
	                                            
											 <%}else{%>
											 	<div class="col-xs-6 text-right">
											 			<span class="userName"><span id="updname"><%-shortName%></span></span>
			                                            <a class="btn btn-sm btn-primary editNick" id="name">
			                                            	<span class="glyphicon glyphicon-pencil"></span>
			                                            </a>
			                                             <input type="hidden" value="NickNameAdd" class="form-control"  name="NickNameService" id="NickNameService"/>
	                                            </div>	
											 <%}%>
											 </div>
                                        </div>
                                        
                                        <div class="update row">
                                            <div class="col-xs-7">
                                            	<span class="nickName"><input type="text" autocomplete='off' maxlength="15" id="nicknameid" name="nicknameid" onkeydown="call(event)" class="form-control input-sm lenthcontrol" value="<%-shortName%>" placeholder="<%-$.i18n.t('app.creditcard.general.nickname')%>"></span>
                                            </div>
                                            <div class="col-xs-5">
	                                            <div class="btn-group btn-group-sm">
		                                           	<a  class="btn btn-success updateNick" id="editname"><span class="glyphicon glyphicon-ok"></span></a>
	                                            	<a  class="btn btn-primary cancelNick" id="clearname"><span class="glyphicon glyphicon-remove"></span></a>
	                                            </div>
                                            </div>
                                        </div>
                                        
                                        <div id="nickerror" style="display:none" align="center"><span><font color="red"><%-$.i18n.t('validation.activatecc.nicknamenotnull')%></font></span></div>
                                        
                                     </li>
                                        <li class="list-group-item"><small><%-$.i18n.t('app.product.creditcard.ccnumber')%></small>
												<span class="pull-right"><%-ccmask%></span>
												<input type="hidden" id="accountno" name="accountno" value="<%-acctno%>"> 
									</li>
										<li class="list-group-item"><small><%-$.i18n.t('app.product.creditcard.cardtype')%></small>
											<span class="pull-right"><%-cardType%></span>
										</li>
										<li class="list-group-item"><small><%-$.i18n.t('app.product.creditcard.creditlimiit')%></small>
											<span class="pull-right amt"><%- checkAmount($.formatNumber(totalCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
										</li>
										<li class="list-group-item"><small><%-$.i18n.t('app.product.creditcard.availablelimit')%></small>
											<span class="pull-right amt"><%- checkAmount($.formatNumber(availableCreditLimit, {format:"#,###.000", locale:"us"}))%></span>
										</li>
										<li class="list-group-item hilit"><small><%-$.i18n.t('app.product.creditcard.availablecashlimit')%></small>
											<span class="pull-right amt"><%- checkAmount($.formatNumber(availableCashLimit, {format:"#,###.000", locale:"us"}))%></span> 
										</li>
                                        <li class="list-group-item hilit"><small><%-$.i18n.t('app.product.creditcard.totaloutstanding')%></small>
											<input class="btn btn-success btn-sm" type="button" id="paynow" name="paynow" value="<%-$.i18n.t('button.transfer.paynow')%>">
											<span class="pull-right amt">										
											<%- checkAmount($.formatNumber(outStandingAmount, {format:"#,###.000", locale:"us"}))%>
											</span> 
											<div class=" clearfix"></div>
										</li>
                                        <li class="list-group-item hilit"><small><%-$.i18n.t('app.product.creditcard.minimumamount')%></small>
											<span class="pull-right amt"><%- checkAmount($.formatNumber(minimumAmountDue, {format:"#,###.000", locale:"us"}))%></span>
										</li> 
                                        <li class="list-group-item hilit"><small><%-$.i18n.t('app.product.creditcard.duedate')%></small>
											<span class="pull-right"><span class="date"><%-paymentDueDate%></span></span>
										</li> 
										<li class="list-group-item"><small><%-$.i18n.t('app.product.creditcard.currency')%></small>
											<span class="pull-right"><%-currencyCode%></span>
										</li>
									</ul>
								</div>
							</div>
						</div>
	 <!--Credit card Details ends-->
	<!-- Billed Transaction Starts -->
                           <div class="accStmt">
                                <br/>
                                
                  					
                                            <div class="form-group" placeholder="">
                                            <label for="monthlist"><%-$.i18n.t('app.creditcard.billed.selectmonth')%></label>
	                                               <select name="monthlist" id="monthlist"  class="form-control">
	                                                	<%if ( creditcardMonthsListview.length > 0 ) { %>
										                       		<% _.each(creditcardMonthsListview,function(data){ %>
									                            				<option value="<%-data.monthcode%>~<%-data.monthfirstday%>~<%-data.monthlastday%>"><%-data.cmbmonyear%></option>
										                    		<% }); %>
										                <%}%>
	                            				  </select>
                                            </div>
                                            <input type="hidden"  name="hidmonidx" id="hidmonidx"/>
                                            
                                        
        							   
	        				  <%if ( ministatement.length > 0 ) { %>
	        						<ul>
		    							<% _.each(ministatement,function(data){ %>
		    							 <% if ( (data.transactionAmount).substring(0,1)=='-' ) { %>
		    							       <!--<li class="cr">
		        									<a>
		        										<div class="d_msg">
		        											<p class="date"><%-data.transactionDate%></p>
		        											<p><%-data.transactionDescription%></p>
		        										</div>
	        											<div class="amt">
	        												<span class="cur"><%-data.currencyCode%></span>
	        												<span class="type">Cr</span>
	        												<%- checkAmount($.formatNumber((data.transactionAmount).substring(1), {format:"#,###.000", locale:"us"}))%>
	        											</div>
		        									</a>
		    								   </li>-->
<li class="cr">
  <div class="d_msg">
      <p class=""><%-$.i18n.t('app.creditcard.billed.postingdate')%></p>
      <p class=""><%-$.i18n.t('app.creditcard.billed.transactiondate')%></p>
      <p>&nbsp;</p>
      <p><%-data.transactionDescription%></p>
  </div>
  <div class="amt">
      <span class="cur">&nbsp;<%-data.valueDate%></span>
      <span class="cur">&nbsp;<%-data.transactionDate%></span>
      <span class="cur"><%-data.currencyCode%></span>
      <span class="type">Cr</span>
      <%- checkAmount($.formatNumber((data.transactionAmount).substring(1), {format:"#,###.000", locale:"us"}))%>
  </div>
</li>
		    								   <%}else{%>   
			    								   <!--<li class="">
			        									<a>
			        										<div class="d_msg">
			        											<p class="date"><%-data.transactionDate%></p>
			        											<p><%-data.transactionDescription%></p>
			        										</div>
		        											<div class="amt">
		        												<span class="cur"><%-data.currencyCode%></span>
		        												<span class="type">Dr</span>
		        												<%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.000", locale:"us"}))%>
		        											</div>
			        									</a>
			    								   </li>-->
<li class="dr">
  <div class="d_msg">
      <p class=""><%-$.i18n.t('app.creditcard.billed.postingdate')%></p>
      <p class=""><%-$.i18n.t('app.creditcard.billed.transactiondate')%></p>
      <p>&nbsp;</p>
      <p><%-data.transactionDescription%></p>
  </div>
  <div class="amt">
      <span class="cur">&nbsp;<%-data.valueDate%></span>
      <span class="cur">&nbsp;<%-data.transactionDate%></span>
      <span class="cur"><%-data.currencyCode%></span>
      <span class="type">Dr</span>
      <%- checkAmount($.formatNumber(data.transactionAmount, {format:"#,###.000", locale:"us"}))%>
  </div>
</li>
			    								<%}%> 
		    							<% }); %>
	                                </ul>
	                                <%}else if ( ministatement.length == 0 ){%>
	                                <div class="alert alert-info">
	                                	<h4 style="text-align:center"><%-$.i18n.t('exception.common.norecordsfound')%></h4>
       								</div>
									    <%}else{%>
									     <div class="alert alert-info">
									     <h4 style="text-align:center"><%-errorDescription%></h4>
										</div>
									    <%}%>
	                                		
						</div>
                          
                        <!-- Billed Transaction Ends -->
						<!--
                       <div id="errorToAct" style="display:none">
                        	<p class="help-block error-message"><font color="#A94442"><%-$.i18n.t('app.transfer.ownaccount.toaccmsg')%></font></p>
                        </div>
                        -->
        				  <br/>
                          <div class="form-group pull-right">
	      					  <label><%-$.i18n.t('app.product.creditcard.downloads')%>&nbsp;<span class="glyphicon glyphicon-save"></span></label>&nbsp;
						      <div class="btn-group"> 
							        <button type="button" id="pdfdownload" name="pdfdownload"  class="btn btn-default"><%-$.i18n.t('app.product.creditcard.pdf')%></button>
							        <button type="button" id="xlsdownload" name="xlsdownload" class="btn btn-default"><%-$.i18n.t('app.product.creditcard.xls')%></button>
						      </div>
     				     </div>
                          <br/><br/><br/>

						<a href="#/creditcard"  class="btn btn-primary btn-block"><%-$.i18n.t('app.creditcard.billed.back')%></a>
						<br/>
					<!--Content Ends Here-->
			<%}else if ( mycreditcards.length == 0 ){%>
				<div class="alert alert-info">
					<span class="msg"><%-$.i18n.t('app.product.creditcard.nodata')%></span>
			    </div>
					<a  href="#/applynewcreditcardrequest" class="btn btn-success btn-sm  btn-block" type="button"><%-$.i18n.t('app.product.creditcard.newcardlink')%></a>
 			<%}else{%>
				<div class="alert alert-info">
            		 <span class="msg"><%-errorDescription%></span>
       			</div>
 			<%}%>			
					 <script>
            $(document).ready(function()
            {
             $(".dropselect").dropselect();
             $(".update").hide();

             $(".editNick").on("click",function()
             {
                $(".edit").hide();
                $(".update").show();
             });
             $(".updateNick").on("click",function()
             {
                var username =$(".nickName input").val();
                $('.userName').text(username);
                $(".update").hide();
                $('.edit').show();
             });
             $('.cancelNick').on("click",function()
             {
                $(".edit").show();
                $(".update").hide();
             });
            });
            </script>
            
            <script>
function call(e) {
        if (document.getElementById('nicknameid').value.length == 0) {
            if (e.keyCode == 32) {
                e.preventDefault();
            }
        }
}
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
var idx = $("#hidmonidx").val();
idx=parseInt(idx);
$("#monthlist").prop("selectedIndex",idx);
$(".content").animate({ scrollTop: 0 }, "fast");
</script>
<script type="text/javascript">
    function openUrl(url) {
     // alert("open url: " + url);
      window.open(url, '_blank', 'location=yes');
    }

    function onDeviceReady() {
     // alert('device ready!');
    }
    $(function() {
        document.addEventListener("deviceready", onDeviceReady, true);
       // $.mobile.silentScroll(0);
    });
</script>